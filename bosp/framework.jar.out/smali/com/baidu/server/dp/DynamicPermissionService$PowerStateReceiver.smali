.class Lcom/baidu/server/dp/DynamicPermissionService$PowerStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DynamicPermissionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/server/dp/DynamicPermissionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/server/dp/DynamicPermissionService;


# direct methods
.method private constructor <init>(Lcom/baidu/server/dp/DynamicPermissionService;)V
    .locals 0
    .parameter

    .prologue
    .line 1919
    iput-object p1, p0, Lcom/baidu/server/dp/DynamicPermissionService$PowerStateReceiver;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/server/dp/DynamicPermissionService;Lcom/baidu/server/dp/DynamicPermissionService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1919
    invoke-direct {p0, p1}, Lcom/baidu/server/dp/DynamicPermissionService$PowerStateReceiver;-><init>(Lcom/baidu/server/dp/DynamicPermissionService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 1922
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1923
    const-string/jumbo v2, "plugged"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1924
    .local v0, pluge:I
    iget-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionService$PowerStateReceiver;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    #getter for: Lcom/baidu/server/dp/DynamicPermissionService;->mUsbConnected:I
    invoke-static {v2}, Lcom/baidu/server/dp/DynamicPermissionService;->access$2300(Lcom/baidu/server/dp/DynamicPermissionService;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 1925
    iget-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionService$PowerStateReceiver;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    #setter for: Lcom/baidu/server/dp/DynamicPermissionService;->mUsbConnected:I
    invoke-static {v2, v1}, Lcom/baidu/server/dp/DynamicPermissionService;->access$2302(Lcom/baidu/server/dp/DynamicPermissionService;I)I

    .line 1928
    :cond_1
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1933
    .end local v0           #pluge:I
    :cond_2
    return-void
.end method
