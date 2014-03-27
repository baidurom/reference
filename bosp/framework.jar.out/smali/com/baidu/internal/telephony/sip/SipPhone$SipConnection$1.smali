.class Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;
.super Lcom/baidu/internal/telephony/sip/SipPhone$SipAudioCallAdapter;
.source "SipPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;


# direct methods
.method constructor <init>(Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;)V
    .locals 2
    .parameter

    .prologue
    .line 756
    iput-object p1, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    iget-object v0, p1, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/baidu/internal/telephony/sip/SipPhone;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipAudioCallAdapter;-><init>(Lcom/baidu/internal/telephony/sip/SipPhone;Lcom/baidu/internal/telephony/sip/SipPhone$1;)V

    return-void
.end method


# virtual methods
.method protected onCallEnded(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .locals 6
    .parameter "cause"

    .prologue
    .line 759
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v2}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v3, :cond_0

    .line 760
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v2, p1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->setDisconnectCause(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 762
    :cond_0
    const-class v3, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v3

    .line 763
    :try_start_0
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2, v4}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 764
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    #getter for: Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;
    invoke-static {v2}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->access$700(Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;)Lbaidu/net/sip/SipAudioCall;

    move-result-object v1

    .line 765
    .local v1, sipAudioCall:Lbaidu/net/sip/SipAudioCall;
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    const/4 v4, 0x0

    #setter for: Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;
    invoke-static {v2, v4}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->access$702(Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;Lbaidu/net/sip/SipAudioCall;)Lbaidu/net/sip/SipAudioCall;

    .line 766
    if-nez v1, :cond_2

    const-string v0, ""

    .line 769
    .local v0, sessionState:Ljava/lang/String;
    :goto_0
    const-string v2, "SipPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--- connection ended: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    #getter for: Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Lbaidu/net/sip/SipProfile;
    invoke-static {v5}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->access$800(Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;)Lbaidu/net/sip/SipProfile;

    move-result-object v5

    invoke-virtual {v5}, Lbaidu/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "cause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v5}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", on phone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v5}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    if-eqz v1, :cond_1

    .line 774
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lbaidu/net/sip/SipAudioCall;->setListener(Lbaidu/net/sip/SipAudioCall$Listener;)V

    .line 775
    invoke-virtual {v1}, Lbaidu/net/sip/SipAudioCall;->close()V

    .line 777
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v1}, Lbaidu/net/sip/SipAudioCall;->getTotalFlow()J

    move-result-wide v4

    #setter for: Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mTotalFlow:J
    invoke-static {v2, v4, v5}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->access$902(Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;J)J

    .line 780
    :cond_1
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    #getter for: Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;
    invoke-static {v2}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->access$1000(Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;)Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v2

    iget-object v4, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v2, v4}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->onConnectionEnded(Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;)V

    .line 781
    monitor-exit v3

    .line 782
    return-void

    .line 766
    .end local v0           #sessionState:Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lbaidu/net/sip/SipAudioCall;->getState()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 781
    .end local v1           #sipAudioCall:Lbaidu/net/sip/SipAudioCall;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onCallEstablished(Lbaidu/net/sip/SipAudioCall;)V
    .locals 2
    .parameter "call"

    .prologue
    .line 786
    invoke-virtual {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->onChanged(Lbaidu/net/sip/SipAudioCall;)V

    .line 787
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    #getter for: Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;
    invoke-static {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->access$1100(Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lbaidu/net/sip/SipAudioCall;->startAudio()V

    .line 788
    :cond_0
    return-void
.end method

.method public onCallHeld(Lbaidu/net/sip/SipAudioCall;)V
    .locals 2
    .parameter "call"

    .prologue
    .line 792
    invoke-virtual {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->onChanged(Lbaidu/net/sip/SipAudioCall;)V

    .line 793
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    #getter for: Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;
    invoke-static {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->access$1100(Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lbaidu/net/sip/SipAudioCall;->startAudio()V

    .line 794
    :cond_0
    return-void
.end method

.method public onChanged(Lbaidu/net/sip/SipAudioCall;)V
    .locals 6
    .parameter "call"

    .prologue
    .line 798
    const-class v3, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v3

    .line 799
    :try_start_0
    #calls: Lcom/baidu/internal/telephony/sip/SipPhone;->getCallStateFrom(Lbaidu/net/sip/SipAudioCall;)Lcom/android/internal/telephony/Call$State;
    invoke-static {p1}, Lcom/baidu/internal/telephony/sip/SipPhone;->access$1200(Lbaidu/net/sip/SipAudioCall;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 800
    .local v1, newState:Lcom/android/internal/telephony/Call$State;
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    #getter for: Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;
    invoke-static {v2}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->access$1100(Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    if-ne v2, v1, :cond_0

    monitor-exit v3

    .line 823
    :goto_0
    return-void

    .line 801
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    .line 802
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    iget-object v4, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    #getter for: Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;
    invoke-static {v4}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->access$1000(Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;)Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 818
    :goto_1
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    #getter for: Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;
    invoke-static {v2}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->access$1000(Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;)Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v2

    iget-object v4, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v2, v4}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->onConnectionStateChanged(Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;)V

    .line 819
    const-string v2, "SipPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+***+ connection state changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    #getter for: Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Lbaidu/net/sip/SipProfile;
    invoke-static {v5}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->access$800(Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;)Lbaidu/net/sip/SipProfile;

    move-result-object v5

    invoke-virtual {v5}, Lbaidu/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    #getter for: Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;
    invoke-static {v5}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->access$1100(Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on phone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v5}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    monitor-exit v3

    goto :goto_0

    .end local v1           #newState:Lcom/android/internal/telephony/Call$State;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 804
    .restart local v1       #newState:Lcom/android/internal/telephony/Call$State;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    #getter for: Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;
    invoke-static {v2}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->access$1000(Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;)Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v2

    iget-object v4, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    iget-object v4, v4, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/baidu/internal/telephony/sip/SipPhone;

    #getter for: Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;
    invoke-static {v4}, Lcom/baidu/internal/telephony/sip/SipPhone;->access$300(Lcom/baidu/internal/telephony/sip/SipPhone;)Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v4

    if-ne v2, v4, :cond_3

    .line 805
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    iget-object v2, v2, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/baidu/internal/telephony/sip/SipPhone;

    #getter for: Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;
    invoke-static {v2}, Lcom/baidu/internal/telephony/sip/SipPhone;->access$300(Lcom/baidu/internal/telephony/sip/SipPhone;)Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v4, :cond_2

    .line 807
    :try_start_2
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    iget-object v2, v2, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/baidu/internal/telephony/sip/SipPhone;

    invoke-virtual {v2}, Lcom/baidu/internal/telephony/sip/SipPhone;->switchHoldingAndActive()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 814
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    iget-object v2, v2, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/baidu/internal/telephony/sip/SipPhone;

    #getter for: Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;
    invoke-static {v2}, Lcom/baidu/internal/telephony/sip/SipPhone;->access$1300(Lcom/baidu/internal/telephony/sip/SipPhone;)Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v2

    iget-object v4, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    iget-object v4, v4, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/baidu/internal/telephony/sip/SipPhone;

    #getter for: Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;
    invoke-static {v4}, Lcom/baidu/internal/telephony/sip/SipPhone;->access$300(Lcom/baidu/internal/telephony/sip/SipPhone;)Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->switchWith(Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;)V

    .line 816
    :cond_3
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->this$1:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v2, v1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V

    goto/16 :goto_1

    .line 808
    :catch_0
    move-exception v0

    .line 810
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {p0, v2}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->onCallEnded(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 811
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method protected onError(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .locals 3
    .parameter "cause"

    .prologue
    .line 827
    const-string v0, "SipPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIP error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    invoke-virtual {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;->onCallEnded(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 829
    return-void
.end method

.method public onInfoReceived(Ljava/lang/String;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 834
    return-void
.end method
