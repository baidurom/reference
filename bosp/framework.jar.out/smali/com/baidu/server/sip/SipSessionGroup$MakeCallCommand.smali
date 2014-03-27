.class Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;
.super Ljava/util/EventObject;
.source "SipSessionGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/server/sip/SipSessionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MakeCallCommand"
.end annotation


# instance fields
.field private mSessionDescription:Ljava/lang/String;

.field private mTimeout:I

.field final synthetic this$0:Lcom/baidu/server/sip/SipSessionGroup;


# direct methods
.method public constructor <init>(Lcom/baidu/server/sip/SipSessionGroup;Lbaidu/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "peerProfile"
    .parameter "sessionDescription"

    .prologue
    .line 1978
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;-><init>(Lcom/baidu/server/sip/SipSessionGroup;Lbaidu/net/sip/SipProfile;Ljava/lang/String;I)V

    .line 1979
    return-void
.end method

.method public constructor <init>(Lcom/baidu/server/sip/SipSessionGroup;Lbaidu/net/sip/SipProfile;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "peerProfile"
    .parameter "sessionDescription"
    .parameter "timeout"

    .prologue
    .line 1982
    iput-object p1, p0, Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    .line 1983
    invoke-direct {p0, p2}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 1984
    iput-object p3, p0, Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;->mSessionDescription:Ljava/lang/String;

    .line 1985
    iput p4, p0, Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;->mTimeout:I

    .line 1986
    return-void
.end method


# virtual methods
.method public getPeerProfile()Lbaidu/net/sip/SipProfile;
    .locals 1

    .prologue
    .line 1989
    invoke-virtual {p0}, Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbaidu/net/sip/SipProfile;

    return-object v0
.end method

.method public getSessionDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1993
    iget-object v0, p0, Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;->mSessionDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 1997
    iget v0, p0, Lcom/baidu/server/sip/SipSessionGroup$MakeCallCommand;->mTimeout:I

    return v0
.end method
