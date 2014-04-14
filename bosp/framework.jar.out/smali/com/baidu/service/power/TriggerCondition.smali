.class public abstract Lcom/baidu/service/power/TriggerCondition;
.super Lcom/baidu/service/power/ITriggerCondition$Stub;
.source "TriggerCondition.java"


# instance fields
.field mData1:I

.field mData2:I

.field mId:I

.field private mTrigger:Lcom/baidu/service/power/Trigger;

.field mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/baidu/service/power/ITriggerCondition$Stub;-><init>()V

    return-void
.end method

.method private notifyTrigger()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/service/power/TriggerCondition;->mTrigger:Lcom/baidu/service/power/Trigger;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/baidu/service/power/TriggerCondition;->mTrigger:Lcom/baidu/service/power/Trigger;

    invoke-virtual {v0}, Lcom/baidu/service/power/Trigger;->onConditionChanged()V

    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method public getData1()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 46
    iget v0, p0, Lcom/baidu/service/power/TriggerCondition;->mData1:I

    return v0
.end method

.method public getData2()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    iget v0, p0, Lcom/baidu/service/power/TriggerCondition;->mData2:I

    return v0
.end method

.method public getId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 18
    iget v0, p0, Lcom/baidu/service/power/TriggerCondition;->mId:I

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
    .line 23
    iget v0, p0, Lcom/baidu/service/power/TriggerCondition;->mType:I

    return v0
.end method

.method public abstract onCheck(I)Z
.end method

.method public setData1(I)V
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 28
    iput p1, p0, Lcom/baidu/service/power/TriggerCondition;->mData1:I

    .line 29
    invoke-direct {p0}, Lcom/baidu/service/power/TriggerCondition;->notifyTrigger()V

    .line 30
    invoke-static {}, Lcom/baidu/service/power/PowerModeManager;->getInstance()Lcom/baidu/service/power/PowerModeManager;

    move-result-object v0

    .line 31
    .local v0, pm:Lcom/baidu/service/power/PowerModeManager;
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Lcom/baidu/service/power/PowerModeManager;->storePolicys()V

    .line 33
    :cond_0
    return-void
.end method

.method public setData2(I)V
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 37
    iput p1, p0, Lcom/baidu/service/power/TriggerCondition;->mData2:I

    .line 38
    invoke-direct {p0}, Lcom/baidu/service/power/TriggerCondition;->notifyTrigger()V

    .line 39
    invoke-static {}, Lcom/baidu/service/power/PowerModeManager;->getInstance()Lcom/baidu/service/power/PowerModeManager;

    move-result-object v0

    .line 40
    .local v0, pm:Lcom/baidu/service/power/PowerModeManager;
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/baidu/service/power/PowerModeManager;->storePolicys()V

    .line 42
    :cond_0
    return-void
.end method

.method setTrigger(Lcom/baidu/service/power/Trigger;)V
    .locals 0
    .parameter "trigger"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/baidu/service/power/TriggerCondition;->mTrigger:Lcom/baidu/service/power/Trigger;

    .line 56
    return-void
.end method
