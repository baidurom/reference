.class Lcom/android/internal/telephony/cdma/RuimRecords$1;
.super Landroid/content/BroadcastReceiver;
.source "RuimRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/RuimRecords;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/RuimRecords;)V
    .locals 0
    .parameter

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$1;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1103
    if-nez p2, :cond_1

    .line 1141
    :cond_0
    :goto_0
    return-void

    .line 1104
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1105
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$1;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 1106
    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1107
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$1;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$2300(Lcom/android/internal/telephony/cdma/RuimRecords;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords$1;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mHandlePhbReadyReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$2200(Lcom/android/internal/telephony/cdma/RuimRecords;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1108
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$1;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #setter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mSIMInfoReady:Z
    invoke-static {v3, v6}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$2402(Lcom/android/internal/telephony/cdma/RuimRecords;Z)Z

    .line 1109
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$1;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/cdma/RuimRecords;->broadcastPhbStateChangedIntent(Z)V

    .line 1111
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1112
    .local v2, phbFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1113
    const-string v3, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1114
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$1;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$2500(Lcom/android/internal/telephony/cdma/RuimRecords;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords$1;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mHandlePhbReadyReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$2200(Lcom/android/internal/telephony/cdma/RuimRecords;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1118
    .end local v2           #phbFilter:Landroid/content/IntentFilter;
    :cond_2
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1119
    const-string/jumbo v3, "state"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1120
    .local v1, enabled:Z
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$1;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mHandlePhbReadyReceiver MTK_FLIGHT_MODE_POWER_OFF_MD flightmode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 1121
    if-eqz v1, :cond_3

    .line 1122
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$1;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$2600(Lcom/android/internal/telephony/cdma/RuimRecords;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/UiccCardApplication;->getMySimId()I

    move-result v3

    if-ne v6, v3, :cond_4

    .line 1123
    const-string v3, "gsm.sim.ril.phbready.2"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$1;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #setter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mPhbReady:Z
    invoke-static {v3, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$2702(Lcom/android/internal/telephony/cdma/RuimRecords;Z)Z

    .line 1132
    .end local v1           #enabled:Z
    :cond_3
    const-string v3, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1133
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$1;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    const-string v4, "ACTION_SHUTDOWN_IPO: clear PHB_READY systemproperties"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 1134
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$1;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$2800(Lcom/android/internal/telephony/cdma/RuimRecords;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/UiccCardApplication;->getMySimId()I

    move-result v3

    if-ne v6, v3, :cond_5

    .line 1135
    const-string v3, "gsm.sim.ril.phbready.2"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$1;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #setter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mPhbReady:Z
    invoke-static {v3, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$2702(Lcom/android/internal/telephony/cdma/RuimRecords;Z)Z

    goto/16 :goto_0

    .line 1125
    .restart local v1       #enabled:Z
    :cond_4
    const-string v3, "gsm.sim.ril.phbready"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1137
    .end local v1           #enabled:Z
    :cond_5
    const-string v3, "gsm.sim.ril.phbready"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
