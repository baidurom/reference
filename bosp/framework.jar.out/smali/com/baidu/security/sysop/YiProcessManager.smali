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
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/security/sysop/YiProcessManager;->mInstance:Lcom/baidu/security/sysop/YiProcessManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    .line 941
    const/16 v1, 0xa

    .line 943
    .local v1, i:I
    :cond_0
    const-string v6, "BroadcastManagerService"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/security/bm/IBroadcastManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/baidu/security/bm/IBroadcastManagerService;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    .line 944
    add-int/lit8 v1, v1, -0x1

    .line 946
    iget-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-nez v6, :cond_1

    if-gtz v1, :cond_0

    .line 948
    :cond_1
    iput-object p1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mContext:Landroid/content/Context;

    .line 949
    const-string v6, "activity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mAm:Landroid/app/ActivityManager;

    .line 950
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mApplicationContext:Landroid/content/Context;

    .line 951
    iget-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mApplicationContext:Landroid/content/Context;

    if-eqz v6, :cond_2

    .line 952
    iget-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPm:Landroid/content/pm/PackageManager;

    .line 955
    :goto_0
    new-instance v6, Lcom/baidu/security/sysop/YiRunningState;

    iget-object v7, p0, Lcom/baidu/security/sysop/YiProcessManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, p0}, Lcom/baidu/security/sysop/YiRunningState;-><init>(Landroid/content/Context;Lcom/baidu/security/sysop/YiProcessManager;)V

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mYiRunningState:Lcom/baidu/security/sysop/YiRunningState;

    .line 957
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mProtectedApps:Ljava/util/HashSet;

    .line 958
    sget-object v6, Lcom/baidu/security/sysop/YiSettings;->APP_WHITE_LIST:[Ljava/lang/String;

    if-eqz v6, :cond_3

    sget-object v6, Lcom/baidu/security/sysop/YiSettings;->APP_WHITE_LIST:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_3

    .line 959
    sget-object v0, Lcom/baidu/security/sysop/YiSettings;->APP_WHITE_LIST:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 960
    .local v5, pkg:Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mProtectedApps:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 959
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 954
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

    .line 963
    :cond_3
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mProtectedApps2:Ljava/util/HashSet;

    .line 964
    sget-object v6, Lcom/baidu/security/sysop/YiSettings;->APP_CRITICAL_LIST:[Ljava/lang/String;

    if-eqz v6, :cond_4

    sget-object v6, Lcom/baidu/security/sysop/YiSettings;->APP_CRITICAL_LIST:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_4

    .line 965
    sget-object v0, Lcom/baidu/security/sysop/YiSettings;->APP_CRITICAL_LIST:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v5, v0, v2

    .line 966
    .restart local v5       #pkg:Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mProtectedApps2:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 965
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 969
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #pkg:Ljava/lang/String;
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPreservedApps:Ljava/util/ArrayList;

    .line 970
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mRecentCleanableApps:Ljava/util/ArrayList;

    .line 972
    new-instance v6, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v6}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    .line 973
    iget-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 974
    new-instance v4, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 975
    .local v4, memInfo:Landroid/app/ActivityManager$MemoryInfo;
    iget-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v6, v4}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 976
    iget-wide v6, v4, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mSecondaryServerMem:J

    .line 977
    return-void
.end method

.method private cleanApp(Lcom/baidu/security/sysop/CleanableAppInfo;Ljava/util/ArrayList;)Z
    .locals 10
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
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 447
    if-nez p1, :cond_1

    .line 474
    :cond_0
    :goto_0
    return v6

    .line 450
    :cond_1
    if-eqz p2, :cond_2

    iget-object v8, p1, Lcom/baidu/security/sysop/CleanableAppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 454
    :cond_2
    iget-object v6, p1, Lcom/baidu/security/sysop/CleanableAppInfo;->items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    .line 455
    .local v3, item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    invoke-virtual {p0, v3}, Lcom/baidu/security/sysop/YiProcessManager;->cleanMergedItem(Lcom/baidu/security/sysop/YiRunningState$MergedItem;)V

    goto :goto_1

    .line 458
    .end local v3           #item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    :cond_3
    iget-object v6, p1, Lcom/baidu/security/sysop/CleanableAppInfo;->mOrphanedProcessIds:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    .line 459
    iget-object v6, p1, Lcom/baidu/security/sysop/CleanableAppInfo;->mOrphanedProcessIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 460
    .local v4, len:I
    new-array v5, v4, [I

    .line 461
    .local v5, pids:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v4, :cond_4

    .line 462
    iget-object v6, p1, Lcom/baidu/security/sysop/CleanableAppInfo;->mOrphanedProcessIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v1

    .line 461
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 468
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    const-string/jumbo v8, "orphaned"

    const/4 v9, 0x1

    invoke-interface {v6, v5, v8, v9}, Landroid/app/IActivityManager;->killPids([ILjava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #i:I
    .end local v4           #len:I
    .end local v5           #pids:[I
    :cond_5
    :goto_3
    move v6, v7

    .line 474
    goto :goto_0

    .line 469
    .restart local v1       #i:I
    .restart local v4       #len:I
    .restart local v5       #pids:[I
    :catch_0
    move-exception v0

    .line 470
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/security/sysop/YiProcessManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    sget-object v0, Lcom/baidu/security/sysop/YiProcessManager;->mInstance:Lcom/baidu/security/sysop/YiProcessManager;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/baidu/security/sysop/YiProcessManager;

    invoke-direct {v0, p0}, Lcom/baidu/security/sysop/YiProcessManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/security/sysop/YiProcessManager;->mInstance:Lcom/baidu/security/sysop/YiProcessManager;

    .line 84
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
    .line 266
    .local p1, appProcItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 267
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 284
    :goto_0
    return-object v5

    .line 270
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 271
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

    .line 272
    .local v2, item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    iget-object v5, v2, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/security/sysop/CleanableAppInfo;

    .line 273
    .local v0, appInfo:Lcom/baidu/security/sysop/CleanableAppInfo;
    if-nez v0, :cond_3

    .line 274
    iget-object v5, v2, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/baidu/security/sysop/YiProcessManager;->getProtectionType(Ljava/lang/String;)I

    move-result v4

    .line 275
    .local v4, ptype:I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 276
    iget-object v5, v2, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v6, Lcom/baidu/security/sysop/CleanableAppInfo;

    invoke-direct {v6, v2}, Lcom/baidu/security/sysop/CleanableAppInfo;-><init>(Lcom/baidu/security/sysop/YiRunningState$MergedItem;)V

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 280
    .end local v4           #ptype:I
    :cond_3
    invoke-virtual {v0, v2}, Lcom/baidu/security/sysop/CleanableAppInfo;->addItem(Lcom/baidu/security/sysop/YiRunningState$MergedItem;)V

    goto :goto_1

    .line 284
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
    .line 288
    iget-object v3, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPreservedApps:Ljava/util/ArrayList;

    monitor-enter v3

    .line 289
    :try_start_0
    iget-object v2, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPreservedApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 290
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    iget-object v2, p0, Lcom/baidu/security/sysop/YiProcessManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, imeInfo:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 294
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 298
    .local v1, imePackage:Ljava/lang/String;
    iget-object v3, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPreservedApps:Ljava/util/ArrayList;

    monitor-enter v3

    .line 299
    :try_start_1
    iget-object v2, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPreservedApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 303
    .end local v1           #imePackage:Ljava/lang/String;
    :cond_0
    return-void

    .line 290
    .end local v0           #imeInfo:Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 300
    .restart local v0       #imeInfo:Ljava/lang/String;
    .restart local v1       #imePackage:Ljava/lang/String;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method


# virtual methods
.method public appIsLocked(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 788
    const/4 v1, 0x0

    .line 790
    .local v1, retVal:Z
    :try_start_0
    iget-object v2, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v2, :cond_0

    .line 791
    iget-object v2, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v2, p1}, Lcom/baidu/security/bm/IBroadcastManagerService;->appIsLocked(Ljava/lang/String;)Z

    move-result v1

    .line 799
    :goto_0
    return v1

    .line 793
    :cond_0
    const-string v2, "YiProcessManager"

    const-string v3, "BroadcastManagerService has not been started"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 795
    :catch_0
    move-exception v0

    .line 796
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
    .line 332
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v5, retVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/CleanableAppInfo;>;"
    invoke-virtual {p0}, Lcom/baidu/security/sysop/YiProcessManager;->getCleanableApps()Ljava/util/ArrayList;

    move-result-object v1

    .line 334
    .local v1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/CleanableAppInfo;>;"
    const/4 v3, 0x0

    .line 335
    .local v3, preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPreservedApps:Ljava/util/ArrayList;

    monitor-enter v7

    .line 336
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPreservedApps:Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    .end local v3           #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v4, preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 338
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

    .line 339
    .local v0, app:Lcom/baidu/security/sysop/CleanableAppInfo;
    iget-boolean v6, v0, Lcom/baidu/security/sysop/CleanableAppInfo;->mIsLocked:Z

    if-nez v6, :cond_0

    .line 340
    invoke-direct {p0, v0, v4}, Lcom/baidu/security/sysop/YiProcessManager;->cleanApp(Lcom/baidu/security/sysop/CleanableAppInfo;Ljava/util/ArrayList;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 341
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 337
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

    .line 347
    .end local v3           #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/security/sysop/YiProcessManager;->tryToCleanWhiteListApp()V

    .line 349
    return-object v5

    .line 337
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
    .line 438
    const/4 v0, 0x0

    .line 439
    .local v0, preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPreservedApps:Ljava/util/ArrayList;

    monitor-enter v3

    .line 440
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPreservedApps:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    .end local v0           #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v1, preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 443
    invoke-direct {p0, p1, v1}, Lcom/baidu/security/sysop/YiProcessManager;->cleanApp(Lcom/baidu/security/sysop/CleanableAppInfo;Ljava/util/ArrayList;)Z

    move-result v2

    return v2

    .line 441
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
    .line 385
    if-nez p1, :cond_1

    .line 386
    const/4 v6, 0x0

    .line 425
    :cond_0
    :goto_0
    return v6

    .line 393
    :cond_1
    const/4 v1, 0x0

    .line 394
    .local v1, appInfo:Lcom/baidu/security/sysop/CleanableAppInfo;
    iget-object v8, p0, Lcom/baidu/security/sysop/YiProcessManager;->mRecentCleanableApps:Ljava/util/ArrayList;

    monitor-enter v8

    .line 395
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

    .line 396
    .local v0, app:Lcom/baidu/security/sysop/CleanableAppInfo;
    iget-object v7, v0, Lcom/baidu/security/sysop/CleanableAppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 397
    move-object v1, v0

    .line 401
    .end local v0           #app:Lcom/baidu/security/sysop/CleanableAppInfo;
    :cond_3
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    if-nez v1, :cond_5

    .line 404
    invoke-virtual {p0}, Lcom/baidu/security/sysop/YiProcessManager;->getCleanableApps()Ljava/util/ArrayList;

    move-result-object v2

    .line 405
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

    .line 406
    .restart local v0       #app:Lcom/baidu/security/sysop/CleanableAppInfo;
    iget-object v7, v0, Lcom/baidu/security/sysop/CleanableAppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 407
    move-object v1, v0

    .line 413
    .end local v0           #app:Lcom/baidu/security/sysop/CleanableAppInfo;
    .end local v2           #currentApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/CleanableAppInfo;>;"
    :cond_5
    const/4 v4, 0x0

    .line 414
    .local v4, preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPreservedApps:Ljava/util/ArrayList;

    monitor-enter v8

    .line 415
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPreservedApps:Ljava/util/ArrayList;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 416
    .end local v4           #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v5, preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 420
    const/4 v6, 0x0

    .line 421
    .local v6, retVal:Z
    if-eqz v1, :cond_0

    .line 422
    invoke-direct {p0, v1, v5}, Lcom/baidu/security/sysop/YiProcessManager;->cleanApp(Lcom/baidu/security/sysop/CleanableAppInfo;Ljava/util/ArrayList;)Z

    move-result v6

    goto :goto_0

    .line 401
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

    .line 416
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
    .line 357
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v5, retVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/CleanableAppInfo;>;"
    invoke-virtual {p0}, Lcom/baidu/security/sysop/YiProcessManager;->getCleanableApps()Ljava/util/ArrayList;

    move-result-object v1

    .line 359
    .local v1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/CleanableAppInfo;>;"
    const/4 v3, 0x0

    .line 360
    .local v3, preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPreservedApps:Ljava/util/ArrayList;

    monitor-enter v7

    .line 361
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPreservedApps:Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    .end local v3           #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v4, preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 363
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

    .line 364
    .local v0, app:Lcom/baidu/security/sysop/CleanableAppInfo;
    iget-boolean v6, v0, Lcom/baidu/security/sysop/CleanableAppInfo;->mIsLocked:Z

    if-nez v6, :cond_0

    .line 365
    invoke-direct {p0, v0, v4}, Lcom/baidu/security/sysop/YiProcessManager;->cleanApp(Lcom/baidu/security/sysop/CleanableAppInfo;Ljava/util/ArrayList;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 366
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 362
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

    .line 370
    .end local v3           #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #preservedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/security/sysop/YiProcessManager;->tryToCleanWhiteListApp()V

    .line 371
    invoke-virtual {p0}, Lcom/baidu/security/sysop/YiProcessManager;->tryToCleanWhiteListAppCritical()V

    .line 372
    return-object v5

    .line 362
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

    .line 484
    if-nez p1, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_3

    :cond_2
    iget-boolean v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mBackground:Z

    if-nez v8, :cond_9

    .line 493
    :cond_3
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/baidu/security/sysop/YiProcessManager;->appIsLocked(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 494
    iget-object v5, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    .line 496
    .local v5, services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$ServiceItem;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 497
    .local v7, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v7, :cond_4

    .line 498
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;

    .line 502
    .local v6, si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    iget-object v8, v6, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p0, v8}, Lcom/baidu/security/sysop/YiProcessManager;->stopService(Landroid/content/ComponentName;)V

    .line 497
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 508
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

    .line 515
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/baidu/security/sysop/YiProcessManager;->stopBackgroundAppProcess(Ljava/lang/String;)V

    .line 519
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v7, :cond_5

    .line 520
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;

    .line 524
    .restart local v6       #si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    iget-object v8, v6, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p0, v8}, Lcom/baidu/security/sysop/YiProcessManager;->stopService(Landroid/content/ComponentName;)V

    .line 519
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 527
    .end local v6           #si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    :cond_5
    new-array v4, v11, [I

    .line 528
    .local v4, pids:[I
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    iget v8, v8, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mPid:I

    aput v8, v4, v10

    .line 529
    const/4 v0, 0x5

    .line 530
    .local v0, count:I
    :goto_3
    if-lez v0, :cond_0

    .line 534
    iget-object v8, p0, Lcom/baidu/security/sysop/YiProcessManager;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v8, v4}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v3

    .line 535
    .local v3, memInfos:[Landroid/os/Debug$MemoryInfo;
    aget-object v8, v3, v10

    if-eqz v8, :cond_0

    aget-object v8, v3, v10

    invoke-virtual {v8}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v8

    if-lez v8, :cond_0

    .line 541
    if-gt v0, v11, :cond_7

    .line 545
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/baidu/security/sysop/YiProcessManager;->forceStopPackage(Ljava/lang/String;)V

    .line 569
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 570
    goto :goto_3

    .line 549
    :cond_7
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v8, 0x64

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :goto_4
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/baidu/security/sysop/YiProcessManager;->stopBackgroundAppProcess(Ljava/lang/String;)V

    .line 559
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v7, :cond_6

    .line 560
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;

    .line 564
    .restart local v6       #si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    iget-object v8, v6, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p0, v8}, Lcom/baidu/security/sysop/YiProcessManager;->stopService(Landroid/content/ComponentName;)V

    .line 559
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 550
    .end local v6           #si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    :catch_0
    move-exception v1

    .line 551
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 576
    .end local v0           #count:I
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v3           #memInfos:[Landroid/os/Debug$MemoryInfo;
    .end local v4           #pids:[I
    :cond_8
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/baidu/security/sysop/YiProcessManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 581
    .end local v2           #i:I
    .end local v5           #services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$ServiceItem;>;"
    .end local v7           #size:I
    :cond_9
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/baidu/security/sysop/YiProcessManager;->appIsLocked(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 585
    iget-object v8, p1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/baidu/security/sysop/YiProcessManager;->stopBackgroundAppProcess(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 170
    if-nez p1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    invoke-virtual {p0, p1}, Lcom/baidu/security/sysop/YiProcessManager;->getProtectionType(Ljava/lang/String;)I

    move-result v0

    .line 178
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

    .line 180
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v1, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/baidu/security/bm/BroadcastManager;->getInstance()Lcom/baidu/security/bm/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/security/bm/BroadcastManager;->recordCleanedApp(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCleanableApps()Ljava/util/ArrayList;
    .locals 19
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
    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiProcessManager;->mYiRunningState:Lcom/baidu/security/sysop/YiRunningState;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 194
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/security/sysop/YiProcessManager;->mYiRunningState:Lcom/baidu/security/sysop/YiRunningState;

    invoke-virtual {v15}, Lcom/baidu/security/sysop/YiRunningState;->reset()V

    .line 195
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/security/sysop/YiProcessManager;->mApplicationContext:Landroid/content/Context;

    if-eqz v15, :cond_0

    .line 196
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/security/sysop/YiProcessManager;->mYiRunningState:Lcom/baidu/security/sysop/YiRunningState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiProcessManager;->mApplicationContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiProcessManager;->mAm:Landroid/app/ActivityManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/baidu/security/sysop/YiRunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    .line 200
    :goto_0
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/security/sysop/YiProcessManager;->mYiRunningState:Lcom/baidu/security/sysop/YiRunningState;

    invoke-virtual {v15}, Lcom/baidu/security/sysop/YiRunningState;->getCurrentFilteredMergedItems()Ljava/util/ArrayList;

    move-result-object v12

    .line 202
    .local v12, procsWithServices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/security/sysop/YiProcessManager;->mYiRunningState:Lcom/baidu/security/sysop/YiRunningState;

    invoke-virtual {v15}, Lcom/baidu/security/sysop/YiRunningState;->getCurrentFilteredBackgroundItems()Ljava/util/ArrayList;

    move-result-object v5

    .line 203
    .local v5, backgroundProcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    if-nez v12, :cond_1

    const/4 v13, 0x0

    .line 204
    .local v13, pwsLen:I
    :goto_1
    if-nez v5, :cond_2

    const/4 v6, 0x0

    .line 207
    .local v6, bgpLen:I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/security/sysop/YiProcessManager;->getLockedApps()[Ljava/lang/String;

    move-result-object v11

    .line 208
    .local v11, lockedAppsArray:[Ljava/lang/String;
    new-instance v10, Ljava/util/HashSet;

    array-length v15, v11

    invoke-direct {v10, v15}, Ljava/util/HashSet;-><init>(I)V

    .line 209
    .local v10, lockedApps:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v4, v11

    .local v4, arr$:[Ljava/lang/String;
    array-length v9, v4

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_3
    if-ge v7, v9, :cond_3

    aget-object v2, v4, v7

    .line 210
    .local v2, app:Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 198
    .end local v2           #app:Ljava/lang/String;
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v5           #backgroundProcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .end local v6           #bgpLen:I
    .end local v7           #i$:I
    .end local v9           #len$:I
    .end local v10           #lockedApps:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v11           #lockedAppsArray:[Ljava/lang/String;
    .end local v12           #procsWithServices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .end local v13           #pwsLen:I
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/security/sysop/YiProcessManager;->mYiRunningState:Lcom/baidu/security/sysop/YiRunningState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiProcessManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiProcessManager;->mAm:Landroid/app/ActivityManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/baidu/security/sysop/YiRunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v15

    .line 203
    .restart local v5       #backgroundProcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    .restart local v12       #procsWithServices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    :cond_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    goto :goto_1

    .line 204
    .restart local v13       #pwsLen:I
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_2

    .line 213
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v6       #bgpLen:I
    .restart local v7       #i$:I
    .restart local v9       #len$:I
    .restart local v10       #lockedApps:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v11       #lockedAppsArray:[Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    add-int v15, v13, v6

    invoke-direct {v3, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 214
    .local v3, appProcItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    if-lez v13, :cond_5

    .line 215
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    .line 216
    .local v8, item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    iget-object v15, v8, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 217
    const/4 v15, 0x1

    iput-boolean v15, v8, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mIsLocked:Z

    .line 222
    :cond_4
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 225
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    :cond_5
    if-lez v6, :cond_b

    .line 226
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    .line 228
    .restart local v8       #item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    iget-object v15, v8, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v15, :cond_7

    iget-object v15, v8, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v15, v15, 0x1

    if-nez v15, :cond_6

    .line 232
    :cond_7
    iget-object v15, v8, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mLabel:Ljava/lang/String;

    if-eqz v15, :cond_8

    iget-object v15, v8, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    iget-object v15, v15, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->mLabel:Ljava/lang/String;

    if-nez v15, :cond_9

    .line 233
    :cond_8
    iget-object v15, v8, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiProcessManager;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/security/sysop/YiProcessManager;->mContext:Landroid/content/Context;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 236
    :cond_9
    iget-object v15, v8, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v15, :cond_a

    iget-object v15, v8, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v15, :cond_a

    iget-object v15, v8, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 237
    const/4 v15, 0x1

    iput-boolean v15, v8, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mIsLocked:Z

    .line 242
    :cond_a
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 246
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/baidu/security/sysop/YiProcessManager;->procsToApps(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v14

    .line 247
    .local v14, retVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/CleanableAppInfo;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/baidu/security/sysop/YiProcessManager;->getOrphanedCleanableInfo(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/security/sysop/YiProcessManager;->mRecentCleanableApps:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 249
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/security/sysop/YiProcessManager;->mRecentCleanableApps:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 250
    if-eqz v14, :cond_c

    .line 254
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/security/sysop/CleanableAppInfo;

    .line 255
    .local v2, app:Lcom/baidu/security/sysop/CleanableAppInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/security/sysop/YiProcessManager;->mRecentCleanableApps:Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 258
    .end local v2           #app:Lcom/baidu/security/sysop/CleanableAppInfo;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v15

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v15

    :cond_c
    :try_start_3
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 260
    invoke-direct/range {p0 .. p0}, Lcom/baidu/security/sysop/YiProcessManager;->updatePreservedAppsList()V

    .line 262
    return-object v14
.end method

.method public getCleanableSize()J
    .locals 9

    .prologue
    .line 310
    const/4 v3, 0x0

    .line 311
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

    .line 312
    .local v0, appInfo:Lcom/baidu/security/sysop/CleanableAppInfo;
    iget-object v5, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPreservedApps:Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/baidu/security/sysop/CleanableAppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 313
    int-to-long v5, v3

    iget-wide v7, v0, Lcom/baidu/security/sysop/CleanableAppInfo;->mSize:J

    add-long/2addr v5, v7

    long-to-int v3, v5

    goto :goto_0

    .line 318
    .end local v0           #appInfo:Lcom/baidu/security/sysop/CleanableAppInfo;
    :cond_1
    iget-object v5, p0, Lcom/baidu/security/sysop/YiProcessManager;->mYiRunningState:Lcom/baidu/security/sysop/YiRunningState;

    invoke-virtual {v5}, Lcom/baidu/security/sysop/YiRunningState;->getCurrentWhiteListBgEmptyItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 319
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

    .line 320
    .local v2, item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    int-to-long v5, v3

    iget-wide v7, v2, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mSize:J

    add-long/2addr v5, v7

    long-to-int v3, v5

    goto :goto_1

    .line 322
    .end local v2           #item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    :cond_2
    int-to-long v5, v3

    return-wide v5
.end method

.method public getLockedApps()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 764
    const/4 v1, 0x0

    .line 766
    .local v1, retVal:[Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v2, :cond_0

    .line 767
    iget-object v2, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v2}, Lcom/baidu/security/bm/IBroadcastManagerService;->getLockedApps()[Ljava/lang/String;

    move-result-object v1

    .line 775
    :goto_0
    return-object v1

    .line 769
    :cond_0
    const-string v2, "YiProcessManager"

    const-string v3, "BroadcastManagerService has not been started"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMemFreeSize()J
    .locals 6

    .prologue
    .line 819
    iget-object v2, p0, Lcom/baidu/security/sysop/YiProcessManager;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 822
    iget-object v2, p0, Lcom/baidu/security/sysop/YiProcessManager;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v2

    iget-object v4, p0, Lcom/baidu/security/sysop/YiProcessManager;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v4

    add-long v0, v2, v4

    .line 832
    .local v0, freeMem:J
    return-wide v0
.end method

.method public getMemTotalSize()J
    .locals 2

    .prologue
    .line 809
    iget-object v0, p0, Lcom/baidu/security/sysop/YiProcessManager;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOrphanedCleanableInfo(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/CleanableAppInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/CleanableAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 643
    .local p1, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/CleanableAppInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 644
    .local v2, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/CleanableAppInfo;>;"
    const/4 v9, 0x0

    .line 645
    .local v9, info:Lcom/baidu/security/sysop/CleanableAppInfo;
    const/4 v14, 0x1

    invoke-static {v14}, Landroid/os/Process;->getChildPid(I)[I

    move-result-object v3

    .line 646
    .local v3, childPids:[I
    const/4 v13, -0x1

    .line 647
    .local v13, uid:I
    move-object v1, v3

    .local v1, arr$:[I
    array-length v11, v1

    .local v11, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    move v8, v7

    .end local v7           #i$:I
    .local v8, i$:I
    :goto_0
    if-ge v8, v11, :cond_4

    aget v5, v1, v8

    .line 648
    .local v5, currPid:I
    const/4 v9, 0x0

    .line 649
    if-lez v5, :cond_2

    .line 650
    invoke-static {v5}, Landroid/os/Process;->getUidForPid(I)I

    move-result v13

    .line 651
    const/16 v14, 0x2710

    if-le v13, v14, :cond_2

    .line 652
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/security/sysop/YiProcessManager;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v14, v13}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    .line 653
    .local v12, pkgs:[Ljava/lang/String;
    if-eqz v12, :cond_2

    array-length v14, v12

    const/4 v15, 0x1

    if-lt v14, v15, :cond_2

    .line 658
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    move-object v10, v9

    .end local v8           #i$:I
    .end local v9           #info:Lcom/baidu/security/sysop/CleanableAppInfo;
    .local v10, info:Lcom/baidu/security/sysop/CleanableAppInfo;
    :goto_1
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/security/sysop/CleanableAppInfo;

    .line 659
    .local v4, cur:Lcom/baidu/security/sysop/CleanableAppInfo;
    const/4 v14, 0x0

    aget-object v14, v12, v14

    iget-object v15, v4, Lcom/baidu/security/sysop/CleanableAppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 660
    move-object v9, v4

    .end local v10           #info:Lcom/baidu/security/sysop/CleanableAppInfo;
    .restart local v9       #info:Lcom/baidu/security/sysop/CleanableAppInfo;
    :goto_2
    move-object v10, v9

    .end local v9           #info:Lcom/baidu/security/sysop/CleanableAppInfo;
    .restart local v10       #info:Lcom/baidu/security/sysop/CleanableAppInfo;
    goto :goto_1

    .line 663
    .end local v4           #cur:Lcom/baidu/security/sysop/CleanableAppInfo;
    :cond_0
    if-eqz v10, :cond_3

    .line 664
    iget-object v14, v10, Lcom/baidu/security/sysop/CleanableAppInfo;->mOrphanedProcessIds:Ljava/util/ArrayList;

    if-nez v14, :cond_1

    .line 665
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v10, Lcom/baidu/security/sysop/CleanableAppInfo;->mOrphanedProcessIds:Ljava/util/ArrayList;

    .line 667
    :cond_1
    iget-object v14, v10, Lcom/baidu/security/sysop/CleanableAppInfo;->mOrphanedProcessIds:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v9, v10

    .line 647
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #info:Lcom/baidu/security/sysop/CleanableAppInfo;
    .end local v12           #pkgs:[Ljava/lang/String;
    .restart local v9       #info:Lcom/baidu/security/sysop/CleanableAppInfo;
    :cond_2
    :goto_3
    add-int/lit8 v7, v8, 0x1

    .local v7, i$:I
    move v8, v7

    .end local v7           #i$:I
    .restart local v8       #i$:I
    goto :goto_0

    .line 669
    .end local v8           #i$:I
    .end local v9           #info:Lcom/baidu/security/sysop/CleanableAppInfo;
    .local v7, i$:Ljava/util/Iterator;
    .restart local v10       #info:Lcom/baidu/security/sysop/CleanableAppInfo;
    .restart local v12       #pkgs:[Ljava/lang/String;
    :cond_3
    new-instance v9, Lcom/baidu/security/sysop/CleanableAppInfo;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/security/sysop/YiProcessManager;->mPm:Landroid/content/pm/PackageManager;

    const/4 v15, 0x0

    aget-object v15, v12, v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    invoke-direct {v9, v14}, Lcom/baidu/security/sysop/CleanableAppInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 670
    .end local v10           #info:Lcom/baidu/security/sysop/CleanableAppInfo;
    .restart local v9       #info:Lcom/baidu/security/sysop/CleanableAppInfo;
    :try_start_2
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v9, Lcom/baidu/security/sysop/CleanableAppInfo;->mOrphanedProcessIds:Ljava/util/ArrayList;

    .line 671
    iget-object v14, v9, Lcom/baidu/security/sysop/CleanableAppInfo;->mOrphanedProcessIds:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/security/sysop/YiProcessManager;->mPm:Landroid/content/pm/PackageManager;

    iget-object v15, v9, Lcom/baidu/security/sysop/CleanableAppInfo;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/baidu/security/sysop/CleanableAppInfo;->mLabel:Ljava/lang/String;

    .line 673
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 675
    .end local v7           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v6

    .line 676
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_4
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 682
    .end local v5           #currPid:I
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v12           #pkgs:[Ljava/lang/String;
    .restart local v8       #i$:I
    :cond_4
    return-object v2

    .line 675
    .end local v8           #i$:I
    .end local v9           #info:Lcom/baidu/security/sysop/CleanableAppInfo;
    .restart local v5       #currPid:I
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v10       #info:Lcom/baidu/security/sysop/CleanableAppInfo;
    .restart local v12       #pkgs:[Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object v9, v10

    .end local v10           #info:Lcom/baidu/security/sysop/CleanableAppInfo;
    .restart local v9       #info:Lcom/baidu/security/sysop/CleanableAppInfo;
    goto :goto_4

    .end local v9           #info:Lcom/baidu/security/sysop/CleanableAppInfo;
    .restart local v4       #cur:Lcom/baidu/security/sysop/CleanableAppInfo;
    .restart local v10       #info:Lcom/baidu/security/sysop/CleanableAppInfo;
    :cond_5
    move-object v9, v10

    .end local v10           #info:Lcom/baidu/security/sysop/CleanableAppInfo;
    .restart local v9       #info:Lcom/baidu/security/sysop/CleanableAppInfo;
    goto :goto_2
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public getProtectionType(Ljava/lang/String;)I
    .locals 4
    .parameter "packageName"

    .prologue
    .line 922
    if-nez p1, :cond_1

    .line 923
    const/4 v1, 0x0

    .line 937
    :cond_0
    :goto_0
    return v1

    .line 926
    :cond_1
    const/4 v1, 0x0

    .line 927
    .local v1, retVal:I
    iget-object v3, p0, Lcom/baidu/security/sysop/YiProcessManager;->mProtectedApps:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/baidu/security/sysop/YiProcessManager;->mProtectedApps:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 928
    const/4 v1, 0x1

    .line 930
    :cond_2
    iget-object v3, p0, Lcom/baidu/security/sysop/YiProcessManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 931
    .local v0, mWallpaperManager:Landroid/app/WallpaperManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 932
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 933
    .local v2, wallpaperName:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 934
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

    .line 887
    iget-object v8, p0, Lcom/baidu/security/sysop/YiProcessManager;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v8}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 888
    .local v6, processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v6, :cond_1

    .line 889
    const/4 v6, 0x0

    .line 910
    .end local v6           #processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_0
    return-object v6

    .line 892
    .restart local v6       #processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_1
    if-ne p1, v9, :cond_0

    .line 893
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 894
    .local v2, it:Ljava/util/Iterator;
    const/4 v7, 0x0

    .line 895
    .local v7, ptype:I
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 896
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 897
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

    .line 898
    .local v4, pkgName:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/baidu/security/sysop/YiProcessManager;->getProtectionType(Ljava/lang/String;)I

    move-result v7

    .line 902
    if-eq v7, v9, :cond_3

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 903
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 897
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

    .line 846
    iget-object v4, p0, Lcom/baidu/security/sysop/YiProcessManager;->mAm:Landroid/app/ActivityManager;

    const/16 v5, 0x96

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 847
    .local v3, services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-nez v3, :cond_1

    .line 848
    const/4 v3, 0x0

    .line 874
    .end local v3           #services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_0
    return-object v3

    .line 851
    .restart local v3       #services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_1
    if-ne p1, v6, :cond_0

    .line 852
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 853
    .local v0, it:Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 854
    .local v1, ptype:I
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 855
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 856
    .local v2, serviceInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/baidu/security/sysop/YiProcessManager;->getProtectionType(Ljava/lang/String;)I

    move-result v1

    .line 860
    if-nez v1, :cond_3

    .line 861
    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    iget-object v5, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 862
    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/baidu/security/sysop/YiProcessManager;->getProtectionType(Ljava/lang/String;)I

    move-result v1

    .line 868
    :cond_3
    if-eq v1, v6, :cond_4

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 869
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public lockApp(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 693
    :try_start_0
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v1, :cond_0

    .line 694
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v1, p1}, Lcom/baidu/security/bm/IBroadcastManagerService;->addLockedApp(Ljava/lang/String;)V

    .line 701
    :goto_0
    return-void

    .line 696
    :cond_0
    const-string v1, "YiProcessManager"

    const-string v2, "BroadcastManagerService has not been started"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public lockApps([Ljava/lang/String;)V
    .locals 3
    .parameter "packageNameArray"

    .prologue
    .line 711
    :try_start_0
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v1, :cond_0

    .line 712
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v1, p1}, Lcom/baidu/security/bm/IBroadcastManagerService;->addLockedApps([Ljava/lang/String;)V

    .line 719
    :goto_0
    return-void

    .line 714
    :cond_0
    const-string v1, "YiProcessManager"

    const-string v2, "BroadcastManagerService has not been started"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopAppServices(Ljava/lang/String;)V
    .locals 0
    .parameter "pkgName"

    .prologue
    .line 114
    if-nez p1, :cond_0

    .line 121
    :cond_0
    return-void
.end method

.method public stopBackgroundAppProcess(Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 137
    if-nez p1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-virtual {p0, p1}, Lcom/baidu/security/sysop/YiProcessManager;->getProtectionType(Ljava/lang/String;)I

    move-result v0

    .line 145
    .local v0, ptype:I
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v1, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 146
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 147
    invoke-static {}, Lcom/baidu/security/bm/BroadcastManager;->getInstance()Lcom/baidu/security/bm/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/security/bm/BroadcastManager;->recordCleanedApp(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopService(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "cmpName"

    .prologue
    .line 94
    if-nez p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/security/sysop/YiProcessManager;->getProtectionType(Ljava/lang/String;)I

    move-result v0

    .line 102
    .local v0, ptype:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 103
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
    .line 591
    iget-object v3, p0, Lcom/baidu/security/sysop/YiProcessManager;->mYiRunningState:Lcom/baidu/security/sysop/YiRunningState;

    invoke-virtual {v3}, Lcom/baidu/security/sysop/YiRunningState;->getCurrentWhiteListBgEmptyItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 595
    .local v2, whiteListBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    monitor-enter v2

    .line 596
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

    .line 597
    .local v1, item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    iget-boolean v3, v1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mBackground:Z

    if-eqz v3, :cond_0

    .line 598
    iget-object v3, v1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mLabel:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 599
    :cond_1
    iget-object v3, v1, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mProcess:Lcom/baidu/security/sysop/YiRunningState$ProcessItem;

    iget-object v4, p0, Lcom/baidu/security/sysop/YiProcessManager;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Lcom/baidu/security/sysop/YiRunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 600
    iget-object v3, p0, Lcom/baidu/security/sysop/YiProcessManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 605
    :cond_2
    invoke-virtual {p0, v1}, Lcom/baidu/security/sysop/YiProcessManager;->cleanMergedItem(Lcom/baidu/security/sysop/YiRunningState$MergedItem;)V

    goto :goto_0

    .line 608
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

    .line 609
    return-void
.end method

.method public tryToCleanWhiteListAppCritical()V
    .locals 10

    .prologue
    .line 612
    iget-object v7, p0, Lcom/baidu/security/sysop/YiProcessManager;->mYiRunningState:Lcom/baidu/security/sysop/YiRunningState;

    invoke-virtual {v7}, Lcom/baidu/security/sysop/YiRunningState;->getCurrentWhiteListItems()Ljava/util/ArrayList;

    move-result-object v6

    .line 616
    .local v6, whiteListItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$MergedItem;>;"
    monitor-enter v6

    .line 617
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

    .line 618
    .local v2, item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    iget-object v7, p0, Lcom/baidu/security/sysop/YiProcessManager;->mProtectedApps2:Ljava/util/HashSet;

    iget-object v8, v2, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 621
    iget-object v7, v2, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    iget-object v7, v2, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_2

    :cond_1
    iget-boolean v7, v2, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mBackground:Z

    if-nez v7, :cond_3

    .line 622
    :cond_2
    iget-object v3, v2, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    .line 624
    .local v3, services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$ServiceItem;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 625
    .local v5, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v5, :cond_3

    .line 626
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;

    .line 627
    .local v4, si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    iget-object v7, p0, Lcom/baidu/security/sysop/YiProcessManager;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    iget-object v9, v4, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 630
    .end local v0           #i:I
    .end local v3           #services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$ServiceItem;>;"
    .end local v4           #si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    .end local v5           #size:I
    :cond_3
    iget-object v7, v2, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/baidu/security/sysop/YiProcessManager;->stopBackgroundAppProcess(Ljava/lang/String;)V

    goto :goto_0

    .line 632
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

    .line 633
    return-void
.end method

.method public unlockApp(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 729
    :try_start_0
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v1, :cond_0

    .line 730
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v1, p1}, Lcom/baidu/security/bm/IBroadcastManagerService;->removeLockedApp(Ljava/lang/String;)V

    .line 737
    :goto_0
    return-void

    .line 732
    :cond_0
    const-string v1, "YiProcessManager"

    const-string v2, "BroadcastManagerService has not been started"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unlockApps([Ljava/lang/String;)V
    .locals 3
    .parameter "packageNameArray"

    .prologue
    .line 747
    :try_start_0
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v1, :cond_0

    .line 748
    iget-object v1, p0, Lcom/baidu/security/sysop/YiProcessManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v1, p1}, Lcom/baidu/security/bm/IBroadcastManagerService;->removeLockedApps([Ljava/lang/String;)V

    .line 755
    :goto_0
    return-void

    .line 750
    :cond_0
    const-string v1, "YiProcessManager"

    const-string v2, "BroadcastManagerService has not been started"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 752
    :catch_0
    move-exception v0

    .line 753
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
