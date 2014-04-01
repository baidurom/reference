.class Lcom/baidu/server/sip/SipHelper;
.super Ljava/lang/Object;
.source "SipHelper.java"


# static fields
.field public static final CALL_INFO_PARAM_EMAIL:Ljava/lang/String; = "email"

.field public static final CALL_INFO_PARAM_NAME:Ljava/lang/String; = "username"

.field public static final CALL_INFO_PARAM_PHONE:Ljava/lang/String; = "phonenumber"

.field private static final DEBUG:Z = false

.field private static final DEBUG_PING:Z = false

.field private static final TAG:Ljava/lang/String; = "com.baidu.server.sip"


# instance fields
.field private mAddressFactory:Ljavax/sip/address/AddressFactory;

.field private mHeaderFactory:Ljavax/sip/header/HeaderFactory;

.field private mMessageFactory:Ljavax/sip/message/MessageFactory;

.field private mSipProvider:Ljavax/sip/SipProvider;

.field private mSipStack:Ljavax/sip/SipStack;


# direct methods
.method public constructor <init>(Ljavax/sip/SipStack;Ljavax/sip/SipProvider;)V
    .locals 3
    .parameter "sipStack"
    .parameter "sipProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/PeerUnavailableException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const-string v1, "com.baidu.server.sip"

    const-string v2, "<====> SipHelper::SipHelper()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iput-object p1, p0, Lcom/baidu/server/sip/SipHelper;->mSipStack:Ljavax/sip/SipStack;

    .line 106
    iput-object p2, p0, Lcom/baidu/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    .line 108
    invoke-static {}, Ljavax/sip/SipFactory;->getInstance()Ljavax/sip/SipFactory;

    move-result-object v0

    .line 109
    .local v0, sipFactory:Ljavax/sip/SipFactory;
    invoke-virtual {v0}, Ljavax/sip/SipFactory;->createAddressFactory()Ljavax/sip/address/AddressFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    .line 110
    invoke-virtual {v0}, Ljavax/sip/SipFactory;->createHeaderFactory()Ljavax/sip/header/HeaderFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    .line 111
    invoke-virtual {v0}, Ljavax/sip/SipFactory;->createMessageFactory()Ljavax/sip/message/MessageFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    .line 112
    return-void
.end method

.method private createCSeqHeader(Ljava/lang/String;)Ljavax/sip/header/CSeqHeader;
    .locals 6
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x40c3880000000000L

    mul-double/2addr v2, v4

    double-to-long v0, v2

    .line 135
    .local v0, sequence:J
    iget-object v2, p0, Lcom/baidu/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v2, v0, v1, p1}, Ljavax/sip/header/HeaderFactory;->createCSeqHeader(JLjava/lang/String;)Ljavax/sip/header/CSeqHeader;

    move-result-object v2

    return-object v2
.end method

.method private createCallIdHeader()Ljavax/sip/header/CallIdHeader;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/baidu/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v0}, Ljavax/sip/SipProvider;->getNewCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    return-object v0
.end method

.method private createContactHeader(Lbaidu/net/sip/SipProfile;)Ljavax/sip/header/ContactHeader;
    .locals 2
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/server/sip/SipHelper;->createContactHeader(Lbaidu/net/sip/SipProfile;Ljava/lang/String;I)Ljavax/sip/header/ContactHeader;

    move-result-object v0

    return-object v0
.end method

.method private createContactHeader(Lbaidu/net/sip/SipProfile;Ljava/lang/String;I)Ljavax/sip/header/ContactHeader;
    .locals 5
    .parameter "profile"
    .parameter "ip"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 180
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lbaidu/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lbaidu/net/sip/SipProfile;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/baidu/server/sip/SipHelper;->getListeningPoint()Ljavax/sip/ListeningPoint;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/baidu/server/sip/SipHelper;->createSipUri(Ljava/lang/String;Ljava/lang/String;Ljavax/sip/ListeningPoint;)Ljavax/sip/address/SipURI;

    move-result-object v1

    .line 186
    .local v1, contactURI:Ljavax/sip/address/SipURI;
    :goto_0
    iget-object v2, p0, Lcom/baidu/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    invoke-interface {v2, v1}, Ljavax/sip/address/AddressFactory;->createAddress(Ljavax/sip/address/URI;)Ljavax/sip/address/Address;

    move-result-object v0

    .line 187
    .local v0, contactAddress:Ljavax/sip/address/Address;
    invoke-virtual {p1}, Lbaidu/net/sip/SipProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljavax/sip/address/Address;->setDisplayName(Ljava/lang/String;)V

    .line 189
    iget-object v2, p0, Lcom/baidu/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v2, v0}, Ljavax/sip/header/HeaderFactory;->createContactHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/ContactHeader;

    move-result-object v2

    return-object v2

    .line 180
    .end local v0           #contactAddress:Ljavax/sip/address/Address;
    .end local v1           #contactURI:Ljavax/sip/address/SipURI;
    :cond_0
    invoke-virtual {p1}, Lbaidu/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lbaidu/net/sip/SipProfile;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, p2, p3}, Lcom/baidu/server/sip/SipHelper;->createSipUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljavax/sip/address/SipURI;

    move-result-object v1

    goto :goto_0
.end method

.method private createFromHeader(Lbaidu/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/FromHeader;
    .locals 2
    .parameter "profile"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/baidu/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-virtual {p1}, Lbaidu/net/sip/SipProfile;->getSipAddress()Ljavax/sip/address/Address;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljavax/sip/header/HeaderFactory;->createFromHeader(Ljavax/sip/address/Address;Ljava/lang/String;)Ljavax/sip/header/FromHeader;

    move-result-object v0

    return-object v0
.end method

.method private createMaxForwardsHeader()Ljavax/sip/header/MaxForwardsHeader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/baidu/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const/16 v1, 0x46

    invoke-interface {v0, v1}, Ljavax/sip/header/HeaderFactory;->createMaxForwardsHeader(I)Ljavax/sip/header/MaxForwardsHeader;

    move-result-object v0

    return-object v0
.end method

.method private createMaxForwardsHeader(I)Ljavax/sip/header/MaxForwardsHeader;
    .locals 1
    .parameter "max"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/baidu/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v0, p1}, Ljavax/sip/header/HeaderFactory;->createMaxForwardsHeader(I)Ljavax/sip/header/MaxForwardsHeader;

    move-result-object v0

    return-object v0
.end method

.method private createRequest(Ljava/lang/String;Lbaidu/net/sip/SipProfile;Lbaidu/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;
    .locals 10
    .parameter "requestType"
    .parameter "caller"
    .parameter "callee"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-direct {p0, p2, p4}, Lcom/baidu/server/sip/SipHelper;->createFromHeader(Lbaidu/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/FromHeader;

    move-result-object v5

    .line 294
    .local v5, fromHeader:Ljavax/sip/header/FromHeader;
    invoke-direct {p0, p3}, Lcom/baidu/server/sip/SipHelper;->createToHeader(Lbaidu/net/sip/SipProfile;)Ljavax/sip/header/ToHeader;

    move-result-object v6

    .line 295
    .local v6, toHeader:Ljavax/sip/header/ToHeader;
    invoke-virtual {p3}, Lbaidu/net/sip/SipProfile;->getUri()Ljavax/sip/address/SipURI;

    move-result-object v1

    .line 296
    .local v1, requestURI:Ljavax/sip/address/SipURI;
    invoke-direct {p0}, Lcom/baidu/server/sip/SipHelper;->createViaHeaders()Ljava/util/List;

    move-result-object v7

    .line 297
    .local v7, viaHeaders:Ljava/util/List;,"Ljava/util/List<Ljavax/sip/header/ViaHeader;>;"
    invoke-direct {p0}, Lcom/baidu/server/sip/SipHelper;->createCallIdHeader()Ljavax/sip/header/CallIdHeader;

    move-result-object v3

    .line 298
    .local v3, callIdHeader:Ljavax/sip/header/CallIdHeader;
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipHelper;->createCSeqHeader(Ljava/lang/String;)Ljavax/sip/header/CSeqHeader;

    move-result-object v4

    .line 299
    .local v4, cSeqHeader:Ljavax/sip/header/CSeqHeader;
    invoke-direct {p0}, Lcom/baidu/server/sip/SipHelper;->createMaxForwardsHeader()Ljavax/sip/header/MaxForwardsHeader;

    move-result-object v8

    .line 301
    .local v8, maxForwards:Ljavax/sip/header/MaxForwardsHeader;
    iget-object v0, p0, Lcom/baidu/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    move-object v2, p1

    invoke-interface/range {v0 .. v8}, Ljavax/sip/message/MessageFactory;->createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;)Ljavax/sip/message/Request;

    move-result-object v9

    .line 305
    .local v9, request:Ljavax/sip/message/Request;
    invoke-direct {p0, p2}, Lcom/baidu/server/sip/SipHelper;->createContactHeader(Lbaidu/net/sip/SipProfile;)Ljavax/sip/header/ContactHeader;

    move-result-object v0

    invoke-interface {v9, v0}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 306
    return-object v9
.end method

.method private createRequest(Ljava/lang/String;Lbaidu/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;
    .locals 15
    .parameter "requestType"
    .parameter "userProfile"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 257
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/baidu/server/sip/SipHelper;->createFromHeader(Lbaidu/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/FromHeader;

    move-result-object v7

    .line 258
    .local v7, fromHeader:Ljavax/sip/header/FromHeader;
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/baidu/server/sip/SipHelper;->createToHeader(Lbaidu/net/sip/SipProfile;)Ljavax/sip/header/ToHeader;

    move-result-object v8

    .line 260
    .local v8, toHeader:Ljavax/sip/header/ToHeader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lbaidu/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 261
    .local v11, replaceStr:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    invoke-virtual/range {p2 .. p2}, Lbaidu/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v4

    const-string v14, ""

    invoke-virtual {v4, v11, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax/sip/address/AddressFactory;->createSipURI(Ljava/lang/String;)Ljavax/sip/address/SipURI;

    move-result-object v3

    .line 264
    .local v3, requestURI:Ljavax/sip/address/SipURI;
    invoke-direct {p0}, Lcom/baidu/server/sip/SipHelper;->createViaHeaders()Ljava/util/List;

    move-result-object v9

    .line 265
    .local v9, viaHeaders:Ljava/util/List;,"Ljava/util/List<Ljavax/sip/header/ViaHeader;>;"
    invoke-direct {p0}, Lcom/baidu/server/sip/SipHelper;->createCallIdHeader()Ljavax/sip/header/CallIdHeader;

    move-result-object v5

    .line 266
    .local v5, callIdHeader:Ljavax/sip/header/CallIdHeader;
    invoke-direct/range {p0 .. p1}, Lcom/baidu/server/sip/SipHelper;->createCSeqHeader(Ljava/lang/String;)Ljavax/sip/header/CSeqHeader;

    move-result-object v6

    .line 267
    .local v6, cSeqHeader:Ljavax/sip/header/CSeqHeader;
    invoke-direct {p0}, Lcom/baidu/server/sip/SipHelper;->createMaxForwardsHeader()Ljavax/sip/header/MaxForwardsHeader;

    move-result-object v10

    .line 268
    .local v10, maxForwards:Ljavax/sip/header/MaxForwardsHeader;
    iget-object v2, p0, Lcom/baidu/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    move-object/from16 v4, p1

    invoke-interface/range {v2 .. v10}, Ljavax/sip/message/MessageFactory;->createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;)Ljavax/sip/message/Request;

    move-result-object v12

    .line 271
    .local v12, request:Ljavax/sip/message/Request;
    iget-object v2, p0, Lcom/baidu/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v4, "User-Agent"

    const-string v14, "SIPAUA/0.1.001"

    invoke-interface {v2, v4, v14}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v13

    .line 273
    .local v13, userAgentHeader:Ljavax/sip/header/Header;
    invoke-interface {v12, v13}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 274
    return-object v12
.end method

.method private createSipUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljavax/sip/address/SipURI;
    .locals 3
    .parameter "username"
    .parameter "transport"
    .parameter "ip"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 205
    iget-object v2, p0, Lcom/baidu/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    invoke-interface {v2, p1, p3}, Ljavax/sip/address/AddressFactory;->createSipURI(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/address/SipURI;

    move-result-object v1

    .line 207
    .local v1, uri:Ljavax/sip/address/SipURI;
    :try_start_0
    invoke-interface {v1, p4}, Ljavax/sip/address/SipURI;->setPort(I)V

    .line 208
    invoke-interface {v1, p2}, Ljavax/sip/address/SipURI;->setTransportParam(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    return-object v1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Ljavax/sip/InvalidArgumentException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private createSipUri(Ljava/lang/String;Ljava/lang/String;Ljavax/sip/ListeningPoint;)Ljavax/sip/address/SipURI;
    .locals 2
    .parameter "username"
    .parameter "transport"
    .parameter "lp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-interface {p3}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Ljavax/sip/ListeningPoint;->getPort()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/baidu/server/sip/SipHelper;->createSipUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljavax/sip/address/SipURI;

    move-result-object v0

    return-object v0
.end method

.method private createToHeader(Lbaidu/net/sip/SipProfile;)Ljavax/sip/header/ToHeader;
    .locals 1
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/server/sip/SipHelper;->createToHeader(Lbaidu/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/ToHeader;

    move-result-object v0

    return-object v0
.end method

.method private createToHeader(Lbaidu/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/header/ToHeader;
    .locals 2
    .parameter "profile"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/baidu/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-virtual {p1}, Lbaidu/net/sip/SipProfile;->getSipAddress()Ljavax/sip/address/Address;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljavax/sip/header/HeaderFactory;->createToHeader(Ljavax/sip/address/Address;Ljava/lang/String;)Ljavax/sip/header/ToHeader;

    move-result-object v0

    return-object v0
.end method

.method private createViaHeaders()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavax/sip/header/ViaHeader;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 163
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 164
    .local v2, viaHeaders:Ljava/util/List;,"Ljava/util/List<Ljavax/sip/header/ViaHeader;>;"
    invoke-direct {p0}, Lcom/baidu/server/sip/SipHelper;->getListeningPoint()Ljavax/sip/ListeningPoint;

    move-result-object v0

    .line 165
    .local v0, lp:Ljavax/sip/ListeningPoint;
    iget-object v3, p0, Lcom/baidu/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v0}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljavax/sip/ListeningPoint;->getPort()I

    move-result v5

    invoke-interface {v0}, Ljavax/sip/ListeningPoint;->getTransport()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Ljavax/sip/header/HeaderFactory;->createViaHeader(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ViaHeader;

    move-result-object v1

    .line 167
    .local v1, viaHeader:Ljavax/sip/header/ViaHeader;
    invoke-interface {v1}, Ljavax/sip/header/ViaHeader;->setRPort()V

    .line 168
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    return-object v2
.end method

.method private createWildcardContactHeader()Ljavax/sip/header/ContactHeader;
    .locals 2

    .prologue
    .line 193
    iget-object v1, p0, Lcom/baidu/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v1}, Ljavax/sip/header/HeaderFactory;->createContactHeader()Ljavax/sip/header/ContactHeader;

    move-result-object v0

    .line 194
    .local v0, contactHeader:Ljavax/sip/header/ContactHeader;
    invoke-interface {v0}, Ljavax/sip/header/ContactHeader;->setWildCard()V

    .line 195
    return-object v0
.end method

.method public static getCallId(Ljava/util/EventObject;)Ljava/lang/String;
    .locals 4
    .parameter "event"

    .prologue
    .line 566
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 587
    :goto_0
    return-object v3

    .line 567
    :cond_0
    instance-of v3, p0, Ljavax/sip/RequestEvent;

    if-eqz v3, :cond_1

    .line 568
    check-cast p0, Ljavax/sip/RequestEvent;

    .end local p0
    invoke-virtual {p0}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/server/sip/SipHelper;->getCallId(Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 569
    .restart local p0
    :cond_1
    instance-of v3, p0, Ljavax/sip/ResponseEvent;

    if-eqz v3, :cond_2

    .line 570
    check-cast p0, Ljavax/sip/ResponseEvent;

    .end local p0
    invoke-virtual {p0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/server/sip/SipHelper;->getCallId(Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 571
    .restart local p0
    :cond_2
    instance-of v3, p0, Ljavax/sip/DialogTerminatedEvent;

    if-eqz v3, :cond_3

    move-object v3, p0

    .line 572
    check-cast v3, Ljavax/sip/DialogTerminatedEvent;

    invoke-virtual {v3}, Ljavax/sip/DialogTerminatedEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    .line 573
    .local v0, dialog:Ljavax/sip/Dialog;
    check-cast p0, Ljavax/sip/DialogTerminatedEvent;

    .end local p0
    invoke-virtual {p0}, Ljavax/sip/DialogTerminatedEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/server/sip/SipHelper;->getCallId(Ljavax/sip/Dialog;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 574
    .end local v0           #dialog:Ljavax/sip/Dialog;
    .restart local p0
    :cond_3
    instance-of v3, p0, Ljavax/sip/TransactionTerminatedEvent;

    if-eqz v3, :cond_5

    move-object v1, p0

    .line 575
    check-cast v1, Ljavax/sip/TransactionTerminatedEvent;

    .line 576
    .local v1, e:Ljavax/sip/TransactionTerminatedEvent;
    invoke-virtual {v1}, Ljavax/sip/TransactionTerminatedEvent;->isServerTransaction()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljavax/sip/TransactionTerminatedEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Lcom/baidu/server/sip/SipHelper;->getCallId(Ljavax/sip/Transaction;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljavax/sip/TransactionTerminatedEvent;->getClientTransaction()Ljavax/sip/ClientTransaction;

    move-result-object v3

    goto :goto_1

    .line 580
    .end local v1           #e:Ljavax/sip/TransactionTerminatedEvent;
    :cond_5
    invoke-virtual {p0}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v2

    .line 581
    .local v2, source:Ljava/lang/Object;
    instance-of v3, v2, Ljavax/sip/Transaction;

    if-eqz v3, :cond_6

    .line 582
    check-cast v2, Ljavax/sip/Transaction;

    .end local v2           #source:Ljava/lang/Object;
    invoke-static {v2}, Lcom/baidu/server/sip/SipHelper;->getCallId(Ljavax/sip/Transaction;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 583
    .restart local v2       #source:Ljava/lang/Object;
    :cond_6
    instance-of v3, v2, Ljavax/sip/Dialog;

    if-eqz v3, :cond_7

    .line 584
    check-cast v2, Ljavax/sip/Dialog;

    .end local v2           #source:Ljava/lang/Object;
    invoke-static {v2}, Lcom/baidu/server/sip/SipHelper;->getCallId(Ljavax/sip/Dialog;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 587
    .restart local v2       #source:Ljava/lang/Object;
    :cond_7
    const-string v3, ""

    goto :goto_0
.end method

.method private static getCallId(Ljavax/sip/Dialog;)Ljava/lang/String;
    .locals 1
    .parameter "dialog"

    .prologue
    .line 602
    invoke-interface {p0}, Ljavax/sip/Dialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCallId(Ljavax/sip/Transaction;)Ljava/lang/String;
    .locals 1
    .parameter "transaction"

    .prologue
    .line 591
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljavax/sip/Transaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/server/sip/SipHelper;->getCallId(Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static getCallId(Ljavax/sip/message/Message;)Ljava/lang/String;
    .locals 2
    .parameter "message"

    .prologue
    .line 596
    const-string v1, "Call-ID"

    invoke-interface {p0, v1}, Ljavax/sip/message/Message;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/CallIdHeader;

    .line 598
    .local v0, callIdHeader:Ljavax/sip/header/CallIdHeader;
    invoke-interface {v0}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getListeningPoint()Ljavax/sip/ListeningPoint;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v2, p0, Lcom/baidu/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    const-string v3, "UDP"

    invoke-interface {v2, v3}, Ljavax/sip/SipProvider;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v0

    .line 150
    .local v0, lp:Ljavax/sip/ListeningPoint;
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/baidu/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    const-string v3, "TCP"

    invoke-interface {v2, v3}, Ljavax/sip/SipProvider;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v0

    .line 151
    :cond_0
    if-nez v0, :cond_1

    .line 152
    iget-object v2, p0, Lcom/baidu/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v2}, Ljavax/sip/SipProvider;->getListeningPoints()[Ljavax/sip/ListeningPoint;

    move-result-object v1

    .line 153
    .local v1, lps:[Ljavax/sip/ListeningPoint;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 155
    .end local v1           #lps:[Ljavax/sip/ListeningPoint;
    :cond_1
    if-nez v0, :cond_2

    .line 156
    new-instance v2, Ljavax/sip/SipException;

    const-string/jumbo v3, "no listening point is available"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 158
    :cond_2
    return-object v0
.end method


# virtual methods
.method public getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;
    .locals 3
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 385
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v1

    .line 386
    .local v1, transaction:Ljavax/sip/ServerTransaction;
    if-nez v1, :cond_0

    .line 387
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    .line 388
    .local v0, request:Ljavax/sip/message/Request;
    iget-object v2, p0, Lcom/baidu/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v2, v0}, Ljavax/sip/SipProvider;->getNewServerTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ServerTransaction;

    move-result-object v1

    .line 390
    .end local v0           #request:Ljavax/sip/message/Request;
    .end local v1           #transaction:Ljavax/sip/ServerTransaction;
    :cond_0
    return-object v1
.end method

.method public handleChallenge(Ljavax/sip/ResponseEvent;Lgov/nist/javax/sip/clientauthutils/AccountManager;)Ljavax/sip/ClientTransaction;
    .locals 6
    .parameter "responseEvent"
    .parameter "accountManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v3, p0, Lcom/baidu/server/sip/SipHelper;->mSipStack:Ljavax/sip/SipStack;

    check-cast v3, Lgov/nist/javax/sip/SipStackExt;

    iget-object v4, p0, Lcom/baidu/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v3, p2, v4}, Lgov/nist/javax/sip/SipStackExt;->getAuthenticationHelper(Lgov/nist/javax/sip/clientauthutils/AccountManager;Ljavax/sip/header/HeaderFactory;)Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;

    move-result-object v0

    .line 282
    .local v0, authenticationHelper:Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getClientTransaction()Ljavax/sip/ClientTransaction;

    move-result-object v2

    .line 283
    .local v2, tid:Ljavax/sip/ClientTransaction;
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    const/4 v5, 0x5

    invoke-interface {v0, v3, v2, v4, v5}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;->handleChallenge(Ljavax/sip/message/Response;Ljavax/sip/ClientTransaction;Ljavax/sip/SipProvider;I)Ljavax/sip/ClientTransaction;

    move-result-object v1

    .line 287
    .local v1, ct:Ljavax/sip/ClientTransaction;
    invoke-interface {v1}, Ljavax/sip/ClientTransaction;->sendRequest()V

    .line 288
    return-object v1
.end method

.method public sendBye(Ljavax/sip/Dialog;)V
    .locals 3
    .parameter "dialog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 487
    const-string v1, "com.baidu.server.sip"

    const-string v2, "<====> SipHelper::sendBye()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v1, "BYE"

    invoke-interface {p1, v1}, Ljavax/sip/Dialog;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v0

    .line 490
    .local v0, byeRequest:Ljavax/sip/message/Request;
    iget-object v1, p0, Lcom/baidu/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v1, v0}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v1

    invoke-interface {p1, v1}, Ljavax/sip/Dialog;->sendRequest(Ljavax/sip/ClientTransaction;)V

    .line 491
    return-void
.end method

.method public sendCancel(Ljavax/sip/ClientTransaction;)V
    .locals 3
    .parameter "inviteTransaction"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 495
    const-string v1, "com.baidu.server.sip"

    const-string v2, "<====> SipHelper::sendCancel()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-interface {p1}, Ljavax/sip/ClientTransaction;->createCancel()Ljavax/sip/message/Request;

    move-result-object v0

    .line 498
    .local v0, cancelRequest:Ljavax/sip/message/Request;
    iget-object v1, p0, Lcom/baidu/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v1, v0}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/ClientTransaction;->sendRequest()V

    .line 499
    return-void
.end method

.method public sendInfo(Ljavax/sip/Dialog;Ljava/lang/String;)V
    .locals 5
    .parameter "dialog"
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 503
    const-string v2, "com.baidu.server.sip"

    const-string v3, "<====> SipHelper::sendInfo()"

    invoke-static {v2, v3}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :try_start_0
    const-string v2, "INFO"

    invoke-interface {p1, v2}, Ljavax/sip/Dialog;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v1

    .line 506
    .local v1, infoRequest:Ljavax/sip/message/Request;
    iget-object v2, p0, Lcom/baidu/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string/jumbo v3, "text"

    const-string/jumbo v4, "plain"

    invoke-interface {v2, v3, v4}, Ljavax/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljavax/sip/message/Request;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 508
    iget-object v2, p0, Lcom/baidu/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v2, v1}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v2

    invoke-interface {p1, v2}, Ljavax/sip/Dialog;->sendRequest(Ljavax/sip/ClientTransaction;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    return-void

    .line 509
    .end local v1           #infoRequest:Ljavax/sip/message/Request;
    :catch_0
    move-exception v0

    .line 510
    .local v0, e:Ljava/text/ParseException;
    new-instance v2, Ljavax/sip/SipException;

    const-string/jumbo v3, "sendInfo()"

    invoke-direct {v2, v3, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public sendInvite(Lbaidu/net/sip/SipProfile;Lbaidu/net/sip/SipProfile;Ljava/lang/String;Ljava/lang/String;Lgov/nist/javax/sip/header/extensions/ReferredByHeader;Ljava/lang/String;)Ljavax/sip/ClientTransaction;
    .locals 12
    .parameter "caller"
    .parameter "callee"
    .parameter "sessionDescription"
    .parameter "tag"
    .parameter "referredBy"
    .parameter "replaces"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 312
    const-string v9, "com.baidu.server.sip"

    const-string v10, "<====> SipHelper::sendInvite()"

    invoke-static {v9, v10}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :try_start_0
    const-string v9, "INVITE"

    move-object/from16 v0, p4

    invoke-direct {p0, v9, p1, p2, v0}, Lcom/baidu/server/sip/SipHelper;->createRequest(Ljava/lang/String;Lbaidu/net/sip/SipProfile;Lbaidu/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v7

    .line 315
    .local v7, request:Ljavax/sip/message/Request;
    if-eqz p5, :cond_0

    move-object/from16 v0, p5

    invoke-interface {v7, v0}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 316
    :cond_0
    if-eqz p6, :cond_1

    .line 317
    iget-object v9, p0, Lcom/baidu/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v10, "Replaces"

    move-object/from16 v0, p6

    invoke-interface {v9, v10, v0}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v9

    invoke-interface {v7, v9}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 322
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/baidu/server/sip/SipHelper;->mAddressFactory:Ljavax/sip/address/AddressFactory;

    const-string v10, "info"

    const-string v11, "baidu"

    invoke-interface {v9, v10, v11}, Ljavax/sip/address/AddressFactory;->createSipURI(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/address/SipURI;

    move-result-object v1

    .line 323
    .local v1, baiduInfoURI:Ljavax/sip/address/SipURI;
    iget-object v9, p0, Lcom/baidu/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v9, v1}, Ljavax/sip/header/HeaderFactory;->createCallInfoHeader(Ljavax/sip/address/URI;)Ljavax/sip/header/CallInfoHeader;

    move-result-object v2

    .line 325
    .local v2, callInfoHeader:Ljavax/sip/header/CallInfoHeader;
    invoke-virtual {p1}, Lbaidu/net/sip/SipProfile;->getBaiduAccountName()Ljava/lang/String;

    move-result-object v8

    .line 326
    .local v8, username:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 327
    const-string/jumbo v9, "username"

    const-string v10, "GBK"

    invoke-static {v8, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Ljavax/sip/header/CallInfoHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_2
    invoke-virtual {p1}, Lbaidu/net/sip/SipProfile;->getEmail()Ljava/lang/String;

    move-result-object v5

    .line 331
    .local v5, email:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 332
    const-string v9, "email"

    const-string v10, "UTF-8"

    invoke-static {v5, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Ljavax/sip/header/CallInfoHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_3
    invoke-virtual {p1}, Lbaidu/net/sip/SipProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    .line 336
    .local v6, phone:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 337
    const-string/jumbo v9, "phonenumber"

    invoke-interface {v2, v9, v6}, Ljavax/sip/header/CallInfoHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_4
    invoke-interface {v7, v2}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 344
    .end local v1           #baiduInfoURI:Ljavax/sip/address/SipURI;
    .end local v2           #callInfoHeader:Ljavax/sip/header/CallInfoHeader;
    .end local v5           #email:Ljava/lang/String;
    .end local v6           #phone:Ljava/lang/String;
    .end local v8           #username:Ljava/lang/String;
    :goto_0
    :try_start_2
    iget-object v9, p0, Lcom/baidu/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v10, "application"

    const-string/jumbo v11, "sdp"

    invoke-interface {v9, v10, v11}, Ljavax/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;

    move-result-object v9

    invoke-interface {v7, p3, v9}, Ljavax/sip/message/Request;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 347
    iget-object v9, p0, Lcom/baidu/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v9, v7}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v3

    .line 350
    .local v3, clientTransaction:Ljavax/sip/ClientTransaction;
    invoke-interface {v3}, Ljavax/sip/ClientTransaction;->sendRequest()V

    .line 351
    return-object v3

    .line 340
    .end local v3           #clientTransaction:Ljavax/sip/ClientTransaction;
    :catch_0
    move-exception v4

    .line 341
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 352
    .end local v4           #e:Ljava/io/UnsupportedEncodingException;
    .end local v7           #request:Ljavax/sip/message/Request;
    :catch_1
    move-exception v4

    .line 353
    .local v4, e:Ljava/text/ParseException;
    new-instance v9, Ljavax/sip/SipException;

    const-string/jumbo v10, "sendInvite()"

    invoke-direct {v9, v10, v4}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method public sendInviteAck(Ljavax/sip/ResponseEvent;Ljavax/sip/Dialog;)V
    .locals 6
    .parameter "event"
    .parameter "dialog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 477
    const-string v4, "com.baidu.server.sip"

    const-string v5, "<====> SipHelper::sendInviteAck()"

    invoke-static {v4, v5}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v3

    .line 479
    .local v3, response:Ljavax/sip/message/Response;
    const-string v4, "CSeq"

    invoke-interface {v3, v4}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v4

    check-cast v4, Ljavax/sip/header/CSeqHeader;

    invoke-interface {v4}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v1

    .line 481
    .local v1, cseq:J
    invoke-interface {p2, v1, v2}, Ljavax/sip/Dialog;->createAck(J)Ljavax/sip/message/Request;

    move-result-object v0

    .line 483
    .local v0, ack:Ljavax/sip/message/Request;
    invoke-interface {p2, v0}, Ljavax/sip/Dialog;->sendAck(Ljavax/sip/message/Request;)V

    .line 484
    return-void
.end method

.method public sendInviteBusyHere(Ljavax/sip/RequestEvent;Ljavax/sip/ServerTransaction;)V
    .locals 5
    .parameter "event"
    .parameter "inviteTransaction"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 453
    const-string v3, "com.baidu.server.sip"

    const-string v4, "<====> SipHelper::sendInviteBusyHere()"

    invoke-static {v3, v4}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :try_start_0
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    .line 456
    .local v1, request:Ljavax/sip/message/Request;
    iget-object v3, p0, Lcom/baidu/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    const/16 v4, 0x1e6

    invoke-interface {v3, v4, v1}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    move-result-object v2

    .line 459
    .local v2, response:Ljavax/sip/message/Response;
    if-nez p2, :cond_0

    .line 460
    invoke-virtual {p0, p1}, Lcom/baidu/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    move-result-object p2

    .line 463
    :cond_0
    invoke-interface {p2}, Ljavax/sip/ServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v3

    sget-object v4, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    if-eq v3, v4, :cond_1

    .line 465
    invoke-interface {p2, v2}, Ljavax/sip/ServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :cond_1
    return-void

    .line 467
    .end local v1           #request:Ljavax/sip/message/Request;
    .end local v2           #response:Ljavax/sip/message/Response;
    :catch_0
    move-exception v0

    .line 468
    .local v0, e:Ljava/text/ParseException;
    new-instance v3, Ljavax/sip/SipException;

    const-string/jumbo v4, "sendInviteBusyHere()"

    invoke-direct {v3, v4, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public sendInviteOk(Ljavax/sip/RequestEvent;Lbaidu/net/sip/SipProfile;Ljava/lang/String;Ljavax/sip/ServerTransaction;Ljava/lang/String;I)Ljavax/sip/ServerTransaction;
    .locals 6
    .parameter "event"
    .parameter "localProfile"
    .parameter "sessionDescription"
    .parameter "inviteTransaction"
    .parameter "externalIp"
    .parameter "externalPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 425
    const-string v3, "com.baidu.server.sip"

    const-string v4, "<====> SipHelper::sendInviteOk()"

    invoke-static {v3, v4}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :try_start_0
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    .line 428
    .local v1, request:Ljavax/sip/message/Request;
    iget-object v3, p0, Lcom/baidu/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    const/16 v4, 0xc8

    invoke-interface {v3, v4, v1}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    move-result-object v2

    .line 430
    .local v2, response:Ljavax/sip/message/Response;
    invoke-direct {p0, p2, p5, p6}, Lcom/baidu/server/sip/SipHelper;->createContactHeader(Lbaidu/net/sip/SipProfile;Ljava/lang/String;I)Ljavax/sip/header/ContactHeader;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/sip/message/Response;->addHeader(Ljavax/sip/header/Header;)V

    .line 432
    iget-object v3, p0, Lcom/baidu/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v4, "application"

    const-string/jumbo v5, "sdp"

    invoke-interface {v3, v4, v5}, Ljavax/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;

    move-result-object v3

    invoke-interface {v2, p3, v3}, Ljavax/sip/message/Response;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 436
    if-nez p4, :cond_0

    .line 437
    invoke-virtual {p0, p1}, Lcom/baidu/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    move-result-object p4

    .line 440
    :cond_0
    invoke-interface {p4}, Ljavax/sip/ServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v3

    sget-object v4, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    if-eq v3, v4, :cond_1

    .line 442
    invoke-interface {p4, v2}, Ljavax/sip/ServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :cond_1
    return-object p4

    .line 446
    .end local v1           #request:Ljavax/sip/message/Request;
    .end local v2           #response:Ljavax/sip/message/Response;
    :catch_0
    move-exception v0

    .line 447
    .local v0, e:Ljava/text/ParseException;
    new-instance v3, Ljavax/sip/SipException;

    const-string/jumbo v4, "sendInviteOk()"

    invoke-direct {v3, v4, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public sendInviteRequestTerminated(Ljavax/sip/message/Request;Ljavax/sip/ServerTransaction;)V
    .locals 4
    .parameter "inviteRequest"
    .parameter "inviteTransaction"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 554
    const-string v2, "com.baidu.server.sip"

    const-string v3, "<====> SipHelper::sendInviteRequestTerminated()"

    invoke-static {v2, v3}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :try_start_0
    iget-object v2, p0, Lcom/baidu/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    const/16 v3, 0x1e7

    invoke-interface {v2, v3, p1}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    move-result-object v1

    .line 559
    .local v1, response:Ljavax/sip/message/Response;
    invoke-interface {p2, v1}, Ljavax/sip/ServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    return-void

    .line 560
    .end local v1           #response:Ljavax/sip/message/Response;
    :catch_0
    move-exception v0

    .line 561
    .local v0, e:Ljava/text/ParseException;
    new-instance v2, Ljavax/sip/SipException;

    const-string/jumbo v3, "sendInviteRequestTerminated()"

    invoke-direct {v2, v3, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public sendOptions(Lbaidu/net/sip/SipProfile;Lbaidu/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/ClientTransaction;
    .locals 5
    .parameter "caller"
    .parameter "callee"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 217
    const-string v3, "com.baidu.server.sip"

    const-string v4, "<====> SipHelper::sendOptions()"

    invoke-static {v3, v4}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    if-ne p1, p2, :cond_0

    :try_start_0
    const-string v3, "OPTIONS"

    invoke-direct {p0, v3, p1, p3}, Lcom/baidu/server/sip/SipHelper;->createRequest(Ljava/lang/String;Lbaidu/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v2

    .line 223
    .local v2, request:Ljavax/sip/message/Request;
    :goto_0
    iget-object v3, p0, Lcom/baidu/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v3, v2}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v0

    .line 225
    .local v0, clientTransaction:Ljavax/sip/ClientTransaction;
    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->sendRequest()V

    .line 226
    return-object v0

    .line 219
    .end local v0           #clientTransaction:Ljavax/sip/ClientTransaction;
    .end local v2           #request:Ljavax/sip/message/Request;
    :cond_0
    const-string v3, "OPTIONS"

    invoke-direct {p0, v3, p1, p2, p3}, Lcom/baidu/server/sip/SipHelper;->createRequest(Ljava/lang/String;Lbaidu/net/sip/SipProfile;Lbaidu/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 227
    :catch_0
    move-exception v1

    .line 228
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljavax/sip/SipException;

    const-string/jumbo v4, "sendOptions()"

    invoke-direct {v3, v4, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public sendReferNotify(Ljavax/sip/Dialog;Ljava/lang/String;)V
    .locals 5
    .parameter "dialog"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 534
    const-string v2, "com.baidu.server.sip"

    const-string v3, "<====> SipHelper::sendReferNotify()"

    invoke-static {v2, v3}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :try_start_0
    const-string v2, "NOTIFY"

    invoke-interface {p1, v2}, Ljavax/sip/Dialog;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v1

    .line 537
    .local v1, request:Ljavax/sip/message/Request;
    iget-object v2, p0, Lcom/baidu/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v3, "active;expires=60"

    invoke-interface {v2, v3}, Ljavax/sip/header/HeaderFactory;->createSubscriptionStateHeader(Ljava/lang/String;)Ljavax/sip/header/SubscriptionStateHeader;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 540
    iget-object v2, p0, Lcom/baidu/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string/jumbo v3, "message"

    const-string/jumbo v4, "sipfrag"

    invoke-interface {v2, v3, v4}, Ljavax/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljavax/sip/message/Request;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 543
    iget-object v2, p0, Lcom/baidu/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string/jumbo v3, "refer"

    invoke-interface {v2, v3}, Ljavax/sip/header/HeaderFactory;->createEventHeader(Ljava/lang/String;)Ljavax/sip/header/EventHeader;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 546
    iget-object v2, p0, Lcom/baidu/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v2, v1}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v2

    invoke-interface {p1, v2}, Ljavax/sip/Dialog;->sendRequest(Ljavax/sip/ClientTransaction;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    return-void

    .line 547
    .end local v1           #request:Ljavax/sip/message/Request;
    :catch_0
    move-exception v0

    .line 548
    .local v0, e:Ljava/text/ParseException;
    new-instance v2, Ljavax/sip/SipException;

    const-string/jumbo v3, "sendReferNotify()"

    invoke-direct {v2, v3, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public sendRegister(Lbaidu/net/sip/SipProfile;Ljava/lang/String;I)Ljavax/sip/ClientTransaction;
    .locals 5
    .parameter "userProfile"
    .parameter "tag"
    .parameter "expiry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 234
    const-string v3, "com.baidu.server.sip"

    const-string v4, "<====> SipHelper::sendRegister()"

    invoke-static {v3, v4}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :try_start_0
    const-string v3, "REGISTER"

    invoke-direct {p0, v3, p1, p2}, Lcom/baidu/server/sip/SipHelper;->createRequest(Ljava/lang/String;Lbaidu/net/sip/SipProfile;Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v2

    .line 237
    .local v2, request:Ljavax/sip/message/Request;
    if-nez p3, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/baidu/server/sip/SipHelper;->createWildcardContactHeader()Ljavax/sip/header/ContactHeader;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 244
    :goto_0
    iget-object v3, p0, Lcom/baidu/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface {v3, p3}, Ljavax/sip/header/HeaderFactory;->createExpiresHeader(I)Ljavax/sip/header/ExpiresHeader;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 246
    iget-object v3, p0, Lcom/baidu/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v3, v2}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v0

    .line 248
    .local v0, clientTransaction:Ljavax/sip/ClientTransaction;
    invoke-interface {v0}, Ljavax/sip/ClientTransaction;->sendRequest()V

    .line 249
    return-object v0

    .line 242
    .end local v0           #clientTransaction:Ljavax/sip/ClientTransaction;
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipHelper;->createContactHeader(Lbaidu/net/sip/SipProfile;)Ljavax/sip/header/ContactHeader;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    .end local v2           #request:Ljavax/sip/message/Request;
    :catch_0
    move-exception v1

    .line 251
    .local v1, e:Ljava/text/ParseException;
    new-instance v3, Ljavax/sip/SipException;

    const-string/jumbo v4, "sendRegister()"

    invoke-direct {v3, v4, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public sendReinvite(Ljavax/sip/Dialog;Ljava/lang/String;)Ljavax/sip/ClientTransaction;
    .locals 7
    .parameter "dialog"
    .parameter "sessionDescription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 359
    const-string v4, "com.baidu.server.sip"

    const-string v5, "<====> SipHelper::sendReinvite()"

    invoke-static {v4, v5}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :try_start_0
    const-string v4, "INVITE"

    invoke-interface {p1, v4}, Ljavax/sip/Dialog;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v2

    .line 362
    .local v2, request:Ljavax/sip/message/Request;
    iget-object v4, p0, Lcom/baidu/server/sip/SipHelper;->mHeaderFactory:Ljavax/sip/header/HeaderFactory;

    const-string v5, "application"

    const-string/jumbo v6, "sdp"

    invoke-interface {v4, v5, v6}, Ljavax/sip/header/HeaderFactory;->createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;

    move-result-object v4

    invoke-interface {v2, p2, v4}, Ljavax/sip/message/Request;->setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V

    .line 370
    const-string v4, "Via"

    invoke-interface {v2, v4}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v3

    check-cast v3, Ljavax/sip/header/ViaHeader;

    .line 371
    .local v3, viaHeader:Ljavax/sip/header/ViaHeader;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljavax/sip/header/ViaHeader;->setRPort()V

    .line 373
    :cond_0
    iget-object v4, p0, Lcom/baidu/server/sip/SipHelper;->mSipProvider:Ljavax/sip/SipProvider;

    invoke-interface {v4, v2}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v0

    .line 376
    .local v0, clientTransaction:Ljavax/sip/ClientTransaction;
    invoke-interface {p1, v0}, Ljavax/sip/Dialog;->sendRequest(Ljavax/sip/ClientTransaction;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    return-object v0

    .line 378
    .end local v0           #clientTransaction:Ljavax/sip/ClientTransaction;
    .end local v2           #request:Ljavax/sip/message/Request;
    .end local v3           #viaHeader:Ljavax/sip/header/ViaHeader;
    :catch_0
    move-exception v1

    .line 379
    .local v1, e:Ljava/text/ParseException;
    new-instance v4, Ljavax/sip/SipException;

    const-string/jumbo v5, "sendReinvite()"

    invoke-direct {v4, v5, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public sendResponse(Ljavax/sip/RequestEvent;I)V
    .locals 5
    .parameter "event"
    .parameter "responseCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 517
    const-string v3, "com.baidu.server.sip"

    const-string v4, "<====> SipHelper::sendResponse()"

    invoke-static {v3, v4}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :try_start_0
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    .line 520
    .local v1, request:Ljavax/sip/message/Request;
    iget-object v3, p0, Lcom/baidu/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    invoke-interface {v3, p2, v1}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    move-result-object v2

    .line 526
    .local v2, response:Ljavax/sip/message/Response;
    invoke-virtual {p0, p1}, Lcom/baidu/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    move-result-object v3

    invoke-interface {v3, v2}, Ljavax/sip/ServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    return-void

    .line 527
    .end local v1           #request:Ljavax/sip/message/Request;
    .end local v2           #response:Ljavax/sip/message/Response;
    :catch_0
    move-exception v0

    .line 528
    .local v0, e:Ljava/text/ParseException;
    new-instance v3, Ljavax/sip/SipException;

    const-string/jumbo v4, "sendResponse()"

    invoke-direct {v3, v4, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public sendRinging(Ljavax/sip/RequestEvent;Ljava/lang/String;)Ljavax/sip/ServerTransaction;
    .locals 7
    .parameter "event"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 399
    const-string v5, "com.baidu.server.sip"

    const-string v6, "<====> SipHelper::sendRinging()"

    invoke-static {v5, v6}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :try_start_0
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    .line 402
    .local v1, request:Ljavax/sip/message/Request;
    invoke-virtual {p0, p1}, Lcom/baidu/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    move-result-object v4

    .line 404
    .local v4, transaction:Ljavax/sip/ServerTransaction;
    iget-object v5, p0, Lcom/baidu/server/sip/SipHelper;->mMessageFactory:Ljavax/sip/message/MessageFactory;

    const/16 v6, 0xb4

    invoke-interface {v5, v6, v1}, Ljavax/sip/message/MessageFactory;->createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;

    move-result-object v2

    .line 407
    .local v2, response:Ljavax/sip/message/Response;
    const-string v5, "To"

    invoke-interface {v2, v5}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v3

    check-cast v3, Ljavax/sip/header/ToHeader;

    .line 408
    .local v3, toHeader:Ljavax/sip/header/ToHeader;
    invoke-interface {v3, p2}, Ljavax/sip/header/ToHeader;->setTag(Ljava/lang/String;)V

    .line 409
    invoke-interface {v2, v3}, Ljavax/sip/message/Response;->addHeader(Ljavax/sip/header/Header;)V

    .line 411
    invoke-interface {v4, v2}, Ljavax/sip/ServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    return-object v4

    .line 413
    .end local v1           #request:Ljavax/sip/message/Request;
    .end local v2           #response:Ljavax/sip/message/Response;
    .end local v3           #toHeader:Ljavax/sip/header/ToHeader;
    .end local v4           #transaction:Ljavax/sip/ServerTransaction;
    :catch_0
    move-exception v0

    .line 414
    .local v0, e:Ljava/text/ParseException;
    new-instance v5, Ljavax/sip/SipException;

    const-string/jumbo v6, "sendRinging()"

    invoke-direct {v5, v6, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method
