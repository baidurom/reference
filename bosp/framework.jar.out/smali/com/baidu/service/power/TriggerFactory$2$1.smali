.class Lcom/baidu/service/power/TriggerFactory$2$1;
.super Landroid/content/BroadcastReceiver;
.source "TriggerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/service/power/TriggerFactory$2;->prepare(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/service/power/TriggerFactory$2;


# direct methods
.method constructor <init>(Lcom/baidu/service/power/TriggerFactory$2;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/baidu/service/power/TriggerFactory$2$1;->this$0:Lcom/baidu/service/power/TriggerFactory$2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 39
    const-string v1, "level"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 40
    .local v0, level:I
    iget-object v1, p0, Lcom/baidu/service/power/TriggerFactory$2$1;->this$0:Lcom/baidu/service/power/TriggerFactory$2;

    iput v0, v1, Lcom/baidu/service/power/TriggerFactory$2;->mBatteryLevel:I

    .line 41
    const-string v1, "SmartPowerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "battery changed! level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsTriggered = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/service/power/TriggerFactory$2$1;->this$0:Lcom/baidu/service/power/TriggerFactory$2;

    iget-boolean v3, v3, Lcom/baidu/service/power/TriggerFactory$2;->mIsTriggered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/baidu/service/power/TriggerFactory$2$1;->this$0:Lcom/baidu/service/power/TriggerFactory$2;

    iget-object v1, v1, Lcom/baidu/service/power/TriggerFactory$2;->mCondition:Lcom/baidu/service/power/TriggerCondition;

    invoke-virtual {v1, v0}, Lcom/baidu/service/power/TriggerCondition;->onCheck(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/baidu/service/power/TriggerFactory$2$1;->this$0:Lcom/baidu/service/power/TriggerFactory$2;

    iget-boolean v1, v1, Lcom/baidu/service/power/TriggerFactory$2;->mIsTriggered:Z

    if-nez v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/baidu/service/power/TriggerFactory$2$1;->this$0:Lcom/baidu/service/power/TriggerFactory$2;

    iget-object v1, v1, Lcom/baidu/service/power/TriggerFactory$2;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 45
    iget-object v1, p0, Lcom/baidu/service/power/TriggerFactory$2$1;->this$0:Lcom/baidu/service/power/TriggerFactory$2;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/baidu/service/power/TriggerFactory$2;->mIsTriggered:Z

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/baidu/service/power/TriggerFactory$2$1;->this$0:Lcom/baidu/service/power/TriggerFactory$2;

    iput-boolean v4, v1, Lcom/baidu/service/power/TriggerFactory$2;->mIsTriggered:Z

    goto :goto_0
.end method
