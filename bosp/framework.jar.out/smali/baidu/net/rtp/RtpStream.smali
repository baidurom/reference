.class public Lbaidu/net/rtp/RtpStream;
.super Ljava/lang/Object;
.source "RtpStream.java"


# static fields
.field private static final MODE_LAST:I = 0x2

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_RECEIVE_ONLY:I = 0x2

.field public static final MODE_SEND_ONLY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "baidu.net.rtp"


# instance fields
.field private final mLocalAddress:Ljava/net/InetAddress;

.field private final mLocalPort:I

.field private mMode:I

.field private mNative:I

.field private mRemoteAddress:Ljava/net/InetAddress;

.field private mRemotePort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "baidu_voip_rtp_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method constructor <init>(Ljava/net/InetAddress;)V
    .locals 1
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lbaidu/net/rtp/RtpStream;->mRemotePort:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lbaidu/net/rtp/RtpStream;->mMode:I

    .line 78
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbaidu/net/rtp/RtpStream;->create(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbaidu/net/rtp/RtpStream;->mLocalPort:I

    .line 79
    iput-object p1, p0, Lbaidu/net/rtp/RtpStream;->mLocalAddress:Ljava/net/InetAddress;

    .line 80
    return-void
.end method

.method private synchronized native declared-synchronized close()V
.end method

.method private native create(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method


# virtual methods
.method public associate(Ljava/net/InetAddress;I)V
    .locals 3
    .parameter "address"
    .parameter "port"

    .prologue
    .line 162
    const-string v0, "baidu.net.rtp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<====> RtpStream::associate, address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " port = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lbaidu/net/rtp/RtpStream;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Busy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbaidu/net/rtp/RtpStream;->mLocalAddress:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-nez v0, :cond_3

    :cond_1
    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbaidu/net/rtp/RtpStream;->mLocalAddress:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-nez v0, :cond_3

    .line 169
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_3
    if-ltz p2, :cond_4

    const v0, 0xffff

    if-le p2, v0, :cond_5

    .line 172
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid port"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_5
    iput-object p1, p0, Lbaidu/net/rtp/RtpStream;->mRemoteAddress:Ljava/net/InetAddress;

    .line 175
    iput p2, p0, Lbaidu/net/rtp/RtpStream;->mRemotePort:I

    .line 176
    return-void
.end method

.method synchronized native declared-synchronized dup()I
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 199
    invoke-direct {p0}, Lbaidu/net/rtp/RtpStream;->close()V

    .line 200
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 201
    return-void
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lbaidu/net/rtp/RtpStream;->mLocalAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lbaidu/net/rtp/RtpStream;->mLocalPort:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lbaidu/net/rtp/RtpStream;->mMode:I

    return v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lbaidu/net/rtp/RtpStream;->mRemoteAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lbaidu/net/rtp/RtpStream;->mRemotePort:I

    return v0
.end method

.method public isBusy()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 188
    const-string v0, "baidu.net.rtp"

    const-string v1, "<====> RtpStream::release()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lbaidu/net/rtp/RtpStream;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Busy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    invoke-direct {p0}, Lbaidu/net/rtp/RtpStream;->close()V

    .line 193
    return-void
.end method

.method public setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 140
    const-string v0, "baidu.net.rtp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<====> RtpStream::setMode, mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lbaidu/net/rtp/RtpStream;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Busy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-le p1, v0, :cond_2

    .line 145
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_2
    iput p1, p0, Lbaidu/net/rtp/RtpStream;->mMode:I

    .line 148
    return-void
.end method
