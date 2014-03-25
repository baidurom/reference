.class final Lcom/baidu/service/power/TriggerFactory$2;
.super Lcom/baidu/service/power/BroadcastTrigger;
.source "TriggerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/service/power/TriggerFactory;->createTrigger(I)Lcom/baidu/service/power/Trigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field mBatteryLevel:I

.field mIsTriggered:Z

.field mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/baidu/service/power/BroadcastTrigger;-><init>()V

    return-void
.end method


# virtual methods
.method notifyChanged(Lcom/baidu/service/power/Trigger;)V
    .locals 6
    .parameter "trigger"

    .prologue
    const/4 v5, 0x0

    .line 69
    iget-object v0, p1, Lcom/baidu/service/power/Trigger;->mCondition:Lcom/baidu/service/power/TriggerCondition;

    .line 70
    .local v0, cond:Lcom/baidu/service/power/TriggerCondition;
    iget-object v2, p0, Lcom/baidu/service/power/TriggerFactory$2;->mCondition:Lcom/baidu/service/power/TriggerCondition;

    iget v3, v0, Lcom/baidu/service/power/TriggerCondition;->mData1:I

    iput v3, v2, Lcom/baidu/service/power/TriggerCondition;->mData1:I

    .line 71
    const-string v2, "SmartPowerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyChagned! trigger = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", data1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/baidu/service/power/TriggerCondition;->mData1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsTriggered = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/baidu/service/power/TriggerFactory$2;->mIsTriggered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v2, p0, Lcom/baidu/service/power/TriggerFactory$2;->mCondition:Lcom/baidu/service/power/TriggerCondition;

    iget v3, p0, Lcom/baidu/service/power/TriggerFactory$2;->mBatteryLevel:I

    invoke-virtual {v2, v3}, Lcom/baidu/service/power/TriggerCondition;->onCheck(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    iget-boolean v2, p0, Lcom/baidu/service/power/TriggerFactory$2;->mIsTriggered:Z

    if-nez v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/baidu/service/power/TriggerFactory$2;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/baidu/service/power/TriggerFactory$2;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 75
    .local v1, m:Landroid/os/Message;
    iget-object v2, p0, Lcom/baidu/service/power/TriggerFactory$2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 76
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/baidu/service/power/TriggerFactory$2;->mIsTriggered:Z

    .line 80
    .end local v1           #m:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iput-boolean v5, p0, Lcom/baidu/service/power/TriggerFactory$2;->mIsTriggered:Z

    goto :goto_0
.end method

.method prepare(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 36
    const-string v1, "SmartPowerService"

    const-string/jumbo v2, "trigger.prepare()."

    invoke-static {v1, v2}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v1, Lcom/baidu/service/power/TriggerFactory$2$1;

    invoke-direct {v1, p0}, Lcom/baidu/service/power/TriggerFactory$2$1;-><init>(Lcom/baidu/service/power/TriggerFactory$2;)V

    iput-object v1, p0, Lcom/baidu/service/power/TriggerFactory$2;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/baidu/service/power/TriggerFactory$2;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 55
    return-void
.end method

.method stop(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/baidu/service/power/TriggerFactory$2;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/baidu/service/power/TriggerFactory$2;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/service/power/TriggerFactory$2;->mIsTriggered:Z

    .line 65
    return-void

    .line 62
    :catch_0
    move-exception v0

    goto :goto_0
.end method
