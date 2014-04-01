.class public Lcom/baidu/ifttt/action/BroadcastAction;
.super Lcom/baidu/ifttt/action/Action;
.source "BroadcastAction.java"


# instance fields
.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/ifttt/action/Action;-><init>(I)V

    .line 18
    iput-object p1, p0, Lcom/baidu/ifttt/action/BroadcastAction;->mIntent:Landroid/content/Intent;

    .line 19
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "jsonObject"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/baidu/ifttt/action/Action;-><init>(Lorg/json/JSONObject;)V

    .line 24
    :try_start_0
    const-string v1, "intent"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 25
    .local v0, jsonIntent:Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/ifttt/util/JsonUtil;->Intent4Json(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/ifttt/action/BroadcastAction;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .end local v0           #jsonIntent:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public doAction(Landroid/os/Bundle;)V
    .locals 2
    .parameter "extra"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/ifttt/action/BroadcastAction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/ifttt/action/BroadcastAction;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 35
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 38
    invoke-super {p0}, Lcom/baidu/ifttt/action/Action;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 40
    .local v0, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "intent"

    iget-object v2, p0, Lcom/baidu/ifttt/action/BroadcastAction;->mIntent:Landroid/content/Intent;

    invoke-static {v2}, Lcom/baidu/ifttt/util/JsonUtil;->Intent2Json(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v0           #jsonObject:Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 42
    .restart local v0       #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 45
    const/4 v0, 0x0

    goto :goto_0
.end method
