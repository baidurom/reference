.class Lcom/android/phone/NetworkQueryService$1;
.super Landroid/os/Handler;
.source "NetworkQueryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkQueryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkQueryService;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkQueryService;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, -0x1

    const/4 v3, -0x2

    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 92
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_NETWORK_SCAN_COMPLETED--mSimId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    #getter for: Lcom/android/phone/NetworkQueryService;->mSimId:I
    invoke-static {v1}, Lcom/android/phone/NetworkQueryService;->access$100(Lcom/android/phone/NetworkQueryService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService;->access$200(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    #getter for: Lcom/android/phone/NetworkQueryService;->_GEMINI_PHONE:Z
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService;->access$300(Lcom/android/phone/NetworkQueryService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    #getter for: Lcom/android/phone/NetworkQueryService;->mSimId:I
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService;->access$100(Lcom/android/phone/NetworkQueryService;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 94
    const-string v0, "SIM2 receives the query result of SIM1"

    #calls: Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService;->access$200(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    #setter for: Lcom/android/phone/NetworkQueryService;->mState:I
    invoke-static {v0, v2}, Lcom/android/phone/NetworkQueryService;->access$402(Lcom/android/phone/NetworkQueryService;I)I

    .line 96
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    #getter for: Lcom/android/phone/NetworkQueryService;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService;->access$500(Lcom/android/phone/NetworkQueryService;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v1, v1, Lcom/android/phone/NetworkQueryService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    #getter for: Lcom/android/phone/NetworkQueryService;->mSimId:I
    invoke-static {v2}, Lcom/android/phone/NetworkQueryService;->access$100(Lcom/android/phone/NetworkQueryService;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getAvailableNetworksGemini(Landroid/os/Message;I)V

    .line 97
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    #setter for: Lcom/android/phone/NetworkQueryService;->mState:I
    invoke-static {v0, v3}, Lcom/android/phone/NetworkQueryService;->access$402(Lcom/android/phone/NetworkQueryService;I)I

    goto :goto_0

    .line 101
    :cond_0
    const-string v0, "scan completed, broadcasting results"

    #calls: Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService;->access$200(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/NetworkQueryService;->broadcastQueryResults(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/phone/NetworkQueryService;->access$600(Lcom/android/phone/NetworkQueryService;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 106
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_NETWORK_SCAN_COMPLETED_2--mSimId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    #getter for: Lcom/android/phone/NetworkQueryService;->mSimId:I
    invoke-static {v1}, Lcom/android/phone/NetworkQueryService;->access$100(Lcom/android/phone/NetworkQueryService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService;->access$200(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    #getter for: Lcom/android/phone/NetworkQueryService;->_GEMINI_PHONE:Z
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService;->access$300(Lcom/android/phone/NetworkQueryService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    #getter for: Lcom/android/phone/NetworkQueryService;->mSimId:I
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService;->access$100(Lcom/android/phone/NetworkQueryService;)I

    move-result v0

    if-nez v0, :cond_1

    .line 108
    const-string v0, "SIM1 receives the query result of SIM2"

    #calls: Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService;->access$200(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    #setter for: Lcom/android/phone/NetworkQueryService;->mState:I
    invoke-static {v0, v2}, Lcom/android/phone/NetworkQueryService;->access$402(Lcom/android/phone/NetworkQueryService;I)I

    .line 110
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    #getter for: Lcom/android/phone/NetworkQueryService;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService;->access$500(Lcom/android/phone/NetworkQueryService;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v1, v1, Lcom/android/phone/NetworkQueryService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    #getter for: Lcom/android/phone/NetworkQueryService;->mSimId:I
    invoke-static {v2}, Lcom/android/phone/NetworkQueryService;->access$100(Lcom/android/phone/NetworkQueryService;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getAvailableNetworksGemini(Landroid/os/Message;I)V

    .line 111
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    #setter for: Lcom/android/phone/NetworkQueryService;->mState:I
    invoke-static {v0, v3}, Lcom/android/phone/NetworkQueryService;->access$402(Lcom/android/phone/NetworkQueryService;I)I

    goto/16 :goto_0

    .line 114
    :cond_1
    const-string v0, "scan completed, broadcasting results."

    #calls: Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService;->access$200(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/NetworkQueryService;->broadcastQueryResults(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/phone/NetworkQueryService;->access$600(Lcom/android/phone/NetworkQueryService;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
