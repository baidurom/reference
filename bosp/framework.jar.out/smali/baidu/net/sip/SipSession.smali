.class public final Lbaidu/net/sip/SipSession;
.super Ljava/lang/Object;
.source "SipSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbaidu/net/sip/SipSession$Listener;,
        Lbaidu/net/sip/SipSession$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "baidu.net.sip"


# instance fields
.field private mListener:Lbaidu/net/sip/SipSession$Listener;

.field private final mSession:Lbaidu/net/sip/ISipSession;


# direct methods
.method constructor <init>(Lbaidu/net/sip/ISipSession;)V
    .locals 4
    .parameter "realSession"

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    const-string v1, "baidu.net.sip"

    const-string v2, "<====> SipSession::SipSession()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iput-object p1, p0, Lbaidu/net/sip/SipSession;->mSession:Lbaidu/net/sip/ISipSession;

    .line 254
    if-eqz p1, :cond_0

    .line 256
    :try_start_0
    invoke-direct {p0}, Lbaidu/net/sip/SipSession;->createListener()Lbaidu/net/sip/ISipSessionListener;

    move-result-object v1

    invoke-interface {p1, v1}, Lbaidu/net/sip/ISipSession;->setListener(Lbaidu/net/sip/ISipSessionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "baidu.net.sip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SipSession.setListener(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method constructor <init>(Lbaidu/net/sip/ISipSession;Lbaidu/net/sip/SipSession$Listener;)V
    .locals 0
    .parameter "realSession"
    .parameter "listener"

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lbaidu/net/sip/SipSession;-><init>(Lbaidu/net/sip/ISipSession;)V

    .line 265
    invoke-virtual {p0, p2}, Lbaidu/net/sip/SipSession;->setListener(Lbaidu/net/sip/SipSession$Listener;)V

    .line 266
    return-void
.end method

.method static synthetic access$000(Lbaidu/net/sip/SipSession;)Lbaidu/net/sip/SipSession$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;

    return-object v0
.end method

.method private createListener()Lbaidu/net/sip/ISipSessionListener;
    .locals 1

    .prologue
    .line 495
    new-instance v0, Lbaidu/net/sip/SipSession$1;

    invoke-direct {v0, p0}, Lbaidu/net/sip/SipSession$1;-><init>(Lbaidu/net/sip/SipSession;)V

    return-object v0
.end method


# virtual methods
.method public answerCall(Ljava/lang/String;I)V
    .locals 4
    .parameter "sessionDescription"
    .parameter "timeout"

    .prologue
    .line 436
    const-string v1, "baidu.net.sip"

    const-string v2, "<====> SipSession::answerCall()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :try_start_0
    iget-object v1, p0, Lbaidu/net/sip/SipSession;->mSession:Lbaidu/net/sip/ISipSession;

    invoke-interface {v1, p1, p2}, Lbaidu/net/sip/ISipSession;->answerCall(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "baidu.net.sip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "answerCall(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public changeCall(Ljava/lang/String;I)V
    .locals 4
    .parameter "sessionDescription"
    .parameter "timeout"

    .prologue
    .line 471
    const-string v1, "baidu.net.sip"

    const-string v2, "<====> SipSession::changeCall()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :try_start_0
    iget-object v1, p0, Lbaidu/net/sip/SipSession;->mSession:Lbaidu/net/sip/ISipSession;

    invoke-interface {v1, p1, p2}, Lbaidu/net/sip/ISipSession;->changeCall(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :goto_0
    return-void

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "baidu.net.sip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeCall(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endCall()V
    .locals 4

    .prologue
    .line 453
    const-string v1, "baidu.net.sip"

    const-string v2, "<====> SipSession::endCall()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :try_start_0
    iget-object v1, p0, Lbaidu/net/sip/SipSession;->mSession:Lbaidu/net/sip/ISipSession;

    invoke-interface {v1}, Lbaidu/net/sip/ISipSession;->endCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :goto_0
    return-void

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "baidu.net.sip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endCall(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 347
    :try_start_0
    iget-object v1, p0, Lbaidu/net/sip/SipSession;->mSession:Lbaidu/net/sip/ISipSession;

    invoke-interface {v1}, Lbaidu/net/sip/ISipSession;->getCallId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 350
    :goto_0
    return-object v1

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "baidu.net.sip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallId(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocalIp()Ljava/lang/String;
    .locals 4

    .prologue
    .line 275
    :try_start_0
    iget-object v1, p0, Lbaidu/net/sip/SipSession;->mSession:Lbaidu/net/sip/ISipSession;

    invoke-interface {v1}, Lbaidu/net/sip/ISipSession;->getLocalIp()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 278
    :goto_0
    return-object v1

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "baidu.net.sip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocalIp(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v1, "127.0.0.1"

    goto :goto_0
.end method

.method public getLocalProfile()Lbaidu/net/sip/SipProfile;
    .locals 4

    .prologue
    .line 289
    :try_start_0
    iget-object v1, p0, Lbaidu/net/sip/SipSession;->mSession:Lbaidu/net/sip/ISipSession;

    invoke-interface {v1}, Lbaidu/net/sip/ISipSession;->getLocalProfile()Lbaidu/net/sip/SipProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 292
    :goto_0
    return-object v1

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "baidu.net.sip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocalProfile(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPeerProfile()Lbaidu/net/sip/SipProfile;
    .locals 4

    .prologue
    .line 304
    :try_start_0
    iget-object v1, p0, Lbaidu/net/sip/SipSession;->mSession:Lbaidu/net/sip/ISipSession;

    invoke-interface {v1}, Lbaidu/net/sip/ISipSession;->getPeerProfile()Lbaidu/net/sip/SipProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 307
    :goto_0
    return-object v1

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "baidu.net.sip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPeerProfile(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getRealSession()Lbaidu/net/sip/ISipSession;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lbaidu/net/sip/SipSession;->mSession:Lbaidu/net/sip/ISipSession;

    return-object v0
.end method

.method public getState()I
    .locals 4

    .prologue
    .line 319
    :try_start_0
    iget-object v1, p0, Lbaidu/net/sip/SipSession;->mSession:Lbaidu/net/sip/ISipSession;

    invoke-interface {v1}, Lbaidu/net/sip/ISipSession;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 322
    :goto_0
    return v1

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "baidu.net.sip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getState(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/16 v1, 0x65

    goto :goto_0
.end method

.method public isInCall()Z
    .locals 4

    .prologue
    .line 333
    :try_start_0
    iget-object v1, p0, Lbaidu/net/sip/SipSession;->mSession:Lbaidu/net/sip/ISipSession;

    invoke-interface {v1}, Lbaidu/net/sip/ISipSession;->isInCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 336
    :goto_0
    return v1

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "baidu.net.sip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInCall(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public makeCall(Lbaidu/net/sip/SipProfile;Ljava/lang/String;I)V
    .locals 4
    .parameter "callee"
    .parameter "sessionDescription"
    .parameter "timeout"

    .prologue
    .line 417
    const-string v1, "baidu.net.sip"

    const-string v2, "<====> SipSession::makeCall()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :try_start_0
    iget-object v1, p0, Lbaidu/net/sip/SipSession;->mSession:Lbaidu/net/sip/ISipSession;

    invoke-interface {v1, p1, p2, p3}, Lbaidu/net/sip/ISipSession;->makeCall(Lbaidu/net/sip/SipProfile;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_0
    return-void

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "baidu.net.sip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeCall(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public register(I)V
    .locals 4
    .parameter "duration"

    .prologue
    .line 377
    const-string v1, "baidu.net.sip"

    const-string v2, "<====> SipSession::register()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :try_start_0
    iget-object v1, p0, Lbaidu/net/sip/SipSession;->mSession:Lbaidu/net/sip/ISipSession;

    invoke-interface {v1, p1}, Lbaidu/net/sip/ISipSession;->register(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    return-void

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "baidu.net.sip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "register(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendInfo(Ljava/lang/String;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 485
    const-string v1, "baidu.net.sip"

    const-string v2, "<====> SipSession::sendInfo()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :try_start_0
    iget-object v1, p0, Lbaidu/net/sip/SipSession;->mSession:Lbaidu/net/sip/ISipSession;

    invoke-interface {v1, p1}, Lbaidu/net/sip/ISipSession;->sendInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :goto_0
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "baidu.net.sip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendInfo(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setListener(Lbaidu/net/sip/SipSession$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 363
    iput-object p1, p0, Lbaidu/net/sip/SipSession;->mListener:Lbaidu/net/sip/SipSession$Listener;

    .line 364
    return-void
.end method

.method public unregister()V
    .locals 4

    .prologue
    .line 395
    const-string v1, "baidu.net.sip"

    const-string v2, "<====> SipSession::unregister()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :try_start_0
    iget-object v1, p0, Lbaidu/net/sip/SipSession;->mSession:Lbaidu/net/sip/ISipSession;

    invoke-interface {v1}, Lbaidu/net/sip/ISipSession;->unregister()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :goto_0
    return-void

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "baidu.net.sip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregister(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
