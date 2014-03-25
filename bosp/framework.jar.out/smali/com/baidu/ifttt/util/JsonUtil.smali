.class public Lcom/baidu/ifttt/util/JsonUtil;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Ifttt-JsonUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Intent2Json(Landroid/content/Intent;)Lorg/json/JSONObject;
    .locals 6
    .parameter "intent"

    .prologue
    .line 23
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 24
    .local v3, jsonObject:Lorg/json/JSONObject;
    const-string v4, "action"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 28
    .local v2, jsonArray:Lorg/json/JSONArray;
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 29
    .local v0, cats:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 30
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 31
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 53
    .end local v0           #cats:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2           #jsonArray:Lorg/json/JSONArray;
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 57
    const/4 v3, 0x0

    :cond_0
    :goto_1
    return-object v3

    .line 34
    .restart local v0       #cats:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2       #jsonArray:Lorg/json/JSONArray;
    .restart local v3       #jsonObject:Lorg/json/JSONObject;
    :cond_1
    const-string v4, "category"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 39
    const-string v4, "data"

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    :cond_3
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 44
    const-string/jumbo v4, "type"

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    :cond_4
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 49
    const-string/jumbo v4, "package"

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static Intent4Json(Ljava/lang/String;)Landroid/content/Intent;
    .locals 12
    .parameter "str"

    .prologue
    .line 61
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 62
    .local v4, intent:Landroid/content/Intent;
    const/4 v6, 0x0

    .line 64
    .local v6, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .local v7, jsonObject:Lorg/json/JSONObject;
    :try_start_1
    const-string v11, "action"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5

    .line 76
    :goto_0
    :try_start_2
    const-string v11, "category"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 77
    .local v5, jsonArray:Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v3, v11, :cond_1

    .line 78
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, cat:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 77
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 65
    .end local v0           #cat:Ljava/lang/String;
    .end local v3           #i:I
    .end local v5           #jsonArray:Lorg/json/JSONArray;
    .end local v7           #jsonObject:Lorg/json/JSONObject;
    .restart local v6       #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 116
    :goto_2
    return-object v4

    .line 83
    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .restart local v7       #jsonObject:Lorg/json/JSONObject;
    :catch_1
    move-exception v11

    .line 87
    :cond_1
    const/4 v8, 0x0

    .line 88
    .local v8, strData:Ljava/lang/String;
    const/4 v10, 0x0

    .line 89
    .local v10, strType:Ljava/lang/String;
    const/4 v9, 0x0

    .line 90
    .local v9, strPkg:Ljava/lang/String;
    const/4 v1, 0x0

    .line 92
    .local v1, dataUri:Landroid/net/Uri;
    :try_start_3
    const-string v11, "data"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 93
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 94
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    .line 100
    :goto_3
    :try_start_4
    const-string/jumbo v11, "type"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 101
    invoke-virtual {v4, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .line 105
    :goto_4
    if-eqz v8, :cond_2

    if-eqz v10, :cond_2

    .line 106
    invoke-virtual {v4, v1, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    :cond_2
    :try_start_5
    const-string/jumbo v11, "package"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 111
    invoke-virtual {v4, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    move-object v6, v7

    .line 116
    .end local v7           #jsonObject:Lorg/json/JSONObject;
    .restart local v6       #jsonObject:Lorg/json/JSONObject;
    goto :goto_2

    .line 112
    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .restart local v7       #jsonObject:Lorg/json/JSONObject;
    :catch_2
    move-exception v11

    goto :goto_5

    .line 102
    :catch_3
    move-exception v11

    goto :goto_4

    .line 95
    :catch_4
    move-exception v11

    goto :goto_3

    .line 71
    .end local v1           #dataUri:Landroid/net/Uri;
    .end local v8           #strData:Ljava/lang/String;
    .end local v9           #strPkg:Ljava/lang/String;
    .end local v10           #strType:Ljava/lang/String;
    :catch_5
    move-exception v11

    goto :goto_0
.end method
