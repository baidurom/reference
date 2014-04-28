.class public Lbaidu/net/sip/SipSession$Listener;
.super Ljava/lang/Object;
.source "SipSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbaidu/net/sip/SipSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBusy(Lbaidu/net/sip/SipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 175
    return-void
.end method

.method public onCallChangeFailed(Lbaidu/net/sip/SipSession;ILjava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 209
    return-void
.end method

.method public onCallEnded(Lbaidu/net/sip/SipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 167
    return-void
.end method

.method public onCallEstablished(Lbaidu/net/sip/SipSession;Ljava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "sessionDescription"

    .prologue
    .line 159
    return-void
.end method

.method public onCallTransferring(Lbaidu/net/sip/SipSession;Ljava/lang/String;)V
    .locals 0
    .parameter "newSession"
    .parameter "sessionDescription"

    .prologue
    .line 186
    return-void
.end method

.method public onCalling(Lbaidu/net/sip/SipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 130
    return-void
.end method

.method public onError(Lbaidu/net/sip/SipSession;ILjava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 198
    return-void
.end method

.method public onInfoReceived(Ljava/lang/String;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 121
    return-void
.end method

.method public onRegistering(Lbaidu/net/sip/SipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 217
    return-void
.end method

.method public onRegistrationDone(Lbaidu/net/sip/SipSession;I)V
    .locals 0
    .parameter "session"
    .parameter "duration"

    .prologue
    .line 226
    return-void
.end method

.method public onRegistrationFailed(Lbaidu/net/sip/SipSession;ILjava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 237
    return-void
.end method

.method public onRegistrationTimeout(Lbaidu/net/sip/SipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 245
    return-void
.end method

.method public onRinging(Lbaidu/net/sip/SipSession;Lbaidu/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "caller"
    .parameter "sessionDescription"

    .prologue
    .line 141
    return-void
.end method

.method public onRingingBack(Lbaidu/net/sip/SipSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 149
    return-void
.end method
