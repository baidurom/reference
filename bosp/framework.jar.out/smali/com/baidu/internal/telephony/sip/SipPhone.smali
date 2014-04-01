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

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 66
    new-instance v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v3}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/baidu/internal/telephony/sip/SipPhone;Lcom/baidu/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    .line 67
    new-instance v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v3}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/baidu/internal/telephony/sip/SipPhone;Lcom/baidu/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    .line 68
    new-instance v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v3}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/baidu/internal/telephony/sip/SipPhone;Lcom/baidu/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    .line 76
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

    .line 77
    new-instance v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v3}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/baidu/internal/telephony/sip/SipPhone;Lcom/baidu/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    .line 78
    new-instance v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v3}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/baidu/internal/telephony/sip/SipPhone;Lcom/baidu/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    .line 79
    new-instance v0, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v3}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/baidu/internal/telephony/sip/SipPhone;Lcom/baidu/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    .line 80
    iput-object p3, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->mProfile:Lbaidu/net/sip/SipProfile;

    .line 81
    invoke-static {p1}, Lbaidu/net/sip/SipManager;->newInstance(Landroid/content/Context;)Lbaidu/net/sip/SipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->mSipManager:Lbaidu/net/sip/SipManager;

    .line 82
    return-void
.end method

.method static synthetic access$100(Lcom/baidu/internal/telephony/sip/SipPhone;)Lbaidu/net/sip/SipProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->mProfile:Lbaidu/net/sip/SipProfile;

    return-object v0
.end method

.method static synthetic access$1200(Lbaidu/net/sip/SipAudioCall;)Lcom/android/internal/telephony/Call$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/baidu/internal/telephony/sip/SipPhone;->getCallStateFrom(Lbaidu/net/sip/SipAudioCall;)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/baidu/internal/telephony/sip/SipPhone;)Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/baidu/internal/telephony/sip/SipPhone;Lbaidu/net/sip/SipProfile;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone;->getUriString(Lbaidu/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/baidu/internal/telephony/sip/SipPhone;)Lbaidu/net/sip/SipManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->mSipManager:Lbaidu/net/sip/SipManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method static synthetic access$300(Lcom/baidu/internal/telephony/sip/SipPhone;)Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/internal/telephony/sip/SipPhone;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
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
    .line 180
    invoke-virtual {p0}, Lcom/baidu/internal/telephony/sip/SipPhone;->clearDisconnected()V

    .line 182
    invoke-virtual {p0}, Lcom/baidu/internal/telephony/sip/SipPhone;->canDial()Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "cannot dial in current state"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    :cond_0
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v2}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/baidu/internal/telephony/sip/SipPhone;->switchHoldingAndActive()V

    .line 188
    :cond_1
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v2}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_2

    .line 190
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "cannot dial in current state"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 193
    :cond_2
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->setMute(Z)V

    .line 195
    :try_start_0
    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v2, p1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lbaidu/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 196
    .local v0, c:Lcom/android/internal/telephony/Connection;
    return-object v0

    .line 197
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :catch_0
    move-exception v1

    .line 198
    .local v1, e:Lbaidu/net/sip/SipException;
    const-string v2, "SipPhone"

    const-string v3, "dial()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
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
    .line 1081
    invoke-virtual {p0}, Lbaidu/net/sip/SipAudioCall;->isOnHold()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    .line 1093
    :goto_0
    return-object v1

    .line 1082
    :cond_0
    invoke-virtual {p0}, Lbaidu/net/sip/SipAudioCall;->getState()I

    move-result v0

    .line 1083
    .local v0, sessionState:I
    packed-switch v0, :pswitch_data_0

    .line 1092
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

    .line 1093
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 1084
    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 1086
    :pswitch_2
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 1087
    :pswitch_3
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 1088
    :pswitch_4
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 1089
    :pswitch_5
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 1090
    :pswitch_6
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 1083
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
    .line 433
    invoke-virtual {p1}, Lbaidu/net/sip/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, domain:Ljava/lang/String;
    const-string v1, ":5060"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 438
    .end local v0           #domain:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getUriString(Lbaidu/net/sip/SipProfile;)Ljava/lang/String;
    .locals 2
    .parameter "p"

    .prologue
    .line 429
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
    .line 148
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 149
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

    .line 151
    :cond_0
    const-string v0, "SipPhone"

    const-string v2, "acceptCall"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->setMute(Z)V

    .line 154
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->acceptCall()V

    .line 158
    monitor-exit v1

    .line 159
    return-void

    .line 156
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v2, "phone not ringing"

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
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
    .line 58
    invoke-super {p0, p1, p2}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->activateCellBroadcastSms(ILandroid/os/Message;)V

    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic canDial()Z
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->canDial()Z

    move-result v0

    return v0
.end method

.method public canTake(Ljava/lang/Object;)Z
    .locals 10
    .parameter "incomingCall"

    .prologue
    const/4 v5, 0x0

    .line 110
    const-class v6, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v6

    .line 111
    :try_start_0
    instance-of v7, p1, Lbaidu/net/sip/SipAudioCall;

    if-nez v7, :cond_0

    monitor-exit v6

    .line 143
    :goto_0
    return v5

    .line 112
    :cond_0
    iget-object v7, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v7}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_1

    monitor-exit v6

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 116
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

    .line 118
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 122
    :cond_2
    :try_start_2
    move-object v0, p1

    check-cast v0, Lbaidu/net/sip/SipAudioCall;

    move-object v4, v0

    .line 123
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

    .line 125
    invoke-virtual {v4}, Lbaidu/net/sip/SipAudioCall;->getLocalProfile()Lbaidu/net/sip/SipProfile;

    move-result-object v7

    invoke-virtual {v7}, Lbaidu/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, localUri:Ljava/lang/String;
    iget-object v7, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->mProfile:Lbaidu/net/sip/SipProfile;

    invoke-virtual {v7}, Lbaidu/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 127
    iget-object v7, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v7}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    .line 128
    .local v3, makeCallWait:Z
    iget-object v7, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v7, v4, v3}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->initIncomingCall(Lbaidu/net/sip/SipAudioCall;Z)V

    .line 129
    invoke-virtual {v4}, Lbaidu/net/sip/SipAudioCall;->getState()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    .line 132
    const-string v7, "SipPhone"

    const-string v8, "    call cancelled !!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v7, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v7}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->reset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 135
    :cond_3
    const/4 v5, 0x1

    :try_start_3
    monitor-exit v6

    goto/16 :goto_0

    .line 137
    .end local v2           #localUri:Ljava/lang/String;
    .end local v3           #makeCallWait:Z
    .end local v4           #sipAudioCall:Lbaidu/net/sip/SipAudioCall;
    :catch_0
    move-exception v1

    .line 141
    .local v1, e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v7}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->reset()V

    .line 143
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
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "onComplete"

    .prologue
    .line 1244
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "newCfm"
    .parameter "onComplete"

    .prologue
    .line 1248
    return-void
.end method

.method public clearDisconnected()V
    .locals 2

    .prologue
    .line 247
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->clearDisconnected()V

    .line 249
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->clearDisconnected()V

    .line 250
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->clearDisconnected()V

    .line 252
    invoke-virtual {p0}, Lcom/baidu/internal/telephony/sip/SipPhone;->updatePhoneState()V

    .line 253
    invoke-virtual {p0}, Lcom/baidu/internal/telephony/sip/SipPhone;->notifyPreciseCallStateChanged()V

    .line 254
    monitor-exit v1

    .line 255
    return-void

    .line 254
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
    .line 217
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 218
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

    .line 220
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

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 224
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0, v2}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->merge(Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;)V

    .line 225
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
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
    .line 229
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 230
    :try_start_0
    instance-of v0, p1, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    if-nez v0, :cond_0

    .line 231
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

    .line 235
    .end local p1
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 234
    .restart local p1
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    check-cast p1, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->merge(Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;)V

    .line 235
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    return-void
.end method

.method public configLocalCamera(II)V
    .locals 2
    .parameter "camerId"
    .parameter "value"

    .prologue
    .line 403
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->configLocalCamera(II)V

    .line 405
    monitor-exit v1

    .line 406
    return-void

    .line 405
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
    .line 173
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 174
    :try_start_0
    invoke-direct {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone;->dialInternal(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 175
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
    .line 58
    invoke-super {p0, p1, p2}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic disableDataConnectivity()Z
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->disableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic disableLocationUpdates()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->disableLocationUpdates()V

    return-void
.end method

.method public doSimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "strRand"
    .parameter "result"

    .prologue
    .line 1348
    return-void
.end method

.method public doUSimAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "strRand"
    .parameter "strAutn"
    .parameter "result"

    .prologue
    .line 1352
    return-void
.end method

.method public bridge synthetic enableDataConnectivity()Z
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic enableLocationUpdates()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->enableLocationUpdates()V

    return-void
.end method

.method public equals(Lcom/baidu/internal/telephony/sip/SipPhone;)Z
    .locals 2
    .parameter "phone"

    .prologue
    .line 106
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
    .line 86
    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    .line 89
    :goto_0
    return v1

    .line 87
    :cond_0
    instance-of v1, p1, Lcom/baidu/internal/telephony/sip/SipPhone;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 88
    check-cast v0, Lcom/baidu/internal/telephony/sip/SipPhone;

    .line 89
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
    .line 244
    return-void
.end method

.method public get3GCapabilitySIM()I
    .locals 1

    .prologue
    .line 1389
    const/4 v0, 0x0

    return v0
.end method

.method public getAccumulatedCallMeter(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1263
    return-void
.end method

.method public getAccumulatedCallMeterMaximum(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1266
    return-void
.end method

.method public getActiveApnType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1408
    const-string v0, ""

    return-object v0
.end method

.method public getApnForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 1412
    const-string v0, ""

    return-object v0
.end method

.method public bridge synthetic getAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getAvailableNetworks(Landroid/os/Message;)V

    return-void
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method public getCallForwardingIndicator()Z
    .locals 1

    .prologue
    .line 1164
    const/4 v0, 0x0

    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 0
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 1197
    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    const/4 v0, 0x0

    .line 300
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 301
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 302
    return-void
.end method

.method public bridge synthetic getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCallMeter(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1260
    return-void
.end method

.method public bridge synthetic getCurrentDataConnectionList()Ljava/util/List;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getCurrentDataConnectionList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataCallList(Landroid/os/Message;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getDataCallList(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 1224
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 1236
    return-void
.end method

.method public getFgCallVideoEnable()Z
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method public getGateway(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 1220
    const-string v0, ""

    return-object v0
.end method

.method public bridge synthetic getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccServiceStatus(Lcom/android/internal/telephony/Phone$IccService;)Lcom/android/internal/telephony/Phone$IccServiceStatus;
    .locals 1
    .parameter "enService"

    .prologue
    .line 1340
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 1212
    const-string v0, ""

    return-object v0
.end method

.method public getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 1216
    const-string v0, ""

    return-object v0
.end method

.method public getLastCallFailCause()I
    .locals 1

    .prologue
    .line 1308
    const/4 v0, 0x0

    return v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1172
    const-string v0, ""

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1168
    const-string v0, ""

    return-object v0
.end method

.method public bridge synthetic getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    .line 1160
    const/4 v0, 0x0

    return v0
.end method

.method public getMobileRevisionAndIMEI(ILandroid/os/Message;)V
    .locals 0
    .parameter "type"
    .parameter "result"

    .prologue
    .line 1333
    return-void
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 328
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

.method public getMySimId()I
    .locals 1

    .prologue
    .line 1298
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getNeighboringCids(Landroid/os/Message;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getNeighboringCids(Landroid/os/Message;)V

    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    const/4 v0, 0x0

    .line 287
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 288
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 289
    return-void
.end method

.method public getPOLCapability(Landroid/os/Message;)V
    .locals 0
    .parameter "onComplete"

    .prologue
    .line 1397
    return-void
.end method

.method public getPdpContextList(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1209
    return-void
.end method

.method public bridge synthetic getPendingMmiCodes()Ljava/util/List;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
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
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhoneType()I
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getPpuAndCurrency(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1269
    return-void
.end method

.method public getPreferedOperatorList(Landroid/os/Message;)V
    .locals 0
    .parameter "onComplete"

    .prologue
    .line 1400
    return-void
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method public getRingingCallVideoEnable()Z
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public getSN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1336
    const-string v0, ""

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 424
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getSimIndicateState()I
    .locals 1

    .prologue
    .line 1381
    const/4 v0, 0x0

    return v0
.end method

.method public getSipUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->mProfile:Lbaidu/net/sip/SipProfile;

    invoke-virtual {v0}, Lbaidu/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getState()Lcom/android/internal/telephony/Phone$State;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalFlow()J
    .locals 4

    .prologue
    .line 335
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getTotalFlow()J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1188
    const-string v0, ""

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1180
    const-string v0, ""

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 1184
    const/4 v0, 0x0

    return v0
.end method

.method public getVtCallForwardingOption(ILandroid/os/Message;)V
    .locals 0
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 1356
    return-void
.end method

.method public getVtCallWaiting(Landroid/os/Message;)V
    .locals 0
    .parameter "onComplete"

    .prologue
    .line 1364
    return-void
.end method

.method public getVtFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 1371
    return-void
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
    .line 58
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hangupActiveCall()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1257
    return-void
.end method

.method public hangupAll()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1251
    return-void
.end method

.method public hangupAllEx()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1254
    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 94
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
    .line 367
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->holdVideoStream()V

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

.method public bridge synthetic isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isSimInsert()Z
    .locals 1

    .prologue
    .line 1385
    const/4 v0, 0x0

    return v0
.end method

.method public isVideoHold()Z
    .locals 2

    .prologue
    .line 379
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->isVideoHold()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 381
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
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic notifyCallForwardingIndicator()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->notifyCallForwardingIndicator()V

    return-void
.end method

.method public queryCellBroadcastSmsActivation(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1232
    return-void
.end method

.method public refreshSpnDisplay()V
    .locals 0

    .prologue
    .line 1295
    return-void
.end method

.method public registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1417
    return-void
.end method

.method public registerForNeighboringInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1283
    return-void
.end method

.method public registerForNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1289
    return-void
.end method

.method public bridge synthetic registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1302
    return-void
.end method

.method public bridge synthetic registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1324
    return-void
.end method

.method public registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1318
    return-void
.end method

.method public registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1312
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
    .line 162
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "SipPhone"

    const-string/jumbo v2, "rejectCall"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->ringingCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->rejectCall()V

    .line 169
    monitor-exit v1

    .line 170
    return-void

    .line 167
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v2, "phone not ringing"

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetAccumulatedCallMeter(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 1276
    return-void
.end method

.method public resumeVideoStream()V
    .locals 2

    .prologue
    .line 373
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->resumeVideoStream()V

    .line 375
    monitor-exit v1

    .line 376
    return-void

    .line 375
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
    .line 58
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->saveClirSetting(I)V

    return-void
.end method

.method public bridge synthetic selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    return-void
.end method

.method public sendBTSIMProfile(IILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "nAction"
    .parameter "nType"
    .parameter "strData"
    .parameter "response"

    .prologue
    .line 1345
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;)V
    .locals 2
    .parameter "dtmfString"

    .prologue
    .line 282
    const-string v0, "SipPhone"

    const-string v1, "[SipPhone] sendBurstDtmf() is a CDMA method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void
.end method

.method public sendDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 258
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
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

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->sendDtmf(C)V

    .line 264
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
    .line 364
    return-void
.end method

.method public bridge synthetic sendUssdResponse(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->sendUssdResponse(Ljava/lang/String;)V

    return-void
.end method

.method public set3GCapabilitySIM(I)Z
    .locals 1
    .parameter "simId"

    .prologue
    .line 1393
    const/4 v0, 0x0

    return v0
.end method

.method public setAccumulatedCallMeterMaximum(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "acmmax"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 1273
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "commandInterfaceCFReason"
    .parameter "commandInterfaceCFAction"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    .line 1202
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 2
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 306
    const-string v0, "SipPhone"

    const-string v1, "call waiting not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void
.end method

.method public bridge synthetic setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    return-void
.end method

.method public setCellBroadcastSmsConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .parameter "chIdList"
    .parameter "langList"
    .parameter "response"

    .prologue
    .line 1229
    return-void
.end method

.method public bridge synthetic setDataRoamingEnabled(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->setDataRoamingEnabled(Z)V

    return-void
.end method

.method public setEchoSuppressionEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 316
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->setAudioGroupMode()V

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

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "enable"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 1240
    return-void
.end method

.method public setFgCallVideoEnable(Z)V
    .locals 0
    .parameter "videoEnable"

    .prologue
    .line 355
    return-void
.end method

.method public setGprsTransferType(ILandroid/os/Message;)V
    .locals 0
    .parameter "type"
    .parameter "response"

    .prologue
    .line 1330
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 1177
    return-void
.end method

.method public setLocalPreview(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 385
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->setLocalPreview(Landroid/view/SurfaceHolder;)V

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

.method public setMute(Z)V
    .locals 2
    .parameter "muted"

    .prologue
    .line 322
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->setMute(Z)V

    .line 324
    monitor-exit v1

    .line 325
    return-void

    .line 324
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
    .line 58
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"

    .prologue
    const/4 v0, 0x0

    .line 294
    invoke-static {p2, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 295
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 296
    return-void
.end method

.method public setPOLEntry(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V
    .locals 0
    .parameter "networkWithAct"
    .parameter "onComplete"

    .prologue
    .line 1404
    return-void
.end method

.method public setPpuAndCurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "currency"
    .parameter "ppu"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 1280
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 0
    .parameter "power"

    .prologue
    .line 1154
    return-void
.end method

.method public setRadioPower(ZZ)V
    .locals 0
    .parameter "power"
    .parameter "shutdown"

    .prologue
    .line 1206
    return-void
.end method

.method public setRadioPowerOn()V
    .locals 0

    .prologue
    .line 1157
    return-void
.end method

.method public setRemoteDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 391
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->setRemoteDisplay(Landroid/view/SurfaceHolder;)V

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

.method public setRemoteDisplayOrientation(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 397
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->setRemoteDisplayOrientation(I)V

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

.method public setRingingCallVideoEnable(Z)V
    .locals 0
    .parameter "videoEnable"

    .prologue
    .line 346
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "alphaTag"
    .parameter "voiceMailNumber"
    .parameter "onComplete"

    .prologue
    .line 1193
    return-void
.end method

.method public setVtCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "commandInterfaceCFReason"
    .parameter "commandInterfaceCFAction"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    .line 1361
    return-void
.end method

.method public setVtCallWaiting(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 1367
    return-void
.end method

.method public setVtFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "enable"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 1375
    return-void
.end method

.method public startDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 269
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
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

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhone;->sendDtmf(C)V

    goto :goto_0
.end method

.method public startMedia()V
    .locals 0

    .prologue
    .line 342
    return-void
.end method

.method public stopDtmf()V
    .locals 0

    .prologue
    .line 279
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
    .line 204
    const-string v0, "SipPhone"

    const-string v1, " ~~~~~~  switch fg and bg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-class v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    iget-object v2, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0, v2}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->switchWith(Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;)V

    .line 207
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->hold()V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/baidu/internal/telephony/sip/SipPhone$SipCall;->unhold()V

    .line 209
    :cond_1
    monitor-exit v1

    .line 210
    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1420
    return-void
.end method

.method public unregisterForNeighboringInfo(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1286
    return-void
.end method

.method public unregisterForNetworkInfo(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1292
    return-void
.end method

.method public bridge synthetic unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->unregisterForRingbackTone(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSpeechInfo(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1305
    return-void
.end method

.method public bridge synthetic unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1327
    return-void
.end method

.method public unregisterForVtRingInfo(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1321
    return-void
.end method

.method public unregisterForVtStatusInfo(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1315
    return-void
.end method

.method public bridge synthetic updateServiceLocation()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/baidu/internal/telephony/sip/SipPhoneBase;->updateServiceLocation()V

    return-void
.end method

.method public updateSimIndicateState()V
    .locals 0

    .prologue
    .line 1378
    return-void
.end method

.method public voiceAccept()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1432
    return-void
.end method

.method public vtDial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1423
    const/4 v0, 0x0

    return-object v0
.end method

.method public vtDial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1428
    const/4 v0, 0x0

    return-object v0
.end method
