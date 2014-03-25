.class Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)V
    .locals 0
    .parameter

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 586
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.via.bypass.action.setfunction"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 588
    const-string v3, "com.via.bypass.enable_bypass"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 589
    .local v1, enablebypass:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 590
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    iget-object v3, v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v3, v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const-string v4, "via_bypass"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;Z)V

    .line 606
    .end local v1           #enablebypass:Ljava/lang/Boolean;
    :cond_0
    :goto_0
    return-void

    .line 592
    .restart local v1       #enablebypass:Ljava/lang/Boolean;
    :cond_1
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    invoke-virtual {v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->closeBypassFunction()V

    goto :goto_0

    .line 594
    .end local v1           #enablebypass:Ljava/lang/Boolean;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.via.bypass.action.setbypass"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 595
    const-string v3, "com.via.bypass.bypass_code"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 596
    .local v0, bypasscode:I
    if-ltz v0, :cond_3

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    #getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassAll:I
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->access$1700(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)I

    move-result v3

    if-gt v0, v3, :cond_3

    .line 597
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    #calls: Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->setBypassMode(I)V
    invoke-static {v3, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->access$1800(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;I)V

    goto :goto_0

    .line 599
    :cond_3
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    #calls: Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->getCurrentBypassMode()I
    invoke-static {v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->access$1900(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)I

    move-result v5

    #calls: Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->notifySetBypassResult(Ljava/lang/Boolean;I)V
    invoke-static {v3, v4, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->access$2000(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;Ljava/lang/Boolean;I)V

    goto :goto_0

    .line 601
    .end local v0           #bypasscode:I
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.via.bypass.action.getbypass"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 602
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.via.bypass.action.getbypass_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 603
    .local v2, reintent:Landroid/content/Intent;
    const-string v3, "com.via.bypass.bypass_code"

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    #calls: Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->getCurrentBypassMode()I
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->access$1900(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 604
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    iget-object v3, v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v3, v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
