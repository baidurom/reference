.class Lcom/baidu/systemverify/VerificationService$VerifyHandler;
.super Landroid/os/Handler;
.source "VerificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/systemverify/VerificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerifyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/systemverify/VerificationService;


# direct methods
.method public constructor <init>(Lcom/baidu/systemverify/VerificationService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/baidu/systemverify/VerificationService$VerifyHandler;->this$0:Lcom/baidu/systemverify/VerificationService;

    .line 141
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 142
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 146
    const-string v0, "VerificationService"

    const-string v1, "enter VerifyHandler.handleMessage()"

    invoke-static {v0, v1}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 157
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 159
    :goto_0
    return-void

    .line 150
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/systemverify/VerificationService$VerifyHandler;->this$0:Lcom/baidu/systemverify/VerificationService;

    #calls: Lcom/baidu/systemverify/VerificationService;->verify()V
    invoke-static {v0}, Lcom/baidu/systemverify/VerificationService;->access$000(Lcom/baidu/systemverify/VerificationService;)V

    .line 151
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/baidu/systemverify/VerificationService$VerifyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 154
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/systemverify/VerificationService$VerifyHandler;->this$0:Lcom/baidu/systemverify/VerificationService;

    #calls: Lcom/baidu/systemverify/VerificationService;->finish()V
    invoke-static {v0}, Lcom/baidu/systemverify/VerificationService;->access$100(Lcom/baidu/systemverify/VerificationService;)V

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
