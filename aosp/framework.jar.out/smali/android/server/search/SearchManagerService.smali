.class public Landroid/server/search/SearchManagerService;
.super Landroid/app/ISearchManager$Stub;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/search/SearchManagerService$1;,
        Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver;,
        Landroid/server/search/SearchManagerService$MyPackageMonitor;,
        Landroid/server/search/SearchManagerService$UserReceiver;,
        Landroid/server/search/SearchManagerService$BootCompletedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSearchables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/server/search/Searchables;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-direct {p0}, Landroid/app/ISearchManager$Stub;-><init>()V

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    .line 74
    iput-object p1, p0, Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    .line 75
    iget-object v0, p0, Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/server/search/SearchManagerService$BootCompletedReceiver;

    invoke-direct {v1, p0, v4}, Landroid/server/search/SearchManagerService$BootCompletedReceiver;-><init>(Landroid/server/search/SearchManagerService;Landroid/server/search/SearchManagerService$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    iget-object v0, p0, Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/server/search/SearchManagerService$UserReceiver;

    invoke-direct {v1, p0, v4}, Landroid/server/search/SearchManagerService$UserReceiver;-><init>(Landroid/server/search/SearchManagerService;Landroid/server/search/SearchManagerService$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    new-instance v0, Landroid/server/search/SearchManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Landroid/server/search/SearchManagerService$MyPackageMonitor;-><init>(Landroid/server/search/SearchManagerService;)V

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v4, v1, v2}, Landroid/server/search/SearchManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 80
    return-void
.end method

.method static synthetic access$200(Landroid/server/search/SearchManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/server/search/SearchManagerService;I)Landroid/server/search/Searchables;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/server/search/SearchManagerService;->getSearchables(I)Landroid/server/search/Searchables;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/server/search/SearchManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/server/search/SearchManagerService;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$500(Landroid/server/search/SearchManagerService;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Landroid/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    return-object v0
.end method

.method private getSearchables(I)Landroid/server/search/Searchables;
    .locals 6
    .parameter "userId"

    .prologue
    .line 83
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 85
    .local v0, origId:J
    :try_start_0
    iget-object v4, p0, Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 87
    .local v3, userExists:Z
    :goto_0
    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 89
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 100
    :goto_1
    return-object v2

    .line 85
    .end local v3           #userExists:Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .restart local v3       #userExists:Z
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    iget-object v5, p0, Landroid/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    monitor-enter v5

    .line 92
    :try_start_1
    iget-object v4, p0, Landroid/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/server/search/Searchables;

    .line 94
    .local v2, searchables:Landroid/server/search/Searchables;
    if-nez v2, :cond_2

    .line 96
    new-instance v2, Landroid/server/search/Searchables;

    .end local v2           #searchables:Landroid/server/search/Searchables;
    iget-object v4, p0, Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, p1}, Landroid/server/search/Searchables;-><init>(Landroid/content/Context;I)V

    .line 97
    .restart local v2       #searchables:Landroid/server/search/Searchables;
    invoke-virtual {v2}, Landroid/server/search/Searchables;->buildSearchableList()V

    .line 98
    iget-object v4, p0, Landroid/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 100
    :cond_2
    monitor-exit v5

    goto :goto_1

    .line 101
    .end local v2           #searchables:Landroid/server/search/Searchables;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4
.end method

.method private onUserRemoved(I)V
    .locals 2
    .parameter "userId"

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    iget-object v1, p0, Landroid/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    monitor-enter v1

    .line 107
    :try_start_0
    iget-object v0, p0, Landroid/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 108
    monitor-exit v1

    .line 110
    :cond_0
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 287
    iget-object v2, p0, Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    const-string v4, "SearchManagerService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 290
    .local v1, ipw:Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v3, p0, Landroid/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    monitor-enter v3

    .line 291
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 292
    const-string v2, "\nUser: "

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 293
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 294
    iget-object v2, p0, Landroid/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/server/search/Searchables;

    invoke-virtual {v2, p1, v1, p3}, Landroid/server/search/Searchables;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 295
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_0
    monitor-exit v3

    .line 298
    return-void

    .line 297
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAssistIntent(I)Landroid/content/ComponentName;
    .locals 13
    .parameter "userHandle"

    .prologue
    const/4 v8, 0x0

    .line 243
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    if-eq p1, v9, :cond_0

    .line 245
    const-string v9, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    const/4 v11, -0x1

    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v12}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v9

    if-nez v9, :cond_2

    .line 250
    const/4 v9, -0x2

    if-ne p1, v9, :cond_0

    .line 251
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 252
    .local v2, identity:J
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v9

    iget p1, v9, Landroid/content/pm/UserInfo;->id:I

    .line 253
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 265
    .end local v2           #identity:J
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 266
    .local v6, pm:Landroid/content/pm/IPackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v9, "android.intent.action.ASSIST"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, assistIntent:Landroid/content/Intent;
    iget-object v9, p0, Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    const/high16 v10, 0x1

    invoke-interface {v6, v0, v9, v10, p1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 271
    .local v4, info:Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_1

    .line 272
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v9

    .line 282
    .end local v0           #assistIntent:Landroid/content/Intent;
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    .end local v6           #pm:Landroid/content/pm/IPackageManager;
    :cond_1
    :goto_0
    return-object v8

    .line 256
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Permission Denial: Request to getAssistIntent for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but is calling from user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; this requires "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 261
    .local v5, msg:Ljava/lang/String;
    const-string v9, "SearchManagerService"

    invoke-static {v9, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 276
    .end local v5           #msg:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 278
    .local v7, re:Landroid/os/RemoteException;
    const-string v9, "SearchManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RemoteException in getAssistIntent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 279
    .end local v7           #re:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 280
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "SearchManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception in getAssistIntent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getGlobalSearchActivities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/server/search/SearchManagerService;->getSearchables(I)Landroid/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Landroid/server/search/Searchables;->getGlobalSearchActivities()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalSearchActivity()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 230
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/server/search/SearchManagerService;->getSearchables(I)Landroid/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Landroid/server/search/Searchables;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .locals 2
    .parameter "launchActivity"

    .prologue
    .line 208
    if-nez p1, :cond_0

    .line 209
    const-string v0, "SearchManagerService"

    const-string v1, "getSearchableInfo(), activity == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v0, 0x0

    .line 212
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/server/search/SearchManagerService;->getSearchables(I)Landroid/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/search/Searchables;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getSearchablesInGlobalSearch()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/server/search/SearchManagerService;->getSearchables(I)Landroid/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Landroid/server/search/Searchables;->getSearchablesInGlobalSearchList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getWebSearchActivity()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 237
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/server/search/SearchManagerService;->getSearchables(I)Landroid/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Landroid/server/search/Searchables;->getWebSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method
