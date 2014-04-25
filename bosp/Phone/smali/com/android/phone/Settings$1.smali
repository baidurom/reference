.class Lcom/android/phone/Settings$1;
.super Landroid/content/BroadcastReceiver;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Settings;


# direct methods
.method constructor <init>(Lcom/android/phone/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 164
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 166
    iget-object v6, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    const-string v7, "state"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    #setter for: Lcom/android/phone/Settings;->mAirplaneModeEnabled:Z
    invoke-static {v6, v7}, Lcom/android/phone/Settings;->access$002(Lcom/android/phone/Settings;Z)Z

    .line 167
    iget-object v6, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    invoke-virtual {v6}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mAirplaneModeEnabled:Z
    invoke-static {v7}, Lcom/android/phone/Settings;->access$000(Lcom/android/phone/Settings;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mIsRadioOn:Z
    invoke-static {v7}, Lcom/android/phone/Settings;->access$100(Lcom/android/phone/Settings;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mDualSimMode:I
    invoke-static {v7}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)I

    move-result v7

    if-eqz v7, :cond_1

    :goto_0
    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 168
    iget-object v4, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    #calls: Lcom/android/phone/Settings;->update3GPrefStatus()V
    invoke-static {v4}, Lcom/android/phone/Settings;->access$300(Lcom/android/phone/Settings;)V

    .line 190
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v4, v5

    .line 167
    goto :goto_0

    .line 169
    :cond_2
    const-string v6, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->isChangeData:Z
    invoke-static {v6}, Lcom/android/phone/Settings;->access$400(Lcom/android/phone/Settings;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 170
    const-string v4, "NetworkSettings"

    const-string v6, "catch data change!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v4, "reason"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, reason:Ljava/lang/String;
    #calls: Lcom/android/phone/Settings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {p2}, Lcom/android/phone/Settings;->access$500(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v3

    .line 173
    .local v3, state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string v4, "NetworkSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reason : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v3, v4, :cond_3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v3, v4, :cond_0

    .line 175
    :cond_3
    iget-object v4, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    iget-object v4, v4, Lcom/android/phone/Settings;->mH:Landroid/os/Handler;

    sget v6, Lcom/android/phone/Settings;->DATA_STATE_CHANGE_TIMEOUT:I

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 176
    iget-object v4, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->pd:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/phone/Settings;->access$600(Lcom/android/phone/Settings;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->pd:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/phone/Settings;->access$600(Lcom/android/phone/Settings;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 178
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->pd:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/phone/Settings;->access$600(Lcom/android/phone/Settings;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_2
    iget-object v4, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    const/4 v6, 0x0

    #setter for: Lcom/android/phone/Settings;->pd:Landroid/app/ProgressDialog;
    invoke-static {v4, v6}, Lcom/android/phone/Settings;->access$602(Lcom/android/phone/Settings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 184
    :cond_4
    iget-object v4, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    #setter for: Lcom/android/phone/Settings;->isChangeData:Z
    invoke-static {v4, v5}, Lcom/android/phone/Settings;->access$402(Lcom/android/phone/Settings;Z)Z

    goto :goto_1

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "NetworkSettings"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 186
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #reason:Ljava/lang/String;
    .end local v3           #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_5
    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 187
    iget-object v6, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    const-string v7, "mode"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    #setter for: Lcom/android/phone/Settings;->mDualSimMode:I
    invoke-static {v6, v7}, Lcom/android/phone/Settings;->access$202(Lcom/android/phone/Settings;I)I

    .line 188
    iget-object v6, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    invoke-virtual {v6}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mAirplaneModeEnabled:Z
    invoke-static {v7}, Lcom/android/phone/Settings;->access$000(Lcom/android/phone/Settings;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mIsRadioOn:Z
    invoke-static {v7}, Lcom/android/phone/Settings;->access$100(Lcom/android/phone/Settings;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mDualSimMode:I
    invoke-static {v7}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)I

    move-result v7

    if-eqz v7, :cond_6

    :goto_3
    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_6
    move v4, v5

    goto :goto_3
.end method
