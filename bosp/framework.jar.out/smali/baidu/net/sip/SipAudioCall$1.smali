.class Lbaidu/net/sip/SipAudioCall$1;
.super Lbaidu/net/sip/SipSession$Listener;
.source "SipAudioCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbaidu/net/sip/SipAudioCall;->createListener()Lbaidu/net/sip/SipSession$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbaidu/net/sip/SipAudioCall;


# direct methods
.method constructor <init>(Lbaidu/net/sip/SipAudioCall;)V
    .locals 0
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    invoke-direct {p0}, Lbaidu/net/sip/SipSession$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBusy(Lbaidu/net/sip/SipSession;)V
    .locals 5
    .parameter "session"

    .prologue
    .line 558
    const-string v2, "baidu.net.sip"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sip call busy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    #getter for: Lbaidu/net/sip/SipAudioCall;->mListener:Lbaidu/net/sip/SipAudioCall$Listener;
    invoke-static {v2}, Lbaidu/net/sip/SipAudioCall;->access$000(Lbaidu/net/sip/SipAudioCall;)Lbaidu/net/sip/SipAudioCall$Listener;

    move-result-object v0

    .line 560
    .local v0, listener:Lbaidu/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    .line 562
    :try_start_0
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    invoke-virtual {v0, v2}, Lbaidu/net/sip/SipAudioCall$Listener;->onCallBusy(Lbaidu/net/sip/SipAudioCall;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    :cond_0
    :goto_0
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    const/4 v3, 0x0

    #calls: Lbaidu/net/sip/SipAudioCall;->close(Z)V
    invoke-static {v2, v3}, Lbaidu/net/sip/SipAudioCall;->access$800(Lbaidu/net/sip/SipAudioCall;Z)V

    .line 568
    return-void

    .line 563
    :catch_0
    move-exception v1

    .line 564
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "baidu.net.sip"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCallBusy(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCallChangeFailed(Lbaidu/net/sip/SipSession;ILjava/lang/String;)V
    .locals 5
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 573
    const-string v2, "baidu.net.sip"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sip call change failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    #setter for: Lbaidu/net/sip/SipAudioCall;->mErrorCode:I
    invoke-static {v2, p2}, Lbaidu/net/sip/SipAudioCall;->access$902(Lbaidu/net/sip/SipAudioCall;I)I

    .line 575
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    #setter for: Lbaidu/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;
    invoke-static {v2, p3}, Lbaidu/net/sip/SipAudioCall;->access$1002(Lbaidu/net/sip/SipAudioCall;Ljava/lang/String;)Ljava/lang/String;

    .line 576
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    #getter for: Lbaidu/net/sip/SipAudioCall;->mListener:Lbaidu/net/sip/SipAudioCall$Listener;
    invoke-static {v2}, Lbaidu/net/sip/SipAudioCall;->access$000(Lbaidu/net/sip/SipAudioCall;)Lbaidu/net/sip/SipAudioCall$Listener;

    move-result-object v0

    .line 577
    .local v0, listener:Lbaidu/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    .line 579
    :try_start_0
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    iget-object v3, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    #getter for: Lbaidu/net/sip/SipAudioCall;->mErrorCode:I
    invoke-static {v3}, Lbaidu/net/sip/SipAudioCall;->access$900(Lbaidu/net/sip/SipAudioCall;)I

    move-result v3

    invoke-virtual {v0, v2, v3, p3}, Lbaidu/net/sip/SipAudioCall$Listener;->onError(Lbaidu/net/sip/SipAudioCall;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 581
    :catch_0
    move-exception v1

    .line 582
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "baidu.net.sip"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCallBusy(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCallEnded(Lbaidu/net/sip/SipSession;)V
    .locals 5
    .parameter "session"

    .prologue
    .line 534
    const-string v2, "baidu.net.sip"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sip call ended: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSipSession:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    #getter for: Lbaidu/net/sip/SipAudioCall;->mSipSession:Lbaidu/net/sip/SipSession;
    invoke-static {v4}, Lbaidu/net/sip/SipAudioCall;->access$100(Lbaidu/net/sip/SipAudioCall;)Lbaidu/net/sip/SipSession;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    #getter for: Lbaidu/net/sip/SipAudioCall;->mTransferringSession:Lbaidu/net/sip/SipSession;
    invoke-static {v2}, Lbaidu/net/sip/SipAudioCall;->access$500(Lbaidu/net/sip/SipAudioCall;)Lbaidu/net/sip/SipSession;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 537
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    const/4 v3, 0x0

    #setter for: Lbaidu/net/sip/SipAudioCall;->mTransferringSession:Lbaidu/net/sip/SipSession;
    invoke-static {v2, v3}, Lbaidu/net/sip/SipAudioCall;->access$502(Lbaidu/net/sip/SipAudioCall;Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession;

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    #getter for: Lbaidu/net/sip/SipAudioCall;->mTransferringSession:Lbaidu/net/sip/SipSession;
    invoke-static {v2}, Lbaidu/net/sip/SipAudioCall;->access$500(Lbaidu/net/sip/SipAudioCall;)Lbaidu/net/sip/SipSession;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    #getter for: Lbaidu/net/sip/SipAudioCall;->mSipSession:Lbaidu/net/sip/SipSession;
    invoke-static {v2}, Lbaidu/net/sip/SipAudioCall;->access$100(Lbaidu/net/sip/SipAudioCall;)Lbaidu/net/sip/SipSession;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 545
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    #getter for: Lbaidu/net/sip/SipAudioCall;->mListener:Lbaidu/net/sip/SipAudioCall$Listener;
    invoke-static {v2}, Lbaidu/net/sip/SipAudioCall;->access$000(Lbaidu/net/sip/SipAudioCall;)Lbaidu/net/sip/SipAudioCall$Listener;

    move-result-object v0

    .line 546
    .local v0, listener:Lbaidu/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_2

    .line 548
    :try_start_0
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    invoke-virtual {v0, v2}, Lbaidu/net/sip/SipAudioCall$Listener;->onCallEnded(Lbaidu/net/sip/SipAudioCall;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :cond_2
    :goto_1
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    invoke-virtual {v2}, Lbaidu/net/sip/SipAudioCall;->close()V

    goto :goto_0

    .line 549
    :catch_0
    move-exception v1

    .line 550
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "baidu.net.sip"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCallEnded(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCallEstablished(Lbaidu/net/sip/SipSession;Ljava/lang/String;)V
    .locals 5
    .parameter "session"
    .parameter "sessionDescription"

    .prologue
    .line 509
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    #setter for: Lbaidu/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;
    invoke-static {v2, p2}, Lbaidu/net/sip/SipAudioCall;->access$402(Lbaidu/net/sip/SipAudioCall;Ljava/lang/String;)Ljava/lang/String;

    .line 510
    const-string v2, "baidu.net.sip"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCallEstablished()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    #getter for: Lbaidu/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;
    invoke-static {v4}, Lbaidu/net/sip/SipAudioCall;->access$400(Lbaidu/net/sip/SipAudioCall;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    #getter for: Lbaidu/net/sip/SipAudioCall;->mTransferringSession:Lbaidu/net/sip/SipSession;
    invoke-static {v2}, Lbaidu/net/sip/SipAudioCall;->access$500(Lbaidu/net/sip/SipAudioCall;)Lbaidu/net/sip/SipSession;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    #getter for: Lbaidu/net/sip/SipAudioCall;->mTransferringSession:Lbaidu/net/sip/SipSession;
    invoke-static {v2}, Lbaidu/net/sip/SipAudioCall;->access$500(Lbaidu/net/sip/SipAudioCall;)Lbaidu/net/sip/SipSession;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 514
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    #calls: Lbaidu/net/sip/SipAudioCall;->transferToNewSession()V
    invoke-static {v2}, Lbaidu/net/sip/SipAudioCall;->access$600(Lbaidu/net/sip/SipAudioCall;)V

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    #getter for: Lbaidu/net/sip/SipAudioCall;->mListener:Lbaidu/net/sip/SipAudioCall$Listener;
    invoke-static {v2}, Lbaidu/net/sip/SipAudioCall;->access$000(Lbaidu/net/sip/SipAudioCall;)Lbaidu/net/sip/SipAudioCall$Listener;

    move-result-object v0

    .line 519
    .local v0, listener:Lbaidu/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    .line 521
    :try_start_0
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    #getter for: Lbaidu/net/sip/SipAudioCall;->mHold:Z
    invoke-static {v2}, Lbaidu/net/sip/SipAudioCall;->access$700(Lbaidu/net/sip/SipAudioCall;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 522
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    invoke-virtual {v0, v2}, Lbaidu/net/sip/SipAudioCall$Listener;->onCallHeld(Lbaidu/net/sip/SipAudioCall;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 526
    :catch_0
    move-exception v1

    .line 527
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "baidu.net.sip"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCallEstablished(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 524
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    invoke-virtual {v0, v2}, Lbaidu/net/sip/SipAudioCall$Listener;->onCallEstablished(Lbaidu/net/sip/SipAudioCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onCallTransferring(Lbaidu/net/sip/SipSession;Ljava/lang/String;)V
    .locals 5
    .parameter "newSession"
    .parameter "sessionDescription"

    .prologue
    .line 618
    const-string v2, "baidu.net.sip"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCallTransferring mSipSession:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    #getter for: Lbaidu/net/sip/SipAudioCall;->mSipSession:Lbaidu/net/sip/SipSession;
    invoke-static {v4}, Lbaidu/net/sip/SipAudioCall;->access$100(Lbaidu/net/sip/SipAudioCall;)Lbaidu/net/sip/SipSession;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newSession:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    #setter for: Lbaidu/net/sip/SipAudioCall;->mTransferringSession:Lbaidu/net/sip/SipSession;
    invoke-static {v2, p1}, Lbaidu/net/sip/SipAudioCall;->access$502(Lbaidu/net/sip/SipAudioCall;Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession;

    .line 622
    if-nez p2, :cond_0

    .line 623
    :try_start_0
    invoke-virtual {p1}, Lbaidu/net/sip/SipSession;->getPeerProfile()Lbaidu/net/sip/SipProfile;

    move-result-object v2

    iget-object v3, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    #calls: Lbaidu/net/sip/SipAudioCall;->createOffer()Lbaidu/net/sip/SimpleSessionDescription;
    invoke-static {v3}, Lbaidu/net/sip/SipAudioCall;->access$1200(Lbaidu/net/sip/SipAudioCall;)Lbaidu/net/sip/SimpleSessionDescription;

    move-result-object v3

    invoke-virtual {v3}, Lbaidu/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xf

    invoke-virtual {p1, v2, v3, v4}, Lbaidu/net/sip/SipSession;->makeCall(Lbaidu/net/sip/SipProfile;Ljava/lang/String;I)V

    .line 633
    :goto_0
    return-void

    .line 626
    :cond_0
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    #calls: Lbaidu/net/sip/SipAudioCall;->createAnswer(Ljava/lang/String;)Lbaidu/net/sip/SimpleSessionDescription;
    invoke-static {v2, p2}, Lbaidu/net/sip/SipAudioCall;->access$300(Lbaidu/net/sip/SipAudioCall;Ljava/lang/String;)Lbaidu/net/sip/SimpleSessionDescription;

    move-result-object v2

    invoke-virtual {v2}, Lbaidu/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, answer:Ljava/lang/String;
    const/4 v2, 0x5

    invoke-virtual {p1, v0, v2}, Lbaidu/net/sip/SipSession;->answerCall(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 629
    .end local v0           #answer:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 630
    .local v1, e:Ljava/lang/Throwable;
    const-string v2, "baidu.net.sip"

    const-string/jumbo v3, "onCallTransferring()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 631
    invoke-virtual {p1}, Lbaidu/net/sip/SipSession;->endCall()V

    goto :goto_0
.end method

.method public onCalling(Lbaidu/net/sip/SipSession;)V
    .locals 5
    .parameter "session"

    .prologue
    .line 458
    const-string v2, "baidu.net.sip"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    #getter for: Lbaidu/net/sip/SipAudioCall;->mListener:Lbaidu/net/sip/SipAudioCall$Listener;
    invoke-static {v2}, Lbaidu/net/sip/SipAudioCall;->access$000(Lbaidu/net/sip/SipAudioCall;)Lbaidu/net/sip/SipAudioCall$Listener;

    move-result-object v0

    .line 460
    .local v0, listener:Lbaidu/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    .line 462
    :try_start_0
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    invoke-virtual {v0, v2}, Lbaidu/net/sip/SipAudioCall$Listener;->onCalling(Lbaidu/net/sip/SipAudioCall;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 463
    :catch_0
    move-exception v1

    .line 464
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "baidu.net.sip"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCalling(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onError(Lbaidu/net/sip/SipSession;ILjava/lang/String;)V
    .locals 1
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 590
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    #calls: Lbaidu/net/sip/SipAudioCall;->onError(ILjava/lang/String;)V
    invoke-static {v0, p2, p3}, Lbaidu/net/sip/SipAudioCall;->access$1100(Lbaidu/net/sip/SipAudioCall;ILjava/lang/String;)V

    .line 591
    return-void
.end method

.method public onInfoReceived(Ljava/lang/String;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 444
    const-string v2, "baidu.net.sip"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info received... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    #getter for: Lbaidu/net/sip/SipAudioCall;->mListener:Lbaidu/net/sip/SipAudioCall$Listener;
    invoke-static {v2}, Lbaidu/net/sip/SipAudioCall;->access$000(Lbaidu/net/sip/SipAudioCall;)Lbaidu/net/sip/SipAudioCall$Listener;

    move-result-object v0

    .line 446
    .local v0, listener:Lbaidu/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    .line 448
    :try_start_0
    invoke-virtual {v0, p1}, Lbaidu/net/sip/SipAudioCall$Listener;->onInfoReceived(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 449
    :catch_0
    move-exception v1

    .line 450
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "baidu.net.sip"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onInfoReceived(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRegistering(Lbaidu/net/sip/SipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 596
    return-void
.end method

.method public onRegistrationDone(Lbaidu/net/sip/SipSession;I)V
    .locals 0
    .parameter "session"
    .parameter "duration"

    .prologue
    .line 612
    return-void
.end method

.method public onRegistrationFailed(Lbaidu/net/sip/SipSession;ILjava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 607
    return-void
.end method

.method public onRegistrationTimeout(Lbaidu/net/sip/SipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 601
    return-void
.end method

.method public onRinging(Lbaidu/net/sip/SipSession;Lbaidu/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 5
    .parameter "session"
    .parameter "peerProfile"
    .parameter "sessionDescription"

    .prologue
    .line 486
    iget-object v3, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    monitor-enter v3

    .line 487
    :try_start_0
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    #getter for: Lbaidu/net/sip/SipAudioCall;->mSipSession:Lbaidu/net/sip/SipSession;
    invoke-static {v2}, Lbaidu/net/sip/SipAudioCall;->access$100(Lbaidu/net/sip/SipAudioCall;)Lbaidu/net/sip/SipSession;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    #getter for: Lbaidu/net/sip/SipAudioCall;->mInCall:Z
    invoke-static {v2}, Lbaidu/net/sip/SipAudioCall;->access$200(Lbaidu/net/sip/SipAudioCall;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lbaidu/net/sip/SipSession;->getCallId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    #getter for: Lbaidu/net/sip/SipAudioCall;->mSipSession:Lbaidu/net/sip/SipSession;
    invoke-static {v4}, Lbaidu/net/sip/SipAudioCall;->access$100(Lbaidu/net/sip/SipAudioCall;)Lbaidu/net/sip/SipSession;

    move-result-object v4

    invoke-virtual {v4}, Lbaidu/net/sip/SipSession;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 491
    :cond_0
    invoke-virtual {p1}, Lbaidu/net/sip/SipSession;->endCall()V

    .line 492
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    :goto_0
    return-void

    .line 497
    :cond_1
    :try_start_1
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    #calls: Lbaidu/net/sip/SipAudioCall;->createAnswer(Ljava/lang/String;)Lbaidu/net/sip/SimpleSessionDescription;
    invoke-static {v2, p3}, Lbaidu/net/sip/SipAudioCall;->access$300(Lbaidu/net/sip/SipAudioCall;Ljava/lang/String;)Lbaidu/net/sip/SimpleSessionDescription;

    move-result-object v2

    invoke-virtual {v2}, Lbaidu/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, answer:Ljava/lang/String;
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    #getter for: Lbaidu/net/sip/SipAudioCall;->mSipSession:Lbaidu/net/sip/SipSession;
    invoke-static {v2}, Lbaidu/net/sip/SipAudioCall;->access$100(Lbaidu/net/sip/SipAudioCall;)Lbaidu/net/sip/SipSession;

    move-result-object v2

    const/4 v4, 0x5

    invoke-virtual {v2, v0, v4}, Lbaidu/net/sip/SipSession;->answerCall(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 503
    .end local v0           #answer:Ljava/lang/String;
    :goto_1
    :try_start_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 499
    :catch_0
    move-exception v1

    .line 500
    .local v1, e:Ljava/lang/Throwable;
    :try_start_3
    const-string v2, "baidu.net.sip"

    const-string/jumbo v4, "onRinging()"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 501
    invoke-virtual {p1}, Lbaidu/net/sip/SipSession;->endCall()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public onRingingBack(Lbaidu/net/sip/SipSession;)V
    .locals 5
    .parameter "session"

    .prologue
    .line 471
    const-string v2, "baidu.net.sip"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sip call ringing back: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    #getter for: Lbaidu/net/sip/SipAudioCall;->mListener:Lbaidu/net/sip/SipAudioCall$Listener;
    invoke-static {v2}, Lbaidu/net/sip/SipAudioCall;->access$000(Lbaidu/net/sip/SipAudioCall;)Lbaidu/net/sip/SipAudioCall$Listener;

    move-result-object v0

    .line 473
    .local v0, listener:Lbaidu/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    .line 475
    :try_start_0
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall$1;->this$0:Lbaidu/net/sip/SipAudioCall;

    invoke-virtual {v0, v2}, Lbaidu/net/sip/SipAudioCall$Listener;->onRingingBack(Lbaidu/net/sip/SipAudioCall;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 476
    :catch_0
    move-exception v1

    .line 477
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "baidu.net.sip"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRingingBack(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
