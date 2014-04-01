.class Lcom/android/server/net/NetworkPolicyManagerService$8;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1597
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 1600
    iget v12, p1, Landroid/os/Message;->what:I

    packed-switch v12, :pswitch_data_0

    .line 1689
    :goto_0
    return v10

    .line 1602
    :pswitch_0
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 1603
    .local v8, uid:I
    iget v9, p1, Landroid/os/Message;->arg2:I

    .line 1604
    .local v9, uidRules:I
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 1605
    .local v3, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 1606
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/net/INetworkPolicyListener;

    .line 1607
    .local v4, listener:Landroid/net/INetworkPolicyListener;
    if-eqz v4, :cond_0

    .line 1609
    :try_start_0
    invoke-interface {v4, v8, v9}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1605
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1614
    .end local v4           #listener:Landroid/net/INetworkPolicyListener;
    :cond_1
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    move v10, v11

    .line 1615
    goto :goto_0

    .line 1618
    .end local v1           #i:I
    .end local v3           #length:I
    .end local v8           #uid:I
    .end local v9           #uidRules:I
    :pswitch_1
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, [Ljava/lang/String;

    move-object v5, v10

    check-cast v5, [Ljava/lang/String;

    .line 1619
    .local v5, meteredIfaces:[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 1620
    .restart local v3       #length:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v3, :cond_3

    .line 1621
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/net/INetworkPolicyListener;

    .line 1622
    .restart local v4       #listener:Landroid/net/INetworkPolicyListener;
    if-eqz v4, :cond_2

    .line 1624
    :try_start_1
    invoke-interface {v4, v5}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1620
    :cond_2
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1629
    .end local v4           #listener:Landroid/net/INetworkPolicyListener;
    :cond_3
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    move v10, v11

    .line 1630
    goto :goto_0

    .line 1633
    .end local v1           #i:I
    .end local v3           #length:I
    .end local v5           #meteredIfaces:[Ljava/lang/String;
    :pswitch_2
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 1634
    .local v6, pid:I
    iget v8, p1, Landroid/os/Message;->arg2:I

    .line 1635
    .restart local v8       #uid:I
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1636
    .local v0, foregroundActivities:Z
    const-string v10, "NetworkPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onRecv: MSG_FOREGROUND_ACTIVITIES_CHANGED pid:uid:act="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 1643
    :try_start_2
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;
    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseBooleanArray;

    .line 1644
    .local v7, pidForeground:Landroid/util/SparseBooleanArray;
    if-nez v7, :cond_4

    .line 1645
    new-instance v7, Landroid/util/SparseBooleanArray;

    .end local v7           #pidForeground:Landroid/util/SparseBooleanArray;
    const/4 v10, 0x2

    invoke-direct {v7, v10}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1646
    .restart local v7       #pidForeground:Landroid/util/SparseBooleanArray;
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;
    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1648
    :cond_4
    invoke-virtual {v7, v6, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1649
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->computeUidForegroundLocked(I)V
    invoke-static {v10, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1500(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 1650
    monitor-exit v12

    move v10, v11

    .line 1651
    goto/16 :goto_0

    .line 1650
    .end local v7           #pidForeground:Landroid/util/SparseBooleanArray;
    :catchall_0
    move-exception v10

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 1654
    .end local v0           #foregroundActivities:Z
    .end local v6           #pid:I
    .end local v8           #uid:I
    :pswitch_3
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 1655
    .restart local v6       #pid:I
    iget v8, p1, Landroid/os/Message;->arg2:I

    .line 1657
    .restart local v8       #uid:I
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 1659
    :try_start_3
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;
    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseBooleanArray;

    .line 1660
    .restart local v7       #pidForeground:Landroid/util/SparseBooleanArray;
    if-eqz v7, :cond_5

    .line 1661
    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1662
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->computeUidForegroundLocked(I)V
    invoke-static {v10, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1500(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 1664
    :cond_5
    monitor-exit v12

    move v10, v11

    .line 1665
    goto/16 :goto_0

    .line 1664
    .end local v7           #pidForeground:Landroid/util/SparseBooleanArray;
    :catchall_1
    move-exception v10

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v10

    .line 1668
    .end local v6           #pid:I
    .end local v8           #uid:I
    :pswitch_4
    const-string v10, "NetworkPolicy"

    const-string v12, "onRecv: MSG_LIMIT_REACHED"

    invoke-static {v10, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1671
    .local v2, iface:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V
    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$600(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 1672
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 1673
    :try_start_4
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;
    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/HashSet;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v10

    if-eqz v10, :cond_6

    .line 1677
    :try_start_5
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;
    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1700(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v10

    invoke-interface {v10}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1682
    :goto_5
    :try_start_6
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v13, 0x0

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked(Z)V
    invoke-static {v10, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->access$900(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    .line 1683
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V
    invoke-static {v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1000(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 1685
    :cond_6
    monitor-exit v12

    move v10, v11

    .line 1686
    goto/16 :goto_0

    .line 1685
    :catchall_2
    move-exception v10

    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v10

    .line 1610
    .end local v2           #iface:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v3       #length:I
    .restart local v4       #listener:Landroid/net/INetworkPolicyListener;
    .restart local v8       #uid:I
    .restart local v9       #uidRules:I
    :catch_0
    move-exception v10

    goto/16 :goto_2

    .line 1625
    .end local v8           #uid:I
    .end local v9           #uidRules:I
    .restart local v5       #meteredIfaces:[Ljava/lang/String;
    :catch_1
    move-exception v10

    goto/16 :goto_4

    .line 1678
    .end local v1           #i:I
    .end local v3           #length:I
    .end local v4           #listener:Landroid/net/INetworkPolicyListener;
    .end local v5           #meteredIfaces:[Ljava/lang/String;
    .restart local v2       #iface:Ljava/lang/String;
    :catch_2
    move-exception v10

    goto :goto_5

    .line 1600
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
