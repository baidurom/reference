.class Lcom/baidu/server/dp/DynamicPermissionService$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DynamicPermissionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/server/dp/DynamicPermissionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/server/dp/DynamicPermissionService;


# direct methods
.method constructor <init>(Lcom/baidu/server/dp/DynamicPermissionService;)V
    .locals 0
    .parameter

    .prologue
    .line 1653
    iput-object p1, p0, Lcom/baidu/server/dp/DynamicPermissionService$PackageReceiver;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private addPackage(ILjava/lang/String;)V
    .locals 1
    .parameter "uid"
    .parameter "pkgName"

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService$PackageReceiver;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    #calls: Lcom/baidu/server/dp/DynamicPermissionService;->updateUidPermission(ILjava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/baidu/server/dp/DynamicPermissionService;->access$1600(Lcom/baidu/server/dp/DynamicPermissionService;ILjava/lang/String;)V

    .line 1677
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService$PackageReceiver;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    #calls: Lcom/baidu/server/dp/DynamicPermissionService;->writeToPermFile()Z
    invoke-static {v0}, Lcom/baidu/server/dp/DynamicPermissionService;->access$1700(Lcom/baidu/server/dp/DynamicPermissionService;)Z

    .line 1678
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService$PackageReceiver;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    #getter for: Lcom/baidu/server/dp/DynamicPermissionService;->mUbcEnabled:Z
    invoke-static {v0}, Lcom/baidu/server/dp/DynamicPermissionService;->access$200(Lcom/baidu/server/dp/DynamicPermissionService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1679
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService$PackageReceiver;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    #calls: Lcom/baidu/server/dp/DynamicPermissionService;->sendInitUbcBroadcast(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/baidu/server/dp/DynamicPermissionService;->access$1800(Lcom/baidu/server/dp/DynamicPermissionService;Ljava/lang/String;)V

    .line 1681
    :cond_0
    return-void
.end method

.method private removePackage(Ljava/lang/String;I)V
    .locals 2
    .parameter "pkgName"
    .parameter "uid"

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService$PackageReceiver;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    #calls: Lcom/baidu/server/dp/DynamicPermissionService;->removePermission(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/baidu/server/dp/DynamicPermissionService;->access$1900(Lcom/baidu/server/dp/DynamicPermissionService;Ljava/lang/String;)V

    .line 1684
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService$PackageReceiver;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    #getter for: Lcom/baidu/server/dp/DynamicPermissionService;->mTrustedList:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/baidu/server/dp/DynamicPermissionService;->access$2000(Lcom/baidu/server/dp/DynamicPermissionService;)Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1

    .line 1685
    :try_start_0
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService$PackageReceiver;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    #getter for: Lcom/baidu/server/dp/DynamicPermissionService;->mTrustedList:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/baidu/server/dp/DynamicPermissionService;->access$2000(Lcom/baidu/server/dp/DynamicPermissionService;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1686
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1687
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService$PackageReceiver;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    #calls: Lcom/baidu/server/dp/DynamicPermissionService;->updateUidPermission(ILjava/lang/String;)V
    invoke-static {v0, p2, p1}, Lcom/baidu/server/dp/DynamicPermissionService;->access$1600(Lcom/baidu/server/dp/DynamicPermissionService;ILjava/lang/String;)V

    .line 1688
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService$PackageReceiver;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    #calls: Lcom/baidu/server/dp/DynamicPermissionService;->writeToPermFile()Z
    invoke-static {v0}, Lcom/baidu/server/dp/DynamicPermissionService;->access$1700(Lcom/baidu/server/dp/DynamicPermissionService;)Z

    .line 1689
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService$PackageReceiver;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    #calls: Lcom/baidu/server/dp/DynamicPermissionService;->removeUserDecision(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/baidu/server/dp/DynamicPermissionService;->access$2100(Lcom/baidu/server/dp/DynamicPermissionService;Ljava/lang/String;)V

    .line 1690
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService$PackageReceiver;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    #calls: Lcom/baidu/server/dp/DynamicPermissionService;->removePackageLog(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/baidu/server/dp/DynamicPermissionService;->access$2200(Lcom/baidu/server/dp/DynamicPermissionService;Ljava/lang/String;)V

    .line 1691
    return-void

    .line 1686
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, -0x1

    .line 1656
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1657
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1658
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 1659
    .local v1, pkgName:Ljava/lang/String;
    const-string v4, "android.intent.extra.UID"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1660
    .local v2, uid:I
    if-ne v2, v5, :cond_0

    .line 1661
    iget-object v4, p0, Lcom/baidu/server/dp/DynamicPermissionService$PackageReceiver;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    #calls: Lcom/baidu/server/dp/DynamicPermissionService;->getUidForPackage(Ljava/lang/String;)I
    invoke-static {v4, v1}, Lcom/baidu/server/dp/DynamicPermissionService;->access$1500(Lcom/baidu/server/dp/DynamicPermissionService;Ljava/lang/String;)I

    move-result v2

    .line 1663
    :cond_0
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1664
    invoke-direct {p0, v2, v1}, Lcom/baidu/server/dp/DynamicPermissionService$PackageReceiver;->addPackage(ILjava/lang/String;)V

    .line 1671
    :cond_1
    :goto_0
    const-string v4, "DynamicPermissionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receive Broadcast:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    return-void

    .line 1665
    :cond_2
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1666
    const-string v4, "android.intent.extra.REPLACING"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1667
    invoke-direct {p0, v1, v2}, Lcom/baidu/server/dp/DynamicPermissionService$PackageReceiver;->removePackage(Ljava/lang/String;I)V

    goto :goto_0
.end method
