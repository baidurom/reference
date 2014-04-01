.class Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"

# interfaces
.implements Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/server/sip/SipSessionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeepAliveProcessCallbackProxy"
.end annotation


# instance fields
.field private mCallback:Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;


# direct methods
.method constructor <init>(Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 1935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1936
    iput-object p1, p0, Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->mCallback:Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    .line 1937
    return-void
.end method

.method static synthetic access$3100(Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;)Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1932
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->mCallback:Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    return-object v0
.end method

.method private proxy(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 1943
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "SIP-KeepAliveProcessCallbackThread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1944
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .parameter "errorCode"
    .parameter "description"

    .prologue
    .line 1961
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> KeepAliveProcessCallbackProxy::onError()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->mCallback:Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    if-nez v0, :cond_0

    .line 1972
    :goto_0
    return-void

    .line 1963
    :cond_0
    new-instance v0, Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;-><init>(Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onResponse(Z)V
    .locals 2
    .parameter "portChanged"

    .prologue
    .line 1947
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> KeepAliveProcessCallbackProxy::onResponse()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->mCallback:Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    if-nez v0, :cond_0

    .line 1958
    :goto_0
    return-void

    .line 1949
    :cond_0
    new-instance v0, Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$1;

    invoke-direct {v0, p0, p1}, Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$1;-><init>(Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;Z)V

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->proxy(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
