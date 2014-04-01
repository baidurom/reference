.class Landroid/net/wifi/WifiStateMachine$6;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 771
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$6;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 774
    const-string v5, "WifiStateMachine"

    const-string v6, "Received ACTION_SIM_INFO_UPDATE"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const-string v5, "gsm.sim.inserted"

    const/4 v6, -0x1

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 777
    .local v2, isSimInserted:I
    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSimInserted="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    if-nez v2, :cond_0

    .line 779
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$6;->this$0:Landroid/net/wifi/WifiStateMachine;

    iput-boolean v4, v5, Landroid/net/wifi/WifiStateMachine;->mIsSimAbsent:Z

    .line 781
    :cond_0
    const/4 v3, -0x1

    .line 783
    .local v3, slot:I
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$6;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "gprs_connection_sim_setting"

    const-wide/16 v7, -0x5

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 784
    .local v0, currentDataConnectionMultiSimId:J
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$6;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v3

    .line 788
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$6;->this$0:Landroid/net/wifi/WifiStateMachine;

    if-eq v3, v4, :cond_1

    if-eqz v3, :cond_1

    :goto_0
    iput-boolean v4, v5, Landroid/net/wifi/WifiStateMachine;->mIsGPRSDisabled:Z

    .line 798
    return-void

    .line 788
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method
