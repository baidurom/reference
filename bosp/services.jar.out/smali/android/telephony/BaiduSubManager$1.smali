.class Landroid/telephony/BaiduSubManager$1;
.super Landroid/content/BroadcastReceiver;
.source "BaiduSubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/BaiduSubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/BaiduSubManager;


# direct methods
.method constructor <init>(Landroid/telephony/BaiduSubManager;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Landroid/telephony/BaiduSubManager$1;->this$0:Landroid/telephony/BaiduSubManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 129
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 132
    const-string v6, "BaiduSubManager"

    const-string v7, "ACTION_ANY_DATA_CONNECTION_STATE_CHANGED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v6, "reason"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, reason:Ljava/lang/String;
    const-string v6, "apnType"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, apnTypeList:Ljava/lang/String;
    const-string v6, "simId"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 142
    .local v5, slotId:I
    const-string v6, "default"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/telephony/BaiduSubManager$1;->this$0:Landroid/telephony/BaiduSubManager;

    #getter for: Landroid/telephony/BaiduSubManager;->mDataSubscription:I
    invoke-static {v6}, Landroid/telephony/BaiduSubManager;->access$000(Landroid/telephony/BaiduSubManager;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 144
    const-string v6, "BaiduSubManager"

    const-string v7, "setDataSubscription success"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v6, p0, Landroid/telephony/BaiduSubManager$1;->this$0:Landroid/telephony/BaiduSubManager;

    const/16 v7, 0x7d1

    invoke-virtual {v6, v7}, Landroid/telephony/BaiduSubManager;->removeMessages(I)V

    .line 147
    iget-object v6, p0, Landroid/telephony/BaiduSubManager$1;->this$0:Landroid/telephony/BaiduSubManager;

    #getter for: Landroid/telephony/BaiduSubManager;->mSetDataSubscriptionMsg:Landroid/os/Message;
    invoke-static {v6}, Landroid/telephony/BaiduSubManager;->access$100(Landroid/telephony/BaiduSubManager;)Landroid/os/Message;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 148
    const/4 v4, 0x1

    .line 149
    .local v4, result:Z
    const/4 v2, 0x0

    .line 150
    .local v2, exception:Ljava/lang/RuntimeException;
    iget-object v6, p0, Landroid/telephony/BaiduSubManager$1;->this$0:Landroid/telephony/BaiduSubManager;

    #getter for: Landroid/telephony/BaiduSubManager;->mSetDataSubscriptionMsg:Landroid/os/Message;
    invoke-static {v6}, Landroid/telephony/BaiduSubManager;->access$100(Landroid/telephony/BaiduSubManager;)Landroid/os/Message;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 151
    iget-object v6, p0, Landroid/telephony/BaiduSubManager$1;->this$0:Landroid/telephony/BaiduSubManager;

    #getter for: Landroid/telephony/BaiduSubManager;->mSetDataSubscriptionMsg:Landroid/os/Message;
    invoke-static {v6}, Landroid/telephony/BaiduSubManager;->access$100(Landroid/telephony/BaiduSubManager;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 152
    iget-object v6, p0, Landroid/telephony/BaiduSubManager$1;->this$0:Landroid/telephony/BaiduSubManager;

    const/4 v7, 0x0

    #setter for: Landroid/telephony/BaiduSubManager;->mSetDataSubscriptionMsg:Landroid/os/Message;
    invoke-static {v6, v7}, Landroid/telephony/BaiduSubManager;->access$102(Landroid/telephony/BaiduSubManager;Landroid/os/Message;)Landroid/os/Message;

    .line 156
    .end local v1           #apnTypeList:Ljava/lang/String;
    .end local v2           #exception:Ljava/lang/RuntimeException;
    .end local v3           #reason:Ljava/lang/String;
    .end local v4           #result:Z
    .end local v5           #slotId:I
    :cond_0
    return-void
.end method
