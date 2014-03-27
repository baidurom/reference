.class Lcom/android/server/usb/UsbDeviceManager$UsbHandler$QuickbootBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickbootBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$QuickbootBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Lcom/android/server/usb/UsbDeviceManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$QuickbootBroadcastReceiver;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 277
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$QuickbootBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v2, 0x1

    #setter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mIsQbShutdown:Z
    invoke-static {v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$302(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)Z

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_BOOT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$QuickbootBroadcastReceiver;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mIsQbShutdown:Z
    invoke-static {v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$302(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)Z

    goto :goto_0
.end method
