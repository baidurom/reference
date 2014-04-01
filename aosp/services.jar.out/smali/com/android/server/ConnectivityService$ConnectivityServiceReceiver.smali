.class Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityServiceReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter

    .prologue
    .line 3581
    iput-object p1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3581
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;-><init>(Lcom/android/server/ConnectivityService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3583
    if-nez p2, :cond_0

    .line 3631
    :goto_0
    return-void

    .line 3584
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3585
    .local v0, action:Ljava/lang/String;
    const-string v9, "ConnectivityService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "received intent ==> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3586
    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->synchronizedObject:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$3800(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 3587
    :try_start_0
    const-string v9, "android.intent.action.DATA_DEFAULT_SIM"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3588
    const-string v9, "simid"

    const-wide/16 v11, -0x5

    invoke-virtual {p2, v9, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 3589
    .local v8, simID:Ljava/lang/Long;
    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleMobileDataConnectionChange(Ljava/lang/Long;)V
    invoke-static {v9, v8}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;Ljava/lang/Long;)V

    .line 3630
    .end local v8           #simID:Ljava/lang/Long;
    :cond_1
    :goto_1
    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 3590
    :cond_2
    :try_start_1
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3591
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$4002(Z)Z

    goto :goto_1

    .line 3592
    :cond_3
    const-string v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3593
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$4002(Z)Z

    goto :goto_1

    .line 3594
    :cond_4
    const-string v9, "android.intent.action.TETHERING_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3595
    const-string v9, "tethering_isconnected"

    const/4 v11, 0x0

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 3596
    .local v5, isConnected:Z
    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v9, v5}, Lcom/android/server/ConnectivityService;->setUsbTethering(Z)I

    goto :goto_1

    .line 3597
    .end local v5           #isConnected:Z
    :cond_5
    const-string v9, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 3598
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 3599
    .local v6, obtainBundle:Landroid/os/Bundle;
    if-eqz v6, :cond_7

    .line 3601
    invoke-static {v6}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v7

    .line 3602
    .local v7, serviceState:Landroid/telephony/ServiceState;
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    if-nez v9, :cond_1

    .line 3603
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v9}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v9

    if-nez v9, :cond_6

    const/4 v9, 0x1

    :goto_2
    const/4 v12, 0x0

    #calls: Lcom/android/server/ConnectivityService;->setDataOffNotification(ZZ)V
    invoke-static {v11, v9, v12}, Lcom/android/server/ConnectivityService;->access$4100(Lcom/android/server/ConnectivityService;ZZ)V

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 3608
    .end local v7           #serviceState:Landroid/telephony/ServiceState;
    :cond_7
    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    const-string v11, "get bundle error!!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v9, v11}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    goto :goto_1

    .line 3610
    .end local v6           #obtainBundle:Landroid/os/Bundle;
    :cond_8
    const-string v9, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 3611
    iget-object v11, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v9}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v9

    if-nez v9, :cond_9

    const/4 v9, 0x1

    :goto_3
    const/4 v12, 0x1

    #calls: Lcom/android/server/ConnectivityService;->setDataOffNotification(ZZ)V
    invoke-static {v11, v9, v12}, Lcom/android/server/ConnectivityService;->access$4100(Lcom/android/server/ConnectivityService;ZZ)V

    goto :goto_1

    :cond_9
    const/4 v9, 0x0

    goto :goto_3

    .line 3614
    :cond_a
    const-string v9, "com.mtk.ACTION_PS_STATE_RESUMED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3615
    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$500(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v9

    const-string v11, "activity"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 3616
    .local v1, am:Landroid/app/ActivityManager;
    if-eqz v1, :cond_1

    .line 3617
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 3618
    .local v2, appList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_1

    .line 3619
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 3620
    .local v4, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v9, "com.aspire.mm"

    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 3621
    iget-object v9, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "3G to 2G and MM is running with uid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v9, v11}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 3622
    iget v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v9}, Landroid/net/NetworkUtils;->resetConnectionByUid(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method
