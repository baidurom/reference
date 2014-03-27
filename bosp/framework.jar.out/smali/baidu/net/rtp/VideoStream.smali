.class public Lbaidu/net/rtp/VideoStream;
.super Lbaidu/net/rtp/RtpStream;
.source "VideoStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "baidu.net.rtp"

.field private static mBackCameraOrientation:I

.field private static mFrontCameraOrientation:I

.field private static mIsHeadSet:Z

.field private static mLocalCameraId:I


# instance fields
.field private mCodec:Lbaidu/net/rtp/VideoCodec;

.field private mContext:Landroid/content/Context;

.field private mIsVideoStarted:Z

.field private mLocalSurface:Landroid/view/Surface;

.field private mNative:I

.field private mRemoteDisplayOrientation:I

.field private mRemoteSurface:Landroid/view/Surface;

.field private mSocket:I

.field private mVFlow:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    const/4 v0, 0x1

    sput v0, Lbaidu/net/rtp/VideoStream;->mLocalCameraId:I

    .line 30
    sput v1, Lbaidu/net/rtp/VideoStream;->mFrontCameraOrientation:I

    .line 31
    sput v1, Lbaidu/net/rtp/VideoStream;->mBackCameraOrientation:I

    .line 35
    sput-boolean v1, Lbaidu/net/rtp/VideoStream;->mIsHeadSet:Z

    .line 46
    const-string v0, "baidu_voip_rtp_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;Landroid/content/Context;)V
    .locals 2
    .parameter "address"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1}, Lbaidu/net/rtp/RtpStream;-><init>(Ljava/net/InetAddress;)V

    .line 33
    iput v0, p0, Lbaidu/net/rtp/VideoStream;->mRemoteDisplayOrientation:I

    .line 37
    iput-boolean v0, p0, Lbaidu/net/rtp/VideoStream;->mIsVideoStarted:Z

    .line 39
    iput v0, p0, Lbaidu/net/rtp/VideoStream;->mVFlow:I

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lbaidu/net/rtp/VideoStream;->mSocket:I

    .line 52
    iput-object p2, p0, Lbaidu/net/rtp/VideoStream;->mContext:Landroid/content/Context;

    .line 53
    const-string v0, "baidu.net.rtp"

    const-string v1, "<====> VideoStream::VideoStream()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private native nativeCreateVideoStream(IIILjava/lang/String;ILjava/lang/String;)V
.end method

.method public static setBackCameraOrientation(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 61
    const-string v0, "baidu.net.rtp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<====> VideoStream::setBackCameraOrientation() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sput p0, Lbaidu/net/rtp/VideoStream;->mBackCameraOrientation:I

    .line 63
    return-void
.end method

.method public static setDefaultCameraId(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 71
    const-string v0, "baidu.net.rtp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<====> VideoStream::setDefaultCameraId(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sput p0, Lbaidu/net/rtp/VideoStream;->mLocalCameraId:I

    .line 73
    return-void
.end method

.method public static setFrontCameraOrientation(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 66
    const-string v0, "baidu.net.rtp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<====> VideoStream::setFrontCameraOrientation(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sput p0, Lbaidu/net/rtp/VideoStream;->mFrontCameraOrientation:I

    .line 68
    return-void
.end method

.method public static setHeadSet(Z)V
    .locals 0
    .parameter "isHeadSet"

    .prologue
    .line 57
    sput-boolean p0, Lbaidu/net/rtp/VideoStream;->mIsHeadSet:Z

    .line 58
    return-void
.end method

.method private setSpeakerMode(Z)V
    .locals 2
    .parameter "speakerMode"

    .prologue
    .line 204
    monitor-enter p0

    .line 205
    :try_start_0
    iget-object v0, p0, Lbaidu/net/rtp/VideoStream;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 207
    monitor-exit p0

    .line 208
    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public configLocalCamera(II)V
    .locals 3
    .parameter "id"
    .parameter "orientation"

    .prologue
    const/4 v2, 0x1

    .line 85
    const-string v0, "baidu.net.rtp"

    const-string v1, "<====> VideoStream::configLocalCamera()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-nez p1, :cond_1

    .line 87
    sput p1, Lbaidu/net/rtp/VideoStream;->mLocalCameraId:I

    .line 88
    sput p2, Lbaidu/net/rtp/VideoStream;->mBackCameraOrientation:I

    .line 89
    const/4 v0, 0x0

    sget v1, Lbaidu/net/rtp/VideoStream;->mBackCameraOrientation:I

    invoke-virtual {p0, v0, v1}, Lbaidu/net/rtp/VideoStream;->nativeConfigLocalCamera(II)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    if-ne v2, p1, :cond_0

    .line 91
    sput p1, Lbaidu/net/rtp/VideoStream;->mLocalCameraId:I

    .line 92
    sput p2, Lbaidu/net/rtp/VideoStream;->mFrontCameraOrientation:I

    .line 93
    sget v0, Lbaidu/net/rtp/VideoStream;->mFrontCameraOrientation:I

    invoke-virtual {p0, v2, v0}, Lbaidu/net/rtp/VideoStream;->nativeConfigLocalCamera(II)V

    goto :goto_0
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
    invoke-virtual {p0}, Lbaidu/net/rtp/VideoStream;->nativeDeleteVideoStream()V

    .line 200
    invoke-super {p0}, Lbaidu/net/rtp/RtpStream;->finalize()V

    .line 201
    return-void
.end method

.method public getCodec()Lbaidu/net/rtp/VideoCodec;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lbaidu/net/rtp/VideoStream;->mCodec:Lbaidu/net/rtp/VideoCodec;

    return-object v0
.end method

.method public getFlow()I
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lbaidu/net/rtp/VideoStream;->nativeGetVideoFlow()V

    .line 125
    iget v0, p0, Lbaidu/net/rtp/VideoStream;->mVFlow:I

    return v0
.end method

.method public native nativeConfigLocalCamera(II)V
.end method

.method public native nativeDeleteVideoStream()V
.end method

.method public native nativeGetVideoFlow()V
.end method

.method public native nativeSetLocalPreview(Landroid/view/Surface;)V
.end method

.method public native nativeSetRemoteDisplay(Landroid/view/Surface;)V
.end method

.method public native nativeSetRemoteDisplayOrientation(I)V
.end method

.method public native nativeStartVideo()V
.end method

.method public native nativeStopVideo()V
.end method

.method public setCodec(Lbaidu/net/rtp/VideoCodec;)V
    .locals 2
    .parameter "codec"

    .prologue
    .line 80
    const-string v0, "baidu.net.rtp"

    const-string v1, "<====> VideoStream::setCodec()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lbaidu/net/rtp/VideoStream;->mCodec:Lbaidu/net/rtp/VideoCodec;

    .line 82
    return-void
.end method

.method public setLocalPreview(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "surfaceHolder"

    .prologue
    .line 104
    const-string v0, "baidu.net.rtp"

    const-string v1, "<====> VideoStream::setLocalPreview()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    if-nez p1, :cond_0

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lbaidu/net/rtp/VideoStream;->mLocalSurface:Landroid/view/Surface;

    .line 110
    :goto_0
    iget-object v0, p0, Lbaidu/net/rtp/VideoStream;->mLocalSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lbaidu/net/rtp/VideoStream;->nativeSetLocalPreview(Landroid/view/Surface;)V

    .line 111
    return-void

    .line 108
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lbaidu/net/rtp/VideoStream;->mLocalSurface:Landroid/view/Surface;

    goto :goto_0
.end method

.method public setRemoteDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "surfaceHolder"

    .prologue
    .line 114
    const-string v0, "baidu.net.rtp"

    const-string v1, "<====> VideoStream::setRemoteDisplay()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    if-nez p1, :cond_0

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lbaidu/net/rtp/VideoStream;->mRemoteSurface:Landroid/view/Surface;

    .line 120
    :goto_0
    iget-object v0, p0, Lbaidu/net/rtp/VideoStream;->mRemoteSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lbaidu/net/rtp/VideoStream;->nativeSetRemoteDisplay(Landroid/view/Surface;)V

    .line 121
    return-void

    .line 118
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lbaidu/net/rtp/VideoStream;->mRemoteSurface:Landroid/view/Surface;

    goto :goto_0
.end method

.method public setRemoteDisplayOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 98
    const-string v0, "baidu.net.rtp"

    const-string v1, "<====> VideoStream::setRemoteDisplayOrientation()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iput p1, p0, Lbaidu/net/rtp/VideoStream;->mRemoteDisplayOrientation:I

    .line 100
    iget v0, p0, Lbaidu/net/rtp/VideoStream;->mRemoteDisplayOrientation:I

    invoke-virtual {p0, v0}, Lbaidu/net/rtp/VideoStream;->nativeSetRemoteDisplayOrientation(I)V

    .line 101
    return-void
.end method

.method public start()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 129
    iget-boolean v0, p0, Lbaidu/net/rtp/VideoStream;->mIsVideoStarted:Z

    if-eqz v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 133
    :cond_0
    const-string v0, "%d %s %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lbaidu/net/rtp/VideoStream;->mCodec:Lbaidu/net/rtp/VideoCodec;

    iget v2, v2, Lbaidu/net/rtp/VideoCodec;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lbaidu/net/rtp/VideoStream;->mCodec:Lbaidu/net/rtp/VideoCodec;

    iget-object v2, v2, Lbaidu/net/rtp/VideoCodec;->rtpmap:Ljava/lang/String;

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lbaidu/net/rtp/VideoStream;->mCodec:Lbaidu/net/rtp/VideoCodec;

    iget-object v3, v3, Lbaidu/net/rtp/VideoCodec;->fmtp:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, codecSpec:Ljava/lang/String;
    const-string v0, "baidu.net.rtp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<====> VideoStream::start(), codec spec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "remote address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lbaidu/net/rtp/VideoStream;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "remote port = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lbaidu/net/rtp/VideoStream;->getRemotePort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "local address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lbaidu/net/rtp/VideoStream;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "local port = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lbaidu/net/rtp/VideoStream;->getLocalPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lbaidu/net/rtp/VideoStream;->dup()I

    move-result v0

    iput v0, p0, Lbaidu/net/rtp/VideoStream;->mSocket:I

    .line 143
    invoke-virtual {p0}, Lbaidu/net/rtp/VideoStream;->getMode()I

    move-result v1

    iget v2, p0, Lbaidu/net/rtp/VideoStream;->mSocket:I

    invoke-virtual {p0}, Lbaidu/net/rtp/VideoStream;->getLocalPort()I

    move-result v3

    invoke-virtual {p0}, Lbaidu/net/rtp/VideoStream;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lbaidu/net/rtp/VideoStream;->getRemotePort()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lbaidu/net/rtp/VideoStream;->nativeCreateVideoStream(IIILjava/lang/String;ILjava/lang/String;)V

    .line 146
    sget v0, Lbaidu/net/rtp/VideoStream;->mLocalCameraId:I

    if-nez v0, :cond_2

    .line 147
    sget v0, Lbaidu/net/rtp/VideoStream;->mBackCameraOrientation:I

    invoke-virtual {p0, v8, v0}, Lbaidu/net/rtp/VideoStream;->nativeConfigLocalCamera(II)V

    .line 152
    :cond_1
    :goto_1
    iget-object v0, p0, Lbaidu/net/rtp/VideoStream;->mLocalSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lbaidu/net/rtp/VideoStream;->nativeSetLocalPreview(Landroid/view/Surface;)V

    .line 153
    iget-object v0, p0, Lbaidu/net/rtp/VideoStream;->mRemoteSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lbaidu/net/rtp/VideoStream;->nativeSetRemoteDisplay(Landroid/view/Surface;)V

    .line 154
    iget v0, p0, Lbaidu/net/rtp/VideoStream;->mRemoteDisplayOrientation:I

    invoke-virtual {p0, v0}, Lbaidu/net/rtp/VideoStream;->nativeSetRemoteDisplayOrientation(I)V

    .line 156
    invoke-virtual {p0}, Lbaidu/net/rtp/VideoStream;->nativeStartVideo()V

    .line 158
    sget-boolean v0, Lbaidu/net/rtp/VideoStream;->mIsHeadSet:Z

    if-eqz v0, :cond_3

    .line 159
    invoke-direct {p0, v8}, Lbaidu/net/rtp/VideoStream;->setSpeakerMode(Z)V

    .line 164
    :goto_2
    iput-boolean v7, p0, Lbaidu/net/rtp/VideoStream;->mIsVideoStarted:Z

    goto/16 :goto_0

    .line 148
    :cond_2
    sget v0, Lbaidu/net/rtp/VideoStream;->mLocalCameraId:I

    if-ne v7, v0, :cond_1

    .line 149
    sget v0, Lbaidu/net/rtp/VideoStream;->mFrontCameraOrientation:I

    invoke-virtual {p0, v7, v0}, Lbaidu/net/rtp/VideoStream;->nativeConfigLocalCamera(II)V

    goto :goto_1

    .line 161
    :cond_3
    invoke-direct {p0, v7}, Lbaidu/net/rtp/VideoStream;->setSpeakerMode(Z)V

    goto :goto_2
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 168
    const-string v0, "baidu.net.rtp"

    const-string v1, "<====> VideoStream::stop()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-boolean v0, p0, Lbaidu/net/rtp/VideoStream;->mIsVideoStarted:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lbaidu/net/rtp/VideoStream;->nativeStopVideo()V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbaidu/net/rtp/VideoStream;->mIsVideoStarted:Z

    .line 173
    :cond_0
    return-void
.end method
