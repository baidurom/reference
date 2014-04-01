.class abstract Lcom/android/internal/telephony/cat/Channel;
.super Ljava/lang/Object;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;,
        Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;
    }
.end annotation


# static fields
.field protected static final SOCKET_TIMEOUT:I = 0xbb8


# instance fields
.field protected isChannelOpened:Z

.field protected mAddress:Ljava/net/InetAddress;

.field protected mBufferSize:I

.field protected mChannelId:I

.field protected mChannelStatus:I

.field private mHandler:Lcom/android/internal/telephony/cat/CatService;

.field protected mLinkMode:I

.field protected mLock:Ljava/lang/Object;

.field protected mPort:I

.field protected mProtocolType:I

.field protected mRecvDataRet:Lcom/android/internal/telephony/cat/ReceiveDataResult;

.field protected mRxBuffer:[B

.field protected mRxBufferCount:I

.field protected mRxBufferOffset:I

.field protected mTxBuffer:[B

.field protected mTxBufferCount:I

.field protected needCopy:I


# direct methods
.method constructor <init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;)V
    .locals 3
    .parameter "cid"
    .parameter "linkMode"
    .parameter "protocolType"
    .parameter "address"
    .parameter "port"
    .parameter "bufferSize"
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelId:I

    .line 35
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    .line 36
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mLinkMode:I

    .line 37
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mProtocolType:I

    .line 39
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mAddress:Ljava/net/InetAddress;

    .line 40
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mPort:I

    .line 41
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    .line 43
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    .line 44
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 45
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    .line 46
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 47
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 48
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    .line 50
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mRecvDataRet:Lcom/android/internal/telephony/cat/ReceiveDataResult;

    .line 51
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->needCopy:I

    .line 53
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Channel;->isChannelOpened:Z

    .line 59
    iput p1, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelId:I

    .line 60
    iput p2, p0, Lcom/android/internal/telephony/cat/Channel;->mLinkMode:I

    .line 61
    iput p3, p0, Lcom/android/internal/telephony/cat/Channel;->mProtocolType:I

    .line 62
    iput-object p4, p0, Lcom/android/internal/telephony/cat/Channel;->mAddress:Ljava/net/InetAddress;

    .line 63
    iput p5, p0, Lcom/android/internal/telephony/cat/Channel;->mPort:I

    .line 64
    iput p6, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    .line 66
    iput-object p7, p0, Lcom/android/internal/telephony/cat/Channel;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    .line 67
    return-void
.end method


# virtual methods
.method protected checkBufferSize()I
    .locals 7

    .prologue
    const/16 v6, 0xd2

    .line 111
    const/4 v2, 0x0

    .line 112
    .local v2, minBufferSize:I
    const/4 v1, 0x0

    .line 113
    .local v1, maxBufferSize:I
    const/4 v0, 0x0

    .line 115
    .local v0, defaultBufferSize:I
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mProtocolType:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mProtocolType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 116
    :cond_0
    const/16 v2, 0xff

    .line 117
    const/16 v1, 0x578

    .line 118
    const/16 v0, 0x400

    .line 125
    :cond_1
    :goto_0
    const-string v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mBufferSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " minBufferSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " maxBufferSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    if-lt v3, v2, :cond_4

    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    if-gt v3, v1, :cond_4

    .line 128
    const-string v3, "[BIP]"

    const-string v4, "buffer size is normal"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v3, 0x0

    .line 145
    :goto_1
    return v3

    .line 119
    :cond_2
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mProtocolType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mProtocolType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 120
    :cond_3
    const/16 v2, 0xff

    .line 121
    const/16 v1, 0x578

    .line 122
    const/16 v0, 0x400

    goto :goto_0

    .line 131
    :cond_4
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    if-le v3, v1, :cond_6

    .line 132
    const-string v3, "[BIP]"

    const-string v4, "buffer size is too large, change it to maximum value"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    .line 140
    :goto_2
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    if-ge v3, v6, :cond_5

    .line 141
    const-string v3, "[BIP]"

    const-string v4, "buffer size is smaller than 255, change it to MAX_APDU_SIZE"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iput v6, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    .line 145
    :cond_5
    const/4 v3, 0x3

    goto :goto_1

    .line 135
    :cond_6
    const-string v3, "[BIP]"

    const-string v4, "buffer size is too small, change it to default value"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iput v0, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    goto :goto_2
.end method

.method public abstract closeChannel()I
.end method

.method public dataAvailable(I)V
    .locals 7
    .parameter "bufferSize"

    .prologue
    const/4 v6, 0x6

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 77
    new-instance v1, Lcom/android/internal/telephony/cat/CatResponseMessage;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(I)V

    .line 79
    .local v1, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    const/4 v2, 0x7

    new-array v0, v2, [B

    .line 80
    .local v0, additionalInfo:[B
    const/16 v2, -0x48

    aput-byte v2, v0, v4

    .line 81
    aput-byte v3, v0, v5

    .line 82
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/Channel;->getChannelId()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 83
    const/4 v2, 0x3

    aput-byte v4, v0, v2

    .line 85
    const/4 v2, 0x4

    const/16 v3, -0x49

    aput-byte v3, v0, v2

    .line 86
    const/4 v2, 0x5

    aput-byte v5, v0, v2

    .line 88
    const/16 v2, 0xff

    if-le p1, v2, :cond_0

    .line 89
    const/4 v2, -0x1

    aput-byte v2, v0, v6

    .line 94
    :goto_0
    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setSourceId(I)V

    .line 95
    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setDestinationId(I)V

    .line 96
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 97
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setOneShot(Z)V

    .line 98
    const-string/jumbo v2, "onEventDownload for dataAvailable"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/cat/CatService;->onEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 100
    return-void

    .line 91
    :cond_0
    int-to-byte v2, p1

    aput-byte v2, v0, v6

    goto :goto_0
.end method

.method public getChannelId()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelId:I

    return v0
.end method

.method public getChannelStatus()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    return v0
.end method

.method public abstract getTxAvailBufferSize()I
.end method

.method public abstract openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I
.end method

.method public abstract receiveData(ILcom/android/internal/telephony/cat/ReceiveDataResult;)I
.end method

.method public abstract receiveData(I)Lcom/android/internal/telephony/cat/ReceiveDataResult;
.end method

.method public abstract sendData([BI)I
.end method
