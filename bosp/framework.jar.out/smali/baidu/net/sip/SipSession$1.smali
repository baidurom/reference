.class Lbaidu/net/sip/SipSession$1;
.super Lbaidu/net/sip/ISipSessionListener$Stub;
.source "SipSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbaidu/net/sip/SipSession;->createListener()Lbaidu/net/sip/ISipSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbaidu/net/sip/SipSession;


# direct methods
.method constructor <init>(Lbaidu/net/sip/SipSession;)V
    .locals 0
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    invoke-direct {p0}, Lbaidu/net/sip/ISipSessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBusy(Lbaidu/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 539
    iget-object v0, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    #getter for: Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;
    invoke-static {v0}, Lbaidu/net/sip/SipSession;->access$000(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    #getter for: Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;
    invoke-static {v0}, Lbaidu/net/sip/SipSession;->access$000(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    invoke-virtual {v0, v1}, Lbaidu/net/sip/SipSession$Listener;->onCallBusy(Lbaidu/net/sip/SipSession;)V

    .line 542
    :cond_0
    return-void
.end method

.method public onCallChangeFailed(Lbaidu/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 556
    iget-object v0, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    #getter for: Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;
    invoke-static {v0}, Lbaidu/net/sip/SipSession;->access$000(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    #getter for: Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;
    invoke-static {v0}, Lbaidu/net/sip/SipSession;->access$000(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    invoke-virtual {v0, v1, p2, p3}, Lbaidu/net/sip/SipSession$Listener;->onCallChangeFailed(Lbaidu/net/sip/SipSession;ILjava/lang/String;)V

    .line 560
    :cond_0
    return-void
.end method

.method public onCallEnded(Lbaidu/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 533
    iget-object v0, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    #getter for: Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;
    invoke-static {v0}, Lbaidu/net/sip/SipSession;->access$000(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    #getter for: Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;
    invoke-static {v0}, Lbaidu/net/sip/SipSession;->access$000(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    invoke-virtual {v0, v1}, Lbaidu/net/sip/SipSession$Listener;->onCallEnded(Lbaidu/net/sip/SipSession;)V

    .line 536
    :cond_0
    return-void
.end method

.method public onCallEstablished(Lbaidu/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "sessionDescription"

    .prologue
    .line 526
    iget-object v0, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    #getter for: Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;
    invoke-static {v0}, Lbaidu/net/sip/SipSession;->access$000(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    #getter for: Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;
    invoke-static {v0}, Lbaidu/net/sip/SipSession;->access$000(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    invoke-virtual {v0, v1, p2}, Lbaidu/net/sip/SipSession$Listener;->onCallEstablished(Lbaidu/net/sip/SipSession;Ljava/lang/String;)V

    .line 530
    :cond_0
    return-void
.end method

.method public onCallTransferring(Lbaidu/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 3
    .parameter "session"
    .parameter "sessionDescription"

    .prologue
    .line 546
    iget-object v0, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    #getter for: Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;
    invoke-static {v0}, Lbaidu/net/sip/SipSession;->access$000(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    #getter for: Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;
    invoke-static {v0}, Lbaidu/net/sip/SipSession;->access$000(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession$Listener;

    move-result-object v0

    new-instance v1, Lbaidu/net/sip/SipSession;

    iget-object v2, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    #getter for: Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;
    invoke-static {v2}, Lbaidu/net/sip/SipSession;->access$000(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession$Listener;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lbaidu/net/sip/SipSession;-><init>(Lbaidu/net/sip/ISipSession;Lbaidu/net/sip/SipSession$Listener;)V

    invoke-virtual {v0, v1, p2}, Lbaidu/net/sip/SipSession$Listener;->onCallTransferring(Lbaidu/net/sip/SipSession;Ljava/lang/String;)V

    .line 552
    :cond_0
    return-void
.end method

.method public onCalling(Lbaidu/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 505
    iget-object v0, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    #getter for: Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;
    invoke-static {v0}, Lbaidu/net/sip/SipSession;->access$000(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    #getter for: Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;
    invoke-static {v0}, Lbaidu/net/sip/SipSession;->access$000(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    invoke-virtual {v0, v1}, Lbaidu/net/sip/SipSession$Listener;->onCalling(Lbaidu/net/sip/SipSession;)V

    .line 508
    :cond_0
    return-void
.end method

.method public onError(Lbaidu/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 563
    iget-object v0, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    #getter for: Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;
    invoke-static {v0}, Lbaidu/net/sip/SipSession;->access$000(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    #getter for: Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;
    invoke-static {v0}, Lbaidu/net/sip/SipSession;->access$000(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    invoke-virtual {v0, v1, p2, p3}, Lbaidu/net/sip/SipSession$Listener;->onError(Lbaidu/net/sip/SipSession;ILjava/lang/String;)V

    .line 566
    :cond_0
    return-void
.end method

.method public onInfoReceived(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 498
    iget-object v0, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    #getter for: Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;
    invoke-static {v0}, Lbaidu/net/sip/SipSession;->access$000(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    #getter for: Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;
    invoke-static {v0}, Lbaidu/net/sip/SipSession;->access$000(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbaidu/net/sip/SipSession$Listener;->onInfoReceived(Ljava/lang/String;)V

    .line 501
    :cond_0
    return-void
.end method

.method public onRegistering(Lbaidu/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 569
    iget-object v0, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    #getter for: Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;
    invoke-static {v0}, Lbaidu/net/sip/SipSession;->access$000(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    #getter for: Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;
    invoke-static {v0}, Lbaidu/net/sip/SipSession;->access$000(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    invoke-virtual {v0, v1}, Lbaidu/net/sip/SipSession$Listener;->onRegistering(Lbaidu/net/sip/SipSession;)V

    .line 572
    :cond_0
    return-void
.end method

.method public onRegistrationDone(Lbaidu/net/sip/ISipSession;I)V
    .locals 2
    .parameter "session"
    .parameter "duration"

    .prologue
    .line 575
    iget-object v0, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    #getter for: Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;
    invoke-static {v0}, Lbaidu/net/sip/SipSession;->access$000(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    #getter for: Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;
    invoke-static {v0}, Lbaidu/net/sip/SipSession;->access$000(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    invoke-virtual {v0, v1, p2}, Lbaidu/net/sip/SipSession$Listener;->onRegistrationDone(Lbaidu/net/sip/SipSession;I)V

    .line 578
    :cond_0
    return-void
.end method

.method public onRegistrationFailed(Lbaidu/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 582
    iget-object v0, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    #getter for: Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;
    invoke-static {v0}, Lbaidu/net/sip/SipSession;->access$000(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    #getter for: Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;
    invoke-static {v0}, Lbaidu/net/sip/SipSession;->access$000(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    invoke-virtual {v0, v1, p2, p3}, Lbaidu/net/sip/SipSession$Listener;->onRegistrationFailed(Lbaidu/net/sip/SipSession;ILjava/lang/String;)V

    .line 586
    :cond_0
    return-void
.end method

.method public onRegistrationTimeout(Lbaidu/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 589
    iget-object v0, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    #getter for: Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;
    invoke-static {v0}, Lbaidu/net/sip/SipSession;->access$000(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    #getter for: Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;
    invoke-static {v0}, Lbaidu/net/sip/SipSession;->access$000(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    invoke-virtual {v0, v1}, Lbaidu/net/sip/SipSession$Listener;->onRegistrationTimeout(Lbaidu/net/sip/SipSession;)V

    .line 592
    :cond_0
    return-void
.end method

.method public onRinging(Lbaidu/net/sip/ISipSession;Lbaidu/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "caller"
    .parameter "sessionDescription"

    .prologue
    .line 512
    iget-object v0, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    #getter for: Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;
    invoke-static {v0}, Lbaidu/net/sip/SipSession;->access$000(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    #getter for: Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;
    invoke-static {v0}, Lbaidu/net/sip/SipSession;->access$000(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    invoke-virtual {v0, v1, p2, p3}, Lbaidu/net/sip/SipSession$Listener;->onRinging(Lbaidu/net/sip/SipSession;Lbaidu/net/sip/SipProfile;Ljava/lang/String;)V

    .line 516
    :cond_0
    return-void
.end method

.method public onRingingBack(Lbaidu/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 519
    iget-object v0, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    #getter for: Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;
    invoke-static {v0}, Lbaidu/net/sip/SipSession;->access$000(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    #getter for: Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;
    invoke-static {v0}, Lbaidu/net/sip/SipSession;->access$000(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lbaidu/net/sip/SipSession$1;->this$0:Lbaidu/net/sip/SipSession;

    invoke-virtual {v0, v1}, Lbaidu/net/sip/SipSession$Listener;->onRingingBack(Lbaidu/net/sip/SipSession;)V

    .line 522
    :cond_0
    return-void
.end method
