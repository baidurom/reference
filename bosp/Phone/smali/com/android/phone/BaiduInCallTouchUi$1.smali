.class Lcom/android/phone/BaiduInCallTouchUi$1;
.super Landroid/os/Handler;
.source "BaiduInCallTouchUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BaiduInCallTouchUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BaiduInCallTouchUi;


# direct methods
.method constructor <init>(Lcom/android/phone/BaiduInCallTouchUi;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/phone/BaiduInCallTouchUi$1;->this$0:Lcom/android/phone/BaiduInCallTouchUi;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi$1;->this$0:Lcom/android/phone/BaiduInCallTouchUi;

    #getter for: Lcom/android/phone/BaiduInCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v0}, Lcom/android/phone/BaiduInCallTouchUi;->access$000(Lcom/android/phone/BaiduInCallTouchUi;)Lcom/android/phone/InCallScreen;

    move-result-object v0

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 136
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 146
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler: unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi$1;->this$0:Lcom/android/phone/BaiduInCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/BaiduInCallTouchUi;->triggerPing()V

    goto :goto_0

    .line 142
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi$1;->this$0:Lcom/android/phone/BaiduInCallTouchUi;

    const-string v1, "ANIMATION..."

    #calls: Lcom/android/phone/BaiduInCallTouchUi;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/BaiduInCallTouchUi;->access$100(Lcom/android/phone/BaiduInCallTouchUi;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/phone/BaiduInCallTouchUi$1;->this$0:Lcom/android/phone/BaiduInCallTouchUi;

    const v1, 0x7f070069

    invoke-virtual {v0, v1}, Lcom/android/phone/BaiduInCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BaiduPhoneUtil;->startAcceptCallAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 136
    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method
