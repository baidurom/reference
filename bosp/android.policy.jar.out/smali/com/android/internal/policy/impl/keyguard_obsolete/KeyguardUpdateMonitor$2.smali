.class Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v12, 0x0

    .line 144
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.TIME_TICK"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.TIME_SET"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 150
    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x12d

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 186
    :cond_1
    :goto_0
    return-void

    .line 151
    :cond_2
    const-string v7, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 152
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v8, p2}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v8

    #setter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->access$602(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 153
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v8, p2}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->access$900(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v8

    #setter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->access$802(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 154
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x12f

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 155
    :cond_3
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 156
    const-string v7, "status"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 157
    .local v6, status:I
    const-string v7, "plugged"

    invoke-virtual {p2, v7, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 158
    .local v4, plugged:I
    const-string v7, "level"

    invoke-virtual {p2, v7, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 159
    .local v2, level:I
    const-string v7, "health"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 160
    .local v1, health:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x12e

    new-instance v9, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$BatteryStatus;

    invoke-direct {v9, v6, v2, v4, v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIII)V

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 162
    .local v3, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 163
    .end local v1           #health:I
    .end local v2           #level:I
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #plugged:I
    .end local v6           #status:I
    :cond_4
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 168
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x130

    invoke-static {p2}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$SimArgs;->fromIntent(Landroid/content/Intent;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$SimArgs;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 170
    :cond_5
    const-string v7, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 171
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x131

    const-string v10, "android.media.EXTRA_RINGER_MODE"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v8, v9, v10, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 173
    :cond_6
    const-string v7, "android.intent.action.PHONE_STATE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 174
    const-string v7, "state"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 175
    .local v5, state:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x132

    invoke-virtual {v8, v9, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 176
    .end local v5           #state:Ljava/lang/String;
    :cond_7
    const-string v7, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 178
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x135

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 179
    :cond_8
    const-string v7, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 180
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x136

    const-string v10, "android.intent.extra.user_handle"

    invoke-virtual {p2, v10, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v8, v9, v10, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 182
    :cond_9
    const-string v7, "android.intent.action.USER_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 183
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x137

    const-string v10, "android.intent.extra.user_handle"

    invoke-virtual {p2, v10, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v8, v9, v10, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
