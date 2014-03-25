.class Lcom/android/server/WifiService$wifiOnPermissionCheckCallback;
.super Lcom/mediatek/common/mom/IRequestedPermissionCallback$Stub;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "wifiOnPermissionCheckCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 2294
    iput-object p1, p0, Lcom/android/server/WifiService$wifiOnPermissionCheckCallback;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Lcom/mediatek/common/mom/IRequestedPermissionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionCheckResult(Ljava/lang/String;II)V
    .locals 6
    .parameter "permissionName"
    .parameter "uid"
    .parameter "result"

    .prologue
    .line 2297
    if-nez p3, :cond_0

    .line 2299
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifiEnabled(PermissionCheckCallback): , uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    const/4 v0, 0x1

    .line 2303
    .local v0, enable:Z
    if-eqz p3, :cond_1

    .line 2342
    .end local v0           #enable:Z
    :cond_0
    :goto_0
    return-void

    .line 2307
    .restart local v0       #enable:Z
    :cond_1
    iget-object v3, p0, Lcom/android/server/WifiService$wifiOnPermissionCheckCallback;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/server/WifiService$wifiOnPermissionCheckCallback;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2308
    const-string v3, "WifiService"

    const-string v4, "Can\'t enable wifi when airplane mode is on for customization."

    invoke-static {v3, v4}, Lcom/mediatek/xlog/SXlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2312
    :cond_2
    const-string v3, "WifiService"

    const-string v4, "Invoking mWifiStateMachine.setWifiEnabled\n"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    if-eqz v0, :cond_3

    .line 2316
    iget-object v3, p0, Lcom/android/server/WifiService$wifiOnPermissionCheckCallback;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->reportStartWorkSource()V
    invoke-static {v3}, Lcom/android/server/WifiService;->access$4300(Lcom/android/server/WifiService;)V

    .line 2318
    :cond_3
    iget-object v3, p0, Lcom/android/server/WifiService$wifiOnPermissionCheckCallback;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    .line 2325
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2327
    .local v1, ident:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WifiService$wifiOnPermissionCheckCallback;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->handleWifiToggled(Z)V
    invoke-static {v3, v0}, Lcom/android/server/WifiService;->access$4400(Lcom/android/server/WifiService;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2329
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2332
    if-eqz v0, :cond_4

    .line 2333
    iget-object v3, p0, Lcom/android/server/WifiService$wifiOnPermissionCheckCallback;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIsReceiverRegistered:Z
    invoke-static {v3}, Lcom/android/server/WifiService;->access$4500(Lcom/android/server/WifiService;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2334
    iget-object v3, p0, Lcom/android/server/WifiService$wifiOnPermissionCheckCallback;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->registerForBroadcasts()V
    invoke-static {v3}, Lcom/android/server/WifiService;->access$4600(Lcom/android/server/WifiService;)V

    .line 2335
    iget-object v3, p0, Lcom/android/server/WifiService$wifiOnPermissionCheckCallback;->this$0:Lcom/android/server/WifiService;

    const/4 v4, 0x1

    #setter for: Lcom/android/server/WifiService;->mIsReceiverRegistered:Z
    invoke-static {v3, v4}, Lcom/android/server/WifiService;->access$4502(Lcom/android/server/WifiService;Z)Z

    goto :goto_0

    .line 2329
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2337
    :cond_4
    iget-object v3, p0, Lcom/android/server/WifiService$wifiOnPermissionCheckCallback;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIsReceiverRegistered:Z
    invoke-static {v3}, Lcom/android/server/WifiService;->access$4500(Lcom/android/server/WifiService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2338
    iget-object v3, p0, Lcom/android/server/WifiService$wifiOnPermissionCheckCallback;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/WifiService$wifiOnPermissionCheckCallback;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$4700(Lcom/android/server/WifiService;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2339
    iget-object v3, p0, Lcom/android/server/WifiService$wifiOnPermissionCheckCallback;->this$0:Lcom/android/server/WifiService;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/WifiService;->mIsReceiverRegistered:Z
    invoke-static {v3, v4}, Lcom/android/server/WifiService;->access$4502(Lcom/android/server/WifiService;Z)Z

    goto :goto_0
.end method
