.class public Lcom/baidu/internal/telephony/sip/SipPhone;
.super Lcom/baidu/internal/telephony/sip/SipPhoneBase;
.source "SipPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/telephony/sip/SipPhone$1;,
        Lcom/baidu/internal/telephony/sip/SipPhone$SipAudioCallAdapter;,
        Lcom/baidu/internal/telephony/sip/SipPhone$SipConnection;,
        Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SipPhone"

.field private static final TIMEOUT_ANSWER_CALL:I = 0x8

.field private static final TIMEOUT_HOLD_CALL:I = 0xf

.field private static final TIMEOUT_MAKE_CALL:I = 0xf


# instance fields
.field private backgroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

.field private foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

.field private mProfile:Lbaidu/net/sip/SipProfile;

.field private mSipManager:Lbaidu/net/sip/SipManager;

.field private ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lbaidu/net/sip/SipProfile;)V
    .locals 4
    .parameter "context"
    .parameter "notifier"
    .parameter "profile"

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 60
    new-instance v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v3}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/baidu/internal/telephony/sip/SipPhone;Lcom/baidu/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    .line 61
    new-instance v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v3}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/baidu/internal/telephony/sip/SipPhone;Lcom/baidu/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    .line 62
    new-instance v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v3}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/baidu/internal/telephony/sip/SipPhone;Lcom/baidu/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    .line 70
    const-string v0, "SipPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new SipPhone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lbaidu/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v3}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/baidu/internal/telephony/sip/SipPhone;Lcom/baidu/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    .line 72
    new-instance v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v3}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/baidu/internal/telephony/sip/SipPhone;Lcom/baidu/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    .line 73
    new-instance v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v3}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/baidu/internal/telephony/sip/SipPhone;Lcom/baidu/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    .line 74
    iput-object p3, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->mProfile:Lbaidu/net/sip/SipProfile;

    .line 75
    invoke-static {p1}, Lbaidu/net/sip/SipManager;->newInstance(Landroid/content/Context;)Lbaidu/net/sip/SipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->mSipManager:Lbaidu/net/sip/SipManager;

    .line 76
    return-void
.end method

.method static synthetic access$100(Lcom/baidu/internal/telephony/sip/SipPhone;)Lbaidu/net/sip/SipProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->mProfile:Lbaidu/net/sip/SipProfile;

    return-object v0
.end method

.method static synthetic access$1200(Lbaidu/net/sip/SipAudioCall;)Lcom/android/internal/telephony/Call$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-static {p0}, Lcom/baidu/internal/telephony/sip/SipPhone;->getCallStateFrom(Lbaidu/net/sip/SipAudioCall;)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/baidu/internal/telephony/sip/SipPhone;)Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/baidu/internal/telephony/sip/SipPhone;Lbaidu/net/sip/SipProfile;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone;->getUriString(Lbaidu/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/baidu/internal/telephony/sip/SipPhone;)Lbaidu/net/sip/SipManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->mSipManager:Lbaidu/net/sip/SipManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method static synthetic access$300(Lcom/baidu/internal/telephony/sip/SipPhone;)Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/internal/telephony/sip/SipPhone;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone;->notifyDisconnectP(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method private dialInternal(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 5
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/baidu/internal/telephony/sip/SipPhone;->clearDisconnected()V

    .line 176
    invoke-virtual {p0}, Lcom/baidu/internal/telephony/sip/SipPhone;->canDial()Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "cannot dial in current state"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    :cond_0
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v2}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/baidu/internal/telephony/sip/SipPhone;->switchHoldingAndActive()V

    .line 182
    :cond_1
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v2}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_2

    .line 184
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "cannot dial in current state"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 187
    :cond_2
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->setMute(Z)V

    .line 189
    :try_start_0
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v2, p1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lbaidu/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 190
    .local v0, c:Lcom/android/internal/telephony/Connection;
    return-object v0

    .line 191
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :catch_0
    move-exception v1

    .line 192
    .local v1, e:Lbaidu/net/sip/SipException;
    const-string v2, "SipPhone"

    const-string v3, "dial()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dial error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getCallStateFrom(Lbaidu/net/sip/SipAudioCall;)Lcom/android/internal/telephony/Call$State;
    .locals 4
    .parameter "sipAudioCall"

    .prologue
    .line 1069
    invoke-virtual {p0}, Lbaidu/net/sip/SipAudioCall;->isOnHold()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    .line 1081
    :goto_0
    return-object v1

    .line 1070
    :cond_0
    invoke-virtual {p0}, Lbaidu/net/sip/SipAudioCall;->getState()I

    move-result v0

    .line 1071
    .local v0, sessionState:I
    packed-switch v0, :pswitch_data_0

    .line 1080
    :pswitch_0
    const-string v1, "SipPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal connection state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 1072
    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 1074
    :pswitch_2
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 1075
    :pswitch_3
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 1076
    :pswitch_4
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 1077
    :pswitch_5
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 1078
    :pswitch_6
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 1071
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getSipDomain(Lbaidu/net/sip/SipProfile;)Ljava/lang/String;
    .locals 3
    .parameter "p"

    .prologue
    .line 427
    invoke-virtual {p1}, Lbaidu/net/sip/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, domain:Ljava/lang/String;
    const-string v1, ":5060"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 432
    .end local v0           #domain:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getUriString(Lbaidu/net/sip/SipProfile;)Ljava/lang/String;
    .locals 2
    .parameter "p"

    .prologue
    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lbaidu/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone;->getSipDomain(Lbaidu/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public acceptCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 142
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_1

    .line 145
    :cond_0
    const-string v0, "SipPhone"

    const-string v2, "acceptCall"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->setMute(Z)V

    .line 148
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->acceptCall()V

    .line 152
    monitor-exit v1

    .line 153
    return-void

    .line 150
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v2, "phone not ringing"

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->activateCellBroadcastSms(ILandroid/os/Message;)V

    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic canDial()Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->canDial()Z

    move-result v0

    return v0
.end method

.method public canTake(Ljava/lang/Object;)Z
    .locals 10
    .parameter "incomingCall"

    .prologue
    const/4 v5, 0x0

    .line 104
    const-class v6, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v6

    .line 105
    :try_start_0
    instance-of v7, p1, Lbaidu/net/sip/SipAudioCall;

    if-nez v7, :cond_0

    monitor-exit v6

    .line 137
    :goto_0
    return v5

    .line 106
    :cond_0
    iget-object v7, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v7}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_1

    monitor-exit v6

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 110
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v7}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v7}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 112
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 116
    :cond_2
    :try_start_2
    move-object v0, p1

    check-cast v0, Lbaidu/net/sip/SipAudioCall;

    move-object v4, v0

    .line 117
    .local v4, sipAudioCall:Lbaidu/net/sip/SipAudioCall;
    const-string v7, "SipPhone"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+++ taking call from: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lbaidu/net/sip/SipAudioCall;->getPeerProfile()Lbaidu/net/sip/SipProfile;

    move-result-object v9

    invoke-virtual {v9}, Lbaidu/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {v4}, Lbaidu/net/sip/SipAudioCall;->getLocalProfile()Lbaidu/net/sip/SipProfile;

    move-result-object v7

    invoke-virtual {v7}, Lbaidu/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, localUri:Ljava/lang/String;
    iget-object v7, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->mProfile:Lbaidu/net/sip/SipProfile;

    invoke-virtual {v7}, Lbaidu/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 121
    iget-object v7, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v7}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    .line 122
    .local v3, makeCallWait:Z
    iget-object v7, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v7, v4, v3}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->initIncomingCall(Lbaidu/net/sip/SipAudioCall;Z)V

    .line 123
    invoke-virtual {v4}, Lbaidu/net/sip/SipAudioCall;->getState()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    .line 126
    const-string v7, "SipPhone"

    const-string v8, "    call cancelled !!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v7, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v7}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->reset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 129
    :cond_3
    const/4 v5, 0x1

    :try_start_3
    monitor-exit v6

    goto/16 :goto_0

    .line 131
    .end local v2           #localUri:Ljava/lang/String;
    .end local v3           #makeCallWait:Z
    .end local v4           #sipAudioCall:Lbaidu/net/sip/SipAudioCall;
    :catch_0
    move-exception v1

    .line 135
    .local v1, e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v7}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->reset()V

    .line 137
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public clearDisconnected()V
    .locals 2

    .prologue
    .line 241
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->clearDisconnected()V

    .line 243
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->clearDisconnected()V

    .line 244
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->clearDisconnected()V

    .line 246
    invoke-virtual {p0}, Lcom/baidu/internal/telephony/sip/SipPhone;->updatePhoneState()V

    .line 247
    invoke-virtual {p0}, Lcom/baidu/internal/telephony/sip/SipPhone;->notifyPreciseCallStateChanged()V

    .line 248
    monitor-exit v1

    .line 249
    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public conference()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 211
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_1

    .line 214
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wrong state to merge calls: fg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v3}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v3}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 218
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0, v2}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->merge(Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;)V

    .line 219
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    return-void
.end method

.method public conference(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "that"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 223
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 224
    :try_start_0
    instance-of v0, p1, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cannot merge with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    .end local p1
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 228
    .restart local p1
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    check-cast p1, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->merge(Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;)V

    .line 229
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    return-void
.end method

.method public configLocalCamera(II)V
    .locals 2
    .parameter "camerId"
    .parameter "value"

    .prologue
    .line 397
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->configLocalCamera(II)V

    .line 399
    monitor-exit v1

    .line 400
    return-void

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 167
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 168
    :try_start_0
    invoke-direct {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone;->dialInternal(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic disableDataConnectivity()Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->disableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic disableLocationUpdates()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->disableLocationUpdates()V

    return-void
.end method

.method public bridge synthetic enableDataConnectivity()Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic enableLocationUpdates()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->enableLocationUpdates()V

    return-void
.end method

.method public equals(Lcom/baidu/internal/telephony/sip/SipPhone;)Z
    .locals 2
    .parameter "phone"

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/baidu/internal/telephony/sip/SipPhone;->getSipUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/internal/telephony/sip/SipPhone;->getSipUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 80
    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    .line 83
    :goto_0
    return v1

    .line 81
    :cond_0
    instance-of v1, p1, Lcom/baidu/internal/telephony/sip/SipPhone;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 82
    check-cast v0, Lcom/baidu/internal/telephony/sip/SipPhone;

    .line 83
    .local v0, that:Lcom/baidu/internal/telephony/sip/SipPhone;
    iget-object v1, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->mProfile:Lbaidu/net/sip/SipProfile;

    invoke-virtual {v1}, Lbaidu/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/baidu/internal/telephony/sip/SipPhone;->mProfile:Lbaidu/net/sip/SipProfile;

    invoke-virtual {v2}, Lbaidu/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public explicitCallTransfer()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 238
    return-void
.end method

.method public bridge synthetic getAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getAvailableNetworks(Landroid/os/Message;)V

    return-void
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method public bridge synthetic getCallForwardingIndicator()Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getCallForwardingOption(ILandroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getCallForwardingOption(ILandroid/os/Message;)V

    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    const/4 v0, 0x0

    .line 294
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 295
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 296
    return-void
.end method

.method public bridge synthetic getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCurrentDataConnectionList()Ljava/util/List;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getCurrentDataConnectionList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataCallList(Landroid/os/Message;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getDataCallList(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFgCallVideoEnable()Z
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method public bridge synthetic getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getMute()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getMute()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getNeighboringCids(Landroid/os/Message;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getNeighboringCids(Landroid/os/Message;)V

    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    const/4 v0, 0x0

    .line 281
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 282
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 283
    return-void
.end method

.method public bridge synthetic getPendingMmiCodes()Ljava/util/List;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->mProfile:Lbaidu/net/sip/SipProfile;

    invoke-direct {p0, v1}, Lcom/baidu/internal/telephony/sip/SipPhone;->getUriString(Lbaidu/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhoneType()I
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method public getRingingCallVideoEnable()Z
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 418
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getSipUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->mProfile:Lbaidu/net/sip/SipProfile;

    invoke-virtual {v0}, Lbaidu/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getState()Lcom/android/internal/telephony/Phone$State;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalFlow()J
    .locals 4

    .prologue
    .line 329
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getTotalFlow()J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->mProfile:Lbaidu/net/sip/SipProfile;

    invoke-virtual {v0}, Lbaidu/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public holdVideoStream()V
    .locals 2

    .prologue
    .line 361
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->holdVideoStream()V

    .line 363
    monitor-exit v1

    .line 364
    return-void

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isVideoHold()Z
    .locals 2

    .prologue
    .line 373
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->isVideoHold()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic notifyCallForwardingIndicator()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->notifyCallForwardingIndicator()V

    return-void
.end method

.method public bridge synthetic registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public rejectCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 156
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "SipPhone"

    const-string/jumbo v2, "rejectCall"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->rejectCall()V

    .line 163
    monitor-exit v1

    .line 164
    return-void

    .line 161
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v2, "phone not ringing"

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resumeVideoStream()V
    .locals 2

    .prologue
    .line 367
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->resumeVideoStream()V

    .line 369
    monitor-exit v1

    .line 370
    return-void

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic saveClirSetting(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->saveClirSetting(I)V

    return-void
.end method

.method public bridge synthetic selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;)V
    .locals 2
    .parameter "dtmfString"

    .prologue
    .line 276
    const-string v0, "SipPhone"

    const-string v1, "[SipPhone] sendBurstDtmf() is a CDMA method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void
.end method

.method public sendDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 252
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    const-string v0, "SipPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->sendDtmf(C)V

    .line 258
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendOrientationInfo(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 358
    return-void
.end method

.method public bridge synthetic sendUssdResponse(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->sendUssdResponse(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 52
    invoke-super/range {p0 .. p5}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 2
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 300
    const-string v0, "SipPhone"

    const-string v1, "call waiting not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void
.end method

.method public bridge synthetic setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic setDataRoamingEnabled(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->setDataRoamingEnabled(Z)V

    return-void
.end method

.method public setEchoSuppressionEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 310
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->setAudioGroupMode()V

    .line 312
    monitor-exit v1

    .line 313
    return-void

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFgCallVideoEnable(Z)V
    .locals 0
    .parameter "videoEnable"

    .prologue
    .line 349
    return-void
.end method

.method public bridge synthetic setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setLocalPreview(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 379
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->setLocalPreview(Landroid/view/SurfaceHolder;)V

    .line 381
    monitor-exit v1

    .line 382
    return-void

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMute(Z)V
    .locals 2
    .parameter "muted"

    .prologue
    .line 316
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->setMute(Z)V

    .line 318
    monitor-exit v1

    .line 319
    return-void

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"

    .prologue
    const/4 v0, 0x0

    .line 288
    invoke-static {p2, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 289
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 290
    return-void
.end method

.method public bridge synthetic setRadioPower(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->setRadioPower(Z)V

    return-void
.end method

.method public setRemoteDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 385
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->setRemoteDisplay(Landroid/view/SurfaceHolder;)V

    .line 387
    monitor-exit v1

    .line 388
    return-void

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRemoteDisplayOrientation(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 391
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->setRemoteDisplayOrientation(I)V

    .line 393
    monitor-exit v1

    .line 394
    return-void

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRingingCallVideoEnable(Z)V
    .locals 0
    .parameter "videoEnable"

    .prologue
    .line 340
    return-void
.end method

.method public bridge synthetic setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public startDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 263
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    const-string v0, "SipPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone;->sendDtmf(C)V

    goto :goto_0
.end method

.method public startMedia()V
    .locals 0

    .prologue
    .line 336
    return-void
.end method

.method public stopDtmf()V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 198
    const-string v0, "SipPhone"

    const-string v1, " ~~~~~~  switch fg and bg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0, v2}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->switchWith(Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;)V

    .line 201
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->hold()V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->unhold()V

    .line 203
    :cond_1
    monitor-exit v1

    .line 204
    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->unregisterForRingbackTone(Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic updateServiceLocation()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->updateServiceLocation()V

    return-void
.end method
