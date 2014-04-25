.class Lcom/android/phone/SimcardValueUpdateReceiver$1;
.super Landroid/os/Handler;
.source "SimcardValueUpdateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimcardValueUpdateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SimcardValueUpdateReceiver;


# direct methods
.method constructor <init>(Lcom/android/phone/SimcardValueUpdateReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/phone/SimcardValueUpdateReceiver$1;->this$0:Lcom/android/phone/SimcardValueUpdateReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 62
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 64
    .local v0, ar:Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #ar:Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 68
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 71
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.phone.SC_BROADCAST_READ"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, scIntent:Landroid/content/Intent;
    const-string v3, "SC_read"

    iget-object v4, p0, Lcom/android/phone/SimcardValueUpdateReceiver$1;->this$0:Lcom/android/phone/SimcardValueUpdateReceiver;

    #getter for: Lcom/android/phone/SimcardValueUpdateReceiver;->mServiceCenter:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/SimcardValueUpdateReceiver;->access$000(Lcom/android/phone/SimcardValueUpdateReceiver;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object v3, p0, Lcom/android/phone/SimcardValueUpdateReceiver$1;->this$0:Lcom/android/phone/SimcardValueUpdateReceiver;

    #getter for: Lcom/android/phone/SimcardValueUpdateReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/SimcardValueUpdateReceiver;->access$100(Lcom/android/phone/SimcardValueUpdateReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 79
    .end local v1           #scIntent:Landroid/content/Intent;
    :pswitch_1
    const-string v2, ""

    .line 81
    .local v2, smsAddr:Ljava/lang/String;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 82
    const-string v2, "get sim card error"

    .line 91
    :cond_1
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.phone.SC_BROADCAST_READ"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .restart local v1       #scIntent:Landroid/content/Intent;
    const-string v3, "SC_read"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object v3, p0, Lcom/android/phone/SimcardValueUpdateReceiver$1;->this$0:Lcom/android/phone/SimcardValueUpdateReceiver;

    #getter for: Lcom/android/phone/SimcardValueUpdateReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/SimcardValueUpdateReceiver;->access$100(Lcom/android/phone/SimcardValueUpdateReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 84
    .end local v1           #scIntent:Landroid/content/Intent;
    :cond_2
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v2           #smsAddr:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 85
    .restart local v2       #smsAddr:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 86
    const-string v2, "sc is null"

    goto :goto_1

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x3ed
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
