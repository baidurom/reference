.class public final Lcom/android/internal/telephony/PhoneStateIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStateIntentReceiver.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field private static final NOTIF_MAX:I = 0x20

.field private static final NOTIF_PHONE:I = 0x1

.field private static final NOTIF_SERVICE:I = 0x2

.field private static final NOTIF_SIGNAL:I = 0x4


# instance fields
.field private mAsuEventWhat:I

.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mLocationEventWhat:I

.field mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mPhoneStateEventWhat:I

.field mServiceState:Landroid/telephony/ServiceState;

.field mServiceState2:Landroid/telephony/ServiceState;

.field private mServiceStateEventWhat:I

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field mSignalStrength2:Landroid/telephony/SignalStrength;

.field private mTarget:Landroid/os/Handler;

.field private mWants:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 84
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 85
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceState:Landroid/telephony/ServiceState;

    .line 86
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 89
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceState2:Landroid/telephony/ServiceState;

    .line 90
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mSignalStrength2:Landroid/telephony/SignalStrength;

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter "context"
    .parameter "target"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>()V

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->setContext(Landroid/content/Context;)V

    .line 111
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->setTarget(Landroid/os/Handler;)V

    .line 112
    return-void
.end method


# virtual methods
.method public getNotifyPhoneCallState()Z
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNotifyServiceState()Z
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNotifySignalStrength()Z
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 2

    .prologue
    .line 123
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "client must call notifyPhoneCallState(int)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceStateGemini(I)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getServiceStateGemini(I)Landroid/telephony/ServiceState;
    .locals 2
    .parameter "simId"

    .prologue
    .line 254
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "client must call notifyServiceState(int)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_0
    if-nez p1, :cond_1

    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceState:Landroid/telephony/ServiceState;

    .line 262
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceState2:Landroid/telephony/ServiceState;

    goto :goto_0
.end method

.method public getSignalStrengthDbm()I
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbmGemini(I)I

    move-result v0

    return v0
.end method

.method public getSignalStrengthDbmGemini(I)I
    .locals 4
    .parameter "simId"

    .prologue
    .line 282
    iget v2, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    .line 283
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "client must call notifySignalStrength(int)"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 287
    :cond_0
    const/4 v0, -0x1

    .line 290
    .local v0, dBm:I
    if-nez p1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 295
    .local v1, tempSignalStrength:Landroid/telephony/SignalStrength;
    :goto_0
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v2

    return v2

    .line 293
    .end local v1           #tempSignalStrength:Landroid/telephony/SignalStrength;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mSignalStrength2:Landroid/telephony/SignalStrength;

    .restart local v1       #tempSignalStrength:Landroid/telephony/SignalStrength;
    goto :goto_0
.end method

.method public getSignalStrengthGemini(I)I
    .locals 3
    .parameter "simId"

    .prologue
    .line 266
    iget v1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    .line 267
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "client must call notifySignalStrength(int)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :cond_0
    if-nez p1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v0

    .line 278
    .local v0, gsmSignalStrength:I
    :goto_0
    return v0

    .line 276
    .end local v0           #gsmSignalStrength:I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mSignalStrength2:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v0

    .restart local v0       #gsmSignalStrength:I
    goto :goto_0
.end method

.method public getSignalStrengthLevelAsu()I
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthGemini(I)I

    move-result v0

    return v0
.end method

.method public notifyPhoneCallState(I)V
    .locals 2
    .parameter "eventWhat"

    .prologue
    .line 162
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    .line 163
    iput p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mPhoneStateEventWhat:I

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public notifyServiceState(I)V
    .locals 2
    .parameter "eventWhat"

    .prologue
    .line 172
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    .line 173
    iput p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceStateEventWhat:I

    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public notifySignalStrength(I)V
    .locals 2
    .parameter "eventWhat"

    .prologue
    .line 182
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mWants:I

    .line 183
    iput p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mAsuEventWhat:I

    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIG_STR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 201
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, action:Ljava/lang/String;
    :try_start_0
    const-string v6, "android.intent.action.SIG_STR"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 206
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/SignalStrength;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;

    move-result-object v5

    .line 208
    .local v5, tempSignalStrength:Landroid/telephony/SignalStrength;
    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getMySimId()I

    move-result v6

    if-nez v6, :cond_1

    .line 209
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 214
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getNotifySignalStrength()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 215
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    iget v7, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mAsuEventWhat:I

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 216
    .local v2, message:Landroid/os/Message;
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 250
    .end local v2           #message:Landroid/os/Message;
    .end local v5           #tempSignalStrength:Landroid/telephony/SignalStrength;
    :cond_0
    :goto_1
    return-void

    .line 211
    .restart local v5       #tempSignalStrength:Landroid/telephony/SignalStrength;
    :cond_1
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mSignalStrength2:Landroid/telephony/SignalStrength;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    .end local v5           #tempSignalStrength:Landroid/telephony/SignalStrength;
    :catch_0
    move-exception v1

    .line 247
    .local v1, ex:Ljava/lang/Exception;
    const-string v6, "PHONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PhoneStateIntentRecv] caught "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 218
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v6, "android.intent.action.PHONE_STATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 221
    const-string/jumbo v6, "state"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, phoneState:Ljava/lang/String;
    const-class v6, Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-static {v6, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v6, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 225
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getNotifyPhoneCallState()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 226
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    iget v7, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mPhoneStateEventWhat:I

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 228
    .restart local v2       #message:Landroid/os/Message;
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 230
    .end local v2           #message:Landroid/os/Message;
    .end local v3           #phoneState:Ljava/lang/String;
    :cond_3
    const-string v6, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 232
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v4

    .line 234
    .local v4, tempServiceState:Landroid/telephony/ServiceState;
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getMySimId()I

    move-result v6

    if-nez v6, :cond_4

    .line 235
    iput-object v4, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceState:Landroid/telephony/ServiceState;

    .line 240
    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getNotifyServiceState()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 241
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    iget v7, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceStateEventWhat:I

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 243
    .restart local v2       #message:Landroid/os/Message;
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 237
    .end local v2           #message:Landroid/os/Message;
    :cond_4
    iput-object v4, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mServiceState2:Landroid/telephony/ServiceState;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public registerIntent()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 193
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mContext:Landroid/content/Context;

    .line 116
    return-void
.end method

.method public setTarget(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mTarget:Landroid/os/Handler;

    .line 120
    return-void
.end method

.method public unregisterIntent()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 197
    return-void
.end method
