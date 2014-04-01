.class Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;
.super Lcom/baidu/internal/telephony/sip/SipCallBase;
.source "SipPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/telephony/sip/SipPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipCall"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/telephony/sip/SipPhone;


# direct methods
.method private constructor <init>(Lcom/baidu/internal/telephony/sip/SipPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/baidu/internal/telephony/sip/SipPhone;

    invoke-direct {p0}, Lcom/baidu/internal/telephony/sip/SipCallBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/internal/telephony/sip/SipPhone;Lcom/baidu/internal/telephony/sip/SipPhone$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 442
    invoke-direct {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/baidu/internal/telephony/sip/SipPhone;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;)Lbaidu/net/rtp/AudioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 442
    invoke-direct {p0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getAudioGroup()Lbaidu/net/rtp/AudioGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 442
    invoke-direct {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->add(Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;)V

    return-void
.end method

.method private add(Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;)V
    .locals 2
    .parameter "conn"

    .prologue
    .line 616
    invoke-virtual {p1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->getCall()Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v0

    .line 617
    .local v0, call:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;
    if-ne v0, p0, :cond_0

    .line 622
    :goto_0
    return-void

    .line 618
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 620
    :cond_1
    iget-object v1, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    invoke-virtual {p1, p0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->changeOwner(Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;)V

    goto :goto_0
.end method

.method private convertDtmf(C)I
    .locals 4
    .parameter "c"

    .prologue
    .line 631
    add-int/lit8 v0, p1, -0x30

    .line 632
    .local v0, code:I
    if-ltz v0, :cond_0

    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    .line 633
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 641
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid DTMF char: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 634
    :sswitch_0
    const/16 v0, 0xa

    .line 645
    .end local v0           #code:I
    :cond_1
    :goto_0
    return v0

    .line 635
    .restart local v0       #code:I
    :sswitch_1
    const/16 v0, 0xb

    goto :goto_0

    .line 636
    :sswitch_2
    const/16 v0, 0xc

    goto :goto_0

    .line 637
    :sswitch_3
    const/16 v0, 0xd

    goto :goto_0

    .line 638
    :sswitch_4
    const/16 v0, 0xe

    goto :goto_0

    .line 639
    :sswitch_5
    const/16 v0, 0xf

    goto :goto_0

    .line 633
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_1
        0x2a -> :sswitch_0
        0x41 -> :sswitch_2
        0x42 -> :sswitch_3
        0x43 -> :sswitch_4
        0x44 -> :sswitch_5
    .end sparse-switch
.end method

.method private getAudioGroup()Lbaidu/net/rtp/AudioGroup;
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 695
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->getAudioGroup()Lbaidu/net/rtp/AudioGroup;

    move-result-object v0

    goto :goto_0
.end method

.method private isSpeakerOn()Z
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/baidu/internal/telephony/sip/SipPhone;

    #getter for: Lcom/baidu/internal/telephony/sip/SipPhone;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/internal/telephony/sip/SipPhone;->access$400(Lcom/baidu/internal/telephony/sip/SipPhone;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method private takeOver(Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;)V
    .locals 3
    .parameter "that"

    .prologue
    .line 458
    iget-object v2, p1, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    iput-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    .line 459
    iget-object v2, p1, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->state:Lcom/android/internal/telephony/Call$State;

    iput-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->state:Lcom/android/internal/telephony/Call$State;

    .line 460
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 461
    .local v0, c:Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0, p0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->changeOwner(Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;)V

    goto :goto_0

    .line 463
    :cond_0
    return-void
.end method


# virtual methods
.method acceptCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 539
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/baidu/internal/telephony/sip/SipPhone;

    #getter for: Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;
    invoke-static {v0}, Lcom/baidu/internal/telephony/sip/SipPhone;->access$300(Lcom/baidu/internal/telephony/sip/SipPhone;)Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v0

    if-eq p0, v0, :cond_0

    .line 540
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "acceptCall() in a non-ringing call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 543
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "acceptCall() in a conf call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->acceptCall()V

    .line 546
    return-void
.end method

.method configLocalCamera(II)V
    .locals 3
    .parameter "cameraId"
    .parameter "value"

    .prologue
    .line 744
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 745
    .local v0, c:Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0, p1, p2}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->configLocalCamera(II)V

    goto :goto_0

    .line 747
    :cond_0
    return-void
.end method

.method dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 8
    .parameter "originalNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbaidu/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 479
    move-object v2, p1

    .line 480
    .local v2, calleeSipUri:Ljava/lang/String;
    const-string v5, "@"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 481
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/baidu/internal/telephony/sip/SipPhone;

    #getter for: Lcom/baidu/internal/telephony/sip/SipPhone;->mProfile:Lbaidu/net/sip/SipProfile;
    invoke-static {v6}, Lcom/baidu/internal/telephony/sip/SipPhone;->access$100(Lcom/baidu/internal/telephony/sip/SipPhone;)Lbaidu/net/sip/SipProfile;

    move-result-object v6

    invoke-virtual {v6}, Lbaidu/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 482
    .local v4, replaceStr:Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/baidu/internal/telephony/sip/SipPhone;

    #getter for: Lcom/baidu/internal/telephony/sip/SipPhone;->mProfile:Lbaidu/net/sip/SipProfile;
    invoke-static {v5}, Lcom/baidu/internal/telephony/sip/SipPhone;->access$100(Lcom/baidu/internal/telephony/sip/SipPhone;)Lbaidu/net/sip/SipProfile;

    move-result-object v5

    invoke-virtual {v5}, Lbaidu/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 486
    .end local v4           #replaceStr:Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v5, Lbaidu/net/sip/SipProfile$Builder;

    invoke-direct {v5, v2}, Lbaidu/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lbaidu/net/sip/SipProfile$Builder;->build()Lbaidu/net/sip/SipProfile;

    move-result-object v1

    .line 488
    .local v1, callee:Lbaidu/net/sip/SipProfile;
    new-instance v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    iget-object v5, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/baidu/internal/telephony/sip/SipPhone;

    invoke-direct {v0, v5, p0, v1, p1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;-><init>(Lcom/baidu/internal/telephony/sip/SipPhone;Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;Lbaidu/net/sip/SipProfile;Ljava/lang/String;)V

    .line 490
    .local v0, c:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;
    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->dial()V

    .line 491
    iget-object v5, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v5}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    return-object v0

    .line 494
    .end local v0           #c:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;
    .end local v1           #callee:Lbaidu/net/sip/SipProfile;
    :catch_0
    move-exception v3

    .line 495
    .local v3, e:Ljava/text/ParseException;
    new-instance v5, Lbaidu/net/sip/SipException;

    const-string v6, "dial"

    invoke-direct {v5, v6, v3}, Lbaidu/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getConnections()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getMute()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 593
    iget-object v1, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->getMute()Z

    move-result v0

    goto :goto_0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/baidu/internal/telephony/sip/SipPhone;

    return-object v0
.end method

.method getTotalFlow()J
    .locals 4

    .prologue
    .line 700
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 701
    .local v0, c:Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->getTotalFlow()J

    move-result-wide v2

    .line 703
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public hangup()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 501
    const-class v5, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v5

    .line 502
    :try_start_0
    iget-object v4, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->state:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 503
    const-string v4, "Call"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hang up call: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " on phone "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v4}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 506
    const/4 v2, 0x0

    .line 507
    .local v2, excp:Lcom/android/internal/telephony/CallStateException;
    iget-object v4, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    .local v0, c:Lcom/android/internal/telephony/Connection;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v1

    .line 511
    .local v1, e:Lcom/android/internal/telephony/CallStateException;
    move-object v2, v1

    goto :goto_0

    .line 514
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_0
    if-eqz v2, :cond_2

    :try_start_2
    throw v2

    .line 519
    .end local v2           #excp:Lcom/android/internal/telephony/CallStateException;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 516
    :cond_1
    :try_start_3
    const-string v4, "Call"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hang up dead call: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " on phone "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_2
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 520
    return-void
.end method

.method hold()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 572
    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v2}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 573
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .local v0, c:Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->hold()V

    goto :goto_0

    .line 574
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->setAudioGroupMode()V

    .line 575
    return-void
.end method

.method holdVideoStream()V
    .locals 3

    .prologue
    .line 707
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 708
    .local v0, c:Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->holdVideoStream()V

    goto :goto_0

    .line 710
    :cond_0
    return-void
.end method

.method initIncomingCall(Lbaidu/net/sip/SipAudioCall;Z)V
    .locals 4
    .parameter "sipAudioCall"
    .parameter "makeCallWait"

    .prologue
    .line 523
    invoke-virtual {p1}, Lbaidu/net/sip/SipAudioCall;->getPeerProfile()Lbaidu/net/sip/SipProfile;

    move-result-object v1

    .line 524
    .local v1, callee:Lbaidu/net/sip/SipProfile;
    new-instance v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    iget-object v3, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/baidu/internal/telephony/sip/SipPhone;

    invoke-direct {v0, v3, p0, v1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;-><init>(Lcom/baidu/internal/telephony/sip/SipPhone;Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;Lbaidu/net/sip/SipProfile;)V

    .line 525
    .local v0, c:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;
    iget-object v3, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    if-eqz p2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    .line 528
    .local v2, newState:Lcom/android/internal/telephony/Call$State;
    :goto_0
    invoke-virtual {v0, p1, v2}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->initIncomingCall(Lbaidu/net/sip/SipAudioCall;Lcom/android/internal/telephony/Call$State;)V

    .line 530
    invoke-virtual {p0, v2}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 531
    iget-object v3, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/baidu/internal/telephony/sip/SipPhone;

    #calls: Lcom/baidu/internal/telephony/sip/SipPhone;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V
    invoke-static {v3, v0}, Lcom/baidu/internal/telephony/sip/SipPhone;->access$200(Lcom/baidu/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/Connection;)V

    .line 532
    return-void

    .line 527
    .end local v2           #newState:Lcom/android/internal/telephony/Call$State;
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0
.end method

.method isVideoHold()Z
    .locals 3

    .prologue
    .line 719
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 720
    .local v0, c:Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->isVideoHold()Z

    move-result v2

    .line 722
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method merge(Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;)V
    .locals 9
    .parameter "that"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 599
    invoke-direct {p0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getAudioGroup()Lbaidu/net/rtp/AudioGroup;

    move-result-object v1

    .line 603
    .local v1, audioGroup:Lbaidu/net/rtp/AudioGroup;
    iget-object v7, p1, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    iget-object v8, p1, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lcom/android/internal/telephony/Connection;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/internal/telephony/Connection;

    .line 605
    .local v3, cc:[Lcom/android/internal/telephony/Connection;
    move-object v0, v3

    .local v0, arr$:[Lcom/android/internal/telephony/Connection;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v0, v5

    .local v2, c:Lcom/android/internal/telephony/Connection;
    move-object v4, v2

    .line 606
    check-cast v4, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    .line 607
    .local v4, conn:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;
    invoke-direct {p0, v4}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->add(Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;)V

    .line 608
    invoke-virtual {v4}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_0

    .line 609
    invoke-virtual {v4, v1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->unhold(Lbaidu/net/rtp/AudioGroup;)V

    .line 605
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 612
    .end local v2           #c:Lcom/android/internal/telephony/Connection;
    .end local v4           #conn:Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;
    :cond_1
    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p1, v7}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 613
    return-void
.end method

.method onConnectionEnded(Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;)V
    .locals 6
    .parameter "conn"

    .prologue
    .line 676
    iget-object v3, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_2

    .line 677
    const/4 v0, 0x1

    .line 678
    .local v0, allConnectionsDisconnected:Z
    const-string v3, "Call"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---check connections: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v3, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 681
    .local v1, c:Lcom/android/internal/telephony/Connection;
    const-string v3, "Call"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    .line 684
    const/4 v0, 0x0

    .line 688
    .end local v1           #c:Lcom/android/internal/telephony/Connection;
    :cond_1
    if-eqz v0, :cond_2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v3}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 690
    .end local v0           #allConnectionsDisconnected:Z
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/baidu/internal/telephony/sip/SipPhone;

    #calls: Lcom/baidu/internal/telephony/sip/SipPhone;->notifyDisconnectP(Lcom/android/internal/telephony/Connection;)V
    invoke-static {v3, p1}, Lcom/baidu/internal/telephony/sip/SipPhone;->access$500(Lcom/baidu/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/Connection;)V

    .line 691
    return-void
.end method

.method onConnectionStateChanged(Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;)V
    .locals 2
    .parameter "conn"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 670
    invoke-virtual {p1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 672
    :cond_0
    return-void
.end method

.method rejectCall()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->hangup()V

    .line 536
    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 445
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 446
    return-void
.end method

.method resumeVideoStream()V
    .locals 3

    .prologue
    .line 713
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 714
    .local v0, c:Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->resumeVideoStream()V

    goto :goto_0

    .line 716
    :cond_0
    return-void
.end method

.method sendDtmf(C)V
    .locals 2
    .parameter "c"

    .prologue
    .line 625
    invoke-direct {p0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getAudioGroup()Lbaidu/net/rtp/AudioGroup;

    move-result-object v0

    .line 626
    .local v0, audioGroup:Lbaidu/net/rtp/AudioGroup;
    if-nez v0, :cond_0

    .line 628
    :goto_0
    return-void

    .line 627
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->convertDtmf(C)I

    move-result v1

    invoke-virtual {v0, v1}, Lbaidu/net/rtp/AudioGroup;->sendDtmf(I)V

    goto :goto_0
.end method

.method setAudioGroupMode()V
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 554
    invoke-direct {p0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getAudioGroup()Lbaidu/net/rtp/AudioGroup;

    move-result-object v0

    .line 555
    .local v0, audioGroup:Lbaidu/net/rtp/AudioGroup;
    if-nez v0, :cond_0

    .line 569
    :goto_0
    return-void

    .line 556
    :cond_0
    invoke-virtual {v0}, Lbaidu/net/rtp/AudioGroup;->getMode()I

    move-result v1

    .line 557
    .local v1, mode:I
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 558
    invoke-virtual {v0, v6}, Lbaidu/net/rtp/AudioGroup;->setMode(I)V

    .line 566
    :goto_1
    const-string v2, "Call"

    const-string v3, "audioGroup mode change: %d --> %d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0}, Lbaidu/net/rtp/AudioGroup;->getMode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 559
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getMute()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 560
    invoke-virtual {v0, v7}, Lbaidu/net/rtp/AudioGroup;->setMode(I)V

    goto :goto_1

    .line 561
    :cond_2
    invoke-direct {p0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->isSpeakerOn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 562
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lbaidu/net/rtp/AudioGroup;->setMode(I)V

    goto :goto_1

    .line 564
    :cond_3
    invoke-virtual {v0, v4}, Lbaidu/net/rtp/AudioGroup;->setMode(I)V

    goto :goto_1
.end method

.method setLocalPreview(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 732
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 733
    .local v0, c:Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->setLocalPreview(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 735
    :cond_0
    return-void
.end method

.method setMute(Z)V
    .locals 3
    .parameter "muted"

    .prologue
    .line 587
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 588
    .local v0, c:Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->setMute(Z)V

    goto :goto_0

    .line 590
    :cond_0
    return-void
.end method

.method setRemoteDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 726
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 727
    .local v0, c:Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->setRemoteDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 729
    :cond_0
    return-void
.end method

.method setRemoteDisplayOrientation(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 738
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 739
    .local v0, c:Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->setRemoteDisplayOrientation(I)V

    goto :goto_0

    .line 741
    :cond_0
    return-void
.end method

.method protected setState(Lcom/android/internal/telephony/Call$State;)V
    .locals 3
    .parameter "newState"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->state:Lcom/android/internal/telephony/Call$State;

    if-eq v0, p1, :cond_1

    .line 651
    const-string v0, "Call"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+***+ call state changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->state:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": on phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_2

    .line 656
    iput-object p1, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->state:Lcom/android/internal/telephony/Call$State;

    .line 657
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/baidu/internal/telephony/sip/SipPhone;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone;->startRingbackTone()V

    .line 661
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->state:Lcom/android/internal/telephony/Call$State;

    .line 662
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/baidu/internal/telephony/sip/SipPhone;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone;->updatePhoneState()V

    .line 663
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/baidu/internal/telephony/sip/SipPhone;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone;->notifyPreciseCallStateChanged()V

    .line 665
    :cond_1
    return-void

    .line 658
    :cond_2
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 659
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/baidu/internal/telephony/sip/SipPhone;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone;->stopRingbackTone()V

    goto :goto_0
.end method

.method switchWith(Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;)V
    .locals 3
    .parameter "that"

    .prologue
    .line 449
    const-class v2, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v2

    .line 450
    :try_start_0
    new-instance v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    iget-object v1, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/baidu/internal/telephony/sip/SipPhone;

    invoke-direct {v0, v1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/baidu/internal/telephony/sip/SipPhone;)V

    .line 451
    .local v0, tmp:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;
    invoke-direct {v0, p0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->takeOver(Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;)V

    .line 452
    invoke-direct {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->takeOver(Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;)V

    .line 453
    invoke-direct {p1, v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->takeOver(Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;)V

    .line 454
    monitor-exit v2

    .line 455
    return-void

    .line 454
    .end local v0           #tmp:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unhold()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 578
    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v3}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 579
    new-instance v0, Lbaidu/net/rtp/AudioGroup;

    invoke-direct {v0}, Lbaidu/net/rtp/AudioGroup;-><init>()V

    .line 580
    .local v0, audioGroup:Lbaidu/net/rtp/AudioGroup;
    iget-object v3, p0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 581
    .local v1, c:Lcom/android/internal/telephony/Connection;
    check-cast v1, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;

    .end local v1           #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1, v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;->unhold(Lbaidu/net/rtp/AudioGroup;)V

    goto :goto_0

    .line 583
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->setAudioGroupMode()V

    .line 584
    return-void
.end method
