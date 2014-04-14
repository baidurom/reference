.class Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver;
.super Landroid/database/ContentObserver;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/search/SearchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlobalSearchProviderObserver"
.end annotation


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Landroid/server/search/SearchManagerService;


# direct methods
.method public constructor <init>(Landroid/server/search/SearchManagerService;Landroid/content/ContentResolver;)V
    .locals 3
    .parameter
    .parameter "resolver"

    .prologue
    .line 173
    iput-object p1, p0, Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Landroid/server/search/SearchManagerService;

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 175
    iput-object p2, p0, Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver;->mResolver:Landroid/content/ContentResolver;

    .line 176
    iget-object v0, p0, Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "search_global_search_activity"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 180
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    .line 184
    iget-object v2, p0, Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Landroid/server/search/SearchManagerService;

    #getter for: Landroid/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;
    invoke-static {v2}, Landroid/server/search/SearchManagerService;->access$500(Landroid/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    monitor-enter v3

    .line 185
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Landroid/server/search/SearchManagerService;

    #getter for: Landroid/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;
    invoke-static {v2}, Landroid/server/search/SearchManagerService;->access$500(Landroid/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 186
    iget-object v2, p0, Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Landroid/server/search/SearchManagerService;

    iget-object v4, p0, Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Landroid/server/search/SearchManagerService;

    #getter for: Landroid/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;
    invoke-static {v4}, Landroid/server/search/SearchManagerService;->access$500(Landroid/server/search/SearchManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    #calls: Landroid/server/search/SearchManagerService;->getSearchables(I)Landroid/server/search/Searchables;
    invoke-static {v2, v4}, Landroid/server/search/SearchManagerService;->access$300(Landroid/server/search/SearchManagerService;I)Landroid/server/search/Searchables;

    move-result-object v2

    invoke-virtual {v2}, Landroid/server/search/Searchables;->buildSearchableList()V

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 191
    iget-object v2, p0, Landroid/server/search/SearchManagerService$GlobalSearchProviderObserver;->this$0:Landroid/server/search/SearchManagerService;

    #getter for: Landroid/server/search/SearchManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/server/search/SearchManagerService;->access$200(Landroid/server/search/SearchManagerService;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 192
    return-void

    .line 188
    .end local v1           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
