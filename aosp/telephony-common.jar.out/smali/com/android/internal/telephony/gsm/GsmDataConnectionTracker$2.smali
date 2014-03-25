.class Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;
.super Ljava/lang/Object;
.source "GsmDataConnectionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onRecordsLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

.field final synthetic val$gprsDefaultSIM:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2203
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iput p2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->val$gprsDefaultSIM:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2205
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->syncRoamingSetting()V
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    .line 2206
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->createAllApnList()V
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    .line 2207
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2208
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v1, "onRecordsLoaded: notifying data availability"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2209
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v1, "simLoaded"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 2211
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->val$gprsDefaultSIM:I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 2218
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const v2, 0x42003

    const-string v3, "simLoaded"

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2219
    return-void

    .line 2214
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->enableApnType(Ljava/lang/String;)I

    goto :goto_0
.end method
