.class Lcom/android/phone/DTMFTwelveKeyDialer$1;
.super Landroid/os/Handler;
.source "DTMFTwelveKeyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DTMFTwelveKeyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DTMFTwelveKeyDialer;


# direct methods
.method constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialer;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 332
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 359
    :goto_0
    return-void

    .line 340
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialer;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$100(Lcom/android/phone/DTMFTwelveKeyDialer;)Lcom/android/internal/telephony/gemini/MTKCallManager;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisconnectGemini(Landroid/os/Handler;I)V

    .line 341
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialer;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$100(Lcom/android/phone/DTMFTwelveKeyDialer;)Lcom/android/internal/telephony/gemini/MTKCallManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisconnectGemini(Landroid/os/Handler;I)V

    .line 347
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialer;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$200(Lcom/android/phone/DTMFTwelveKeyDialer;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialer;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$200(Lcom/android/phone/DTMFTwelveKeyDialer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 349
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    goto :goto_0

    .line 356
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->handleBurstDtmfConfirmation()V

    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
