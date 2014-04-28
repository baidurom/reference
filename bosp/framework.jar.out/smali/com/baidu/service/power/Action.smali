.class public Lcom/baidu/service/power/Action;
.super Ljava/lang/Object;
.source "Action.java"


# static fields
.field static final ACTION_TYPE_BROADCAST:I = 0x1

.field static final TASK_ACTIONS_BROADCAST_INTENT:Ljava/lang/String; = "intent"

.field static final TASK_ACTIONS_TYPE:Ljava/lang/String; = "type"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field mId:I

.field mIntent:Landroid/content/Intent;

.field private mPolicy:Lcom/baidu/service/power/Policy;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field mRecoveryId:I

.field mType:I

.field mValue:I

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method doAction(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/baidu/service/power/Action;->mPolicy:Lcom/baidu/service/power/Policy;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/baidu/service/power/Action;->mPolicy:Lcom/baidu/service/power/Policy;

    iget v1, p0, Lcom/baidu/service/power/Action;->mType:I

    invoke-virtual {v0, p1, v1}, Lcom/baidu/service/power/Policy;->doAction(Landroid/content/Context;I)V

    .line 52
    :cond_0
    return-void
.end method

.method generateJson()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 38
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 40
    .local v1, json:Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 41
    const-string v2, "intent"

    iget-object v3, p0, Lcom/baidu/service/power/Action;->mIntent:Landroid/content/Intent;

    invoke-static {v3}, Lcom/baidu/service/power/JsonUtil;->intent2Json(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-object v1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method prepare(Landroid/content/Context;Lcom/baidu/service/power/Policy;)V
    .locals 4
    .parameter "context"
    .parameter "policy"

    .prologue
    .line 59
    const-string v2, "SmartPowerService"

    const-string v3, "action.prepare()"

    invoke-static {v2, v3}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iput-object p2, p0, Lcom/baidu/service/power/Action;->mPolicy:Lcom/baidu/service/power/Policy;

    .line 62
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 63
    .local v1, pm:Landroid/os/PowerManager;
    iget-object v2, p0, Lcom/baidu/service/power/Action;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 64
    const/4 v2, 0x1

    const-string v3, "SmartPowerService"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/service/power/Action;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 66
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 67
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/baidu/service/power/Action;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lcom/baidu/service/power/Action;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_1

    .line 69
    new-instance v2, Lcom/baidu/service/power/Action$1;

    invoke-direct {v2, p0}, Lcom/baidu/service/power/Action$1;-><init>(Lcom/baidu/service/power/Action;)V

    iput-object v2, p0, Lcom/baidu/service/power/Action;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/baidu/service/power/Action;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    return-void
.end method

.method setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/baidu/service/power/Action;->mHandler:Landroid/os/Handler;

    .line 56
    return-void
.end method

.method setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/baidu/service/power/Action;->mIntent:Landroid/content/Intent;

    .line 35
    return-void
.end method

.method stop(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/service/power/Action;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/baidu/service/power/Action;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    goto :goto_0
.end method
