.class public Lcom/android/internal/telephony/cat/BipManager$SendDataThread;
.super Ljava/lang/Object;
.source "BipManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SendDataThread"
.end annotation


# instance fields
.field cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field response:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/internal/telephony/cat/BipManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/BipManager;Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 2
    .parameter
    .parameter "Msg"
    .parameter "resp"

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipManager$SendDataThread;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 360
    const-string v0, "[BIP]"

    const-string v1, "SendDataThread Init"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BipManager$SendDataThread;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 362
    iput-object p3, p0, Lcom/android/internal/telephony/cat/BipManager$SendDataThread;->response:Landroid/os/Message;

    .line 363
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 368
    const-string v3, "[BIP]"

    const-string v4, "SendDataThread Run Enter"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const/4 v2, 0x0

    .line 371
    .local v2, ret:I
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipManager$SendDataThread;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v0, v3, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelData:[B

    .line 372
    .local v0, buffer:[B
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipManager$SendDataThread;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v1, v3, 0x1

    .line 374
    .local v1, mode:I
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipManager$SendDataThread;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    #getter for: Lcom/android/internal/telephony/cat/BipManager;->mChannelId:I
    invoke-static {v3}, Lcom/android/internal/telephony/cat/BipManager;->access$000(Lcom/android/internal/telephony/cat/BipManager;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipManager$SendDataThread;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v4, v4, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSendDataCid:I

    if-eq v3, v4, :cond_0

    .line 376
    const-string v3, "[BIP]"

    const-string v4, "SendDataThread Run mChannelId != cmdMsg.mSendDataCid"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const/4 v2, 0x7

    .line 392
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipManager$SendDataThread;->response:Landroid/os/Message;

    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 393
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipManager$SendDataThread;->response:Landroid/os/Message;

    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipManager$SendDataThread;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 394
    const-string v3, "[BIP]"

    const-string v4, "SendDataThread Run mHandler.sendMessage(response);"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipManager$SendDataThread;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    #getter for: Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;
    invoke-static {v3}, Lcom/android/internal/telephony/cat/BipManager;->access$300(Lcom/android/internal/telephony/cat/BipManager;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipManager$SendDataThread;->response:Landroid/os/Message;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/CatService;->sendMessage(Landroid/os/Message;)Z

    .line 396
    return-void

    .line 379
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipManager$SendDataThread;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    #getter for: Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I
    invoke-static {v3}, Lcom/android/internal/telephony/cat/BipManager;->access$100(Lcom/android/internal/telephony/cat/BipManager;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 381
    const-string v3, "[BIP]"

    const-string v4, "SendDataThread Run mChannel.sendData"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipManager$SendDataThread;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    #getter for: Lcom/android/internal/telephony/cat/BipManager;->mChannel:Lcom/android/internal/telephony/cat/Channel;
    invoke-static {v3}, Lcom/android/internal/telephony/cat/BipManager;->access$200(Lcom/android/internal/telephony/cat/BipManager;)Lcom/android/internal/telephony/cat/Channel;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/telephony/cat/Channel;->sendData([BI)I

    move-result v2

    .line 383
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipManager$SendDataThread;->response:Landroid/os/Message;

    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipManager$SendDataThread;->this$0:Lcom/android/internal/telephony/cat/BipManager;

    #getter for: Lcom/android/internal/telephony/cat/BipManager;->mChannel:Lcom/android/internal/telephony/cat/Channel;
    invoke-static {v4}, Lcom/android/internal/telephony/cat/BipManager;->access$200(Lcom/android/internal/telephony/cat/BipManager;)Lcom/android/internal/telephony/cat/Channel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/Channel;->getTxAvailBufferSize()I

    move-result v4

    iput v4, v3, Landroid/os/Message;->arg2:I

    goto :goto_0

    .line 387
    :cond_1
    const-string v3, "[BIP]"

    const-string v4, "SendDataThread Run CHANNEL_ID_NOT_VALID"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const/4 v2, 0x7

    goto :goto_0
.end method
