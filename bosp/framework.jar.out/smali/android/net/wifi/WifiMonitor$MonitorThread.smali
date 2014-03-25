.class Landroid/net/wifi/WifiMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiMonitor;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiMonitor;)V
    .locals 2
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiMo-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {p1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiNative;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiNative;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method private connectToSupplicant()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 529
    const/4 v0, 0x0

    .line 531
    .local v0, connectTries:I
    :goto_0
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStopped:Z
    invoke-static {v4}, Landroid/net/wifi/WifiMonitor;->access$200(Landroid/net/wifi/WifiMonitor;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 532
    const-string v4, "WifiMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connectToSupplicant for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", connectTries:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Landroid/net/wifi/WifiMonitor;->access$500(Landroid/net/wifi/WifiMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 534
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiNative;->connectToSupplicant()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 535
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Landroid/net/wifi/WifiMonitor;->access$500(Landroid/net/wifi/WifiMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 545
    :goto_1
    return v2

    .line 538
    :cond_0
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStopped:Z
    invoke-static {v4}, Landroid/net/wifi/WifiMonitor;->access$200(Landroid/net/wifi/WifiMonitor;)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #connectTries:I
    .local v1, connectTries:I
    const/4 v4, 0x5

    if-ge v0, v4, :cond_1

    .line 539
    #calls: Landroid/net/wifi/WifiMonitor;->nap(I)V
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$600(I)V

    move v0, v1

    .end local v1           #connectTries:I
    .restart local v0       #connectTries:I
    goto :goto_0

    .end local v0           #connectTries:I
    .restart local v1       #connectTries:I
    :cond_1
    move v0, v1

    .line 544
    .end local v1           #connectTries:I
    .restart local v0       #connectTries:I
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$500(Landroid/net/wifi/WifiMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move v2, v3

    .line 545
    goto :goto_1
.end method

.method private handleDriverEvent(Ljava/lang/String;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 549
    if-nez p1, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    const-string v0, "HANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x2400c

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method private handleHostApEvents(Ljava/lang/String;)V
    .locals 7
    .parameter "dataString"

    .prologue
    const v6, 0x2402a

    const v5, 0x24029

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 725
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 727
    .local v0, tokens:[Ljava/lang/String;
    aget-object v1, v0, v3

    const-string v2, "AP-STA-CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 728
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiNative;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiNative;->mInterface:Ljava/lang/String;

    const-string v2, "ap0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 729
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    aget-object v2, v0, v4

    invoke-virtual {v1, v6, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 734
    :cond_2
    aget-object v1, v0, v3

    const-string v2, "AP-STA-DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 735
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiNative;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiNative;->mInterface:Ljava/lang/String;

    const-string v2, "ap0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 736
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    aget-object v2, v0, v4

    invoke-virtual {v1, v5, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 738
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleP2pEvents(Ljava/lang/String;)V
    .locals 6
    .parameter "dataString"

    .prologue
    const/4 v5, 0x2

    .line 661
    const-string v3, "P2P-DEVICE-FOUND"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 662
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v3}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x24015

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v5, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    const-string v3, "P2P-DEVICE-LOST"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 664
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v3}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x24016

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v5, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 665
    :cond_2
    const-string v3, "P2P-FIND-STOPPED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 666
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v3}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x24025

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 667
    :cond_3
    const-string v3, "P2P-GO-NEG-REQUEST"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 668
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v3}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x24017

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v5, p1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 670
    :cond_4
    const-string v3, "P2P-GO-NEG-SUCCESS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 671
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v3}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x24019

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 672
    :cond_5
    const-string v3, "P2P-GO-NEG-FAILURE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 673
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v3}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x2401a

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 674
    :cond_6
    const-string v3, "P2P-GROUP-FORMATION-SUCCESS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 675
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v3}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x2401b

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 676
    :cond_7
    const-string v3, "P2P-GROUP-FORMATION-FAILURE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 677
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v3}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x2401c

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 678
    :cond_8
    const-string v3, "P2P-GROUP-STARTED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 679
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v3}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x2401d

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v5, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 680
    :cond_9
    const-string v3, "P2P-GROUP-REMOVED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 683
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v3}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x2401e

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->p2pError_GroupRemove(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 684
    :cond_a
    const-string v3, "P2P-INVITATION-RECEIVED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 685
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v3}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x2401f

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v5, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 687
    :cond_b
    const-string v3, "P2P-INVITATION-RESULT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 688
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v3}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x24020

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 689
    :cond_c
    const-string v3, "P2P-PROV-DISC-PBC-REQ"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 690
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v3}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x24021

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v5, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 692
    :cond_d
    const-string v3, "P2P-PROV-DISC-PBC-RESP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 693
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v3}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x24022

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v5, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 695
    :cond_e
    const-string v3, "P2P-PROV-DISC-ENTER-PIN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 696
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v3}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x24023

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v5, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 698
    :cond_f
    const-string v3, "P2P-PROV-DISC-SHOW-PIN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 699
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v3}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x24024

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v5, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 701
    :cond_10
    const-string v3, "P2P-PROV-DISC-FAILURE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 702
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v3}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x24027

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 703
    :cond_11
    const-string v3, "P2P-SERV-DISC-RESP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 704
    invoke-static {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->newInstance(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 705
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    if-eqz v0, :cond_12

    .line 706
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v3}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x24026

    invoke-virtual {v3, v4, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 708
    :cond_12
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Null service resp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 710
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    :cond_13
    const-string v3, "CTRL-EVENT-DISCONNECTED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 713
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 714
    .local v2, tokens:[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    .line 715
    aget-object v3, v2, v5

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 716
    .local v1, nameValue:[Ljava/lang/String;
    array-length v3, v1

    if-lt v3, v5, :cond_0

    .line 717
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v3}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v3

    const v4, 0x24028

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private handleSupplicantStateChange(Ljava/lang/String;)V
    .locals 20
    .parameter "dataString"

    .prologue
    .line 749
    const/16 v16, 0x0

    .line 750
    .local v16, wifiSsid:Landroid/net/wifi/WifiSsid;
    const-string v17, "SSID="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 751
    .local v7, index:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_0

    .line 752
    add-int/lit8 v17, v7, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v16

    .line 755
    :cond_0
    const-string v17, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 757
    .local v4, dataTokens:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 758
    .local v2, BSSID:Ljava/lang/String;
    const/4 v10, -0x1

    .line 759
    .local v10, networkId:I
    const/4 v11, -0x1

    .line 760
    .local v11, newState:I
    move-object v3, v4

    .local v3, arr$:[Ljava/lang/String;
    array-length v8, v3

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v8, :cond_5

    aget-object v14, v3, v6

    .line 761
    .local v14, token:Ljava/lang/String;
    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 762
    .local v9, nameValue:[Ljava/lang/String;
    array-length v0, v9

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 760
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 766
    :cond_2
    const/16 v17, 0x0

    aget-object v17, v9, v17

    const-string v18, "BSSID"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 767
    const/16 v17, 0x1

    aget-object v2, v9, v17

    .line 768
    goto :goto_1

    .line 773
    :cond_3
    const/16 v17, 0x1

    :try_start_0
    aget-object v17, v9, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 778
    .local v15, value:I
    const/16 v17, 0x0

    aget-object v17, v9, v17

    const-string v18, "id"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 779
    move v10, v15

    goto :goto_1

    .line 774
    .end local v15           #value:I
    :catch_0
    move-exception v5

    .line 775
    .local v5, e:Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 780
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .restart local v15       #value:I
    :cond_4
    const/16 v17, 0x0

    aget-object v17, v9, v17

    const-string/jumbo v18, "state"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 781
    move v11, v15

    goto :goto_1

    .line 785
    .end local v9           #nameValue:[Ljava/lang/String;
    .end local v14           #token:Ljava/lang/String;
    .end local v15           #value:I
    :cond_5
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_6

    .line 798
    .end local v3           #arr$:[Ljava/lang/String;
    :goto_2
    return-void

    .line 787
    .restart local v3       #arr$:[Ljava/lang/String;
    :cond_6
    sget-object v12, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    .line 788
    .local v12, newSupplicantState:Landroid/net/wifi/SupplicantState;
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    move-result-object v3

    .local v3, arr$:[Landroid/net/wifi/SupplicantState;
    array-length v8, v3

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v8, :cond_7

    aget-object v13, v3, v6

    .line 789
    .local v13, state:Landroid/net/wifi/SupplicantState;
    invoke-virtual {v13}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v11, :cond_9

    .line 790
    move-object v12, v13

    .line 794
    .end local v13           #state:Landroid/net/wifi/SupplicantState;
    :cond_7
    sget-object v17, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v17

    if-ne v12, v0, :cond_8

    .line 795
    const-string v17, "WifiMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Invalid supplicant state: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v10, v1, v2, v12}, Landroid/net/wifi/WifiMonitor;->notifySupplicantStateChange(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    goto :goto_2

    .line 788
    .restart local v13       #state:Landroid/net/wifi/SupplicantState;
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method private handleWpsFailEvent(Ljava/lang/String;)V
    .locals 9
    .parameter "dataString"

    .prologue
    const v8, 0x24009

    const/4 v7, 0x0

    .line 587
    const-string v4, "WPS-FAIL msg=\\d+(?: config_error=(\\d+))?(?: reason=(\\d+))?"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 588
    .local v2, p:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 589
    .local v1, match:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 590
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, cfgErr:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 593
    .local v3, reason:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 594
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 605
    :cond_0
    if-eqz v0, :cond_1

    .line 606
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 619
    .end local v0           #cfgErr:Ljava/lang/String;
    .end local v3           #reason:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    invoke-virtual {v5, v8, v7, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 621
    :goto_0
    return-void

    .line 596
    .restart local v0       #cfgErr:Ljava/lang/String;
    .restart local v3       #reason:Ljava/lang/String;
    :pswitch_0
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 600
    :pswitch_1
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 608
    :sswitch_0
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 612
    :sswitch_1
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 594
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 606
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method private p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    .locals 8
    .parameter "dataString"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 625
    sget-object v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->UNKNOWN:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 626
    .local v1, err:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 627
    .local v3, tokens:[Ljava/lang/String;
    array-length v4, v3

    if-ge v4, v7, :cond_0

    move-object v4, v1

    .line 640
    :goto_0
    return-object v4

    .line 628
    :cond_0
    aget-object v4, v3, v6

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 629
    .local v2, nameValue:[Ljava/lang/String;
    array-length v4, v2

    if-eq v4, v7, :cond_1

    move-object v4, v1

    goto :goto_0

    .line 632
    :cond_1
    aget-object v4, v2, v6

    const-string v5, "FREQ_CONFLICT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 633
    sget-object v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->NO_COMMON_CHANNEL:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    goto :goto_0

    .line 636
    :cond_2
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->valueOf(I)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v4, v1

    .line 640
    goto :goto_0

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method private p2pError_GroupRemove(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    .locals 5
    .parameter "dataString"

    .prologue
    const/4 v4, 0x3

    .line 645
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->UNKNOWN:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 646
    .local v0, err:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 648
    .local v2, tokens:[Ljava/lang/String;
    array-length v3, v2

    if-ge v3, v4, :cond_1

    .line 654
    .end local v0           #err:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    :cond_0
    :goto_0
    return-object v0

    .line 649
    .restart local v0       #err:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    :cond_1
    aget-object v3, v2, v4

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 651
    .local v1, nameValue:[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v1, v3

    const-string v4, "FREQ_CONFLICT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 652
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->NO_COMMON_CHANNEL:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    goto :goto_0
.end method


# virtual methods
.method handleEvent(ILjava/lang/String;)V
    .locals 2
    .parameter "event"
    .parameter "remainder"

    .prologue
    .line 564
    packed-switch p1, :pswitch_data_0

    .line 584
    :goto_0
    :pswitch_0
    return-void

    .line 566
    :pswitch_1
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v0, v1, p2}, Landroid/net/wifi/WifiMonitor;->access$700(Landroid/net/wifi/WifiMonitor;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 570
    :pswitch_2
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v0, v1, p2}, Landroid/net/wifi/WifiMonitor;->access$700(Landroid/net/wifi/WifiMonitor;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 574
    :pswitch_3
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x24005

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 578
    :pswitch_4
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x24033

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 564
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public run()V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x7

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 392
    invoke-direct {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->connectToSupplicant()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 395
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x24001

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 404
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStopped:Z
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$200(Landroid/net/wifi/WifiMonitor;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 405
    const-string v6, "WifiMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Need to stop, closeSupplicantConnection and exit! id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V

    .line 526
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    iget-object v6, v6, Landroid/net/wifi/WifiNative;->mInterface:Ljava/lang/String;

    const-string v7, "ap0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 398
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x24002

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 400
    :cond_1
    const-string v6, "WifiMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exit because of connection failure for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 411
    :cond_2
    :goto_1
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->waitForEvent()Ljava/lang/String;

    move-result-object v3

    .line 417
    .local v3, eventStr:Ljava/lang/String;
    const-string v6, "CTRL-EVENT-"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 418
    const-string v6, "WPA:"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "pre-shared key may be incorrect"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gtz v6, :cond_4

    :cond_3
    const-string v6, "Authentication with"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v6, "timed out"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_5

    .line 421
    :cond_4
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x24007

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 422
    :cond_5
    const-string v6, "WPS-SUCCESS"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 423
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x24008

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 424
    :cond_6
    const-string v6, "WPS-FAIL"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 425
    invoke-direct {p0, v3}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleWpsFailEvent(Ljava/lang/String;)V

    goto :goto_1

    .line 426
    :cond_7
    const-string v6, "WPS-OVERLAP-DETECTED"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 427
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x2400a

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 428
    :cond_8
    const-string v6, "WPS-TIMEOUT"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 429
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x2400b

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 430
    :cond_9
    const-string v6, "P2P"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 431
    invoke-direct {p0, v3}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleP2pEvents(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 432
    :cond_a
    const-string v6, "AP"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 433
    invoke-direct {p0, v3}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleHostApEvents(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 435
    :cond_b
    const-string v6, "EAP-FAST-NEW-PAC-UPDATED"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 436
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x24034

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 438
    :cond_c
    const-string v6, "WHOLE-CHIP-RESET-FAIL"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 439
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x24035

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 445
    :cond_d
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$300()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, eventName:Ljava/lang/String;
    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 447
    .local v5, nameEnd:I
    if-eq v5, v8, :cond_e

    .line 448
    invoke-virtual {v2, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 449
    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    .line 457
    const-string v6, "CONNECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 458
    const/4 v0, 0x1

    .line 479
    .local v0, event:I
    :goto_2
    move-object v1, v3

    .line 480
    .local v1, eventData:Ljava/lang/String;
    if-eq v0, v11, :cond_f

    const/4 v6, 0x5

    if-ne v0, v6, :cond_1b

    .line 481
    :cond_f
    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v1, v6, v7

    .line 494
    :cond_10
    :goto_3
    if-ne v0, v10, :cond_1e

    .line 495
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleSupplicantStateChange(Ljava/lang/String;)V

    .line 524
    :cond_11
    :goto_4
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #setter for: Landroid/net/wifi/WifiMonitor;->mRecvErrors:I
    invoke-static {v6, v9}, Landroid/net/wifi/WifiMonitor;->access$402(Landroid/net/wifi/WifiMonitor;I)I

    goto/16 :goto_1

    .line 459
    .end local v0           #event:I
    .end local v1           #eventData:Ljava/lang/String;
    :cond_12
    const-string v6, "DISCONNECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 460
    const/4 v0, 0x2

    .line 461
    .restart local v0       #event:I
    invoke-direct {p0, v3}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleP2pEvents(Ljava/lang/String;)V

    goto :goto_2

    .line 462
    .end local v0           #event:I
    :cond_13
    const-string v6, "STATE-CHANGE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 463
    const/4 v0, 0x3

    .restart local v0       #event:I
    goto :goto_2

    .line 464
    .end local v0           #event:I
    :cond_14
    const-string v6, "SCAN-RESULTS"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 465
    const/4 v0, 0x4

    .restart local v0       #event:I
    goto :goto_2

    .line 466
    .end local v0           #event:I
    :cond_15
    const-string v6, "LINK-SPEED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 467
    const/4 v0, 0x5

    .restart local v0       #event:I
    goto :goto_2

    .line 468
    .end local v0           #event:I
    :cond_16
    const-string v6, "TERMINATING"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 469
    const/4 v0, 0x6

    .restart local v0       #event:I
    goto :goto_2

    .line 470
    .end local v0           #event:I
    :cond_17
    const-string v6, "DRIVER-STATE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 471
    const/4 v0, 0x7

    .restart local v0       #event:I
    goto :goto_2

    .line 472
    .end local v0           #event:I
    :cond_18
    const-string v6, "EAP-FAILURE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 473
    const/16 v0, 0x8

    .restart local v0       #event:I
    goto :goto_2

    .line 474
    .end local v0           #event:I
    :cond_19
    const-string v6, "EAP-NO-CERTIFICATION"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 475
    const/16 v0, 0x9

    .restart local v0       #event:I
    goto :goto_2

    .line 477
    .end local v0           #event:I
    :cond_1a
    const/16 v0, 0xa

    .restart local v0       #event:I
    goto :goto_2

    .line 482
    .restart local v1       #eventData:Ljava/lang/String;
    :cond_1b
    if-eq v0, v10, :cond_1c

    if-ne v0, v12, :cond_1d

    .line 483
    :cond_1c
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 484
    .local v4, ind:I
    if-eq v4, v8, :cond_10

    .line 485
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 488
    .end local v4           #ind:I
    :cond_1d
    const-string v6, " - "

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 489
    .restart local v4       #ind:I
    if-eq v4, v8, :cond_10

    .line 490
    add-int/lit8 v6, v4, 0x3

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 496
    .end local v4           #ind:I
    :cond_1e
    if-ne v0, v11, :cond_1f

    .line 497
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleDriverEvent(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 498
    :cond_1f
    const/4 v6, 0x6

    if-ne v0, v6, :cond_21

    .line 503
    const-string/jumbo v6, "recv error"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 504
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$404(Landroid/net/wifi/WifiMonitor;)I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_2

    .line 514
    :cond_20
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x24002

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 515
    const-string v6, "WifiMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exit because of receiving terminating for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 517
    :cond_21
    if-ne v0, v12, :cond_22

    .line 518
    const-string v6, "EAP authentication failed"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 519
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x24007

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_4

    .line 522
    :cond_22
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleEvent(ILjava/lang/String;)V

    goto/16 :goto_4
.end method
