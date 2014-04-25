.class Lcom/android/phone/MultipleSimCallSetting$MultipleSimReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MultipleSimCallSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MultipleSimCallSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultipleSimReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MultipleSimCallSetting;


# direct methods
.method private constructor <init>(Lcom/android/phone/MultipleSimCallSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/phone/MultipleSimCallSetting$MultipleSimReceiver;->this$0:Lcom/android/phone/MultipleSimCallSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 552
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.phone.NETWORK_MODE_CHANGE_RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 554
    iget-object v1, p0, Lcom/android/phone/MultipleSimCallSetting$MultipleSimReceiver;->this$0:Lcom/android/phone/MultipleSimCallSetting;

    iget-object v1, v1, Lcom/android/phone/MultipleSimCallSetting;->pd:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/MultipleSimCallSetting$MultipleSimReceiver;->this$0:Lcom/android/phone/MultipleSimCallSetting;

    iget-object v1, v1, Lcom/android/phone/MultipleSimCallSetting;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    iget-object v1, p0, Lcom/android/phone/MultipleSimCallSetting$MultipleSimReceiver;->this$0:Lcom/android/phone/MultipleSimCallSetting;

    iget-object v1, v1, Lcom/android/phone/MultipleSimCallSetting;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 556
    iget-object v1, p0, Lcom/android/phone/MultipleSimCallSetting$MultipleSimReceiver;->this$0:Lcom/android/phone/MultipleSimCallSetting;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/phone/MultipleSimCallSetting;->pd:Landroid/app/ProgressDialog;

    .line 558
    :cond_0
    const-string v1, "com.android.phone.NETWORK_MODE_CHANGE_RESPONSE"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 560
    invoke-static {}, Lcom/android/phone/MultipleSimCallSetting;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastReceiver: network mode change failed! restore the old value."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v1, p0, Lcom/android/phone/MultipleSimCallSetting$MultipleSimReceiver;->this$0:Lcom/android/phone/MultipleSimCallSetting;

    #getter for: Lcom/android/phone/MultipleSimCallSetting;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/MultipleSimCallSetting;->access$400(Lcom/android/phone/MultipleSimCallSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    const-string v3, "com.android.phone.OLD_NETWORK_MODE"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 567
    invoke-static {}, Lcom/android/phone/MultipleSimCallSetting;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BroadcastReceiver  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.android.phone.OLD_NETWORK_MODE"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_1
    :goto_0
    return-void

    .line 572
    :cond_2
    invoke-static {}, Lcom/android/phone/MultipleSimCallSetting;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastReceiver: network mode change success! set to the new value."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v1, p0, Lcom/android/phone/MultipleSimCallSetting$MultipleSimReceiver;->this$0:Lcom/android/phone/MultipleSimCallSetting;

    #getter for: Lcom/android/phone/MultipleSimCallSetting;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/MultipleSimCallSetting;->access$400(Lcom/android/phone/MultipleSimCallSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    const-string v3, "NEW_NETWORK_MODE"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 578
    invoke-static {}, Lcom/android/phone/MultipleSimCallSetting;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BroadcastReceiver  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "NEW_NETWORK_MODE"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
