.class public Lcom/baidu/ifttt/trigger/BroadcastTrigger;
.super Lcom/baidu/ifttt/trigger/Trigger;
.source "BroadcastTrigger.java"


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mReceiveIntent:Landroid/content/Intent;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/ifttt/trigger/Trigger;-><init>(I)V

    .line 81
    new-instance v0, Lcom/baidu/ifttt/trigger/BroadcastTrigger$1;

    invoke-direct {v0, p0}, Lcom/baidu/ifttt/trigger/BroadcastTrigger$1;-><init>(Lcom/baidu/ifttt/trigger/BroadcastTrigger;)V

    iput-object v0, p0, Lcom/baidu/ifttt/trigger/BroadcastTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 26
    iput-object p1, p0, Lcom/baidu/ifttt/trigger/BroadcastTrigger;->mIntent:Landroid/content/Intent;

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "jsonObject"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/baidu/ifttt/trigger/Trigger;-><init>(Lorg/json/JSONObject;)V

    .line 81
    new-instance v1, Lcom/baidu/ifttt/trigger/BroadcastTrigger$1;

    invoke-direct {v1, p0}, Lcom/baidu/ifttt/trigger/BroadcastTrigger$1;-><init>(Lcom/baidu/ifttt/trigger/BroadcastTrigger;)V

    iput-object v1, p0, Lcom/baidu/ifttt/trigger/BroadcastTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 32
    :try_start_0
    const-string v1, "intent"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 33
    .local v0, jsonIntent:Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/ifttt/util/JsonUtil;->Intent4Json(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/ifttt/trigger/BroadcastTrigger;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v0           #jsonIntent:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/baidu/ifttt/trigger/BroadcastTrigger;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/baidu/ifttt/trigger/BroadcastTrigger;->mReceiveIntent:Landroid/content/Intent;

    return-object p1
.end method


# virtual methods
.method protected buildExtraData()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/ifttt/trigger/BroadcastTrigger;->mReceiveIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/ifttt/trigger/BroadcastTrigger;->mExtra:Landroid/os/Bundle;

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public registerTrigger()V
    .locals 6

    .prologue
    .line 53
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 54
    .local v2, filter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/baidu/ifttt/trigger/BroadcastTrigger;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    iget-object v4, p0, Lcom/baidu/ifttt/trigger/BroadcastTrigger;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    .line 61
    .local v1, cats:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 62
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 63
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 64
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_1

    .line 67
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    iget-object v4, p0, Lcom/baidu/ifttt/trigger/BroadcastTrigger;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/baidu/ifttt/trigger/BroadcastTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 41
    invoke-super {p0}, Lcom/baidu/ifttt/trigger/Trigger;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 43
    .local v0, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "intent"

    iget-object v2, p0, Lcom/baidu/ifttt/trigger/BroadcastTrigger;->mIntent:Landroid/content/Intent;

    invoke-static {v2}, Lcom/baidu/ifttt/util/JsonUtil;->Intent2Json(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v0           #jsonObject:Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 45
    .restart local v0       #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 48
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unRegisterTrigger()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/baidu/ifttt/trigger/BroadcastTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/ifttt/trigger/BroadcastTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 73
    return-void
.end method
