.class public abstract Lcom/baidu/service/power/Trigger;
.super Lcom/baidu/service/power/ITrigger$Stub;
.source "Trigger.java"


# static fields
.field static final IFTTT_TASK_TRIGGER_ATTR_ALARM_TIME:Ljava/lang/String; = "alarm"

.field static final IFTTT_TASK_TRIGGER_ATTR_BROADCAST_INTENT:Ljava/lang/String; = "intent"

.field static final IFTTT_TASK_TRIGGER_TYPE:Ljava/lang/String; = "type"

.field static final IFTTT_TRIGGER_TYPE_ALARM:I = 0x2

.field static final IFTTT_TRIGGER_TYPE_BROADCAST:I = 0x0

.field static final IFTTT_TRIGGER_TYPE_PROVIDER:I = 0x1


# instance fields
.field mCondition:Lcom/baidu/service/power/TriggerCondition;

.field mHandler:Landroid/os/Handler;

.field mId:I

.field mName:Ljava/lang/String;

.field mPolicy:Lcom/baidu/service/power/Policy;

.field mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/baidu/service/power/ITrigger$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method abstract generateJson()Lorg/json/JSONObject;
.end method

.method public getCondition()Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/service/power/Trigger;->mCondition:Lcom/baidu/service/power/TriggerCondition;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/baidu/service/power/Trigger;->mCondition:Lcom/baidu/service/power/TriggerCondition;

    invoke-virtual {v0}, Lcom/baidu/service/power/TriggerCondition;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    iget v0, p0, Lcom/baidu/service/power/Trigger;->mId:I

    return v0
.end method

.method public getType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 48
    iget v0, p0, Lcom/baidu/service/power/Trigger;->mType:I

    return v0
.end method

.method abstract notifyChanged(Lcom/baidu/service/power/Trigger;)V
.end method

.method onConditionChanged()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/service/power/Trigger;->mPolicy:Lcom/baidu/service/power/Policy;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/baidu/service/power/Trigger;->mPolicy:Lcom/baidu/service/power/Policy;

    invoke-virtual {v0}, Lcom/baidu/service/power/Policy;->onTriggerChanged()V

    .line 65
    :cond_0
    return-void
.end method

.method abstract prepare(Landroid/content/Context;)V
.end method

.method setCondition(Lcom/baidu/service/power/TriggerCondition;)V
    .locals 1
    .parameter "condition"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/baidu/service/power/Trigger;->mCondition:Lcom/baidu/service/power/TriggerCondition;

    .line 34
    iget-object v0, p0, Lcom/baidu/service/power/Trigger;->mCondition:Lcom/baidu/service/power/TriggerCondition;

    invoke-virtual {v0, p0}, Lcom/baidu/service/power/TriggerCondition;->setTrigger(Lcom/baidu/service/power/Trigger;)V

    .line 35
    return-void
.end method

.method setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/baidu/service/power/Trigger;->mHandler:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method setPolicy(Lcom/baidu/service/power/Policy;)V
    .locals 0
    .parameter "policy"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/baidu/service/power/Trigger;->mPolicy:Lcom/baidu/service/power/Policy;

    .line 60
    return-void
.end method

.method abstract stop(Landroid/content/Context;)V
.end method
