.class Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DelayWalledGardenState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 841
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 844
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v1, 0x21068

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(IJ)V

    .line 845
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    .line 849
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 865
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 851
    :pswitch_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLastWalledGardenCheckTime:Ljava/lang/Long;
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4102(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/Long;)Ljava/lang/Long;

    .line 852
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->isWalledGardenConnection()Z
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4300(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v1, "Walled garden test complete - walled garden detected"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenState:Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenState;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenState;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4500(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 863
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 856
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v1, "Walled garden test complete - online"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1900(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 858
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 860
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 849
    nop

    :pswitch_data_0
    .packed-switch 0x21068
        :pswitch_0
    .end packed-switch
.end method
