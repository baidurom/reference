.class Lcom/android/phone/InCallScreen$29;
.super Landroid/os/Handler;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 7248
    iput-object p1, p0, Lcom/android/phone/InCallScreen$29;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7251
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7252
    iget-object v0, p0, Lcom/android/phone/InCallScreen$29;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTimerHandler: handle message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 7254
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 7267
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen$29;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v1, p0, Lcom/android/phone/InCallScreen$29;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mRecordStart:Z
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$3800(Lcom/android/phone/InCallScreen;)Z

    move-result v1

    #calls: Lcom/android/phone/InCallScreen;->updateRecordView(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$3900(Lcom/android/phone/InCallScreen;Z)V

    .line 7268
    return-void

    .line 7256
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen$29;->this$0:Lcom/android/phone/InCallScreen;

    #setter for: Lcom/android/phone/InCallScreen;->mRecordStart:Z
    invoke-static {v0, v4}, Lcom/android/phone/InCallScreen;->access$3802(Lcom/android/phone/InCallScreen;Z)Z

    .line 7257
    iget-object v0, p0, Lcom/android/phone/InCallScreen$29;->this$0:Lcom/android/phone/InCallScreen;

    const-wide/16 v1, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mTimePassed:J
    invoke-static {v0, v1, v2}, Lcom/android/phone/InCallScreen;->access$4202(Lcom/android/phone/InCallScreen;J)J

    .line 7258
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/phone/BaiduPhoneUtil;->onInCallScreenAudioRecordTimerStart([Ljava/lang/Object;)V

    goto :goto_0

    .line 7261
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen$29;->removeMessages(I)V

    .line 7262
    iget-object v0, p0, Lcom/android/phone/InCallScreen$29;->this$0:Lcom/android/phone/InCallScreen;

    #setter for: Lcom/android/phone/InCallScreen;->mRecordStart:Z
    invoke-static {v0, v3}, Lcom/android/phone/InCallScreen;->access$3802(Lcom/android/phone/InCallScreen;Z)Z

    .line 7263
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/phone/InCallScreen$29;->this$0:Lcom/android/phone/InCallScreen;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/phone/InCallScreen$29;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallControlState;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/android/phone/BaiduPhoneUtil;->onInCallScreenAudioRecordTimerStop([Ljava/lang/Object;)V

    goto :goto_0

    .line 7254
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
