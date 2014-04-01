.class Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;
.super Ljava/lang/Object;
.source "UsbDeviceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 353
    const-string v0, "UsbDeviceManager"

    const-string v1, "Delay show"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$200(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Z

    move-result v1

    #calls: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->showBuiltinInstallerUI(Z)V
    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$300(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)V

    .line 355
    return-void
.end method
