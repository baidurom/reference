.class public Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;
.super Lcom/baidu/internal/telephony/sip/SipConnectionBase;
.source "SipPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/telephony/sip/SipPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SipConnection"
.end annotation


# instance fields
.field private mAdapter:Lcom/baidu/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

.field private mIncoming:Z

.field private mOriginalNumber:Ljava/lang/String;

.field private mOwner:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

.field private mPeer:Lbaidu/net/sip/SipProfile;

.field private mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

.field private mState:Lcom/android/internal/telephony/Call$State;

.field private mTotalFlow:J

.field final synthetic this$0:Lcom/baidu/internal/telephony/sip/SipPhone;


# direct methods
.method public constructor <init>(Lcom/baidu/internal/telephony/sip/SipPhone;Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;Lbaidu/net/sip/SipProfile;)V
    .locals 1
    .parameter
    .parameter "owner"
    .parameter "callee"

    .prologue
    .line 850
    #calls: Lcom/baidu/internal/telephony/sip/SipPhone;->getUriString(Lbaidu/net/sip/SipProfile;)Ljava/lang/String;
    invoke-static {p1, p3}, Lcom/baidu/internal/telephony/sip/SipPhone;->access$1400(Lcom/baidu/internal/telephony/sip/SipPhone;Lbaidu/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;-><init>(Lcom/baidu/internal/telephony/sip/SipPhone;Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;Lbaidu/net/sip/SipProfile;Ljava/lang/String;)V

    .line 851
    return-void
.end method

.method public constructor <init>(Lcom/baidu/internal/telephony/sip/SipPhone;Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;Lbaidu/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "owner"
    .parameter "callee"
    .parameter "originalNumber"

    .prologue
    .line 842
    iput-object p1, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/baidu/internal/telephony/sip/SipPhone;

    .line 843
    invoke-direct {p0, p4}, Lcom/baidu/internal/telephony/sip/SipConnectionBase;-><init>(Ljava/lang/String;)V

    .line 751
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    .line 754
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mIncoming:Z

    .line 756
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mTotalFlow:J

    .line 759
    new-instance v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;

    invoke-direct {v0, p0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection$1;-><init>(Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;)V

    iput-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mAdapter:Lcom/baidu/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

    .line 844
    iput-object p2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    .line 845
    iput-object p3, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Lbaidu/net/sip/SipProfile;

    .line 846
    iput-object p4, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mOriginalNumber:Ljava/lang/String;

    .line 847
    return-void
.end method

.method static synthetic access$1000(Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;)Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;
    .locals 1
    .parameter "x0"

    .prologue
    .line 748
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/Call$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 748
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;)Lbaidu/net/sip/SipAudioCall;
    .locals 1
    .parameter "x0"

    .prologue
    .line 748
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    return-object v0
.end method

.method static synthetic access$702(Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;Lbaidu/net/sip/SipAudioCall;)Lbaidu/net/sip/SipAudioCall;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 748
    iput-object p1, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    return-object p1
.end method

.method static synthetic access$800(Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;)Lbaidu/net/sip/SipProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 748
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Lbaidu/net/sip/SipProfile;

    return-object v0
.end method

.method static synthetic access$902(Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 748
    iput-wide p1, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mTotalFlow:J

    return-wide p1
.end method


# virtual methods
.method acceptCall()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 874
    :try_start_0
    iget-object v1, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lbaidu/net/sip/SipAudioCall;->answerCall(I)V
    :try_end_0
    .catch Lbaidu/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    return-void

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, e:Lbaidu/net/sip/SipException;
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acceptCall(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic cancelPostDial()V
    .locals 0

    .prologue
    .line 748
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipConnectionBase;->cancelPostDial()V

    return-void
.end method

.method changeOwner(Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;)V
    .locals 0
    .parameter "owner"

    .prologue
    .line 881
    iput-object p1, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    .line 882
    return-void
.end method

.method configLocalCamera(II)V
    .locals 1
    .parameter "cameraId"
    .parameter "value"

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    invoke-virtual {v0, p1, p2}, Lbaidu/net/sip/SipAudioCall;->configLocalCamera(II)V

    .line 1067
    :cond_0
    return-void
.end method

.method dial()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbaidu/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 890
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 891
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/baidu/internal/telephony/sip/SipPhone;

    #getter for: Lcom/baidu/internal/telephony/sip/SipPhone;->mSipManager:Lbaidu/net/sip/SipManager;
    invoke-static {v0}, Lcom/baidu/internal/telephony/sip/SipPhone;->access$1500(Lcom/baidu/internal/telephony/sip/SipPhone;)Lbaidu/net/sip/SipManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/baidu/internal/telephony/sip/SipPhone;

    #getter for: Lcom/baidu/internal/telephony/sip/SipPhone;->mProfile:Lbaidu/net/sip/SipProfile;
    invoke-static {v1}, Lcom/baidu/internal/telephony/sip/SipPhone;->access$100(Lcom/baidu/internal/telephony/sip/SipPhone;)Lbaidu/net/sip/SipProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Lbaidu/net/sip/SipProfile;

    const/4 v3, 0x0

    const/16 v4, 0xf

    invoke-virtual {v0, v1, v2, v3, v4}, Lbaidu/net/sip/SipManager;->makeAudioCall(Lbaidu/net/sip/SipProfile;Lbaidu/net/sip/SipProfile;Lbaidu/net/sip/SipAudioCall$Listener;I)Lbaidu/net/sip/SipAudioCall;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    .line 893
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    iget-object v1, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mAdapter:Lcom/baidu/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

    invoke-virtual {v0, v1}, Lbaidu/net/sip/SipAudioCall;->setListener(Lbaidu/net/sip/SipAudioCall$Listener;)V

    .line 894
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mOriginalNumber:Ljava/lang/String;

    return-object v0
.end method

.method getAudioGroup()Lbaidu/net/rtp/AudioGroup;
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 886
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    invoke-virtual {v0}, Lbaidu/net/sip/SipAudioCall;->getAudioGroup()Lbaidu/net/rtp/AudioGroup;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->getCall()Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 855
    iget-object v1, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Lbaidu/net/sip/SipProfile;

    invoke-virtual {v1}, Lbaidu/net/sip/SipProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, displayName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .end local v0           #displayName:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getConnectTime()J
    .locals 2

    .prologue
    .line 748
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipConnectionBase;->getConnectTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getCreateTime()J
    .locals 2

    .prologue
    .line 748
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipConnectionBase;->getCreateTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;
    .locals 1

    .prologue
    .line 748
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipConnectionBase;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDisconnectTime()J
    .locals 2

    .prologue
    .line 748
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipConnectionBase;->getDisconnectTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getDurationMillis()J
    .locals 2

    .prologue
    .line 748
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipConnectionBase;->getDurationMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getHoldDurationMillis()J
    .locals 2

    .prologue
    .line 748
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipConnectionBase;->getHoldDurationMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method getMute()Z
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    invoke-virtual {v0}, Lbaidu/net/sip/SipAudioCall;->isMuted()Z

    move-result v0

    goto :goto_0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 862
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    return v0
.end method

.method public getPeerProfile()Lbaidu/net/sip/SipProfile;
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Lbaidu/net/sip/SipProfile;

    return-object v0
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    .prologue
    .line 748
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipConnectionBase;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRemainingPostDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 748
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipConnectionBase;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method getTotalFlow()J
    .locals 2

    .prologue
    .line 1019
    iget-wide v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mTotalFlow:J

    return-wide v0
.end method

.method public bridge synthetic getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    .prologue
    .line 748
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipConnectionBase;->getUUSInfo()Lcom/android/internal/telephony/UUSInfo;

    move-result-object v0

    return-object v0
.end method

.method public hangup()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 963
    const-class v4, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v4

    .line 964
    :try_start_0
    const-string v2, "SipPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hangup conn: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Lbaidu/net/sip/SipProfile;

    invoke-virtual {v5}, Lbaidu/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": on phone "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 983
    :goto_0
    return-void

    .line 969
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    .line 970
    .local v1, sipAudioCall:Lbaidu/net/sip/SipAudioCall;
    if-eqz v1, :cond_1

    .line 971
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lbaidu/net/sip/SipAudioCall;->setListener(Lbaidu/net/sip/SipAudioCall$Listener;)V

    .line 972
    invoke-virtual {v1}, Lbaidu/net/sip/SipAudioCall;->endCall()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lbaidu/net/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0

    .line 977
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mAdapter:Lcom/baidu/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v5, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v5, :cond_2

    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v5, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v5, :cond_5

    :cond_2
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    :goto_1
    invoke-virtual {v3, v2}, Lcom/baidu/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onCallEnded(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 982
    monitor-exit v4

    goto :goto_0

    .end local v1           #sipAudioCall:Lbaidu/net/sip/SipAudioCall;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 974
    :catch_0
    move-exception v0

    .line 975
    .local v0, e:Lbaidu/net/sip/SipException;
    :try_start_3
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hangup(): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 977
    .end local v0           #e:Lbaidu/net/sip/SipException;
    :catchall_1
    move-exception v2

    :try_start_4
    iget-object v5, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mAdapter:Lcom/baidu/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

    iget-object v3, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v6, :cond_3

    iget-object v3, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v6, :cond_4

    :cond_3
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    :goto_2
    invoke-virtual {v5, v3}, Lcom/baidu/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onCallEnded(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    throw v2

    :cond_4
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_2

    .restart local v1       #sipAudioCall:Lbaidu/net/sip/SipAudioCall;
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method hold()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 897
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 899
    :try_start_0
    iget-object v1, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lbaidu/net/sip/SipAudioCall;->holdCall(I)V
    :try_end_0
    .catch Lbaidu/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    return-void

    .line 900
    :catch_0
    move-exception v0

    .line 901
    .local v0, e:Lbaidu/net/sip/SipException;
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hold(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method holdVideoStream()V
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    invoke-virtual {v0}, Lbaidu/net/sip/SipAudioCall;->holdVideoStream()V

    .line 1030
    :cond_0
    return-void
.end method

.method initIncomingCall(Lbaidu/net/sip/SipAudioCall;Lcom/android/internal/telephony/Call$State;)V
    .locals 1
    .parameter "sipAudioCall"
    .parameter "newState"

    .prologue
    .line 866
    invoke-virtual {p0, p2}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 867
    iput-object p1, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    .line 868
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mAdapter:Lcom/baidu/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

    invoke-virtual {p1, v0}, Lbaidu/net/sip/SipAudioCall;->setListener(Lbaidu/net/sip/SipAudioCall$Listener;)V

    .line 869
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mIncoming:Z

    .line 870
    return-void
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 940
    iget-boolean v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mIncoming:Z

    return v0
.end method

.method isVideoHold()Z
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    invoke-virtual {v0}, Lbaidu/net/sip/SipAudioCall;->isVideoHold()Z

    move-result v0

    .line 1042
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic proceedAfterWaitChar()V
    .locals 0

    .prologue
    .line 748
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipConnectionBase;->proceedAfterWaitChar()V

    return-void
.end method

.method public bridge synthetic proceedAfterWildChar(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 748
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipConnectionBase;->proceedAfterWildChar(Ljava/lang/String;)V

    return-void
.end method

.method resumeVideoStream()V
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    invoke-virtual {v0}, Lbaidu/net/sip/SipAudioCall;->resumeVideoStream()V

    .line 1036
    :cond_0
    return-void
.end method

.method public separate()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 987
    const-class v4, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v4

    .line 988
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iget-object v5, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/baidu/internal/telephony/sip/SipPhone;

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/baidu/internal/telephony/sip/SipPhone;

    invoke-virtual {v3}, Lcom/baidu/internal/telephony/sip/SipPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    check-cast v3, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    move-object v1, v3

    .line 991
    .local v1, call:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;
    :goto_0
    invoke-virtual {v1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v5, :cond_1

    .line 992
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot put conn back to a call in non-idle state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1014
    .end local v1           #call:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 988
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/baidu/internal/telephony/sip/SipPhone;

    invoke-virtual {v3}, Lcom/baidu/internal/telephony/sip/SipPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    check-cast v3, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    move-object v1, v3

    goto :goto_0

    .line 996
    .restart local v1       #call:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;
    :cond_1
    const-string v3, "SipPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "separate conn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Lbaidu/net/sip/SipProfile;

    invoke-virtual {v6}, Lbaidu/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " back to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    invoke-virtual {p0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1002
    .local v2, originalPhone:Lcom/android/internal/telephony/Phone;
    #calls: Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getAudioGroup()Lbaidu/net/rtp/AudioGroup;
    invoke-static {v1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->access$1600(Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;)Lbaidu/net/rtp/AudioGroup;

    move-result-object v0

    .line 1003
    .local v0, audioGroup:Lbaidu/net/rtp/AudioGroup;
    #calls: Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->add(Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;)V
    invoke-static {v1, p0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->access$1700(Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;)V

    .line 1004
    iget-object v3, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    invoke-virtual {v3, v0}, Lbaidu/net/sip/SipAudioCall;->setAudioGroup(Lbaidu/net/rtp/AudioGroup;)V

    .line 1008
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 1011
    iget-object v3, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/baidu/internal/telephony/sip/SipPhone;

    invoke-virtual {v3}, Lcom/baidu/internal/telephony/sip/SipPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .end local v1           #call:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;
    check-cast v1, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    .line 1012
    .restart local v1       #call:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;
    iget-object v3, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    invoke-virtual {v3}, Lbaidu/net/sip/SipAudioCall;->startAudio()V

    .line 1013
    invoke-virtual {v1, p0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->onConnectionStateChanged(Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;)V

    .line 1014
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1015
    return-void
.end method

.method setLocalPreview(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    invoke-virtual {v0, p1}, Lbaidu/net/sip/SipAudioCall;->setLocalPreview(Landroid/view/SurfaceHolder;)V

    .line 1049
    :cond_0
    return-void
.end method

.method setMute(Z)V
    .locals 1
    .parameter "muted"

    .prologue
    .line 916
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    invoke-virtual {v0}, Lbaidu/net/sip/SipAudioCall;->isMuted()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    invoke-virtual {v0}, Lbaidu/net/sip/SipAudioCall;->toggleMute()V

    .line 919
    :cond_0
    return-void
.end method

.method setRemoteDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    invoke-virtual {v0, p1}, Lbaidu/net/sip/SipAudioCall;->setRemoteDisplay(Landroid/view/SurfaceHolder;)V

    .line 1055
    :cond_0
    return-void
.end method

.method setRemoteDisplayOrientation(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    invoke-virtual {v0, p1}, Lbaidu/net/sip/SipAudioCall;->setRemoteDisplayOrientation(I)V

    .line 1061
    :cond_0
    return-void
.end method

.method protected setState(Lcom/android/internal/telephony/Call$State;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 928
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_0

    .line 931
    :goto_0
    return-void

    .line 929
    :cond_0
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipConnectionBase;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 930
    iput-object p1, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    goto :goto_0
.end method

.method unhold(Lbaidu/net/rtp/AudioGroup;)V
    .locals 4
    .parameter "audioGroup"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 906
    iget-object v1, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    invoke-virtual {v1, p1}, Lbaidu/net/sip/SipAudioCall;->setAudioGroup(Lbaidu/net/rtp/AudioGroup;)V

    .line 907
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 909
    :try_start_0
    iget-object v1, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Lbaidu/net/sip/SipAudioCall;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lbaidu/net/sip/SipAudioCall;->continueCall(I)V
    :try_end_0
    .catch Lbaidu/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    return-void

    .line 910
    :catch_0
    move-exception v0

    .line 911
    .local v0, e:Lbaidu/net/sip/SipException;
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unhold(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
