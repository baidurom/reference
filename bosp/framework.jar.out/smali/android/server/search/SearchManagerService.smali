.class public Landroid/server/search/SearchManagerService;
.super Landroid/app/ISearchManager$Stub;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/search/SearchManagerService$1;,
        Landroid/server/search/SearchManagerService$LocaleChangeReceiver;,
        Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver;,
        Landroid/server/search/SearchManagerService$MyPackageMonitor;,
        Landroid/server/search/SearchManagerService$BootCompletedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGlobalSearchObserver:Landroid/database/ContentObserver;

.field private mSearchEngineInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/SearchEngineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchables:Landroid/server/search/Searchables;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/ISearchManager$Stub;-><init>()V

    .line 68
    iput-object p1, p0, Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    .line 69
    iget-object v0, p0, Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/server/search/SearchManagerService$BootCompletedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/server/search/SearchManagerService$BootCompletedReceiver;-><init>(Landroid/server/search/SearchManagerService;Landroid/server/search/SearchManagerService$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    new-instance v0, Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver;

    iget-object v1, p0, Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver;-><init>(Landroid/server/search/SearchManagerService;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Landroid/server/search/SearchManagerService;->mGlobalSearchObserver:Landroid/database/ContentObserver;

    .line 73
    return-void
.end method

.method static synthetic access$100(Landroid/server/search/SearchManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/server/search/SearchManagerService;)Landroid/server/search/Searchables;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/server/search/SearchManagerService;->getSearchables()Landroid/server/search/Searchables;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/server/search/SearchManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/server/search/SearchManagerService;->initSearchEngineInfos()V

    return-void
.end method

.method private declared-synchronized getSearchables()Landroid/server/search/Searchables;
    .locals 3

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/search/SearchManagerService;->mSearchables:Landroid/server/search/Searchables;

    if-nez v0, :cond_0

    .line 77
    const-string v0, "SearchManagerService"

    const-string v1, "Building list of searchable activities"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v0, Landroid/server/search/SearchManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Landroid/server/search/SearchManagerService$MyPackageMonitor;-><init>(Landroid/server/search/SearchManagerService;)V

    iget-object v1, p0, Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/server/search/SearchManagerService$MyPackageMonitor;->register(Landroid/content/Context;Z)V

    .line 79
    new-instance v0, Landroid/server/search/Searchables;

    iget-object v1, p0, Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/server/search/Searchables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/server/search/SearchManagerService;->mSearchables:Landroid/server/search/Searchables;

    .line 80
    iget-object v0, p0, Landroid/server/search/SearchManagerService;->mSearchables:Landroid/server/search/Searchables;

    invoke-virtual {v0}, Landroid/server/search/Searchables;->buildSearchableList()V

    .line 82
    :cond_0
    iget-object v0, p0, Landroid/server/search/SearchManagerService;->mSearchables:Landroid/server/search/Searchables;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initSearchEngineInfos()V
    .locals 9

    .prologue
    .line 205
    iget-object v5, p0, Landroid/server/search/SearchManagerService;->mSearchEngineInfos:Ljava/util/List;

    if-nez v5, :cond_0

    .line 206
    iget-object v5, p0, Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/server/search/SearchManagerService$LocaleChangeReceiver;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Landroid/server/search/SearchManagerService$LocaleChangeReceiver;-><init>(Landroid/server/search/SearchManagerService;Landroid/server/search/SearchManagerService$1;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 209
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/server/search/SearchManagerService;->mSearchEngineInfos:Ljava/util/List;

    .line 210
    iget-object v5, p0, Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 211
    .local v3, res:Landroid/content/res/Resources;
    const v5, 0x204007e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, searchEngines:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 213
    aget-object v2, v4, v0

    .line 214
    .local v2, name:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Landroid/app/SearchEngineInfo;->getSpecifiedSearchEngineInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/app/SearchEngineInfo;

    move-result-object v1

    .line 215
    .local v1, info:Landroid/app/SearchEngineInfo;
    iget-object v5, p0, Landroid/server/search/SearchManagerService;->mSearchEngineInfos:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    .end local v1           #info:Landroid/app/SearchEngineInfo;
    .end local v2           #name:Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
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
    .line 176
    invoke-direct {p0}, Landroid/server/search/SearchManagerService;->getSearchables()Landroid/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Landroid/server/search/Searchables;->getGlobalSearchActivities()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalSearchActivity()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0}, Landroid/server/search/SearchManagerService;->getSearchables()Landroid/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Landroid/server/search/Searchables;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSearchEngineInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/SearchEngineInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/search/SearchManagerService;->mSearchEngineInfos:Ljava/util/List;

    if-nez v0, :cond_0

    .line 199
    invoke-direct {p0}, Landroid/server/search/SearchManagerService;->initSearchEngineInfos()V

    .line 201
    :cond_0
    iget-object v0, p0, Landroid/server/search/SearchManagerService;->mSearchEngineInfos:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .locals 2
    .parameter "launchActivity"

    .prologue
    .line 161
    if-nez p1, :cond_0

    .line 162
    const-string v0, "SearchManagerService"

    const-string v1, "getSearchableInfo(), activity == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v0, 0x0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/server/search/SearchManagerService;->getSearchables()Landroid/server/search/Searchables;

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
    .line 172
    invoke-direct {p0}, Landroid/server/search/SearchManagerService;->getSearchables()Landroid/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Landroid/server/search/Searchables;->getSearchablesInGlobalSearchList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getWebSearchActivity()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Landroid/server/search/SearchManagerService;->getSearchables()Landroid/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Landroid/server/search/Searchables;->getWebSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method
