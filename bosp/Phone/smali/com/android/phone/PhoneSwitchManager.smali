.class public Lcom/android/phone/PhoneSwitchManager;
.super Landroid/os/Handler;
.source "PhoneSwitchManager.java"


# static fields
.field private static final EVENT_GET_PREFERRED_NETWORK_TYPE:I = 0x1

.field private static final EVENT_SET_PREFERRED_NETWORK_TYPE:I = 0x0

.field private static final EVENT_WAIT_RADIO_OFF:I = 0x2

.field private static final EVENT_WAIT_RADIO_ON:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneSwitchManger"

.field private static final WAITING_RADIO_OFF_EVENT_TIME:I = 0xfa0

.field private static final WAITING_RADIO_ON_EVENT_TIME:I = 0xfa0


# instance fields
.field private mNetworkType:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private msgProccessing:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .parameter "phone"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/phone/PhoneSwitchManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 36
    iget-object v1, p0, Lcom/android/phone/PhoneSwitchManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 38
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x20000001

    const-string v2, "PhoneSwitchManger"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneSwitchManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 41
    return-void
.end method

.method private exit()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/PhoneSwitchManager;->msgProccessing:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/phone/PhoneSwitchManager;->msgProccessing:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/PhoneSwitchManager;->msgProccessing:Landroid/os/Message;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneSwitchManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/android/phone/PhoneSwitchManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 74
    :cond_1
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 121
    const-string v0, "PhoneSwitchManger"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const-wide/16 v6, 0xfa0

    const/4 v5, 0x1

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received msg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/PhoneSwitchManager;->log(Ljava/lang/String;)V

    .line 81
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 85
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/android/phone/PhoneSwitchManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    iget v4, p0, Lcom/android/phone/PhoneSwitchManager;->mNetworkType:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    iget-object v2, p0, Lcom/android/phone/PhoneSwitchManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v5}, Lcom/android/phone/PhoneSwitchManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/PhoneSwitchManager;->exit()V

    goto :goto_0

    .line 98
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/PhoneSwitchManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 99
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v6, v7}, Lcom/android/phone/PhoneSwitchManager;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 103
    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/PhoneSwitchManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v5}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 104
    const/4 v2, 0x3

    invoke-virtual {p0, v2, v6, v7}, Lcom/android/phone/PhoneSwitchManager;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 108
    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/PhoneSwitchManager;->exit()V

    .line 109
    iget-object v2, p0, Lcom/android/phone/PhoneSwitchManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 111
    .local v1, pm:Landroid/os/PowerManager;
    const-string v2, "Phone type is changed."

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public startSwitchPhone(ZLandroid/os/Message;)Z
    .locals 4
    .parameter "isCdma"
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 44
    iput-object p2, p0, Lcom/android/phone/PhoneSwitchManager;->msgProccessing:Landroid/os/Message;

    .line 46
    iget-object v2, p0, Lcom/android/phone/PhoneSwitchManager;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v2, :cond_0

    .line 47
    const-string v1, "No Phone, cann\'t startSwitchPhone"

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneSwitchManager;->log(Ljava/lang/String;)V

    .line 63
    :goto_0
    return v0

    .line 51
    :cond_0
    if-eqz p1, :cond_2

    .line 52
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/phone/PhoneSwitchManager;->mNetworkType:I

    .line 57
    :goto_1
    iget-object v2, p0, Lcom/android/phone/PhoneSwitchManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v3, p0, Lcom/android/phone/PhoneSwitchManager;->mNetworkType:I

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneSwitchManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 60
    iget-object v0, p0, Lcom/android/phone/PhoneSwitchManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/phone/PhoneSwitchManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_1
    move v0, v1

    .line 63
    goto :goto_0

    .line 54
    :cond_2
    iput v1, p0, Lcom/android/phone/PhoneSwitchManager;->mNetworkType:I

    goto :goto_1
.end method
