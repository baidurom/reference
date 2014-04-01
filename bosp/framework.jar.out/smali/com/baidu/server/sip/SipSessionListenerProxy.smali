.class Lcom/baidu/server/sip/SipSessionListenerProxy;
.super Lbaidu/net/sip/ISipSessionListener$Stub;
.source "SipSessionListenerProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.baidu.server.sip"


# instance fields
.field private mListener:Lbaidu/net/sip/ISipSessionListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lbaidu/net/sip/ISipSessionListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/server/sip/SipSessionListenerProxy;)Lbaidu/net/sip/ISipSessionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionListenerProxy;->mListener:Lbaidu/net/sip/ISipSessionListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/server/sip/SipSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/baidu/server/sip/SipSessionListenerProxy;->handle(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private handle(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .parameter "t"
    .parameter "message"

    .prologue
    .line 258
    instance-of v0, p1, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_1

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/server/sip/SipSessionListenerProxy;->mListener:Lbaidu/net/sip/ISipSessionListener;

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionListenerProxy;->mListener:Lbaidu/net/sip/ISipSessionListener;

    if-eqz v0, :cond_0

    .line 263
    const-string v0, "com.baidu.server.sip"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private proxy(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 49
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "SipSessionCallbackThread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 50
    return-void
.end method


# virtual methods
.method public getListener()Lbaidu/net/sip/ISipSessionListener;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionListenerProxy;->mListener:Lbaidu/net/sip/ISipSessionListener;

    return-object v0
.end method

.method public onCallBusy(Lbaidu/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 156
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionListenerProxy::onCallBusy()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionListenerProxy;->mListener:Lbaidu/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 158
    :cond_0
    new-instance v0, Lcom/baidu/server/sip/SipSessionListenerProxy$8;

    invoke-direct {v0, p0, p1}, Lcom/baidu/server/sip/SipSessionListenerProxy$8;-><init>(Lcom/baidu/server/sip/SipSessionListenerProxy;Lbaidu/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onCallChangeFailed(Lbaidu/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 171
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionListenerProxy::onCallChangeFailed()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionListenerProxy;->mListener:Lbaidu/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 173
    :cond_0
    new-instance v0, Lcom/baidu/server/sip/SipSessionListenerProxy$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/baidu/server/sip/SipSessionListenerProxy$9;-><init>(Lcom/baidu/server/sip/SipSessionListenerProxy;Lbaidu/net/sip/ISipSession;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onCallEnded(Lbaidu/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 127
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionListenerProxy::onCallEnded()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionListenerProxy;->mListener:Lbaidu/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 129
    :cond_0
    new-instance v0, Lcom/baidu/server/sip/SipSessionListenerProxy$6;

    invoke-direct {v0, p0, p1}, Lcom/baidu/server/sip/SipSessionListenerProxy$6;-><init>(Lcom/baidu/server/sip/SipSessionListenerProxy;Lbaidu/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onCallEstablished(Lbaidu/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "sessionDescription"

    .prologue
    .line 97
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionListenerProxy::onCallEstablished()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionListenerProxy;->mListener:Lbaidu/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 99
    :cond_0
    new-instance v0, Lcom/baidu/server/sip/SipSessionListenerProxy$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/server/sip/SipSessionListenerProxy$4;-><init>(Lcom/baidu/server/sip/SipSessionListenerProxy;Lbaidu/net/sip/ISipSession;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onCallTransferring(Lbaidu/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 2
    .parameter "newSession"
    .parameter "sessionDescription"

    .prologue
    .line 142
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionListenerProxy::onCallTransferring()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionListenerProxy;->mListener:Lbaidu/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 144
    :cond_0
    new-instance v0, Lcom/baidu/server/sip/SipSessionListenerProxy$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/server/sip/SipSessionListenerProxy$7;-><init>(Lcom/baidu/server/sip/SipSessionListenerProxy;Lbaidu/net/sip/ISipSession;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onCalling(Lbaidu/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 53
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionListenerProxy::onCalling()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionListenerProxy;->mListener:Lbaidu/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v0, Lcom/baidu/server/sip/SipSessionListenerProxy$1;

    invoke-direct {v0, p0, p1}, Lcom/baidu/server/sip/SipSessionListenerProxy$1;-><init>(Lcom/baidu/server/sip/SipSessionListenerProxy;Lbaidu/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onError(Lbaidu/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 186
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionListenerProxy::onError()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionListenerProxy;->mListener:Lbaidu/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 188
    :cond_0
    new-instance v0, Lcom/baidu/server/sip/SipSessionListenerProxy$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/baidu/server/sip/SipSessionListenerProxy$10;-><init>(Lcom/baidu/server/sip/SipSessionListenerProxy;Lbaidu/net/sip/ISipSession;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onInfoReceived(Ljava/lang/String;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 112
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionListenerProxy::onInfoReceived()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionListenerProxy;->mListener:Lbaidu/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 114
    :cond_0
    new-instance v0, Lcom/baidu/server/sip/SipSessionListenerProxy$5;

    invoke-direct {v0, p0, p1}, Lcom/baidu/server/sip/SipSessionListenerProxy$5;-><init>(Lcom/baidu/server/sip/SipSessionListenerProxy;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRegistering(Lbaidu/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 200
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionListenerProxy::onRegistering()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionListenerProxy;->mListener:Lbaidu/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 202
    :cond_0
    new-instance v0, Lcom/baidu/server/sip/SipSessionListenerProxy$11;

    invoke-direct {v0, p0, p1}, Lcom/baidu/server/sip/SipSessionListenerProxy$11;-><init>(Lcom/baidu/server/sip/SipSessionListenerProxy;Lbaidu/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRegistrationDone(Lbaidu/net/sip/ISipSession;I)V
    .locals 2
    .parameter "session"
    .parameter "duration"

    .prologue
    .line 215
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionListenerProxy::onRegistrationDone()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionListenerProxy;->mListener:Lbaidu/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 217
    :cond_0
    new-instance v0, Lcom/baidu/server/sip/SipSessionListenerProxy$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/server/sip/SipSessionListenerProxy$12;-><init>(Lcom/baidu/server/sip/SipSessionListenerProxy;Lbaidu/net/sip/ISipSession;I)V

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRegistrationFailed(Lbaidu/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 230
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionListenerProxy::onRegistrationFailed()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionListenerProxy;->mListener:Lbaidu/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 232
    :cond_0
    new-instance v0, Lcom/baidu/server/sip/SipSessionListenerProxy$13;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/baidu/server/sip/SipSessionListenerProxy$13;-><init>(Lcom/baidu/server/sip/SipSessionListenerProxy;Lbaidu/net/sip/ISipSession;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRegistrationTimeout(Lbaidu/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 244
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionListenerProxy::onRegistrationTimeout()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionListenerProxy;->mListener:Lbaidu/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 246
    :cond_0
    new-instance v0, Lcom/baidu/server/sip/SipSessionListenerProxy$14;

    invoke-direct {v0, p0, p1}, Lcom/baidu/server/sip/SipSessionListenerProxy$14;-><init>(Lcom/baidu/server/sip/SipSessionListenerProxy;Lbaidu/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRinging(Lbaidu/net/sip/ISipSession;Lbaidu/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 2
    .parameter "session"
    .parameter "caller"
    .parameter "sessionDescription"

    .prologue
    .line 68
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionListenerProxy::onRinging()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionListenerProxy;->mListener:Lbaidu/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v0, Lcom/baidu/server/sip/SipSessionListenerProxy$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/baidu/server/sip/SipSessionListenerProxy$2;-><init>(Lcom/baidu/server/sip/SipSessionListenerProxy;Lbaidu/net/sip/ISipSession;Lbaidu/net/sip/SipProfile;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRingingBack(Lbaidu/net/sip/ISipSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 82
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionListenerProxy::onRingingBack()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionListenerProxy;->mListener:Lbaidu/net/sip/ISipSessionListener;

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance v0, Lcom/baidu/server/sip/SipSessionListenerProxy$3;

    invoke-direct {v0, p0, p1}, Lcom/baidu/server/sip/SipSessionListenerProxy$3;-><init>(Lcom/baidu/server/sip/SipSessionListenerProxy;Lbaidu/net/sip/ISipSession;)V

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionListenerProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setListener(Lbaidu/net/sip/ISipSessionListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 37
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionListenerProxy::setListener()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/baidu/server/sip/SipSessionListenerProxy;->mListener:Lbaidu/net/sip/ISipSessionListener;

    .line 39
    return-void
.end method
