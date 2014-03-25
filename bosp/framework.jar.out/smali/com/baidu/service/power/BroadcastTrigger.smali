.class public abstract Lcom/baidu/service/power/BroadcastTrigger;
.super Lcom/baidu/service/power/Trigger;
.source "BroadcastTrigger.java"


# instance fields
.field mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/baidu/service/power/Trigger;-><init>()V

    return-void
.end method


# virtual methods
.method generateJson()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 17
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 19
    .local v1, json:Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    const-string v2, "intent"

    iget-object v3, p0, Lcom/baidu/service/power/BroadcastTrigger;->mIntent:Landroid/content/Intent;

    invoke-static {v3}, Lcom/baidu/service/power/JsonUtil;->intent2Json(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    return-object v1

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/baidu/service/power/BroadcastTrigger;->mIntent:Landroid/content/Intent;

    .line 14
    return-void
.end method
