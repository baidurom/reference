.class Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnlineWatchState"
.end annotation


# instance fields
.field checkGuard:I

.field lastCheckTime:Ljava/lang/Long;

.field pingInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field signalUnstable:Z

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

.field unstableSignalChecks:Z


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 870
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 874
    iput-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->unstableSignalChecks:Z

    .line 880
    iput-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->signalUnstable:Z

    .line 887
    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->checkGuard:I

    .line 888
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->lastCheckTime:Ljava/lang/Long;

    .line 891
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->pingInfoMap:Ljava/util/HashMap;

    return-void
.end method

.method private triggerSingleDnsCheck()V
    .locals 7

    .prologue
    .line 982
    iget-boolean v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->signalUnstable:Z

    if-eqz v2, :cond_0

    .line 983
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheckShortIntervalMs:J
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)J

    move-result-wide v0

    .line 984
    .local v0, waitInterval:J
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->unstableSignalChecks:Z

    .line 988
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v4, 0x21066

    iget v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->checkGuard:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->lastCheckTime:Ljava/lang/Long;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->waitTime(JLjava/lang/Long;)J
    invoke-static {v0, v1, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4200(JLjava/lang/Long;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 990
    return-void

    .line 986
    .end local v0           #waitInterval:J
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheckLongIntervalMs:J
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5100(Landroid/net/wifi/WifiWatchdogStateMachine;)J

    move-result-wide v0

    .restart local v0       #waitInterval:J
    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 895
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->lastCheckTime:Ljava/lang/Long;

    .line 896
    iput-boolean v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->signalUnstable:Z

    .line 897
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->checkGuard:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->checkGuard:I

    .line 898
    iput-boolean v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->unstableSignalChecks:Z

    .line 899
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->pingInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 900
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->triggerSingleDnsCheck()V

    .line 901
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPinger:Landroid/net/DnsPinger;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3100(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/DnsPinger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/DnsPinger;->cancelPings()V

    .line 975
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 905
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    move v6, v5

    .line 969
    :cond_0
    :goto_0
    return v6

    .line 907
    :sswitch_0
    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNetEventCounter:I
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v8

    if-eq v7, v8, :cond_1

    .line 909
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v7, "Rssi change message out of sync, ignoring"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v5, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 913
    :cond_1
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 914
    .local v3, newRssi:I
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->rssiStrengthAboveCutoff(I)Z
    invoke-static {v7, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4800(Landroid/net/wifi/WifiWatchdogStateMachine;I)Z

    move-result v7

    if-nez v7, :cond_2

    move v5, v6

    :cond_2
    iput-boolean v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->signalUnstable:Z

    .line 916
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OnlineWatchState:: new rssi "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " --> level "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x4

    invoke-static {v3, v8}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v5, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 920
    iget-boolean v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->signalUnstable:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->unstableSignalChecks:Z

    if-nez v5, :cond_0

    .line 922
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v7, "Sending triggered check msg"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v5, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 924
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->triggerSingleDnsCheck()V

    goto :goto_0

    .line 928
    .end local v3           #newRssi:I
    :sswitch_1
    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->checkGuard:I

    if-eq v7, v8, :cond_3

    .line 930
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v7, "Single check msg out of sync, ignoring."

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v5, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 934
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->lastCheckTime:Ljava/lang/Long;

    .line 935
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->pingInfoMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 936
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPinger:Landroid/net/DnsPinger;
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3100(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/DnsPinger;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/DnsPinger;->getDnsList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 937
    .local v0, curDns:Ljava/net/InetAddress;
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->pingInfoMap:Ljava/util/HashMap;

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPinger:Landroid/net/DnsPinger;
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3100(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/DnsPinger;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPingTimeoutMs:I
    invoke-static {v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v9

    invoke-virtual {v8, v0, v9, v5}, Landroid/net/DnsPinger;->pingDnsAsync(Ljava/net/InetAddress;II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 942
    .end local v0           #curDns:Ljava/net/InetAddress;
    .end local v2           #i$:Ljava/util/Iterator;
    :sswitch_2
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->pingInfoMap:Ljava/util/HashMap;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 943
    .local v1, curDnsServer:Ljava/net/InetAddress;
    if-eqz v1, :cond_0

    .line 946
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->pingInfoMap:Ljava/util/HashMap;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 948
    .local v4, responseTime:I
    if-ltz v4, :cond_4

    .line 950
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Single DNS ping OK. Response time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from DNS "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 953
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->pingInfoMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 955
    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->checkGuard:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->checkGuard:I

    .line 956
    iput-boolean v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->unstableSignalChecks:Z

    .line 957
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->triggerSingleDnsCheck()V

    goto/16 :goto_0

    .line 959
    :cond_4
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->pingInfoMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 961
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v7, "Single dns ping failure. All dns servers failed, starting full checks."

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v5, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 964
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheckingState:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2100(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;

    move-result-object v7

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 905
    :sswitch_data_0
    .sparse-switch
        0x21003 -> :sswitch_0
        0x21066 -> :sswitch_1
        0x50000 -> :sswitch_2
    .end sparse-switch
.end method
