.class Lcom/android/phone/PhoneRecorderHandler$4;
.super Lcom/android/phone/IPhoneRecordStateListener$Stub;
.source "PhoneRecorderHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneRecorderHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneRecorderHandler;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneRecorderHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/phone/PhoneRecorderHandler$4;->this$0:Lcom/android/phone/PhoneRecorderHandler;

    invoke-direct {p0}, Lcom/android/phone/IPhoneRecordStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 3
    .parameter "iError"

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, message:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/android/phone/PhoneRecorderHandler$4;->this$0:Lcom/android/phone/PhoneRecorderHandler;

    #getter for: Lcom/android/phone/PhoneRecorderHandler;->mPhoneRecorder:Lcom/android/phone/IPhoneRecorder;
    invoke-static {v1}, Lcom/android/phone/PhoneRecorderHandler;->access$100(Lcom/android/phone/PhoneRecorderHandler;)Lcom/android/phone/IPhoneRecorder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 106
    :cond_0
    return-void

    .line 97
    :pswitch_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b034b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    goto :goto_0

    .line 100
    :pswitch_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0344

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStateChange(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderHandler$4;->this$0:Lcom/android/phone/PhoneRecorderHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChange, state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/PhoneRecorderHandler;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneRecorderHandler;->access$200(Lcom/android/phone/PhoneRecorderHandler;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderHandler$4;->this$0:Lcom/android/phone/PhoneRecorderHandler;

    #setter for: Lcom/android/phone/PhoneRecorderHandler;->mPhoneRecorderState:I
    invoke-static {v0, p1}, Lcom/android/phone/PhoneRecorderHandler;->access$602(Lcom/android/phone/PhoneRecorderHandler;I)I

    .line 88
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderHandler$4;->this$0:Lcom/android/phone/PhoneRecorderHandler;

    #getter for: Lcom/android/phone/PhoneRecorderHandler;->mListener:Lcom/android/phone/PhoneRecorderHandler$Listener;
    invoke-static {v0}, Lcom/android/phone/PhoneRecorderHandler;->access$700(Lcom/android/phone/PhoneRecorderHandler;)Lcom/android/phone/PhoneRecorderHandler$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/phone/PhoneRecorderHandler$4;->this$0:Lcom/android/phone/PhoneRecorderHandler;

    #getter for: Lcom/android/phone/PhoneRecorderHandler;->mListener:Lcom/android/phone/PhoneRecorderHandler$Listener;
    invoke-static {v0}, Lcom/android/phone/PhoneRecorderHandler;->access$700(Lcom/android/phone/PhoneRecorderHandler;)Lcom/android/phone/PhoneRecorderHandler$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhoneRecorderHandler$4;->this$0:Lcom/android/phone/PhoneRecorderHandler;

    #getter for: Lcom/android/phone/PhoneRecorderHandler;->mCustomValue:I
    invoke-static {v1}, Lcom/android/phone/PhoneRecorderHandler;->access$800(Lcom/android/phone/PhoneRecorderHandler;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/phone/PhoneRecorderHandler$Listener;->requestUpdateRecordState(II)V

    .line 91
    :cond_0
    return-void
.end method
