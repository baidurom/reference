.class Lcom/android/server/LocationManagerService$PermissionCallback;
.super Lcom/mediatek/common/mom/IRequestedPermissionCallback$Stub;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermissionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2440
    iput-object p1, p0, Lcom/android/server/LocationManagerService$PermissionCallback;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Lcom/mediatek/common/mom/IRequestedPermissionCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2440
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$PermissionCallback;-><init>(Lcom/android/server/LocationManagerService;)V

    return-void
.end method


# virtual methods
.method public onPermissionCheckResult(Ljava/lang/String;II)V
    .locals 9
    .parameter "permissionName"
    .parameter "uid"
    .parameter "result"

    .prologue
    .line 2443
    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPermissionCheckResultCB pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    iget-object v0, p0, Lcom/android/server/LocationManagerService$PermissionCallback;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mRequestPending:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    .line 2445
    packed-switch p3, :pswitch_data_0

    .line 2484
    :try_start_0
    const-string v0, "LocationManagerService"

    const-string v1, "onPermissionCheckResultCB result error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    :cond_0
    :goto_0
    :pswitch_0
    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPermissionCheckResultCB mRequestPending check size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$PermissionCallback;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mRequestPending:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$2300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    monitor-exit v7

    .line 2489
    return-void

    .line 2448
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService$PermissionCallback;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mRequestPending:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/LocationManagerService$MomsRequestRecord;

    .line 2450
    .local v6, mMomsRequest:Lcom/android/server/LocationManagerService$MomsRequestRecord;
    if-nez v6, :cond_1

    .line 2451
    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRequestPending size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$PermissionCallback;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mRequestPending:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$2300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " break"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2488
    .end local v6           #mMomsRequest:Lcom/android/server/LocationManagerService$MomsRequestRecord;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2456
    .restart local v6       #mMomsRequest:Lcom/android/server/LocationManagerService$MomsRequestRecord;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService$PermissionCallback;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2457
    :try_start_2
    iget-object v0, p0, Lcom/android/server/LocationManagerService$PermissionCallback;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v1, v6, Lcom/android/server/LocationManagerService$MomsRequestRecord;->mRequest:Landroid/location/LocationRequest;

    iget-object v2, v6, Lcom/android/server/LocationManagerService$MomsRequestRecord;->mRecevier:Lcom/android/server/LocationManagerService$Receiver;

    iget v3, v6, Lcom/android/server/LocationManagerService$MomsRequestRecord;->mpid:I

    iget v4, v6, Lcom/android/server/LocationManagerService$MomsRequestRecord;->muid:I

    iget-object v5, v6, Lcom/android/server/LocationManagerService$MomsRequestRecord;->mPackageName:Ljava/lang/String;

    #calls: Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;IILjava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LocationManagerService;->access$2400(Lcom/android/server/LocationManagerService;Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;IILjava/lang/String;)V

    .line 2458
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2460
    :try_start_3
    iget-object v0, p0, Lcom/android/server/LocationManagerService$PermissionCallback;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mRequestPending:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 2458
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2460
    :catchall_2
    move-exception v0

    :try_start_6
    iget-object v1, p0, Lcom/android/server/LocationManagerService$PermissionCallback;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mRequestPending:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$2300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0

    .line 2468
    .end local v6           #mMomsRequest:Lcom/android/server/LocationManagerService$MomsRequestRecord;
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/LocationManagerService$PermissionCallback;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mRequestPending:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2469
    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DENIED remove Pending uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    iget-object v0, p0, Lcom/android/server/LocationManagerService$PermissionCallback;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mRequestPending:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/LocationManagerService$MomsRequestRecord;

    .line 2471
    .restart local v6       #mMomsRequest:Lcom/android/server/LocationManagerService$MomsRequestRecord;
    iget-object v0, p0, Lcom/android/server/LocationManagerService$PermissionCallback;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, v6, Lcom/android/server/LocationManagerService$MomsRequestRecord;->mRecevier:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v6, Lcom/android/server/LocationManagerService$MomsRequestRecord;->mRecevier:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v0}, Lcom/android/server/LocationManagerService$Receiver;->isListener()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2472
    iget-object v0, v6, Lcom/android/server/LocationManagerService$MomsRequestRecord;->mRecevier:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v0}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, v6, Lcom/android/server/LocationManagerService$MomsRequestRecord;->mRecevier:Lcom/android/server/LocationManagerService$Receiver;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2473
    iget-object v1, v6, Lcom/android/server/LocationManagerService$MomsRequestRecord;->mRecevier:Lcom/android/server/LocationManagerService$Receiver;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2474
    :try_start_7
    iget-object v0, v6, Lcom/android/server/LocationManagerService$MomsRequestRecord;->mRecevier:Lcom/android/server/LocationManagerService$Receiver;

    iget v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-lez v0, :cond_2

    .line 2475
    iget-object v0, p0, Lcom/android/server/LocationManagerService$PermissionCallback;->this$0:Lcom/android/server/LocationManagerService;

    #calls: Lcom/android/server/LocationManagerService;->decrementPendingBroadcasts()V
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;)V

    .line 2476
    iget-object v0, v6, Lcom/android/server/LocationManagerService$MomsRequestRecord;->mRecevier:Lcom/android/server/LocationManagerService$Receiver;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    .line 2478
    :cond_2
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 2480
    :cond_3
    :try_start_8
    iget-object v0, p0, Lcom/android/server/LocationManagerService$PermissionCallback;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mRequestPending:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 2478
    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2445
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
