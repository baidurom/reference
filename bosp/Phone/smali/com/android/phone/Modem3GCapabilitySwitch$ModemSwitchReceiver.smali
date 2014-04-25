.class Lcom/android/phone/Modem3GCapabilitySwitch$ModemSwitchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Modem3GCapabilitySwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Modem3GCapabilitySwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModemSwitchReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Modem3GCapabilitySwitch;


# direct methods
.method constructor <init>(Lcom/android/phone/Modem3GCapabilitySwitch;)V
    .locals 0
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/phone/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/android/phone/Modem3GCapabilitySwitch;

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

    .line 599
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, action:Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_LOCK_CHANGED:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 601
    const-string v3, "Settings/Modem3GCapabilitySwitch"

    const-string v4, "receives EVENT_3G_SWITCH_LOCK_CHANGED..."

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiPhone;->EXTRA_3G_SWITCH_LOCKED:Ljava/lang/String;

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 603
    .local v2, bLocked:Z
    iget-object v3, p0, Lcom/android/phone/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/android/phone/Modem3GCapabilitySwitch;

    #calls: Lcom/android/phone/Modem3GCapabilitySwitch;->updateItemStatus()V
    invoke-static {v3}, Lcom/android/phone/Modem3GCapabilitySwitch;->access$600(Lcom/android/phone/Modem3GCapabilitySwitch;)V

    .line 619
    .end local v2           #bLocked:Z
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_PRE_3G_SWITCH:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 605
    const-string v3, "Settings/Modem3GCapabilitySwitch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting the switch......@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v3, p0, Lcom/android/phone/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/android/phone/Modem3GCapabilitySwitch;

    invoke-virtual {v3}, Lcom/android/phone/Modem3GCapabilitySwitch;->showSwitchProgress()V

    .line 607
    iget-object v3, p0, Lcom/android/phone/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/android/phone/Modem3GCapabilitySwitch;

    const-string v4, "Receive starting switch broadcast"

    #calls: Lcom/android/phone/Modem3GCapabilitySwitch;->showInstanceIndex(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/Modem3GCapabilitySwitch;->access$700(Lcom/android/phone/Modem3GCapabilitySwitch;Ljava/lang/String;)V

    .line 608
    iget-object v3, p0, Lcom/android/phone/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/android/phone/Modem3GCapabilitySwitch;

    #calls: Lcom/android/phone/Modem3GCapabilitySwitch;->setStatusBarEnableStatus(Z)V
    invoke-static {v3, v6}, Lcom/android/phone/Modem3GCapabilitySwitch;->access$800(Lcom/android/phone/Modem3GCapabilitySwitch;Z)V

    goto :goto_0

    .line 609
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_DONE:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 610
    const-string v3, "Settings/Modem3GCapabilitySwitch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Done the switch......@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v3, p0, Lcom/android/phone/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/android/phone/Modem3GCapabilitySwitch;

    const-string v4, "Receive switch done broadcast"

    #calls: Lcom/android/phone/Modem3GCapabilitySwitch;->showInstanceIndex(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/Modem3GCapabilitySwitch;->access$700(Lcom/android/phone/Modem3GCapabilitySwitch;Ljava/lang/String;)V

    .line 612
    iget-object v3, p0, Lcom/android/phone/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/android/phone/Modem3GCapabilitySwitch;

    invoke-virtual {v3, p2}, Lcom/android/phone/Modem3GCapabilitySwitch;->clearAfterSwitch(Landroid/content/Intent;)V

    goto :goto_0

    .line 613
    :cond_3
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 614
    const-string v3, "state"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 615
    .local v1, airplaneMode:Z
    const-string v3, "Settings/Modem3GCapabilitySwitch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "airplaneMode new  state is ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v3, p0, Lcom/android/phone/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/android/phone/Modem3GCapabilitySwitch;

    #calls: Lcom/android/phone/Modem3GCapabilitySwitch;->updateNetworkMode()V
    invoke-static {v3}, Lcom/android/phone/Modem3GCapabilitySwitch;->access$900(Lcom/android/phone/Modem3GCapabilitySwitch;)V

    .line 617
    iget-object v3, p0, Lcom/android/phone/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/android/phone/Modem3GCapabilitySwitch;

    #calls: Lcom/android/phone/Modem3GCapabilitySwitch;->update3GService()V
    invoke-static {v3}, Lcom/android/phone/Modem3GCapabilitySwitch;->access$1000(Lcom/android/phone/Modem3GCapabilitySwitch;)V

    goto/16 :goto_0
.end method
