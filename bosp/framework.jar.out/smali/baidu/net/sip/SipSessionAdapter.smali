.class public Lbaidu/net/sip/SipSessionAdapter;
.super Lbaidu/net/sip/ISipSessionListener$Stub;
.source "SipSessionAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lbaidu/net/sip/ISipSessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBusy(Lbaidu/net/sip/ISipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 48
    return-void
.end method

.method public onCallChangeFailed(Lbaidu/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 56
    return-void
.end method

.method public onCallEnded(Lbaidu/net/sip/ISipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 45
    return-void
.end method

.method public onCallEstablished(Lbaidu/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "sessionDescription"

    .prologue
    .line 42
    return-void
.end method

.method public onCallTransferring(Lbaidu/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "sessionDescription"

    .prologue
    .line 52
    return-void
.end method

.method public onCalling(Lbaidu/net/sip/ISipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 31
    return-void
.end method

.method public onError(Lbaidu/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 59
    return-void
.end method

.method public onInfoReceived(Ljava/lang/String;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 27
    return-void
.end method

.method public onRegistering(Lbaidu/net/sip/ISipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 62
    return-void
.end method

.method public onRegistrationDone(Lbaidu/net/sip/ISipSession;I)V
    .locals 0
    .parameter "session"
    .parameter "duration"

    .prologue
    .line 65
    return-void
.end method

.method public onRegistrationFailed(Lbaidu/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 69
    return-void
.end method

.method public onRegistrationTimeout(Lbaidu/net/sip/ISipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 72
    return-void
.end method

.method public onRinging(Lbaidu/net/sip/ISipSession;Lbaidu/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "caller"
    .parameter "sessionDescription"

    .prologue
    .line 35
    return-void
.end method

.method public onRingingBack(Lbaidu/net/sip/ISipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 38
    return-void
.end method
