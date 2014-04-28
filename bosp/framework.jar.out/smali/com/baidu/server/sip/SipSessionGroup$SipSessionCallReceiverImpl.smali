.class Lcom/baidu/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;
.super Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
.source "SipSessionGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/server/sip/SipSessionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipSessionCallReceiverImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/server/sip/SipSessionGroup;


# direct methods
.method public constructor <init>(Lcom/baidu/server/sip/SipSessionGroup;Lbaidu/net/sip/ISipSessionListener;)V
    .locals 2
    .parameter
    .parameter "listener"

    .prologue
    .line 462
    iput-object p1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    .line 463
    invoke-direct {p0, p1, p2}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;-><init>(Lcom/baidu/server/sip/SipSessionGroup;Lbaidu/net/sip/ISipSessionListener;)V

    .line 464
    const-string v0, "com.baidu.server.sip"

    const-string v1, "<====> SipSessionCallReceiverImpl::SipSessionCallReceiverImpl()"

    invoke-static {v0, v1}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method private processInviteWithReplaces(Ljavax/sip/RequestEvent;Lgov/nist/javax/sip/header/extensions/ReplacesHeader;)I
    .locals 7
    .parameter "event"
    .parameter "replaces"

    .prologue
    const/16 v4, 0x1e1

    .line 469
    const-string v5, "com.baidu.server.sip"

    const-string v6, "<====> SipSessionCallReceiverImpl::processInviteWithReplaces()"

    invoke-static {v5, v6}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-interface {p2}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, callId:Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/baidu/server/sip/SipSessionGroup;->access$200(Lcom/baidu/server/sip/SipSessionGroup;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    .line 472
    .local v3, session:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    if-nez v3, :cond_1

    .line 491
    :cond_0
    :goto_0
    return v4

    .line 476
    :cond_1
    iget-object v1, v3, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 477
    .local v1, dialog:Ljavax/sip/Dialog;
    if-nez v1, :cond_2

    const/16 v4, 0x25b

    goto :goto_0

    .line 479
    :cond_2
    invoke-interface {v1}, Ljavax/sip/Dialog;->getLocalTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getToTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljavax/sip/Dialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getFromTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 485
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v5

    const-string v6, "Referred-By"

    invoke-interface {v5, v6}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/extensions/ReferredByHeader;

    .line 487
    .local v2, referredBy:Lgov/nist/javax/sip/header/extensions/ReferredByHeader;
    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljavax/sip/Dialog;->getRemoteParty()Ljavax/sip/address/Address;

    move-result-object v5

    invoke-interface {v2}, Lgov/nist/javax/sip/header/extensions/ReferredByHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 491
    const/16 v4, 0xc8

    goto :goto_0
.end method

.method private processNewInviteRequest(Ljavax/sip/RequestEvent;)V
    .locals 22
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 496
    const-string v18, "com.baidu.server.sip"

    const-string v19, "<====> SipSessionCallReceiverImpl::processNewInviteRequest()"

    invoke-static/range {v18 .. v19}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual/range {p1 .. p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v18

    const-string v19, "Replaces"

    invoke-interface/range {v18 .. v19}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v15

    check-cast v15, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;

    .line 499
    .local v15, replaces:Lgov/nist/javax/sip/header/extensions/ReplacesHeader;
    const/4 v12, 0x0

    .line 500
    .local v12, newSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    if-eqz v15, :cond_2

    .line 501
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->processInviteWithReplaces(Ljavax/sip/RequestEvent;Lgov/nist/javax/sip/header/extensions/ReplacesHeader;)I

    move-result v16

    .line 506
    .local v16, response:I
    const/16 v18, 0xc8

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    move-object/from16 v18, v0

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;
    invoke-static/range {v18 .. v18}, Lcom/baidu/server/sip/SipSessionGroup;->access$200(Lcom/baidu/server/sip/SipSessionGroup;)Ljava/util/Map;

    move-result-object v18

    invoke-interface {v15}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getCallId()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    .line 510
    .local v14, replacedSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    move-object/from16 v18, v0

    iget-object v0, v14, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/baidu/server/sip/SipSessionListenerProxy;->getListener()Lbaidu/net/sip/ISipSessionListener;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    move-object/from16 v20, v0

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    invoke-static/range {v20 .. v20}, Lcom/baidu/server/sip/SipSessionGroup;->access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/baidu/server/sip/SipHelper;->getServerTransaction(Ljavax/sip/RequestEvent;)Ljavax/sip/ServerTransaction;

    move-result-object v20

    const/16 v21, 0x3

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move/from16 v4, v21

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->createNewSession(Ljavax/sip/RequestEvent;Lbaidu/net/sip/ISipSessionListener;Ljavax/sip/ServerTransaction;I)Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/server/sip/SipSessionGroup;->access$400(Lcom/baidu/server/sip/SipSessionGroup;Ljavax/sip/RequestEvent;Lbaidu/net/sip/ISipSessionListener;Ljavax/sip/ServerTransaction;I)Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    move-result-object v12

    .line 514
    iget-object v0, v12, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    move-object/from16 v18, v0

    iget-object v0, v12, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Lcom/baidu/server/sip/SipSessionListenerProxy;->onCallTransferring(Lbaidu/net/sip/ISipSession;Ljava/lang/String;)V

    .line 563
    .end local v14           #replacedSession:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    .end local v16           #response:I
    :goto_0
    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->addSipSession(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V
    invoke-static {v0, v12}, Lcom/baidu/server/sip/SipSessionGroup;->access$500(Lcom/baidu/server/sip/SipSessionGroup;Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 564
    :cond_0
    return-void

    .line 517
    .restart local v16       #response:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    move-object/from16 v18, v0

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    invoke-static/range {v18 .. v18}, Lcom/baidu/server/sip/SipSessionGroup;->access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/baidu/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    goto :goto_0

    .line 521
    .end local v16           #response:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    move-object/from16 v20, v0

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    invoke-static/range {v20 .. v20}, Lcom/baidu/server/sip/SipSessionGroup;->access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->generateTag()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/baidu/server/sip/SipHelper;->sendRinging(Ljavax/sip/RequestEvent;Ljava/lang/String;)Ljavax/sip/ServerTransaction;

    move-result-object v20

    const/16 v21, 0x3

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move/from16 v4, v21

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->createNewSession(Ljavax/sip/RequestEvent;Lbaidu/net/sip/ISipSessionListener;Ljavax/sip/ServerTransaction;I)Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/server/sip/SipSessionGroup;->access$400(Lcom/baidu/server/sip/SipSessionGroup;Ljavax/sip/RequestEvent;Lbaidu/net/sip/ISipSessionListener;Ljavax/sip/ServerTransaction;I)Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    move-result-object v12

    .line 525
    invoke-virtual/range {p1 .. p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v9

    .line 526
    .local v9, message:Ljavax/sip/message/Message;
    instance-of v0, v9, Lgov/nist/javax/sip/message/SIPMessage;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v17, v9

    .line 527
    check-cast v17, Lgov/nist/javax/sip/message/SIPMessage;

    .line 528
    .local v17, sipmessage:Lgov/nist/javax/sip/message/SIPMessage;
    const-string v18, "Call-Info"

    invoke-virtual/range {v17 .. v18}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v8

    .line 529
    .local v8, listIterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/ListIterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_5

    .line 531
    :cond_3
    const-string v18, "com.baidu.server.sip"

    const-string v19, "Can NOT found Call-Info header"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    .end local v8           #listIterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    .end local v17           #sipmessage:Lgov/nist/javax/sip/message/SIPMessage;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->mProxy:Lcom/baidu/server/sip/SipSessionListenerProxy;

    move-object/from16 v18, v0

    iget-object v0, v12, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Lbaidu/net/sip/SipProfile;

    move-object/from16 v19, v0

    iget-object v0, v12, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v12, v1, v2}, Lcom/baidu/server/sip/SipSessionListenerProxy;->onRinging(Lbaidu/net/sip/ISipSession;Lbaidu/net/sip/SipProfile;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 533
    .restart local v8       #listIterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    .restart local v17       #sipmessage:Lgov/nist/javax/sip/message/SIPMessage;
    :cond_5
    :goto_1
    invoke-interface {v8}, Ljava/util/ListIterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 534
    invoke-interface {v8}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/sip/header/CallInfoHeader;

    .line 535
    .local v7, header:Ljavax/sip/header/CallInfoHeader;
    const-string/jumbo v18, "username"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljavax/sip/header/CallInfoHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 536
    .local v10, name:Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 538
    :try_start_0
    const-string v18, "GBK"

    move-object/from16 v0, v18

    invoke-static {v10, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 539
    .local v11, nameDecoded:Ljava/lang/String;
    iget-object v0, v12, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Lbaidu/net/sip/SipProfile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lbaidu/net/sip/SipProfile;->setBaiduAccountName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    .end local v11           #nameDecoded:Ljava/lang/String;
    :cond_6
    :goto_2
    const-string v18, "email"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljavax/sip/header/CallInfoHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 545
    .local v6, email:Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 547
    :try_start_1
    iget-object v0, v12, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Lbaidu/net/sip/SipProfile;

    move-object/from16 v18, v0

    const-string v19, "UTF-8"

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lbaidu/net/sip/SipProfile;->setEmail(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 552
    :cond_7
    :goto_3
    const-string/jumbo v18, "phonenumber"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljavax/sip/header/CallInfoHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 553
    .local v13, phone:Ljava/lang/String;
    if-eqz v13, :cond_5

    .line 554
    iget-object v0, v12, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Lbaidu/net/sip/SipProfile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lbaidu/net/sip/SipProfile;->setPhoneNumber(Ljava/lang/String;)V

    goto :goto_1

    .line 540
    .end local v6           #email:Ljava/lang/String;
    .end local v13           #phone:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 541
    .local v5, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 548
    .end local v5           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v6       #email:Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 549
    .restart local v5       #e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public process(Ljava/util/EventObject;)Z
    .locals 4
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 567
    const-string v1, "com.baidu.server.sip"

    const-string v2, "<====> SipSessionCallReceiverImpl::process()"

    invoke-static {v1, v2}, Lcom/baidu/sip/utility/VoipLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    #calls: Lcom/baidu/server/sip/SipSessionGroup;->isLoggable(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z
    invoke-static {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup;->access$600(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.baidu.server.sip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ~~~~~   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->mState:I

    invoke-static {v3}, Lbaidu/net/sip/SipSession$State;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": processing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->log(Ljava/util/EventObject;)Ljava/lang/String;
    invoke-static {p1}, Lcom/baidu/server/sip/SipSessionGroup;->access$700(Ljava/util/EventObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_0
    const-string v1, "INVITE"

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v1, p1}, Lcom/baidu/server/sip/SipSessionGroup;->access$800(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 572
    check-cast p1, Ljavax/sip/RequestEvent;

    .end local p1
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->processNewInviteRequest(Ljavax/sip/RequestEvent;)V

    .line 578
    :goto_0
    return v0

    .line 574
    .restart local p1
    :cond_1
    const-string v1, "OPTIONS"

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    invoke-static {v1, p1}, Lcom/baidu/server/sip/SipSessionGroup;->access$800(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 575
    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mSipHelper:Lcom/baidu/server/sip/SipHelper;
    invoke-static {v1}, Lcom/baidu/server/sip/SipSessionGroup;->access$300(Lcom/baidu/server/sip/SipSessionGroup;)Lcom/baidu/server/sip/SipHelper;

    move-result-object v1

    check-cast p1, Ljavax/sip/RequestEvent;

    .end local p1
    const/16 v2, 0xc8

    invoke-virtual {v1, p1, v2}, Lcom/baidu/server/sip/SipHelper;->sendResponse(Ljavax/sip/RequestEvent;I)V

    goto :goto_0

    .line 578
    .restart local p1
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
