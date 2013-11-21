.class public Lcom/baidu/ifttt/trigger/AlarmTrigger;
.super Lcom/baidu/ifttt/trigger/Trigger;
.source "AlarmTrigger.java"


# instance fields
.field private ALARMACTION:Ljava/lang/String;

.field private mAction:Ljava/lang/String;

.field private mAlarmSender:Landroid/app/PendingIntent;

.field private mCron:Lcom/baidu/ifttt/util/CronSequenceGenerator;

.field private mCronStr:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTriggerDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "jsonObject"

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1}, Lcom/baidu/ifttt/trigger/Trigger;-><init>(Lorg/json/JSONObject;)V

    .line 20
    const-string v0, "com.baidu.ifttt.alarm"

    iput-object v0, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger;->ALARMACTION:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger;->mAction:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger;->mTriggerDate:Ljava/util/Date;

    .line 89
    new-instance v0, Lcom/baidu/ifttt/trigger/AlarmTrigger$1;

    invoke-direct {v0, p0}, Lcom/baidu/ifttt/trigger/AlarmTrigger$1;-><init>(Lcom/baidu/ifttt/trigger/AlarmTrigger;)V

    iput-object v0, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 30
    :try_start_0
    const-string/jumbo v0, "time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger;->mCronStr:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 34
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger;->ALARMACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger;->mAction:Ljava/lang/String;

    .line 36
    :try_start_1
    new-instance v0, Lcom/baidu/ifttt/util/CronSequenceGenerator;

    iget-object v1, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger;->mCronStr:Ljava/lang/String;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/ifttt/util/CronSequenceGenerator;-><init>(Ljava/lang/String;Ljava/util/TimeZone;)V

    iput-object v0, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger;->mCron:Lcom/baidu/ifttt/util/CronSequenceGenerator;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 40
    :goto_1
    return-void

    .line 37
    :catch_0
    move-exception v0

    goto :goto_1

    .line 31
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected buildExtraData()Z
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/baidu/ifttt/trigger/AlarmTrigger;->unRegisterTrigger()V

    .line 63
    invoke-virtual {p0}, Lcom/baidu/ifttt/trigger/AlarmTrigger;->registerTrigger()V

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public registerTrigger()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 44
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 45
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    iget-object v3, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 47
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger;->mAction:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger;->mContext:Landroid/content/Context;

    const/high16 v4, 0x800

    invoke-static {v3, v6, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger;->mAlarmSender:Landroid/app/PendingIntent;

    .line 50
    iget-object v3, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 51
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v3, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger;->mAlarmSender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 53
    iget-object v3, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger;->mTriggerDate:Ljava/util/Date;

    if-nez v3, :cond_0

    .line 54
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v3, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger;->mTriggerDate:Ljava/util/Date;

    .line 56
    :cond_0
    iget-object v3, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger;->mCron:Lcom/baidu/ifttt/util/CronSequenceGenerator;

    iget-object v4, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger;->mTriggerDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Lcom/baidu/ifttt/util/CronSequenceGenerator;->next(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger;->mTriggerDate:Ljava/util/Date;

    .line 58
    iget-object v3, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger;->mTriggerDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger;->mAlarmSender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v6, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 59
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 79
    invoke-super {p0}, Lcom/baidu/ifttt/trigger/Trigger;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 81
    .local v0, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v1, "time"

    iget-object v2, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger;->mCronStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v0           #jsonObject:Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 83
    .restart local v0       #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 86
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unRegisterTrigger()V
    .locals 3

    .prologue
    .line 69
    iget-object v1, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 70
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger;->mAlarmSender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/ifttt/trigger/AlarmTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v1

    goto :goto_0
.end method
