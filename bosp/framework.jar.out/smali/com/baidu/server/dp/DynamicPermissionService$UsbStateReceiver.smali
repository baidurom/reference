.class Lcom/baidu/server/dp/DynamicPermissionService$UsbStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DynamicPermissionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/server/dp/DynamicPermissionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/server/dp/DynamicPermissionService;


# direct methods
.method private constructor <init>(Lcom/baidu/server/dp/DynamicPermissionService;)V
    .locals 0
    .parameter

    .prologue
    .line 1935
    iput-object p1, p0, Lcom/baidu/server/dp/DynamicPermissionService$UsbStateReceiver;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/server/dp/DynamicPermissionService;Lcom/baidu/server/dp/DynamicPermissionService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1935
    invoke-direct {p0, p1}, Lcom/baidu/server/dp/DynamicPermissionService$UsbStateReceiver;-><init>(Lcom/baidu/server/dp/DynamicPermissionService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1938
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1939
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "connected"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1940
    .local v0, connected:Z
    iget-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionService$UsbStateReceiver;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    #setter for: Lcom/baidu/server/dp/DynamicPermissionService;->mUsbConnected:I
    invoke-static {v2, v1}, Lcom/baidu/server/dp/DynamicPermissionService;->access$2302(Lcom/baidu/server/dp/DynamicPermissionService;I)I

    .line 1945
    .end local v0           #connected:Z
    :cond_0
    return-void

    .line 1940
    .restart local v0       #connected:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
