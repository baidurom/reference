.class public Lbaidu/net/sip/SipAudioCall;
.super Ljava/lang/Object;
.source "SipAudioCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbaidu/net/sip/SipAudioCall$Listener;
    }
.end annotation


# static fields
.field private static final DONT_RELEASE_SOCKET:Z = false

.field private static final RELEASE_SOCKET:Z = true

.field private static final SESSION_TIMEOUT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "baidu.net.sip"

.field private static final TRANSFER_TIMEOUT:I = 0xf


# instance fields
.field private mAudioGroup:Lbaidu/net/rtp/AudioGroup;

.field private mAudioStream:Lbaidu/net/rtp/AudioStream;

.field private mContext:Landroid/content/Context;

.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mHold:Z

.field private mInCall:Z

.field private mIsVideoEnabled:Z

.field private mListener:Lbaidu/net/sip/SipAudioCall$Listener;

.field private mLocalProfile:Lbaidu/net/sip/SipProfile;

.field private mMuted:Z

.field private mPeerSd:Ljava/lang/String;

.field private mPendingCallRequest:Lbaidu/net/sip/SipProfile;

.field private mSessionId:J

.field private mSipSession:Lbaidu/net/sip/SipSession;

.field private mTotalFlow:J

.field private mTransferringSession:Lbaidu/net/sip/SipSession;

.field private mVideoHold:Z

.field private mVideoStream:Lbaidu/net/rtp/VideoStream;

.field private mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWm:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbaidu/net/sip/SipProfile;Z)V
    .locals 3
    .parameter "context"
    .parameter "localProfile"
    .parameter "isVideoEnabled"

    .prologue
    const/4 v2, 0x0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbaidu/net/sip/SipAudioCall;->mSessionId:J

    .line 221
    iput-boolean v2, p0, Lbaidu/net/sip/SipAudioCall;->mIsVideoEnabled:Z

    .line 222
    iput-boolean v2, p0, Lbaidu/net/sip/SipAudioCall;->mVideoHold:Z

    .line 225
    iput-boolean v2, p0, Lbaidu/net/sip/SipAudioCall;->mInCall:Z

    .line 226
    iput-boolean v2, p0, Lbaidu/net/sip/SipAudioCall;->mMuted:Z

    .line 227
    iput-boolean v2, p0, Lbaidu/net/sip/SipAudioCall;->mHold:Z

    .line 233
    iput v2, p0, Lbaidu/net/sip/SipAudioCall;->mErrorCode:I

    .line 246
    const-string v0, "baidu.net.sip"

    const-string v1, "<====> SipAudioCall::SipAudioCall()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iput-object p1, p0, Lbaidu/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    .line 248
    iput-object p2, p0, Lbaidu/net/sip/SipAudioCall;->mLocalProfile:Lbaidu/net/sip/SipProfile;

    .line 249
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mWm:Landroid/net/wifi/WifiManager;

    .line 252
    iput-boolean p3, p0, Lbaidu/net/sip/SipAudioCall;->mIsVideoEnabled:Z

    .line 254
    return-void
.end method

.method static synthetic access$000(Lbaidu/net/sip/SipAudioCall;)Lbaidu/net/sip/SipAudioCall$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mListener:Lbaidu/net/sip/SipAudioCall$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lbaidu/net/sip/SipAudioCall;)Lbaidu/net/sip/SipSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mSipSession:Lbaidu/net/sip/SipSession;

    return-object v0
.end method

.method static synthetic access$1002(Lbaidu/net/sip/SipAudioCall;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lbaidu/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lbaidu/net/sip/SipAudioCall;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lbaidu/net/sip/SipAudioCall;->onError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lbaidu/net/sip/SipAudioCall;)Lbaidu/net/sip/SimpleSessionDescription;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lbaidu/net/sip/SipAudioCall;->createOffer()Lbaidu/net/sip/SimpleSessionDescription;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lbaidu/net/sip/SipAudioCall;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lbaidu/net/sip/SipAudioCall;->mInCall:Z

    return v0
.end method

.method static synthetic access$300(Lbaidu/net/sip/SipAudioCall;Ljava/lang/String;)Lbaidu/net/sip/SimpleSessionDescription;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lbaidu/net/sip/SipAudioCall;->createAnswer(Ljava/lang/String;)Lbaidu/net/sip/SimpleSessionDescription;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lbaidu/net/sip/SipAudioCall;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lbaidu/net/sip/SipAudioCall;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lbaidu/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lbaidu/net/sip/SipAudioCall;)Lbaidu/net/sip/SipSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mTransferringSession:Lbaidu/net/sip/SipSession;

    return-object v0
.end method

.method static synthetic access$502(Lbaidu/net/sip/SipAudioCall;Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lbaidu/net/sip/SipAudioCall;->mTransferringSession:Lbaidu/net/sip/SipSession;

    return-object p1
.end method

.method static synthetic access$600(Lbaidu/net/sip/SipAudioCall;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lbaidu/net/sip/SipAudioCall;->transferToNewSession()V

    return-void
.end method

.method static synthetic access$700(Lbaidu/net/sip/SipAudioCall;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lbaidu/net/sip/SipAudioCall;->mHold:Z

    return v0
.end method

.method static synthetic access$800(Lbaidu/net/sip/SipAudioCall;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lbaidu/net/sip/SipAudioCall;->close(Z)V

    return-void
.end method

.method static synthetic access$900(Lbaidu/net/sip/SipAudioCall;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lbaidu/net/sip/SipAudioCall;->mErrorCode:I

    return v0
.end method

.method static synthetic access$902(Lbaidu/net/sip/SipAudioCall;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lbaidu/net/sip/SipAudioCall;->mErrorCode:I

    return p1
.end method

.method private declared-synchronized close(Z)V
    .locals 3
    .parameter "closeRtp"

    .prologue
    .line 346
    monitor-enter p0

    :try_start_0
    const-string v0, "baidu.net.sip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "====> SipAudioCall::close("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbaidu/net/sip/SipAudioCall;->stopCall(Z)V

    .line 350
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbaidu/net/sip/SipAudioCall;->mInCall:Z

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbaidu/net/sip/SipAudioCall;->mHold:Z

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbaidu/net/sip/SipAudioCall;->mVideoHold:Z

    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbaidu/net/sip/SipAudioCall;->mSessionId:J

    .line 356
    const/4 v0, 0x0

    iput v0, p0, Lbaidu/net/sip/SipAudioCall;->mErrorCode:I

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;

    .line 359
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mSipSession:Lbaidu/net/sip/SipSession;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mSipSession:Lbaidu/net/sip/SipSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbaidu/net/sip/SipSession;->setListener(Lbaidu/net/sip/SipSession$Listener;)V

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mSipSession:Lbaidu/net/sip/SipSession;

    .line 363
    :cond_1
    const-string v0, "baidu.net.sip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<==== SipAudioCall::close("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    monitor-exit p0

    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createAnswer(Ljava/lang/String;)Lbaidu/net/sip/SimpleSessionDescription;
    .locals 23
    .parameter "offerSd"

    .prologue
    .line 871
    const-string v19, "baidu.net.sip"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "====> SipAudioCall::createAnswer(), offer = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-direct/range {p0 .. p0}, Lbaidu/net/sip/SipAudioCall;->createOffer()Lbaidu/net/sip/SimpleSessionDescription;

    move-result-object v4

    .line 983
    :goto_0
    return-object v4

    .line 874
    :cond_0
    new-instance v14, Lbaidu/net/sip/SimpleSessionDescription;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lbaidu/net/sip/SimpleSessionDescription;-><init>(Ljava/lang/String;)V

    .line 876
    .local v14, offer:Lbaidu/net/sip/SimpleSessionDescription;
    new-instance v4, Lbaidu/net/sip/SimpleSessionDescription;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lbaidu/net/sip/SipAudioCall;->mSessionId:J

    move-wide/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Lbaidu/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v21

    invoke-direct {v4, v0, v1, v2}, Lbaidu/net/sip/SimpleSessionDescription;-><init>(JLjava/lang/String;)V

    .line 878
    .local v4, answer:Lbaidu/net/sip/SimpleSessionDescription;
    const/4 v7, 0x0

    .line 879
    .local v7, codec:Lbaidu/net/rtp/AudioCodec;
    invoke-virtual {v14}, Lbaidu/net/sip/SimpleSessionDescription;->getMedia()[Lbaidu/net/sip/SimpleSessionDescription$Media;

    move-result-object v5

    .local v5, arr$:[Lbaidu/net/sip/SimpleSessionDescription$Media;
    array-length v11, v5

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    move v10, v9

    .end local v5           #arr$:[Lbaidu/net/sip/SimpleSessionDescription$Media;
    .end local v9           #i$:I
    .end local v11           #len$:I
    .local v10, i$:I
    :goto_1
    if-ge v10, v11, :cond_a

    aget-object v13, v5, v10

    .line 880
    .local v13, media:Lbaidu/net/sip/SimpleSessionDescription$Media;
    if-nez v7, :cond_9

    invoke-virtual {v13}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getPort()I

    move-result v19

    if-lez v19, :cond_9

    const-string v19, "audio"

    invoke-virtual {v13}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getType()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    const-string v19, "RTP/AVP"

    invoke-virtual {v13}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getProtocol()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 884
    invoke-virtual {v13}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getRtpPayloadTypes()[I

    move-result-object v6

    .local v6, arr$:[I
    array-length v12, v6

    .local v12, len$:I
    const/4 v9, 0x0

    .end local v10           #i$:I
    .restart local v9       #i$:I
    :goto_2
    if-ge v9, v12, :cond_1

    aget v17, v6, v9

    .line 885
    .local v17, type:I
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getRtpmap(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getFmtp(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lbaidu/net/rtp/AudioCodec;->getCodec(ILjava/lang/String;Ljava/lang/String;)Lbaidu/net/rtp/AudioCodec;

    move-result-object v7

    .line 887
    if-eqz v7, :cond_3

    .line 891
    .end local v17           #type:I
    :cond_1
    if-eqz v7, :cond_9

    .line 892
    const-string v19, "audio"

    move-object/from16 v0, p0

    iget-object v0, v0, Lbaidu/net/sip/SipAudioCall;->mAudioStream:Lbaidu/net/rtp/AudioStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lbaidu/net/rtp/AudioStream;->getLocalPort()I

    move-result v20

    const/16 v21, 0x1

    const-string v22, "RTP/AVP"

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Lbaidu/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Lbaidu/net/sip/SimpleSessionDescription$Media;

    move-result-object v15

    .line 894
    .local v15, reply:Lbaidu/net/sip/SimpleSessionDescription$Media;
    iget v0, v7, Lbaidu/net/rtp/AudioCodec;->type:I

    move/from16 v19, v0

    iget-object v0, v7, Lbaidu/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v7, Lbaidu/net/rtp/AudioCodec;->fmtp:Ljava/lang/String;

    move-object/from16 v21, v0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v15, v0, v1, v2}, Lbaidu/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-virtual {v13}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getRtpPayloadTypes()[I

    move-result-object v6

    array-length v12, v6

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v12, :cond_4

    aget v17, v6, v9

    .line 898
    .restart local v17       #type:I
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getRtpmap(I)Ljava/lang/String;

    move-result-object v16

    .line 899
    .local v16, rtpmap:Ljava/lang/String;
    iget v0, v7, Lbaidu/net/rtp/AudioCodec;->type:I

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    if-eqz v16, :cond_2

    const-string/jumbo v19, "telephone-event"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 901
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getFmtp(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Lbaidu/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 897
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 884
    .end local v15           #reply:Lbaidu/net/sip/SimpleSessionDescription$Media;
    .end local v16           #rtpmap:Ljava/lang/String;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 907
    .end local v17           #type:I
    .restart local v15       #reply:Lbaidu/net/sip/SimpleSessionDescription$Media;
    :cond_4
    const-string/jumbo v19, "recvonly"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_6

    .line 908
    const-string/jumbo v19, "sendonly"

    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Lbaidu/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    .end local v6           #arr$:[I
    :cond_5
    :goto_4
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    .end local v9           #i$:I
    .restart local v10       #i$:I
    goto/16 :goto_1

    .line 909
    .end local v10           #i$:I
    .restart local v6       #arr$:[I
    .restart local v9       #i$:I
    :cond_6
    const-string/jumbo v19, "sendonly"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_7

    .line 910
    const-string/jumbo v19, "recvonly"

    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Lbaidu/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 911
    :cond_7
    const-string/jumbo v19, "recvonly"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lbaidu/net/sip/SimpleSessionDescription;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_8

    .line 912
    const-string/jumbo v19, "sendonly"

    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Lbaidu/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 913
    :cond_8
    const-string/jumbo v19, "sendonly"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lbaidu/net/sip/SimpleSessionDescription;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_5

    .line 914
    const-string/jumbo v19, "recvonly"

    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Lbaidu/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 921
    .end local v6           #arr$:[I
    .end local v9           #i$:I
    .end local v12           #len$:I
    .end local v15           #reply:Lbaidu/net/sip/SimpleSessionDescription$Media;
    :cond_9
    invoke-virtual {v13}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getType()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual {v13}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getProtocol()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Lbaidu/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Lbaidu/net/sip/SimpleSessionDescription$Media;

    move-result-object v15

    .line 923
    .restart local v15       #reply:Lbaidu/net/sip/SimpleSessionDescription$Media;
    invoke-virtual {v13}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getFormats()[Ljava/lang/String;

    move-result-object v6

    .local v6, arr$:[Ljava/lang/String;
    array-length v12, v6

    .restart local v12       #len$:I
    const/4 v9, 0x0

    .restart local v9       #i$:I
    :goto_5
    if-ge v9, v12, :cond_5

    aget-object v8, v6, v9

    .line 924
    .local v8, format:Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v15, v8, v0}, Lbaidu/net/sip/SimpleSessionDescription$Media;->setFormat(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 929
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #format:Ljava/lang/String;
    .end local v9           #i$:I
    .end local v12           #len$:I
    .end local v13           #media:Lbaidu/net/sip/SimpleSessionDescription$Media;
    .end local v15           #reply:Lbaidu/net/sip/SimpleSessionDescription$Media;
    .restart local v10       #i$:I
    :cond_a
    const/16 v18, 0x0

    .line 930
    .local v18, videoCodec:Lbaidu/net/rtp/VideoCodec;
    invoke-virtual {v14}, Lbaidu/net/sip/SimpleSessionDescription;->getMedia()[Lbaidu/net/sip/SimpleSessionDescription$Media;

    move-result-object v5

    .restart local v5       #arr$:[Lbaidu/net/sip/SimpleSessionDescription$Media;
    array-length v11, v5

    .restart local v11       #len$:I
    const/4 v9, 0x0

    .end local v10           #i$:I
    .restart local v9       #i$:I
    move v10, v9

    .end local v5           #arr$:[Lbaidu/net/sip/SimpleSessionDescription$Media;
    .end local v9           #i$:I
    .end local v11           #len$:I
    .restart local v10       #i$:I
    :goto_6
    if-ge v10, v11, :cond_12

    aget-object v13, v5, v10

    .line 931
    .restart local v13       #media:Lbaidu/net/sip/SimpleSessionDescription$Media;
    if-nez v18, :cond_11

    invoke-virtual {v13}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getPort()I

    move-result v19

    if-lez v19, :cond_11

    const-string/jumbo v19, "video"

    invoke-virtual {v13}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getType()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    const-string v19, "RTP/AVP"

    invoke-virtual {v13}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getProtocol()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 934
    invoke-virtual {v13}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getRtpPayloadTypes()[I

    move-result-object v6

    .local v6, arr$:[I
    array-length v12, v6

    .restart local v12       #len$:I
    const/4 v9, 0x0

    .end local v10           #i$:I
    .restart local v9       #i$:I
    :goto_7
    if-ge v9, v12, :cond_b

    aget v17, v6, v9

    .line 935
    .restart local v17       #type:I
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getRtpmap(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getFmtp(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lbaidu/net/rtp/VideoCodec;->getCodec(ILjava/lang/String;Ljava/lang/String;)Lbaidu/net/rtp/VideoCodec;

    move-result-object v18

    .line 937
    if-eqz v18, :cond_d

    .line 941
    .end local v17           #type:I
    :cond_b
    if-eqz v18, :cond_11

    .line 942
    const-string/jumbo v19, "video"

    move-object/from16 v0, p0

    iget-object v0, v0, Lbaidu/net/sip/SipAudioCall;->mVideoStream:Lbaidu/net/rtp/VideoStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lbaidu/net/rtp/VideoStream;->getLocalPort()I

    move-result v20

    const/16 v21, 0x1

    const-string v22, "RTP/AVP"

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Lbaidu/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Lbaidu/net/sip/SimpleSessionDescription$Media;

    move-result-object v15

    .line 944
    .restart local v15       #reply:Lbaidu/net/sip/SimpleSessionDescription$Media;
    move-object/from16 v0, v18

    iget v0, v0, Lbaidu/net/rtp/VideoCodec;->type:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lbaidu/net/rtp/VideoCodec;->rtpmap:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lbaidu/net/rtp/VideoCodec;->fmtp:Ljava/lang/String;

    move-object/from16 v21, v0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v15, v0, v1, v2}, Lbaidu/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 947
    const-string/jumbo v19, "recvonly"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_e

    .line 948
    const-string/jumbo v19, "sendonly"

    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Lbaidu/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    .end local v6           #arr$:[I
    :cond_c
    :goto_8
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    .end local v9           #i$:I
    .restart local v10       #i$:I
    goto/16 :goto_6

    .line 934
    .end local v10           #i$:I
    .end local v15           #reply:Lbaidu/net/sip/SimpleSessionDescription$Media;
    .restart local v6       #arr$:[I
    .restart local v9       #i$:I
    .restart local v17       #type:I
    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 949
    .end local v17           #type:I
    .restart local v15       #reply:Lbaidu/net/sip/SimpleSessionDescription$Media;
    :cond_e
    const-string/jumbo v19, "sendonly"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_f

    .line 950
    const-string/jumbo v19, "recvonly"

    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Lbaidu/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 951
    :cond_f
    const-string/jumbo v19, "recvonly"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lbaidu/net/sip/SimpleSessionDescription;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_10

    .line 952
    const-string/jumbo v19, "sendonly"

    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Lbaidu/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 953
    :cond_10
    const-string/jumbo v19, "sendonly"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lbaidu/net/sip/SimpleSessionDescription;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_c

    .line 954
    const-string/jumbo v19, "recvonly"

    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Lbaidu/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 961
    .end local v6           #arr$:[I
    .end local v9           #i$:I
    .end local v12           #len$:I
    .end local v15           #reply:Lbaidu/net/sip/SimpleSessionDescription$Media;
    :cond_11
    invoke-virtual {v13}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getType()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual {v13}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getProtocol()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Lbaidu/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Lbaidu/net/sip/SimpleSessionDescription$Media;

    move-result-object v15

    .line 963
    .restart local v15       #reply:Lbaidu/net/sip/SimpleSessionDescription$Media;
    invoke-virtual {v13}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getFormats()[Ljava/lang/String;

    move-result-object v6

    .local v6, arr$:[Ljava/lang/String;
    array-length v12, v6

    .restart local v12       #len$:I
    const/4 v9, 0x0

    .restart local v9       #i$:I
    :goto_9
    if-ge v9, v12, :cond_c

    aget-object v8, v6, v9

    .line 964
    .restart local v8       #format:Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v15, v8, v0}, Lbaidu/net/sip/SimpleSessionDescription$Media;->setFormat(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 969
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #format:Ljava/lang/String;
    .end local v9           #i$:I
    .end local v12           #len$:I
    .end local v13           #media:Lbaidu/net/sip/SimpleSessionDescription$Media;
    .end local v15           #reply:Lbaidu/net/sip/SimpleSessionDescription$Media;
    .restart local v10       #i$:I
    :cond_12
    if-nez v7, :cond_13

    .line 970
    new-instance v19, Ljava/lang/IllegalStateException;

    const-string v20, "Reject SDP: no suitable codecs"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 974
    :cond_13
    if-nez v18, :cond_14

    .line 975
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lbaidu/net/sip/SipAudioCall;->mIsVideoEnabled:Z

    .line 981
    :goto_a
    const-string v19, "baidu.net.sip"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "<==== SipAudioCall::createAnswer(), answer = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Lbaidu/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 977
    :cond_14
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lbaidu/net/sip/SipAudioCall;->mIsVideoEnabled:Z

    goto :goto_a
.end method

.method private createContinueOffer()Lbaidu/net/sip/SimpleSessionDescription;
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 994
    new-instance v4, Lbaidu/net/sip/SimpleSessionDescription;

    iget-wide v6, p0, Lbaidu/net/sip/SipAudioCall;->mSessionId:J

    invoke-direct {p0}, Lbaidu/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v6, v7, v8}, Lbaidu/net/sip/SimpleSessionDescription;-><init>(JLjava/lang/String;)V

    .line 996
    .local v4, offer:Lbaidu/net/sip/SimpleSessionDescription;
    const-string v6, "audio"

    iget-object v7, p0, Lbaidu/net/sip/SipAudioCall;->mAudioStream:Lbaidu/net/rtp/AudioStream;

    invoke-virtual {v7}, Lbaidu/net/rtp/AudioStream;->getLocalPort()I

    move-result v7

    const-string v8, "RTP/AVP"

    invoke-virtual {v4, v6, v7, v9, v8}, Lbaidu/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Lbaidu/net/sip/SimpleSessionDescription$Media;

    move-result-object v2

    .line 998
    .local v2, media:Lbaidu/net/sip/SimpleSessionDescription$Media;
    iget-object v6, p0, Lbaidu/net/sip/SipAudioCall;->mAudioStream:Lbaidu/net/rtp/AudioStream;

    invoke-virtual {v6}, Lbaidu/net/rtp/AudioStream;->getCodec()Lbaidu/net/rtp/AudioCodec;

    move-result-object v0

    .line 999
    .local v0, codec:Lbaidu/net/rtp/AudioCodec;
    iget v6, v0, Lbaidu/net/rtp/AudioCodec;->type:I

    iget-object v7, v0, Lbaidu/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    iget-object v8, v0, Lbaidu/net/rtp/AudioCodec;->fmtp:Ljava/lang/String;

    invoke-virtual {v2, v6, v7, v8}, Lbaidu/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 1000
    iget-object v6, p0, Lbaidu/net/sip/SipAudioCall;->mAudioStream:Lbaidu/net/rtp/AudioStream;

    invoke-virtual {v6}, Lbaidu/net/rtp/AudioStream;->getDtmfType()I

    move-result v1

    .line 1001
    .local v1, dtmfType:I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    .line 1002
    const-string/jumbo v6, "telephone-event/8000"

    const-string v7, "0-15"

    invoke-virtual {v2, v1, v6, v7}, Lbaidu/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 1006
    :cond_0
    iget-boolean v6, p0, Lbaidu/net/sip/SipAudioCall;->mIsVideoEnabled:Z

    if-eqz v6, :cond_1

    .line 1007
    const-string/jumbo v6, "video"

    iget-object v7, p0, Lbaidu/net/sip/SipAudioCall;->mVideoStream:Lbaidu/net/rtp/VideoStream;

    invoke-virtual {v7}, Lbaidu/net/rtp/VideoStream;->getLocalPort()I

    move-result v7

    const-string v8, "RTP/AVP"

    invoke-virtual {v4, v6, v7, v9, v8}, Lbaidu/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Lbaidu/net/sip/SimpleSessionDescription$Media;

    move-result-object v3

    .line 1009
    .local v3, mediaVideo:Lbaidu/net/sip/SimpleSessionDescription$Media;
    iget-object v6, p0, Lbaidu/net/sip/SipAudioCall;->mVideoStream:Lbaidu/net/rtp/VideoStream;

    invoke-virtual {v6}, Lbaidu/net/rtp/VideoStream;->getCodec()Lbaidu/net/rtp/VideoCodec;

    move-result-object v5

    .line 1010
    .local v5, videoCodec:Lbaidu/net/rtp/VideoCodec;
    iget v6, v5, Lbaidu/net/rtp/VideoCodec;->type:I

    iget-object v7, v5, Lbaidu/net/rtp/VideoCodec;->rtpmap:Ljava/lang/String;

    iget-object v8, v5, Lbaidu/net/rtp/VideoCodec;->fmtp:Ljava/lang/String;

    invoke-virtual {v3, v6, v7, v8}, Lbaidu/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 1014
    .end local v3           #mediaVideo:Lbaidu/net/sip/SimpleSessionDescription$Media;
    .end local v5           #videoCodec:Lbaidu/net/rtp/VideoCodec;
    :cond_1
    const-string v6, "baidu.net.sip"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<==== SipAudioCall::createContinueOffer(), offer = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lbaidu/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    return-object v4
.end method

.method private createHoldOffer()Lbaidu/net/sip/SimpleSessionDescription;
    .locals 4

    .prologue
    .line 987
    invoke-direct {p0}, Lbaidu/net/sip/SipAudioCall;->createContinueOffer()Lbaidu/net/sip/SimpleSessionDescription;

    move-result-object v0

    .line 988
    .local v0, offer:Lbaidu/net/sip/SimpleSessionDescription;
    const-string/jumbo v1, "sendonly"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lbaidu/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const-string v1, "baidu.net.sip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<==== SipAudioCall::createHoldOffer(), offer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lbaidu/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    return-object v0
.end method

.method private createListener()Lbaidu/net/sip/SipSession$Listener;
    .locals 1

    .prologue
    .line 440
    new-instance v0, Lbaidu/net/sip/SipAudioCall$1;

    invoke-direct {v0, p0}, Lbaidu/net/sip/SipAudioCall$1;-><init>(Lbaidu/net/sip/SipAudioCall;)V

    return-object v0
.end method

.method private createOffer()Lbaidu/net/sip/SimpleSessionDescription;
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 844
    new-instance v6, Lbaidu/net/sip/SimpleSessionDescription;

    iget-wide v9, p0, Lbaidu/net/sip/SipAudioCall;->mSessionId:J

    invoke-direct {p0}, Lbaidu/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v9, v10, v11}, Lbaidu/net/sip/SimpleSessionDescription;-><init>(JLjava/lang/String;)V

    .line 846
    .local v6, offer:Lbaidu/net/sip/SimpleSessionDescription;
    invoke-static {}, Lbaidu/net/rtp/AudioCodec;->getCodecs()[Lbaidu/net/rtp/AudioCodec;

    move-result-object v2

    .line 847
    .local v2, codecs:[Lbaidu/net/rtp/AudioCodec;
    const-string v9, "audio"

    iget-object v10, p0, Lbaidu/net/sip/SipAudioCall;->mAudioStream:Lbaidu/net/rtp/AudioStream;

    invoke-virtual {v10}, Lbaidu/net/rtp/AudioStream;->getLocalPort()I

    move-result v10

    const-string v11, "RTP/AVP"

    invoke-virtual {v6, v9, v10, v12, v11}, Lbaidu/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Lbaidu/net/sip/SimpleSessionDescription$Media;

    move-result-object v5

    .line 849
    .local v5, media:Lbaidu/net/sip/SimpleSessionDescription$Media;
    invoke-static {}, Lbaidu/net/rtp/AudioCodec;->getCodecs()[Lbaidu/net/rtp/AudioCodec;

    move-result-object v0

    .local v0, arr$:[Lbaidu/net/rtp/AudioCodec;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 850
    .local v1, codec:Lbaidu/net/rtp/AudioCodec;
    iget v9, v1, Lbaidu/net/rtp/AudioCodec;->type:I

    iget-object v10, v1, Lbaidu/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    iget-object v11, v1, Lbaidu/net/rtp/AudioCodec;->fmtp:Ljava/lang/String;

    invoke-virtual {v5, v9, v10, v11}, Lbaidu/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 849
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 852
    .end local v1           #codec:Lbaidu/net/rtp/AudioCodec;
    :cond_0
    const/16 v9, 0x7f

    const-string/jumbo v10, "telephone-event/8000"

    const-string v11, "0-15"

    invoke-virtual {v5, v9, v10, v11}, Lbaidu/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 855
    iget-boolean v9, p0, Lbaidu/net/sip/SipAudioCall;->mIsVideoEnabled:Z

    if-eqz v9, :cond_1

    .line 856
    const-string/jumbo v9, "video"

    iget-object v10, p0, Lbaidu/net/sip/SipAudioCall;->mVideoStream:Lbaidu/net/rtp/VideoStream;

    invoke-virtual {v10}, Lbaidu/net/rtp/VideoStream;->getLocalPort()I

    move-result v10

    const-string v11, "RTP/AVP"

    invoke-virtual {v6, v9, v10, v12, v11}, Lbaidu/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Lbaidu/net/sip/SimpleSessionDescription$Media;

    move-result-object v8

    .line 858
    .local v8, videoMedia:Lbaidu/net/sip/SimpleSessionDescription$Media;
    invoke-static {}, Lbaidu/net/rtp/VideoCodec;->getCodecs()[Lbaidu/net/rtp/VideoCodec;

    move-result-object v7

    .line 859
    .local v7, videoCodecs:[Lbaidu/net/rtp/VideoCodec;
    move-object v0, v7

    .local v0, arr$:[Lbaidu/net/rtp/VideoCodec;
    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 860
    .local v1, codec:Lbaidu/net/rtp/VideoCodec;
    iget v9, v1, Lbaidu/net/rtp/VideoCodec;->type:I

    iget-object v10, v1, Lbaidu/net/rtp/VideoCodec;->rtpmap:Ljava/lang/String;

    iget-object v11, v1, Lbaidu/net/rtp/VideoCodec;->fmtp:Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v11}, Lbaidu/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 859
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 865
    .end local v0           #arr$:[Lbaidu/net/rtp/VideoCodec;
    .end local v1           #codec:Lbaidu/net/rtp/VideoCodec;
    .end local v7           #videoCodecs:[Lbaidu/net/rtp/VideoCodec;
    .end local v8           #videoMedia:Lbaidu/net/sip/SimpleSessionDescription$Media;
    :cond_1
    const-string v9, "baidu.net.sip"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<====> SipAudioCall::createOffer(), offer = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lbaidu/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    return-object v6
.end method

.method private getLocalIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1385
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mSipSession:Lbaidu/net/sip/SipSession;

    invoke-virtual {v0}, Lbaidu/net/sip/SipSession;->getLocalIp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPeerProfile(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipProfile;
    .locals 1
    .parameter "session"

    .prologue
    .line 1397
    invoke-virtual {p1}, Lbaidu/net/sip/SipSession;->getPeerProfile()Lbaidu/net/sip/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method private grabWifiHighPerfLock()V
    .locals 3

    .prologue
    .line 1020
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_0

    .line 1021
    const-string v0, "baidu.net.sip"

    const-string v1, "acquire wifi high perf lock"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x3

    const-string v2, "baidu.net.sip"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 1025
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 1027
    :cond_0
    return-void
.end method

.method private isSpeakerOn()Z
    .locals 2

    .prologue
    .line 1078
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method private isWifiOn()Z
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mWm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onError(ILjava/lang/String;)V
    .locals 5
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 639
    const-string v2, "baidu.net.sip"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sip session error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lbaidu/net/sip/SipErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iput p1, p0, Lbaidu/net/sip/SipAudioCall;->mErrorCode:I

    .line 642
    iput-object p2, p0, Lbaidu/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;

    .line 643
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mListener:Lbaidu/net/sip/SipAudioCall$Listener;

    .line 644
    .local v0, listener:Lbaidu/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    .line 646
    :try_start_0
    invoke-virtual {v0, p0, p1, p2}, Lbaidu/net/sip/SipAudioCall$Listener;->onError(Lbaidu/net/sip/SipAudioCall;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    :cond_0
    :goto_0
    monitor-enter p0

    .line 652
    const/16 v2, -0xa

    if-eq p1, v2, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lbaidu/net/sip/SipAudioCall;->isInCall()Z

    move-result v2

    if-nez v2, :cond_2

    .line 654
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lbaidu/net/sip/SipAudioCall;->close(Z)V

    .line 656
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 657
    return-void

    .line 647
    :catch_0
    move-exception v1

    .line 648
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "baidu.net.sip"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onError(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 656
    .end local v1           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private releaseWifiHighPerfLock()V
    .locals 2

    .prologue
    .line 1030
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    .line 1031
    const-string v0, "baidu.net.sip"

    const-string/jumbo v1, "release wifi high perf lock"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1033
    const/4 v0, 0x0

    iput-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 1035
    :cond_0
    return-void
.end method

.method private sendInfo(Ljava/lang/String;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 1467
    const-string v0, "baidu.net.sip"

    const-string v1, "<====> SipAudioCall::sendInfo()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mSipSession:Lbaidu/net/sip/SipSession;

    if-eqz v0, :cond_0

    .line 1469
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mSipSession:Lbaidu/net/sip/SipSession;

    invoke-virtual {v0, p1}, Lbaidu/net/sip/SipSession;->sendInfo(Ljava/lang/String;)V

    .line 1471
    :cond_0
    return-void
.end method

.method private setAudioGroupMode()V
    .locals 3

    .prologue
    .line 1327
    const-string v1, "baidu.net.sip"

    const-string v2, "====> SipAudioCall::setAudioGroupMode()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    invoke-virtual {p0}, Lbaidu/net/sip/SipAudioCall;->getAudioGroup()Lbaidu/net/rtp/AudioGroup;

    move-result-object v0

    .line 1329
    .local v0, audioGroup:Lbaidu/net/rtp/AudioGroup;
    if-eqz v0, :cond_0

    .line 1330
    iget-boolean v1, p0, Lbaidu/net/sip/SipAudioCall;->mHold:Z

    if-eqz v1, :cond_1

    .line 1331
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbaidu/net/rtp/AudioGroup;->setMode(I)V

    .line 1340
    :cond_0
    :goto_0
    const-string v1, "baidu.net.sip"

    const-string v2, "<==== SipAudioCall::setAudioGroupMode()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    return-void

    .line 1332
    :cond_1
    iget-boolean v1, p0, Lbaidu/net/sip/SipAudioCall;->mMuted:Z

    if-eqz v1, :cond_2

    .line 1333
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbaidu/net/rtp/AudioGroup;->setMode(I)V

    goto :goto_0

    .line 1334
    :cond_2
    invoke-direct {p0}, Lbaidu/net/sip/SipAudioCall;->isSpeakerOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1335
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lbaidu/net/rtp/AudioGroup;->setMode(I)V

    goto :goto_0

    .line 1337
    :cond_3
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lbaidu/net/rtp/AudioGroup;->setMode(I)V

    goto :goto_0
.end method

.method private declared-synchronized startAudioInternal()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 1198
    monitor-enter p0

    :try_start_0
    const-string v17, "baidu.net.sip"

    const-string v18, "====> SipAudioCall::startAudioInternal()"

    invoke-static/range {v17 .. v18}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lbaidu/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 1200
    const-string v17, "baidu.net.sip"

    const-string/jumbo v18, "startAudioInternal() mPeerSd = null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string/jumbo v18, "mPeerSd = null"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1198
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17

    .line 1204
    :cond_0
    const/16 v17, 0x0

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lbaidu/net/sip/SipAudioCall;->stopCall(Z)V

    .line 1205
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lbaidu/net/sip/SipAudioCall;->mInCall:Z

    .line 1208
    new-instance v12, Lbaidu/net/sip/SimpleSessionDescription;

    move-object/from16 v0, p0

    iget-object v0, v0, Lbaidu/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lbaidu/net/sip/SimpleSessionDescription;-><init>(Ljava/lang/String;)V

    .line 1210
    .local v12, offer:Lbaidu/net/sip/SimpleSessionDescription;
    move-object/from16 v0, p0

    iget-object v14, v0, Lbaidu/net/sip/SipAudioCall;->mAudioStream:Lbaidu/net/rtp/AudioStream;

    .line 1211
    .local v14, stream:Lbaidu/net/rtp/AudioStream;
    const/4 v6, 0x0

    .line 1212
    .local v6, codec:Lbaidu/net/rtp/AudioCodec;
    invoke-virtual {v12}, Lbaidu/net/sip/SimpleSessionDescription;->getMedia()[Lbaidu/net/sip/SimpleSessionDescription$Media;

    move-result-object v3

    .local v3, arr$:[Lbaidu/net/sip/SimpleSessionDescription$Media;
    array-length v9, v3

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    move v8, v7

    .end local v3           #arr$:[Lbaidu/net/sip/SimpleSessionDescription$Media;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_6

    aget-object v11, v3, v8

    .line 1213
    .local v11, media:Lbaidu/net/sip/SimpleSessionDescription$Media;
    if-nez v6, :cond_c

    invoke-virtual {v11}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getPort()I

    move-result v17

    if-lez v17, :cond_c

    const-string v17, "audio"

    invoke-virtual {v11}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getType()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    const-string v17, "RTP/AVP"

    invoke-virtual {v11}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getProtocol()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 1217
    invoke-virtual {v11}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getRtpPayloadTypes()[I

    move-result-object v4

    .local v4, arr$:[I
    array-length v10, v4

    .local v10, len$:I
    const/4 v7, 0x0

    .end local v8           #i$:I
    .restart local v7       #i$:I
    :goto_1
    if-ge v7, v10, :cond_1

    aget v15, v4, v7

    .line 1218
    .local v15, type:I
    invoke-virtual {v11, v15}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getRtpmap(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v11, v15}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getFmtp(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v0, v1}, Lbaidu/net/rtp/AudioCodec;->getCodec(ILjava/lang/String;Ljava/lang/String;)Lbaidu/net/rtp/AudioCodec;

    move-result-object v6

    .line 1220
    if-eqz v6, :cond_4

    .line 1225
    .end local v15           #type:I
    :cond_1
    if-eqz v6, :cond_c

    .line 1227
    invoke-virtual {v11}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1228
    .local v2, address:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 1229
    invoke-virtual {v12}, Lbaidu/net/sip/SimpleSessionDescription;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1231
    :cond_2
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v17

    invoke-virtual {v11}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getPort()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lbaidu/net/rtp/AudioStream;->associate(Ljava/net/InetAddress;I)V

    .line 1234
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lbaidu/net/rtp/AudioStream;->setDtmfType(I)V

    .line 1235
    invoke-virtual {v14, v6}, Lbaidu/net/rtp/AudioStream;->setCodec(Lbaidu/net/rtp/AudioCodec;)V

    .line 1237
    invoke-virtual {v11}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getRtpPayloadTypes()[I

    move-result-object v3

    .end local v4           #arr$:[I
    .local v3, arr$:[I
    array-length v9, v3

    .end local v10           #len$:I
    .restart local v9       #len$:I
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v9, :cond_5

    aget v15, v3, v7

    .line 1238
    .restart local v15       #type:I
    invoke-virtual {v11, v15}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getRtpmap(I)Ljava/lang/String;

    move-result-object v13

    .line 1239
    .local v13, rtpmap:Ljava/lang/String;
    iget v0, v6, Lbaidu/net/rtp/AudioCodec;->type:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v15, v0, :cond_3

    if-eqz v13, :cond_3

    const-string/jumbo v17, "telephone-event"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1241
    invoke-virtual {v14, v15}, Lbaidu/net/rtp/AudioStream;->setDtmfType(I)V

    .line 1237
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1217
    .end local v2           #address:Ljava/lang/String;
    .end local v3           #arr$:[I
    .end local v9           #len$:I
    .end local v13           #rtpmap:Ljava/lang/String;
    .restart local v4       #arr$:[I
    .restart local v10       #len$:I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1246
    .end local v4           #arr$:[I
    .end local v10           #len$:I
    .end local v15           #type:I
    .restart local v2       #address:Ljava/lang/String;
    .restart local v3       #arr$:[I
    .restart local v9       #len$:I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lbaidu/net/sip/SipAudioCall;->mHold:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 1247
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lbaidu/net/rtp/AudioStream;->setMode(I)V

    .line 1264
    .end local v2           #address:Ljava/lang/String;
    .end local v3           #arr$:[I
    .end local v7           #i$:I
    .end local v9           #len$:I
    .end local v11           #media:Lbaidu/net/sip/SimpleSessionDescription$Media;
    :cond_6
    :goto_3
    if-nez v6, :cond_d

    .line 1265
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "Reject SDP: no suitable codecs"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1248
    .restart local v2       #address:Ljava/lang/String;
    .restart local v3       #arr$:[I
    .restart local v7       #i$:I
    .restart local v9       #len$:I
    .restart local v11       #media:Lbaidu/net/sip/SimpleSessionDescription$Media;
    :cond_7
    const-string/jumbo v17, "recvonly"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_8

    .line 1249
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lbaidu/net/rtp/AudioStream;->setMode(I)V

    goto :goto_3

    .line 1250
    :cond_8
    const-string/jumbo v17, "sendonly"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_9

    .line 1251
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lbaidu/net/rtp/AudioStream;->setMode(I)V

    goto :goto_3

    .line 1252
    :cond_9
    const-string/jumbo v17, "recvonly"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lbaidu/net/sip/SimpleSessionDescription;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_a

    .line 1253
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lbaidu/net/rtp/AudioStream;->setMode(I)V

    goto :goto_3

    .line 1254
    :cond_a
    const-string/jumbo v17, "sendonly"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lbaidu/net/sip/SimpleSessionDescription;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_b

    .line 1255
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lbaidu/net/rtp/AudioStream;->setMode(I)V

    goto :goto_3

    .line 1257
    :cond_b
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lbaidu/net/rtp/AudioStream;->setMode(I)V

    goto :goto_3

    .line 1212
    .end local v2           #address:Ljava/lang/String;
    .end local v3           #arr$:[I
    .end local v7           #i$:I
    .end local v9           #len$:I
    :cond_c
    add-int/lit8 v7, v8, 0x1

    .restart local v7       #i$:I
    move v8, v7

    .end local v7           #i$:I
    .restart local v8       #i$:I
    goto/16 :goto_0

    .line 1269
    .end local v8           #i$:I
    .end local v11           #media:Lbaidu/net/sip/SimpleSessionDescription$Media;
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lbaidu/net/sip/SipAudioCall;->mIsVideoEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_13

    .line 1270
    const/16 v16, 0x0

    .line 1271
    .local v16, videoCodec:Lbaidu/net/rtp/VideoCodec;
    invoke-virtual {v12}, Lbaidu/net/sip/SimpleSessionDescription;->getMedia()[Lbaidu/net/sip/SimpleSessionDescription$Media;

    move-result-object v3

    .local v3, arr$:[Lbaidu/net/sip/SimpleSessionDescription$Media;
    array-length v9, v3

    .restart local v9       #len$:I
    const/4 v7, 0x0

    .restart local v7       #i$:I
    move v8, v7

    .end local v3           #arr$:[Lbaidu/net/sip/SimpleSessionDescription$Media;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .restart local v8       #i$:I
    :goto_4
    if-ge v8, v9, :cond_10

    aget-object v11, v3, v8

    .line 1272
    .restart local v11       #media:Lbaidu/net/sip/SimpleSessionDescription$Media;
    if-nez v16, :cond_12

    invoke-virtual {v11}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getPort()I

    move-result v17

    if-lez v17, :cond_12

    const-string/jumbo v17, "video"

    invoke-virtual {v11}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getType()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    const-string v17, "RTP/AVP"

    invoke-virtual {v11}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getProtocol()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 1276
    invoke-virtual {v11}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getRtpPayloadTypes()[I

    move-result-object v4

    .restart local v4       #arr$:[I
    array-length v10, v4

    .restart local v10       #len$:I
    const/4 v7, 0x0

    .end local v8           #i$:I
    .restart local v7       #i$:I
    :goto_5
    if-ge v7, v10, :cond_e

    aget v15, v4, v7

    .line 1277
    .restart local v15       #type:I
    invoke-virtual {v11, v15}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getRtpmap(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v11, v15}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getFmtp(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v15, v0, v1}, Lbaidu/net/rtp/VideoCodec;->getCodec(ILjava/lang/String;Ljava/lang/String;)Lbaidu/net/rtp/VideoCodec;

    move-result-object v16

    .line 1279
    if-eqz v16, :cond_11

    .line 1284
    .end local v15           #type:I
    :cond_e
    if-eqz v16, :cond_12

    .line 1285
    invoke-virtual {v11}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1286
    .restart local v2       #address:Ljava/lang/String;
    if-nez v2, :cond_f

    .line 1287
    invoke-virtual {v12}, Lbaidu/net/sip/SimpleSessionDescription;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1290
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lbaidu/net/sip/SipAudioCall;->mVideoStream:Lbaidu/net/rtp/VideoStream;

    move-object/from16 v17, v0

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v18

    invoke-virtual {v11}, Lbaidu/net/sip/SimpleSessionDescription$Media;->getPort()I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Lbaidu/net/rtp/VideoStream;->associate(Ljava/net/InetAddress;I)V

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lbaidu/net/sip/SipAudioCall;->mVideoStream:Lbaidu/net/rtp/VideoStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lbaidu/net/rtp/VideoStream;->setCodec(Lbaidu/net/rtp/VideoCodec;)V

    .line 1298
    .end local v2           #address:Ljava/lang/String;
    .end local v4           #arr$:[I
    .end local v7           #i$:I
    .end local v10           #len$:I
    .end local v11           #media:Lbaidu/net/sip/SimpleSessionDescription$Media;
    :cond_10
    if-nez v16, :cond_13

    .line 1299
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "Reject SDP: no suitable codecs for video"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1276
    .restart local v4       #arr$:[I
    .restart local v7       #i$:I
    .restart local v10       #len$:I
    .restart local v11       #media:Lbaidu/net/sip/SimpleSessionDescription$Media;
    .restart local v15       #type:I
    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1271
    .end local v4           #arr$:[I
    .end local v7           #i$:I
    .end local v10           #len$:I
    .end local v15           #type:I
    :cond_12
    add-int/lit8 v7, v8, 0x1

    .restart local v7       #i$:I
    move v8, v7

    .end local v7           #i$:I
    .restart local v8       #i$:I
    goto :goto_4

    .line 1304
    .end local v8           #i$:I
    .end local v11           #media:Lbaidu/net/sip/SimpleSessionDescription$Media;
    .end local v16           #videoCodec:Lbaidu/net/rtp/VideoCodec;
    :cond_13
    invoke-direct/range {p0 .. p0}, Lbaidu/net/sip/SipAudioCall;->isWifiOn()Z

    move-result v17

    if-eqz v17, :cond_14

    invoke-direct/range {p0 .. p0}, Lbaidu/net/sip/SipAudioCall;->grabWifiHighPerfLock()V

    .line 1307
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lbaidu/net/sip/SipAudioCall;->getAudioGroup()Lbaidu/net/rtp/AudioGroup;

    move-result-object v5

    .line 1308
    .local v5, audioGroup:Lbaidu/net/rtp/AudioGroup;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lbaidu/net/sip/SipAudioCall;->mHold:Z

    move/from16 v17, v0

    if-eqz v17, :cond_16

    .line 1321
    :cond_15
    :goto_6
    invoke-direct/range {p0 .. p0}, Lbaidu/net/sip/SipAudioCall;->setAudioGroupMode()V

    .line 1322
    const-string v17, "baidu.net.sip"

    const-string v18, "<==== SipAudioCall::startAudioInternal()"

    invoke-static/range {v17 .. v18}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1323
    monitor-exit p0

    return-void

    .line 1312
    :cond_16
    if-nez v5, :cond_17

    :try_start_2
    new-instance v5, Lbaidu/net/rtp/AudioGroup;

    .end local v5           #audioGroup:Lbaidu/net/rtp/AudioGroup;
    invoke-direct {v5}, Lbaidu/net/rtp/AudioGroup;-><init>()V

    .line 1313
    .restart local v5       #audioGroup:Lbaidu/net/rtp/AudioGroup;
    :cond_17
    invoke-virtual {v14, v5}, Lbaidu/net/rtp/AudioStream;->join(Lbaidu/net/rtp/AudioGroup;)V

    .line 1316
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lbaidu/net/sip/SipAudioCall;->mIsVideoEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_15

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Lbaidu/net/sip/SipAudioCall;->mVideoStream:Lbaidu/net/rtp/VideoStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lbaidu/net/rtp/VideoStream;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6
.end method

.method private stopCall(Z)V
    .locals 7
    .parameter "releaseSocket"

    .prologue
    const/4 v5, 0x0

    .line 1344
    const-string v3, "baidu.net.sip"

    const-string v4, "====> SipAudioCall::stopCall()"

    invoke-static {v3, v4}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    invoke-direct {p0}, Lbaidu/net/sip/SipAudioCall;->releaseWifiHighPerfLock()V

    .line 1348
    invoke-virtual {p0}, Lbaidu/net/sip/SipAudioCall;->getAudioGroup()Lbaidu/net/rtp/AudioGroup;

    move-result-object v1

    .line 1349
    .local v1, group:Lbaidu/net/rtp/AudioGroup;
    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 1352
    .local v0, audioFlow:I
    :goto_0
    iget-object v3, p0, Lbaidu/net/sip/SipAudioCall;->mAudioStream:Lbaidu/net/rtp/AudioStream;

    if-eqz v3, :cond_0

    .line 1353
    iget-object v3, p0, Lbaidu/net/sip/SipAudioCall;->mAudioStream:Lbaidu/net/rtp/AudioStream;

    invoke-virtual {v3, v5}, Lbaidu/net/rtp/AudioStream;->join(Lbaidu/net/rtp/AudioGroup;)V

    .line 1355
    if-eqz p1, :cond_0

    .line 1356
    iget-object v3, p0, Lbaidu/net/sip/SipAudioCall;->mAudioStream:Lbaidu/net/rtp/AudioStream;

    invoke-virtual {v3}, Lbaidu/net/rtp/AudioStream;->release()V

    .line 1357
    iput-object v5, p0, Lbaidu/net/sip/SipAudioCall;->mAudioStream:Lbaidu/net/rtp/AudioStream;

    .line 1362
    :cond_0
    const/4 v2, 0x0

    .line 1363
    .local v2, videoFlow:I
    iget-boolean v3, p0, Lbaidu/net/sip/SipAudioCall;->mIsVideoEnabled:Z

    if-eqz v3, :cond_1

    .line 1364
    iget-object v3, p0, Lbaidu/net/sip/SipAudioCall;->mVideoStream:Lbaidu/net/rtp/VideoStream;

    if-eqz v3, :cond_1

    .line 1365
    iget-object v3, p0, Lbaidu/net/sip/SipAudioCall;->mVideoStream:Lbaidu/net/rtp/VideoStream;

    invoke-virtual {v3}, Lbaidu/net/rtp/VideoStream;->getFlow()I

    move-result v2

    .line 1367
    iget-object v3, p0, Lbaidu/net/sip/SipAudioCall;->mVideoStream:Lbaidu/net/rtp/VideoStream;

    invoke-virtual {v3}, Lbaidu/net/rtp/VideoStream;->stop()V

    .line 1369
    if-eqz p1, :cond_1

    .line 1370
    iget-object v3, p0, Lbaidu/net/sip/SipAudioCall;->mVideoStream:Lbaidu/net/rtp/VideoStream;

    invoke-virtual {v3}, Lbaidu/net/rtp/VideoStream;->release()V

    .line 1371
    iput-object v5, p0, Lbaidu/net/sip/SipAudioCall;->mVideoStream:Lbaidu/net/rtp/VideoStream;

    .line 1376
    :cond_1
    add-int v3, v0, v2

    int-to-long v3, v3

    iput-wide v3, p0, Lbaidu/net/sip/SipAudioCall;->mTotalFlow:J

    .line 1377
    const-string v3, "baidu.net.sip"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<====> SipAudioCall::stopCall(), audio flow = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    const-string v3, "baidu.net.sip"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<====> SipAudioCall::stopCall(), video flow = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    const-string v3, "baidu.net.sip"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<====> SipAudioCall::stopCall(), total flow = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lbaidu/net/sip/SipAudioCall;->mTotalFlow:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    const-string v3, "baidu.net.sip"

    const-string v4, "<==== SipAudioCall::stopCall()"

    invoke-static {v3, v4}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    return-void

    .line 1349
    .end local v0           #audioFlow:I
    .end local v2           #videoFlow:I
    :cond_2
    invoke-virtual {v1}, Lbaidu/net/rtp/AudioGroup;->getFlow()I

    move-result v0

    goto/16 :goto_0
.end method

.method private throwSipException(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "throwable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbaidu/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1389
    instance-of v0, p1, Lbaidu/net/sip/SipException;

    if-eqz v0, :cond_0

    .line 1390
    check-cast p1, Lbaidu/net/sip/SipException;

    .end local p1
    throw p1

    .line 1392
    .restart local p1
    :cond_0
    new-instance v0, Lbaidu/net/sip/SipException;

    const-string v1, ""

    invoke-direct {v0, v1, p1}, Lbaidu/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private declared-synchronized transferToNewSession()V
    .locals 5

    .prologue
    .line 416
    monitor-enter p0

    :try_start_0
    const-string v2, "baidu.net.sip"

    const-string v3, "====> SipAudioCall::transferToNewSession()"

    invoke-static {v2, v3}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall;->mTransferringSession:Lbaidu/net/sip/SipSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 436
    :goto_0
    monitor-exit p0

    return-void

    .line 418
    :cond_0
    :try_start_1
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mSipSession:Lbaidu/net/sip/SipSession;

    .line 419
    .local v0, origin:Lbaidu/net/sip/SipSession;
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall;->mTransferringSession:Lbaidu/net/sip/SipSession;

    iput-object v2, p0, Lbaidu/net/sip/SipAudioCall;->mSipSession:Lbaidu/net/sip/SipSession;

    .line 420
    const/4 v2, 0x0

    iput-object v2, p0, Lbaidu/net/sip/SipAudioCall;->mTransferringSession:Lbaidu/net/sip/SipSession;

    .line 423
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall;->mAudioStream:Lbaidu/net/rtp/AudioStream;

    if-eqz v2, :cond_2

    .line 424
    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall;->mAudioStream:Lbaidu/net/rtp/AudioStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lbaidu/net/rtp/AudioStream;->join(Lbaidu/net/rtp/AudioGroup;)V

    .line 433
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbaidu/net/sip/SipSession;->endCall()V

    .line 434
    :cond_1
    invoke-virtual {p0}, Lbaidu/net/sip/SipAudioCall;->startAudio()V

    .line 435
    const-string v2, "baidu.net.sip"

    const-string v3, "<==== SipAudioCall::transferToNewSession()"

    invoke-static {v2, v3}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 416
    .end local v0           #origin:Lbaidu/net/sip/SipSession;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 427
    .restart local v0       #origin:Lbaidu/net/sip/SipSession;
    :cond_2
    :try_start_2
    new-instance v2, Lbaidu/net/rtp/AudioStream;

    invoke-direct {p0}, Lbaidu/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v2, v3}, Lbaidu/net/rtp/AudioStream;-><init>(Ljava/net/InetAddress;)V

    iput-object v2, p0, Lbaidu/net/sip/SipAudioCall;->mAudioStream:Lbaidu/net/rtp/AudioStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 429
    :catch_0
    move-exception v1

    .line 430
    .local v1, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v2, "baidu.net.sip"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "transferToNewSession(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public answerCall(I)V
    .locals 4
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbaidu/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 792
    const-string v1, "baidu.net.sip"

    const-string v2, "====> SipAudioCall::answerCall()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    monitor-enter p0

    .line 794
    :try_start_0
    iget-object v1, p0, Lbaidu/net/sip/SipAudioCall;->mSipSession:Lbaidu/net/sip/SipSession;

    if-nez v1, :cond_0

    .line 795
    new-instance v1, Lbaidu/net/sip/SipException;

    const-string v2, "No call to answer"

    invoke-direct {v1, v2}, Lbaidu/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 810
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 798
    :cond_0
    :try_start_1
    new-instance v1, Lbaidu/net/rtp/AudioStream;

    invoke-direct {p0}, Lbaidu/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v1, v2}, Lbaidu/net/rtp/AudioStream;-><init>(Ljava/net/InetAddress;)V

    iput-object v1, p0, Lbaidu/net/sip/SipAudioCall;->mAudioStream:Lbaidu/net/rtp/AudioStream;

    .line 801
    iget-boolean v1, p0, Lbaidu/net/sip/SipAudioCall;->mIsVideoEnabled:Z

    if-eqz v1, :cond_1

    .line 802
    new-instance v1, Lbaidu/net/rtp/VideoStream;

    invoke-direct {p0}, Lbaidu/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iget-object v3, p0, Lbaidu/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lbaidu/net/rtp/VideoStream;-><init>(Ljava/net/InetAddress;Landroid/content/Context;)V

    iput-object v1, p0, Lbaidu/net/sip/SipAudioCall;->mVideoStream:Lbaidu/net/rtp/VideoStream;

    .line 806
    :cond_1
    iget-object v1, p0, Lbaidu/net/sip/SipAudioCall;->mSipSession:Lbaidu/net/sip/SipSession;

    iget-object v2, p0, Lbaidu/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    invoke-direct {p0, v2}, Lbaidu/net/sip/SipAudioCall;->createAnswer(Ljava/lang/String;)Lbaidu/net/sip/SimpleSessionDescription;

    move-result-object v2

    invoke-virtual {v2}, Lbaidu/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lbaidu/net/sip/SipSession;->answerCall(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 810
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 811
    const-string v1, "baidu.net.sip"

    const-string v2, "<==== SipAudioCall::answerCall()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    return-void

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    new-instance v1, Lbaidu/net/sip/SipException;

    const-string v2, "answerCall()"

    invoke-direct {v1, v2, v0}, Lbaidu/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public attachCall(Lbaidu/net/sip/SipSession;Ljava/lang/String;)V
    .locals 4
    .parameter "session"
    .parameter "sessionDescription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbaidu/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 670
    const-string v1, "baidu.net.sip"

    const-string v2, "====> SipAudioCall::attachCall()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iget-object v1, p0, Lbaidu/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lbaidu/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 672
    new-instance v1, Lbaidu/net/sip/SipException;

    const-string v2, "VOIP API is not supported"

    invoke-direct {v1, v2}, Lbaidu/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 675
    :cond_0
    monitor-enter p0

    .line 676
    :try_start_0
    iput-object p1, p0, Lbaidu/net/sip/SipAudioCall;->mSipSession:Lbaidu/net/sip/SipSession;

    .line 677
    iput-object p2, p0, Lbaidu/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    .line 678
    const-string v1, "baidu.net.sip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachCall()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbaidu/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    :try_start_1
    invoke-direct {p0}, Lbaidu/net/sip/SipAudioCall;->createListener()Lbaidu/net/sip/SipSession$Listener;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbaidu/net/sip/SipSession;->setListener(Lbaidu/net/sip/SipSession$Listener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 685
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 686
    const-string v1, "baidu.net.sip"

    const-string v2, "<==== SipAudioCall::attachCall()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    return-void

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, e:Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "baidu.net.sip"

    const-string v2, "attachCall()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 683
    invoke-direct {p0, v0}, Lbaidu/net/sip/SipAudioCall;->throwSipException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 685
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 2

    .prologue
    .line 340
    const-string v0, "baidu.net.sip"

    const-string v1, "====> SipAudioCall::close()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbaidu/net/sip/SipAudioCall;->close(Z)V

    .line 342
    const-string v0, "baidu.net.sip"

    const-string v1, "<==== SipAudioCall::close()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public configLocalCamera(II)V
    .locals 3
    .parameter "id"
    .parameter "orientation"

    .prologue
    .line 1406
    const-string v0, "baidu.net.sip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<====> SipAudioCall::configLocalCamera(), id = orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mVideoStream:Lbaidu/net/rtp/VideoStream;

    if-eqz v0, :cond_0

    .line 1408
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mVideoStream:Lbaidu/net/rtp/VideoStream;

    invoke-virtual {v0, p1, p2}, Lbaidu/net/rtp/VideoStream;->configLocalCamera(II)V

    .line 1409
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbaidu/net/sip/SipAudioCall;->sendInfo(Ljava/lang/String;)V

    .line 1411
    :cond_0
    return-void
.end method

.method public continueCall(I)V
    .locals 2
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbaidu/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 827
    const-string v0, "baidu.net.sip"

    const-string v1, "====> SipAudioCall::continueCall()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    monitor-enter p0

    .line 829
    :try_start_0
    iget-boolean v0, p0, Lbaidu/net/sip/SipAudioCall;->mHold:Z

    if-nez v0, :cond_0

    monitor-exit p0

    .line 841
    :goto_0
    return-void

    .line 830
    :cond_0
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mSipSession:Lbaidu/net/sip/SipSession;

    invoke-direct {p0}, Lbaidu/net/sip/SipAudioCall;->createContinueOffer()Lbaidu/net/sip/SimpleSessionDescription;

    move-result-object v1

    invoke-virtual {v1}, Lbaidu/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lbaidu/net/sip/SipSession;->changeCall(Ljava/lang/String;I)V

    .line 831
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbaidu/net/sip/SipAudioCall;->mHold:Z

    .line 832
    invoke-direct {p0}, Lbaidu/net/sip/SipAudioCall;->setAudioGroupMode()V

    .line 835
    iget-boolean v0, p0, Lbaidu/net/sip/SipAudioCall;->mIsVideoEnabled:Z

    if-eqz v0, :cond_1

    .line 836
    invoke-virtual {p0}, Lbaidu/net/sip/SipAudioCall;->resumeVideoStream()V

    .line 839
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    const-string v0, "baidu.net.sip"

    const-string v1, "<==== SipAudioCall::continueCall()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 839
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public endCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbaidu/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 737
    const-string v0, "baidu.net.sip"

    const-string v1, "====> SipAudioCall::endCall()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    monitor-enter p0

    .line 739
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lbaidu/net/sip/SipAudioCall;->stopCall(Z)V

    .line 740
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbaidu/net/sip/SipAudioCall;->mInCall:Z

    .line 743
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mSipSession:Lbaidu/net/sip/SipSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mSipSession:Lbaidu/net/sip/SipSession;

    invoke-virtual {v0}, Lbaidu/net/sip/SipSession;->endCall()V

    .line 744
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    const-string v0, "baidu.net.sip"

    const-string v1, "<==== SipAudioCall::endCall()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    return-void

    .line 744
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getAudioGroup()Lbaidu/net/rtp/AudioGroup;
    .locals 1

    .prologue
    .line 1149
    monitor-enter p0

    .line 1150
    :try_start_0
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mAudioGroup:Lbaidu/net/rtp/AudioGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mAudioGroup:Lbaidu/net/rtp/AudioGroup;

    monitor-exit p0

    .line 1151
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mAudioStream:Lbaidu/net/rtp/AudioStream;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 1152
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1151
    :cond_1
    :try_start_1
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mAudioStream:Lbaidu/net/rtp/AudioStream;

    invoke-virtual {v0}, Lbaidu/net/rtp/AudioStream;->getGroup()Lbaidu/net/rtp/AudioGroup;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method public getAudioStream()Lbaidu/net/rtp/AudioStream;
    .locals 1

    .prologue
    .line 1129
    monitor-enter p0

    .line 1130
    :try_start_0
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mAudioStream:Lbaidu/net/rtp/AudioStream;

    monitor-exit p0

    return-object v0

    .line 1131
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLocalProfile()Lbaidu/net/sip/SipProfile;
    .locals 1

    .prologue
    .line 372
    monitor-enter p0

    .line 373
    :try_start_0
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mLocalProfile:Lbaidu/net/sip/SipProfile;

    monitor-exit p0

    return-object v0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPeerProfile()Lbaidu/net/sip/SipProfile;
    .locals 1

    .prologue
    .line 383
    monitor-enter p0

    .line 384
    :try_start_0
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mSipSession:Lbaidu/net/sip/SipSession;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mSipSession:Lbaidu/net/sip/SipSession;

    invoke-virtual {v0}, Lbaidu/net/sip/SipSession;->getPeerProfile()Lbaidu/net/sip/SipProfile;

    move-result-object v0

    goto :goto_0

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSipSession()Lbaidu/net/sip/SipSession;
    .locals 1

    .prologue
    .line 409
    monitor-enter p0

    .line 410
    :try_start_0
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mSipSession:Lbaidu/net/sip/SipSession;

    monitor-exit p0

    return-object v0

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 395
    monitor-enter p0

    .line 396
    :try_start_0
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mSipSession:Lbaidu/net/sip/SipSession;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    .line 397
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mSipSession:Lbaidu/net/sip/SipSession;

    invoke-virtual {v0}, Lbaidu/net/sip/SipSession;->getState()I

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTotalFlow()J
    .locals 2

    .prologue
    .line 1463
    iget-wide v0, p0, Lbaidu/net/sip/SipAudioCall;->mTotalFlow:J

    return-wide v0
.end method

.method public holdCall(I)V
    .locals 2
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbaidu/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 761
    const-string v0, "baidu.net.sip"

    const-string v1, "====> SipAudioCall::holdCall()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    monitor-enter p0

    .line 763
    :try_start_0
    iget-boolean v0, p0, Lbaidu/net/sip/SipAudioCall;->mHold:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 778
    :goto_0
    return-void

    .line 764
    :cond_0
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mSipSession:Lbaidu/net/sip/SipSession;

    if-nez v0, :cond_1

    .line 765
    new-instance v0, Lbaidu/net/sip/SipException;

    const-string v1, "Not in a call to hold call"

    invoke-direct {v0, v1}, Lbaidu/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 767
    :cond_1
    :try_start_1
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mSipSession:Lbaidu/net/sip/SipSession;

    invoke-direct {p0}, Lbaidu/net/sip/SipAudioCall;->createHoldOffer()Lbaidu/net/sip/SimpleSessionDescription;

    move-result-object v1

    invoke-virtual {v1}, Lbaidu/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lbaidu/net/sip/SipSession;->changeCall(Ljava/lang/String;I)V

    .line 768
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbaidu/net/sip/SipAudioCall;->mHold:Z

    .line 769
    invoke-direct {p0}, Lbaidu/net/sip/SipAudioCall;->setAudioGroupMode()V

    .line 772
    iget-boolean v0, p0, Lbaidu/net/sip/SipAudioCall;->mIsVideoEnabled:Z

    if-eqz v0, :cond_2

    .line 773
    invoke-virtual {p0}, Lbaidu/net/sip/SipAudioCall;->holdVideoStream()V

    .line 776
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 777
    const-string v0, "baidu.net.sip"

    const-string v1, "<==== SipAudioCall::holdCall()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public holdVideoStream()V
    .locals 2

    .prologue
    .line 1435
    const-string v0, "baidu.net.sip"

    const-string v1, "====> SipAudioCall::holdVideoStream()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    iget-boolean v0, p0, Lbaidu/net/sip/SipAudioCall;->mVideoHold:Z

    if-nez v0, :cond_0

    .line 1437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbaidu/net/sip/SipAudioCall;->mVideoHold:Z

    .line 1439
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mVideoStream:Lbaidu/net/rtp/VideoStream;

    if-eqz v0, :cond_0

    .line 1440
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mVideoStream:Lbaidu/net/rtp/VideoStream;

    invoke-virtual {v0}, Lbaidu/net/rtp/VideoStream;->stop()V

    .line 1443
    :cond_0
    const-string v0, "baidu.net.sip"

    const-string v1, "<==== SipAudioCall::holdVideoStream()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    return-void
.end method

.method public isInCall()Z
    .locals 1

    .prologue
    .line 320
    monitor-enter p0

    .line 321
    :try_start_0
    iget-boolean v0, p0, Lbaidu/net/sip/SipAudioCall;->mInCall:Z

    monitor-exit p0

    return v0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isMuted()Z
    .locals 1

    .prologue
    .line 1057
    monitor-enter p0

    .line 1058
    :try_start_0
    iget-boolean v0, p0, Lbaidu/net/sip/SipAudioCall;->mMuted:Z

    monitor-exit p0

    return v0

    .line 1059
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOnHold()Z
    .locals 1

    .prologue
    .line 331
    monitor-enter p0

    .line 332
    :try_start_0
    iget-boolean v0, p0, Lbaidu/net/sip/SipAudioCall;->mHold:Z

    monitor-exit p0

    return v0

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isVideoEnabled()Z
    .locals 1

    .prologue
    .line 1402
    iget-boolean v0, p0, Lbaidu/net/sip/SipAudioCall;->mIsVideoEnabled:Z

    return v0
.end method

.method public isVideoHold()Z
    .locals 1

    .prologue
    .line 1459
    iget-boolean v0, p0, Lbaidu/net/sip/SipAudioCall;->mVideoHold:Z

    return v0
.end method

.method public makeCall(Lbaidu/net/sip/SipProfile;Lbaidu/net/sip/SipSession;I)V
    .locals 4
    .parameter "peerProfile"
    .parameter "sipSession"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbaidu/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 706
    const-string v1, "baidu.net.sip"

    const-string v2, "====> SipAudioCall::makeCall()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget-object v1, p0, Lbaidu/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lbaidu/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 708
    new-instance v1, Lbaidu/net/sip/SipException;

    const-string v2, "VOIP API is not supported"

    invoke-direct {v1, v2}, Lbaidu/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 711
    :cond_0
    monitor-enter p0

    .line 712
    :try_start_0
    iput-object p2, p0, Lbaidu/net/sip/SipAudioCall;->mSipSession:Lbaidu/net/sip/SipSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    :try_start_1
    new-instance v1, Lbaidu/net/rtp/AudioStream;

    invoke-direct {p0}, Lbaidu/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v1, v2}, Lbaidu/net/rtp/AudioStream;-><init>(Ljava/net/InetAddress;)V

    iput-object v1, p0, Lbaidu/net/sip/SipAudioCall;->mAudioStream:Lbaidu/net/rtp/AudioStream;

    .line 717
    iget-boolean v1, p0, Lbaidu/net/sip/SipAudioCall;->mIsVideoEnabled:Z

    if-eqz v1, :cond_1

    .line 718
    new-instance v1, Lbaidu/net/rtp/VideoStream;

    invoke-direct {p0}, Lbaidu/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iget-object v3, p0, Lbaidu/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lbaidu/net/rtp/VideoStream;-><init>(Ljava/net/InetAddress;Landroid/content/Context;)V

    iput-object v1, p0, Lbaidu/net/sip/SipAudioCall;->mVideoStream:Lbaidu/net/rtp/VideoStream;

    .line 722
    :cond_1
    invoke-direct {p0}, Lbaidu/net/sip/SipAudioCall;->createListener()Lbaidu/net/sip/SipSession$Listener;

    move-result-object v1

    invoke-virtual {p2, v1}, Lbaidu/net/sip/SipSession;->setListener(Lbaidu/net/sip/SipSession$Listener;)V

    .line 723
    invoke-direct {p0}, Lbaidu/net/sip/SipAudioCall;->createOffer()Lbaidu/net/sip/SimpleSessionDescription;

    move-result-object v1

    invoke-virtual {v1}, Lbaidu/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1, p3}, Lbaidu/net/sip/SipSession;->makeCall(Lbaidu/net/sip/SipProfile;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 728
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 729
    const-string v1, "baidu.net.sip"

    const-string v2, "<==== SipAudioCall::makeCall()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    return-void

    .line 725
    :catch_0
    move-exception v0

    .line 726
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    new-instance v1, Lbaidu/net/sip/SipException;

    const-string/jumbo v2, "makeCall()"

    invoke-direct {v1, v2, v0}, Lbaidu/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 728
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public resumeVideoStream()V
    .locals 2

    .prologue
    .line 1447
    const-string v0, "baidu.net.sip"

    const-string v1, "====> SipAudioCall::resumeVideoStream()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    iget-boolean v0, p0, Lbaidu/net/sip/SipAudioCall;->mVideoHold:Z

    if-eqz v0, :cond_0

    .line 1449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbaidu/net/sip/SipAudioCall;->mVideoHold:Z

    .line 1451
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mVideoStream:Lbaidu/net/rtp/VideoStream;

    if-eqz v0, :cond_0

    .line 1452
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mVideoStream:Lbaidu/net/rtp/VideoStream;

    invoke-virtual {v0}, Lbaidu/net/rtp/VideoStream;->start()V

    .line 1455
    :cond_0
    const-string v0, "baidu.net.sip"

    const-string v1, "<==== SipAudioCall::resumeVideoStream()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    return-void
.end method

.method public sendDtmf(I)V
    .locals 1
    .parameter "code"

    .prologue
    .line 1092
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lbaidu/net/sip/SipAudioCall;->sendDtmf(ILandroid/os/Message;)V

    .line 1093
    return-void
.end method

.method public sendDtmf(ILandroid/os/Message;)V
    .locals 4
    .parameter "code"
    .parameter "result"

    .prologue
    .line 1106
    monitor-enter p0

    .line 1107
    :try_start_0
    invoke-virtual {p0}, Lbaidu/net/sip/SipAudioCall;->getAudioGroup()Lbaidu/net/rtp/AudioGroup;

    move-result-object v0

    .line 1108
    .local v0, audioGroup:Lbaidu/net/rtp/AudioGroup;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lbaidu/net/sip/SipAudioCall;->mSipSession:Lbaidu/net/sip/SipSession;

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {p0}, Lbaidu/net/sip/SipAudioCall;->getState()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1110
    const-string v1, "baidu.net.sip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send DTMF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    invoke-virtual {v0, p1}, Lbaidu/net/rtp/AudioGroup;->sendDtmf(I)V

    .line 1113
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1114
    :cond_1
    monitor-exit p0

    .line 1115
    return-void

    .line 1114
    .end local v0           #audioGroup:Lbaidu/net/rtp/AudioGroup;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAudioGroup(Lbaidu/net/rtp/AudioGroup;)V
    .locals 2
    .parameter "group"

    .prologue
    .line 1168
    const-string v0, "baidu.net.sip"

    const-string v1, "<====> SipAudioCall::setAudioGroup()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    monitor-enter p0

    .line 1170
    :try_start_0
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mAudioStream:Lbaidu/net/rtp/AudioStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mAudioStream:Lbaidu/net/rtp/AudioStream;

    invoke-virtual {v0}, Lbaidu/net/rtp/AudioStream;->getGroup()Lbaidu/net/rtp/AudioGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1171
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mAudioStream:Lbaidu/net/rtp/AudioStream;

    invoke-virtual {v0, p1}, Lbaidu/net/rtp/AudioStream;->join(Lbaidu/net/rtp/AudioGroup;)V

    .line 1173
    :cond_0
    iput-object p1, p0, Lbaidu/net/sip/SipAudioCall;->mAudioGroup:Lbaidu/net/rtp/AudioGroup;

    .line 1174
    monitor-exit p0

    .line 1175
    return-void

    .line 1174
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setListener(Lbaidu/net/sip/SipAudioCall$Listener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lbaidu/net/sip/SipAudioCall;->setListener(Lbaidu/net/sip/SipAudioCall$Listener;Z)V

    .line 265
    return-void
.end method

.method public setListener(Lbaidu/net/sip/SipAudioCall$Listener;Z)V
    .locals 4
    .parameter "listener"
    .parameter "callbackImmediately"

    .prologue
    .line 278
    const-string v2, "baidu.net.sip"

    const-string v3, "====> SipAudioCall::setListener()"

    invoke-static {v2, v3}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iput-object p1, p0, Lbaidu/net/sip/SipAudioCall;->mListener:Lbaidu/net/sip/SipAudioCall$Listener;

    .line 281
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 311
    :cond_0
    :goto_0
    const-string v2, "baidu.net.sip"

    const-string v3, "<==== SipAudioCall::setListener()"

    invoke-static {v2, v3}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return-void

    .line 283
    :cond_1
    :try_start_0
    iget v2, p0, Lbaidu/net/sip/SipAudioCall;->mErrorCode:I

    if-eqz v2, :cond_2

    .line 284
    iget v2, p0, Lbaidu/net/sip/SipAudioCall;->mErrorCode:I

    iget-object v3, p0, Lbaidu/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, p0, v2, v3}, Lbaidu/net/sip/SipAudioCall$Listener;->onError(Lbaidu/net/sip/SipAudioCall;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 308
    :catch_0
    move-exception v1

    .line 309
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "baidu.net.sip"

    const-string/jumbo v3, "setListener()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 285
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    iget-boolean v2, p0, Lbaidu/net/sip/SipAudioCall;->mInCall:Z

    if-eqz v2, :cond_4

    .line 286
    iget-boolean v2, p0, Lbaidu/net/sip/SipAudioCall;->mHold:Z

    if-eqz v2, :cond_3

    .line 287
    invoke-virtual {p1, p0}, Lbaidu/net/sip/SipAudioCall$Listener;->onCallHeld(Lbaidu/net/sip/SipAudioCall;)V

    goto :goto_0

    .line 289
    :cond_3
    invoke-virtual {p1, p0}, Lbaidu/net/sip/SipAudioCall$Listener;->onCallEstablished(Lbaidu/net/sip/SipAudioCall;)V

    goto :goto_0

    .line 292
    :cond_4
    invoke-virtual {p0}, Lbaidu/net/sip/SipAudioCall;->getState()I

    move-result v0

    .line 293
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 295
    :pswitch_1
    invoke-virtual {p1, p0}, Lbaidu/net/sip/SipAudioCall$Listener;->onReadyToCall(Lbaidu/net/sip/SipAudioCall;)V

    goto :goto_0

    .line 298
    :pswitch_2
    invoke-virtual {p0}, Lbaidu/net/sip/SipAudioCall;->getPeerProfile()Lbaidu/net/sip/SipProfile;

    move-result-object v2

    invoke-virtual {p1, p0, v2}, Lbaidu/net/sip/SipAudioCall$Listener;->onRinging(Lbaidu/net/sip/SipAudioCall;Lbaidu/net/sip/SipProfile;)V

    goto :goto_0

    .line 301
    :pswitch_3
    invoke-virtual {p1, p0}, Lbaidu/net/sip/SipAudioCall$Listener;->onCalling(Lbaidu/net/sip/SipAudioCall;)V

    goto :goto_0

    .line 304
    :pswitch_4
    invoke-virtual {p1, p0}, Lbaidu/net/sip/SipAudioCall$Listener;->onRingingBack(Lbaidu/net/sip/SipAudioCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setLocalPreview(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "surfaceHolder"

    .prologue
    .line 1421
    const-string v0, "baidu.net.sip"

    const-string v1, "<====> SipAudioCall::setLocalPreview()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mVideoStream:Lbaidu/net/rtp/VideoStream;

    if-eqz v0, :cond_0

    .line 1423
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mVideoStream:Lbaidu/net/rtp/VideoStream;

    invoke-virtual {v0, p1}, Lbaidu/net/rtp/VideoStream;->setLocalPreview(Landroid/view/SurfaceHolder;)V

    .line 1425
    :cond_0
    return-void
.end method

.method public setRemoteDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "surfaceHolder"

    .prologue
    .line 1428
    const-string v0, "baidu.net.sip"

    const-string v1, "<====> SipAudioCall::setRemoteDisplay()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mVideoStream:Lbaidu/net/rtp/VideoStream;

    if-eqz v0, :cond_0

    .line 1430
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mVideoStream:Lbaidu/net/rtp/VideoStream;

    invoke-virtual {v0, p1}, Lbaidu/net/rtp/VideoStream;->setLocalPreview(Landroid/view/SurfaceHolder;)V

    .line 1432
    :cond_0
    return-void
.end method

.method public setRemoteDisplayOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 1414
    const-string v0, "baidu.net.sip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<====> SipAudioCall::setRemoteDisplayOrientation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mVideoStream:Lbaidu/net/rtp/VideoStream;

    if-eqz v0, :cond_0

    .line 1416
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mVideoStream:Lbaidu/net/rtp/VideoStream;

    invoke-virtual {v0, p1}, Lbaidu/net/rtp/VideoStream;->setRemoteDisplayOrientation(I)V

    .line 1418
    :cond_0
    return-void
.end method

.method public setSpeakerMode(Z)V
    .locals 2
    .parameter "speakerMode"

    .prologue
    .line 1070
    monitor-enter p0

    .line 1071
    :try_start_0
    iget-object v0, p0, Lbaidu/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 1073
    invoke-direct {p0}, Lbaidu/net/sip/SipAudioCall;->setAudioGroupMode()V

    .line 1074
    monitor-exit p0

    .line 1075
    return-void

    .line 1074
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startAudio()V
    .locals 3

    .prologue
    .line 1186
    const-string v1, "baidu.net.sip"

    const-string v2, "====> SipAudioCall::startAudio()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    :try_start_0
    invoke-direct {p0}, Lbaidu/net/sip/SipAudioCall;->startAudioInternal()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1194
    :goto_0
    const-string v1, "baidu.net.sip"

    const-string v2, "<==== SipAudioCall::startAudio()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    return-void

    .line 1189
    :catch_0
    move-exception v0

    .line 1190
    .local v0, e:Ljava/net/UnknownHostException;
    const/4 v1, -0x7

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lbaidu/net/sip/SipAudioCall;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 1191
    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 1192
    .local v0, e:Ljava/lang/Throwable;
    const/4 v1, -0x4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lbaidu/net/sip/SipAudioCall;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public toggleMute()V
    .locals 2

    .prologue
    .line 1043
    const-string v0, "baidu.net.sip"

    const-string v1, "====> SipAudioCall::toggleMute()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    monitor-enter p0

    .line 1045
    :try_start_0
    iget-boolean v0, p0, Lbaidu/net/sip/SipAudioCall;->mMuted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lbaidu/net/sip/SipAudioCall;->mMuted:Z

    .line 1046
    invoke-direct {p0}, Lbaidu/net/sip/SipAudioCall;->setAudioGroupMode()V

    .line 1047
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1048
    const-string v0, "baidu.net.sip"

    const-string v1, "<==== SipAudioCall::toggleMute()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    return-void

    .line 1045
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1047
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
