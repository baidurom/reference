.class Lcom/android/internal/telephony/CallManager$1;
.super Landroid/os/Handler;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CallManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2008
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2014
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " handleMessage msgid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 2294
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2019
    :pswitch_1
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_DISCONNECT)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    const/16 v5, 0x64

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_1

    .line 2021
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2025
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->handle3GSwitchLock()V
    invoke-static {v5}, Lcom/android/internal/telephony/CallManager;->access$000(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 2023
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants2:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 2029
    :pswitch_2
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_PRECISE_CALL_STATE_CHANGED)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    const/16 v5, 0x65

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_2

    .line 2031
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2035
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->handle3GSwitchLock()V
    invoke-static {v5}, Lcom/android/internal/telephony/CallManager;->access$000(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 2033
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants2:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_2

    .line 2039
    :pswitch_3
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_NEW_RINGING_CONNECTION)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    instance-of v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    instance-of v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->hasMoreThanOneRingingCall()Z
    invoke-static {v5}, Lcom/android/internal/telephony/CallManager;->access$100(Lcom/android/internal/telephony/CallManager;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2042
    :cond_4
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v1, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 2044
    .local v1, c:Lcom/android/internal/telephony/Connection;
    :try_start_0
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "silently drop incoming call: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2046
    :catch_0
    move-exception v2

    .line 2047
    .local v2, e:Lcom/android/internal/telephony/CallStateException;
    const-string v5, "CallManager"

    const-string/jumbo v6, "new ringing connection"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2050
    .end local v1           #c:Lcom/android/internal/telephony/Connection;
    .end local v2           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_5
    const/16 v5, 0x66

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_6

    .line 2051
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2053
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants2:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2059
    :pswitch_4
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_UNKNOWN_CONNECTION)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    const/16 v5, 0x67

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_7

    .line 2061
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2063
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants2:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2068
    :pswitch_5
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_INCOMING_RING)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2071
    const/16 v5, 0x68

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_8

    .line 2072
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2074
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants2:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2080
    :pswitch_6
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_RINGBACK_TONE)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    const/16 v5, 0x69

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_9

    .line 2082
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2084
    :cond_9
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants2:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2089
    :pswitch_7
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_IN_CALL_VOICE_PRIVACY_ON)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    const/16 v5, 0x6a

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_a

    .line 2091
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2093
    :cond_a
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants2:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2098
    :pswitch_8
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_IN_CALL_VOICE_PRIVACY_OFF)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    const/16 v5, 0x6b

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_b

    .line 2100
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2102
    :cond_b
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants2:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2107
    :pswitch_9
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_CALL_WAITING)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    const/16 v5, 0x6c

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_c

    .line 2109
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2111
    :cond_c
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants2:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2116
    :pswitch_a
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_DISPLAY_INFO)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    const/16 v5, 0x6d

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_d

    .line 2118
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2120
    :cond_d
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants2:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2125
    :pswitch_b
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_SIGNAL_INFO)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    const/16 v5, 0x6e

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_e

    .line 2127
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2129
    :cond_e
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants2:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2134
    :pswitch_c
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_CDMA_OTA_STATUS_CHANGE)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    const/16 v5, 0x6f

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_f

    .line 2136
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2138
    :cond_f
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants2:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2143
    :pswitch_d
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_RESEND_INCALL_MUTE)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    const/16 v5, 0x70

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_10

    .line 2145
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2147
    :cond_10
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants2:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2152
    :pswitch_e
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_MMI_INITIATE)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    const/16 v5, 0x71

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_11

    .line 2154
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2156
    :cond_11
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants2:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2161
    :pswitch_f
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_MMI_COMPLETE)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    const/16 v5, 0x72

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_12

    .line 2163
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2165
    :cond_12
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants2:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2170
    :pswitch_10
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_ECM_TIMER_RESET)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    const/16 v5, 0x73

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_13

    .line 2172
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2174
    :cond_13
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants2:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2179
    :pswitch_11
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_SUBSCRIPTION_INFO_READY)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    const/16 v5, 0x74

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_14

    .line 2181
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2183
    :cond_14
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants2:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2188
    :pswitch_12
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_SUPP_SERVICE_FAILED)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    const/16 v5, 0x75

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_15

    .line 2190
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2192
    :cond_15
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants2:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2197
    :pswitch_13
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_SERVICE_STATE_CHANGED)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    const/16 v5, 0x76

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_16

    .line 2199
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2201
    :cond_16
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants2:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2208
    :pswitch_14
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_POST_DIAL_CHARACTER)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    const/16 v5, 0x77

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_17

    .line 2210
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v5, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 2212
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v5, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5, v3}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Registrant;

    invoke-virtual {v5}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v4

    .line 2213
    .local v4, notifyMsg:Landroid/os/Message;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2214
    iget v5, p1, Landroid/os/Message;->arg1:I

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 2215
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 2210
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2218
    .end local v3           #i:I
    .end local v4           #notifyMsg:Landroid/os/Message;
    :cond_17
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v5, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 2220
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v5, v5, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v5, v3}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Registrant;

    invoke-virtual {v5}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v4

    .line 2221
    .restart local v4       #notifyMsg:Landroid/os/Message;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2222
    iget v5, p1, Landroid/os/Message;->arg1:I

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 2223
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 2218
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2230
    .end local v3           #i:I
    .end local v4           #notifyMsg:Landroid/os/Message;
    :pswitch_15
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_SPEECH_INFO)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2232
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    check-cast v5, [I

    aget v5, v5, v8

    if-ne v5, v9, :cond_18

    .line 2234
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #setter for: Lcom/android/internal/telephony/CallManager;->espeech_info:I
    invoke-static {v5, v9}, Lcom/android/internal/telephony/CallManager;->access$202(Lcom/android/internal/telephony/CallManager;I)I

    .line 2235
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    const/4 v6, 0x2

    #calls: Lcom/android/internal/telephony/CallManager;->setAudioMode(I)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/CallManager;->access$300(Lcom/android/internal/telephony/CallManager;I)V

    .line 2241
    :goto_5
    const/16 v5, 0x78

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_19

    .line 2242
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2239
    :cond_18
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #setter for: Lcom/android/internal/telephony/CallManager;->espeech_info:I
    invoke-static {v5, v8}, Lcom/android/internal/telephony/CallManager;->access$202(Lcom/android/internal/telephony/CallManager;I)I

    goto :goto_5

    .line 2244
    :cond_19
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mSpeechInfoRegistrants2:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2249
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_16
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_VT_RING_INFO)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    const/16 v5, 0x7a

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_1a

    .line 2251
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2253
    :cond_1a
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants2:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2258
    :pswitch_17
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_VT_STATUS_INFO)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    const/16 v5, 0x79

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_1b

    .line 2260
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2262
    :cond_1b
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants2:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2267
    :pswitch_18
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_CRSS_SUPP_SERVICE_NOTIFICATION)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    const/16 v5, 0x7b

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_1c

    .line 2269
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2271
    :cond_1c
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2276
    :pswitch_19
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_SUPP_SERVICE_NOTIFICATION)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    const/16 v5, 0x7c

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_1d

    .line 2278
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2280
    :cond_1d
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2285
    :pswitch_1a
    const-string v5, "CallManager"

    const-string v6, " handleMessage (EVENT_VT_REPLACE_DISCONNECT)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    const/16 v5, 0x7d

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_1e

    .line 2287
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2289
    :cond_1e
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v6, v5, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants2:Landroid/os/RegistrantList;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2016
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_17
        :pswitch_16
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_17
        :pswitch_16
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method
