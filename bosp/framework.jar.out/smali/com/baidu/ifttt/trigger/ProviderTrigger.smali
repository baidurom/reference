.class public Lcom/baidu/ifttt/trigger/ProviderTrigger;
.super Lcom/baidu/ifttt/trigger/BaseProviderTrigger;
.source "ProviderTrigger.java"


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "jsonObject"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/baidu/ifttt/trigger/BaseProviderTrigger;-><init>(Lorg/json/JSONObject;)V

    .line 13
    :try_start_0
    const-string/jumbo v1, "uri"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    .local v0, strUri:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 15
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/ifttt/trigger/ProviderTrigger;->mUri:Landroid/net/Uri;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .end local v0           #strUri:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 17
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 23
    invoke-super {p0}, Lcom/baidu/ifttt/trigger/BaseProviderTrigger;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 25
    .local v0, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v1, "uri"

    iget-object v2, p0, Lcom/baidu/ifttt/trigger/ProviderTrigger;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .end local v0           #jsonObject:Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 27
    .restart local v0       #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 30
    const/4 v0, 0x0

    goto :goto_0
.end method
