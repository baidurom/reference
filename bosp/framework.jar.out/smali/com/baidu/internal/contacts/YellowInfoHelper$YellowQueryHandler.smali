.class Lcom/baidu/internal/contacts/YellowInfoHelper$YellowQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "YellowInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/contacts/YellowInfoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YellowQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/contacts/YellowInfoHelper;


# direct methods
.method public constructor <init>(Lcom/baidu/internal/contacts/YellowInfoHelper;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowQueryHandler;->this$0:Lcom/baidu/internal/contacts/YellowInfoHelper;

    .line 99
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 100
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 104
    instance-of v3, p2, Ljava/util/Map;

    if-eqz v3, :cond_1

    move-object v1, p2

    .line 105
    check-cast v1, Ljava/util/HashMap;

    .line 106
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "number"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 107
    .local v2, number:Ljava/lang/String;
    iget-object v3, p0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowQueryHandler;->this$0:Lcom/baidu/internal/contacts/YellowInfoHelper;

    #calls: Lcom/baidu/internal/contacts/YellowInfoHelper;->cacheInfoFromCursor(Landroid/database/Cursor;)Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    invoke-static {v3, p3}, Lcom/baidu/internal/contacts/YellowInfoHelper;->access$000(Lcom/baidu/internal/contacts/YellowInfoHelper;Landroid/database/Cursor;)Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    move-result-object v0

    .line 108
    .local v0, info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    if-eqz v2, :cond_0

    iget v3, v0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 112
    iget-object v3, p0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowQueryHandler;->this$0:Lcom/baidu/internal/contacts/YellowInfoHelper;

    #getter for: Lcom/baidu/internal/contacts/YellowInfoHelper;->mYellowInfoCacheMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/baidu/internal/contacts/YellowInfoHelper;->access$100(Lcom/baidu/internal/contacts/YellowInfoHelper;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_0
    const-string v3, "listener"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/internal/contacts/YellowInfoHelper$OnCompleteListener;

    invoke-interface {v3, v0}, Lcom/baidu/internal/contacts/YellowInfoHelper$OnCompleteListener;->onComplete(Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;)V

    .line 116
    .end local v0           #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .end local v1           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #number:Ljava/lang/String;
    :cond_1
    return-void
.end method
