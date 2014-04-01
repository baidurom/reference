.class public Lbaidu/net/sip/SipAudioCall$Listener;
.super Ljava/lang/Object;
.source "SipAudioCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbaidu/net/sip/SipAudioCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBusy(Lbaidu/net/sip/SipAudioCall;)V
    .locals 2
    .parameter "call"

    .prologue
    .line 165
    const-string v0, "baidu.net.sip"

    const-string v1, "<====> SipAudioCall::Listener::onCallBusy()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0, p1}, Lbaidu/net/sip/SipAudioCall$Listener;->onChanged(Lbaidu/net/sip/SipAudioCall;)V

    .line 167
    return-void
.end method

.method public onCallEnded(Lbaidu/net/sip/SipAudioCall;)V
    .locals 2
    .parameter "call"

    .prologue
    .line 154
    const-string v0, "baidu.net.sip"

    const-string v1, "<====> SipAudioCall::Listener::onCallEnded()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0, p1}, Lbaidu/net/sip/SipAudioCall$Listener;->onChanged(Lbaidu/net/sip/SipAudioCall;)V

    .line 156
    return-void
.end method

.method public onCallEstablished(Lbaidu/net/sip/SipAudioCall;)V
    .locals 2
    .parameter "call"

    .prologue
    .line 143
    const-string v0, "baidu.net.sip"

    const-string v1, "<====> SipAudioCall::Listener::onCallEstablished()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0, p1}, Lbaidu/net/sip/SipAudioCall$Listener;->onChanged(Lbaidu/net/sip/SipAudioCall;)V

    .line 145
    return-void
.end method

.method public onCallHeld(Lbaidu/net/sip/SipAudioCall;)V
    .locals 2
    .parameter "call"

    .prologue
    .line 176
    const-string v0, "baidu.net.sip"

    const-string v1, "<====> SipAudioCall::Listener::onCallHeld()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0, p1}, Lbaidu/net/sip/SipAudioCall$Listener;->onChanged(Lbaidu/net/sip/SipAudioCall;)V

    .line 178
    return-void
.end method

.method public onCalling(Lbaidu/net/sip/SipAudioCall;)V
    .locals 2
    .parameter "call"

    .prologue
    .line 109
    const-string v0, "baidu.net.sip"

    const-string v1, "<====> SipAudioCall::Listener::onCalling()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, p1}, Lbaidu/net/sip/SipAudioCall$Listener;->onChanged(Lbaidu/net/sip/SipAudioCall;)V

    .line 111
    return-void
.end method

.method public onChanged(Lbaidu/net/sip/SipAudioCall;)V
    .locals 2
    .parameter "call"

    .prologue
    .line 200
    const-string v0, "baidu.net.sip"

    const-string v1, "<====> SipAudioCall::Listener::onChanged()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public onError(Lbaidu/net/sip/SipAudioCall;ILjava/lang/String;)V
    .locals 2
    .parameter "call"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 190
    const-string v0, "baidu.net.sip"

    const-string v1, "<====> SipAudioCall::Listener::onError()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public onInfoReceived(Ljava/lang/String;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 86
    const-string v0, "baidu.net.sip"

    const-string v1, "<====> SipAudioCall::Listener::remove()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbaidu/net/sip/SipAudioCall$Listener;->onChanged(Lbaidu/net/sip/SipAudioCall;)V

    .line 88
    return-void
.end method

.method public onReadyToCall(Lbaidu/net/sip/SipAudioCall;)V
    .locals 2
    .parameter "call"

    .prologue
    .line 98
    const-string v0, "baidu.net.sip"

    const-string v1, "<====> SipAudioCall::Listener::onReadyToCall()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, p1}, Lbaidu/net/sip/SipAudioCall$Listener;->onChanged(Lbaidu/net/sip/SipAudioCall;)V

    .line 100
    return-void
.end method

.method public onRinging(Lbaidu/net/sip/SipAudioCall;Lbaidu/net/sip/SipProfile;)V
    .locals 2
    .parameter "call"
    .parameter "caller"

    .prologue
    .line 121
    const-string v0, "baidu.net.sip"

    const-string v1, "<====> SipAudioCall::Listener::onRinging()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, p1}, Lbaidu/net/sip/SipAudioCall$Listener;->onChanged(Lbaidu/net/sip/SipAudioCall;)V

    .line 123
    return-void
.end method

.method public onRingingBack(Lbaidu/net/sip/SipAudioCall;)V
    .locals 2
    .parameter "call"

    .prologue
    .line 132
    const-string v0, "baidu.net.sip"

    const-string v1, "<====> SipAudioCall::Listener::onRingingBack()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0, p1}, Lbaidu/net/sip/SipAudioCall$Listener;->onChanged(Lbaidu/net/sip/SipAudioCall;)V

    .line 134
    return-void
.end method
