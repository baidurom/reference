.class Lcom/android/internal/telephony/uicc/UiccController$1;
.super Landroid/content/BroadcastReceiver;
.source "UiccController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccController;)V
    .locals 0
    .parameter

    .prologue
    .line 719
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 721
    if-nez p2, :cond_1

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 723
    .local v1, action:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIntentReceiver Receive action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->access$000(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 725
    const-string v4, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 726
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const-string v5, "mIntentReceiver ACTION_SHUTDOWN_IPO"

    #calls: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->access$000(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 727
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccController;->disableSimMissingNotification()V

    goto :goto_0

    .line 728
    :cond_2
    const-string v4, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 731
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccController$1$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/uicc/UiccController$1$1;-><init>(Lcom/android/internal/telephony/uicc/UiccController$1;)V

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccController$1$1;->start()V

    goto :goto_0

    .line 749
    :cond_3
    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_INITIALIZATION_FRAMEWORK_DONE:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 750
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    #getter for: Lcom/android/internal/telephony/uicc/UiccController;->mIsHotSwap:Z
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccController;->access$400(Lcom/android/internal/telephony/uicc/UiccController;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 751
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    #setter for: Lcom/android/internal/telephony/uicc/UiccController;->mIsHotSwap:Z
    invoke-static {v4, v7}, Lcom/android/internal/telephony/uicc/UiccController;->access$402(Lcom/android/internal/telephony/uicc/UiccController;Z)Z

    .line 752
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    #getter for: Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 756
    .local v2, airplaneMode:I
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    #getter for: Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dual_sim_mode_setting"

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 761
    .local v3, dualSimMode:I
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIntentReceiver EVENT_INITIALIZATION_FRAMEWORK_DONE airplaneMode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dualSimMode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->access$000(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 762
    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccController;->getMySimId()I

    move-result v4

    shl-int v4, v8, v4

    and-int/2addr v4, v3

    if-lez v4, :cond_0

    .line 764
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    #getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccController;->access$500(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v6, 0x6f

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 767
    .end local v2           #airplaneMode:I
    .end local v3           #dualSimMode:I
    :cond_4
    const-string v4, "android.intent.action.sim.ACTION_RESET_MODEM"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 768
    const-string v4, "gsm.3gswitch"

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 769
    .local v0, SimIdFor3G:I
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    #getter for: Lcom/android/internal/telephony/uicc/UiccController;->mSimId:I
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)I

    move-result v4

    if-ne v0, v4, :cond_0

    .line 770
    const-string v4, "RIL_UiccController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " will reset modem"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    #getter for: Lcom/android/internal/telephony/uicc/UiccController;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccController;->access$500(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->resetRadio(Landroid/os/Message;)V

    goto/16 :goto_0
.end method
