.class public Lbaidu/net/rtp/AudioStream;
.super Lbaidu/net/rtp/RtpStream;
.source "AudioStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "baidu.net.rtp"


# instance fields
.field private mCodec:Lbaidu/net/rtp/AudioCodec;

.field private mDtmfType:I

.field private mGroup:Lbaidu/net/rtp/AudioGroup;


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;)V
    .locals 1
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lbaidu/net/rtp/RtpStream;-><init>(Ljava/net/InetAddress;)V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lbaidu/net/rtp/AudioStream;->mDtmfType:I

    .line 66
    return-void
.end method


# virtual methods
.method public getCodec()Lbaidu/net/rtp/AudioCodec;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lbaidu/net/rtp/AudioStream;->mCodec:Lbaidu/net/rtp/AudioCodec;

    return-object v0
.end method

.method public getDtmfType()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lbaidu/net/rtp/AudioStream;->mDtmfType:I

    return v0
.end method

.method public getGroup()Lbaidu/net/rtp/AudioGroup;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lbaidu/net/rtp/AudioStream;->mGroup:Lbaidu/net/rtp/AudioGroup;

    return-object v0
.end method

.method public final isBusy()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lbaidu/net/rtp/AudioStream;->mGroup:Lbaidu/net/rtp/AudioGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public join(Lbaidu/net/rtp/AudioGroup;)V
    .locals 2
    .parameter "group"

    .prologue
    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    const-string v0, "baidu.net.rtp"

    const-string v1, "====> AudioStream::join()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lbaidu/net/rtp/AudioStream;->mGroup:Lbaidu/net/rtp/AudioGroup;

    if-ne v0, p1, :cond_0

    .line 97
    const-string v0, "baidu.net.rtp"

    const-string v1, "<==== AudioStream::join()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    monitor-exit p0

    .line 110
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lbaidu/net/rtp/AudioStream;->mGroup:Lbaidu/net/rtp/AudioGroup;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lbaidu/net/rtp/AudioStream;->mGroup:Lbaidu/net/rtp/AudioGroup;

    invoke-virtual {v0, p0}, Lbaidu/net/rtp/AudioGroup;->remove(Lbaidu/net/rtp/AudioStream;)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lbaidu/net/rtp/AudioStream;->mGroup:Lbaidu/net/rtp/AudioGroup;

    .line 104
    :cond_1
    if-eqz p1, :cond_2

    .line 105
    iget-object v0, p0, Lbaidu/net/rtp/AudioStream;->mCodec:Lbaidu/net/rtp/AudioCodec;

    iget v1, p0, Lbaidu/net/rtp/AudioStream;->mDtmfType:I

    invoke-virtual {p1, p0, v0, v1}, Lbaidu/net/rtp/AudioGroup;->add(Lbaidu/net/rtp/AudioStream;Lbaidu/net/rtp/AudioCodec;I)V

    .line 106
    iput-object p1, p0, Lbaidu/net/rtp/AudioStream;->mGroup:Lbaidu/net/rtp/AudioGroup;

    .line 108
    :cond_2
    const-string v0, "baidu.net.rtp"

    const-string v1, "<==== AudioStream::join()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCodec(Lbaidu/net/rtp/AudioCodec;)V
    .locals 2
    .parameter "codec"

    .prologue
    .line 129
    invoke-virtual {p0}, Lbaidu/net/rtp/AudioStream;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Busy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    iget v0, p1, Lbaidu/net/rtp/AudioCodec;->type:I

    iget v1, p0, Lbaidu/net/rtp/AudioStream;->mDtmfType:I

    if-ne v0, v1, :cond_1

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The type is used by DTMF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    iput-object p1, p0, Lbaidu/net/rtp/AudioStream;->mCodec:Lbaidu/net/rtp/AudioCodec;

    .line 136
    return-void
.end method

.method public setDtmfType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 163
    invoke-virtual {p0}, Lbaidu/net/rtp/AudioStream;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Busy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    .line 167
    const/16 v0, 0x60

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7f

    if-le p1, v0, :cond_2

    .line 168
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_2
    iget-object v0, p0, Lbaidu/net/rtp/AudioStream;->mCodec:Lbaidu/net/rtp/AudioCodec;

    iget v0, v0, Lbaidu/net/rtp/AudioCodec;->type:I

    if-ne p1, v0, :cond_3

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The type is used by codec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_3
    iput p1, p0, Lbaidu/net/rtp/AudioStream;->mDtmfType:I

    .line 175
    return-void
.end method
