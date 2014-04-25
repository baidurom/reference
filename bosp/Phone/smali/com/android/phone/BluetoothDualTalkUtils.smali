.class public Lcom/android/phone/BluetoothDualTalkUtils;
.super Ljava/lang/Object;
.source "BluetoothDualTalkUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothDualTalkUtils"


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mDualTalk:Lcom/mediatek/phone/DualTalkUtils;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CallManager;Lcom/mediatek/phone/DualTalkUtils;)V
    .locals 0
    .parameter "cm"
    .parameter "dtu"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/phone/BluetoothDualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 40
    iput-object p2, p0, Lcom/android/phone/BluetoothDualTalkUtils;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    .line 41
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 240
    const-string v0, "BluetoothDualTalkUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method


# virtual methods
.method public getActiveFgCall()Lcom/android/internal/telephony/Call;
    .locals 9

    .prologue
    .line 44
    const-string v7, "[getActiveFgCall]"

    invoke-direct {p0, v7}, Lcom/android/phone/BluetoothDualTalkUtils;->log(Ljava/lang/String;)V

    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, call:Lcom/android/internal/telephony/Call;
    iget-object v7, p0, Lcom/android/phone/BluetoothDualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v5

    .line 48
    .local v5, listCall:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getActiveFgCall: foregroundCalls="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/BluetoothDualTalkUtils;->log(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/phone/BluetoothDualTalkUtils;->isGsmActive()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/BluetoothDualTalkUtils;->isCdmaActive()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 54
    const/4 v3, 0x0

    .local v3, gsmCall:Lcom/android/internal/telephony/Call;
    const/4 v2, 0x0

    .line 55
    .local v2, cdmaCall:Lcom/android/internal/telephony/Call;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 56
    .local v0, c:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 57
    .local v6, phoneType:I
    const/4 v7, 0x1

    if-ne v7, v6, :cond_1

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    if-eq v7, v8, :cond_1

    .line 58
    move-object v3, v0

    .line 61
    :cond_1
    const/4 v7, 0x2

    if-ne v7, v6, :cond_0

    .line 62
    move-object v2, v0

    goto :goto_0

    .line 65
    .end local v0           #c:Lcom/android/internal/telephony/Call;
    .end local v6           #phoneType:I
    :cond_2
    if-eqz v3, :cond_5

    move-object v1, v3

    .line 69
    .end local v2           #cdmaCall:Lcom/android/internal/telephony/Call;
    .end local v3           #gsmCall:Lcom/android/internal/telephony/Call;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 70
    iget-object v7, p0, Lcom/android/phone/BluetoothDualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 72
    :cond_4
    const-string v7, "[[getActiveFgCall]]"

    invoke-direct {p0, v7}, Lcom/android/phone/BluetoothDualTalkUtils;->log(Ljava/lang/String;)V

    .line 73
    return-object v1

    .restart local v2       #cdmaCall:Lcom/android/internal/telephony/Call;
    .restart local v3       #gsmCall:Lcom/android/internal/telephony/Call;
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_5
    move-object v1, v2

    .line 65
    goto :goto_1
.end method

.method public getFirstActiveBgCall()Lcom/android/internal/telephony/Call;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 124
    const-string v4, "[getFirstActiveBgCall]"

    invoke-direct {p0, v4}, Lcom/android/phone/BluetoothDualTalkUtils;->log(Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, call:Lcom/android/internal/telephony/Call;
    iget-object v4, p0, Lcom/android/phone/BluetoothDualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v3

    .line 127
    .local v3, listCall:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFirstActiveBgCall: backgroundCalls="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/BluetoothDualTalkUtils;->log(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/phone/BluetoothDualTalkUtils;->isGsmActive()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/BluetoothDualTalkUtils;->isCdmaActive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    const/4 v2, 0x0

    .local v2, gsmFgCall:Lcom/android/internal/telephony/Call;
    const/4 v1, 0x0

    .line 132
    .local v1, gsmBgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0, v6}, Lcom/android/phone/BluetoothDualTalkUtils;->getFirstFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 133
    invoke-virtual {p0, v6}, Lcom/android/phone/BluetoothDualTalkUtils;->getFirstBgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 135
    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    if-eq v4, v5, :cond_3

    .line 136
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    move-object v0, v1

    .line 149
    .end local v1           #gsmBgCall:Lcom/android/internal/telephony/Call;
    .end local v2           #gsmFgCall:Lcom/android/internal/telephony/Call;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 150
    iget-object v4, p0, Lcom/android/phone/BluetoothDualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 152
    :cond_1
    const-string v4, "[[getFirstActiveBgCall]]"

    invoke-direct {p0, v4}, Lcom/android/phone/BluetoothDualTalkUtils;->log(Ljava/lang/String;)V

    .line 153
    return-object v0

    .line 142
    .restart local v1       #gsmBgCall:Lcom/android/internal/telephony/Call;
    .restart local v2       #gsmFgCall:Lcom/android/internal/telephony/Call;
    :cond_2
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/phone/BluetoothDualTalkUtils;->getFirstFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/phone/BluetoothDualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getFirstBgCall(I)Lcom/android/internal/telephony/Call;
    .locals 6
    .parameter "type"

    .prologue
    .line 100
    const-string v4, "[getFirstBgCall]"

    invoke-direct {p0, v4}, Lcom/android/phone/BluetoothDualTalkUtils;->log(Ljava/lang/String;)V

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFirstBgCall: type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/BluetoothDualTalkUtils;->log(Ljava/lang/String;)V

    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0, p1}, Lcom/android/phone/BluetoothDualTalkUtils;->isSupportPhone(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 105
    const/4 v3, 0x0

    .line 107
    .local v3, listCall:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    iget-object v4, p0, Lcom/android/phone/BluetoothDualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v3

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFirstBgCall: backgroundCalls="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/BluetoothDualTalkUtils;->log(Ljava/lang/String;)V

    .line 109
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 110
    .local v0, c:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 111
    move-object v1, v0

    goto :goto_0

    .line 114
    .end local v0           #c:Lcom/android/internal/telephony/Call;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listCall:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    :cond_1
    const-string v4, "getFirstBgCall: no match type!"

    invoke-direct {p0, v4}, Lcom/android/phone/BluetoothDualTalkUtils;->log(Ljava/lang/String;)V

    .line 118
    :cond_2
    const-string v4, "[[getFirstBgCall]]"

    invoke-direct {p0, v4}, Lcom/android/phone/BluetoothDualTalkUtils;->log(Ljava/lang/String;)V

    .line 119
    return-object v1
.end method

.method public getFirstFgCall(I)Lcom/android/internal/telephony/Call;
    .locals 6
    .parameter "type"

    .prologue
    .line 77
    const-string v4, "[getFirstActiveFgCall]"

    invoke-direct {p0, v4}, Lcom/android/phone/BluetoothDualTalkUtils;->log(Ljava/lang/String;)V

    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFirstActiveFgCall: type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/BluetoothDualTalkUtils;->log(Ljava/lang/String;)V

    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0, p1}, Lcom/android/phone/BluetoothDualTalkUtils;->isSupportPhone(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    const/4 v3, 0x0

    .line 84
    .local v3, listCall:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    iget-object v4, p0, Lcom/android/phone/BluetoothDualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v3

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFirstActiveFgCall: foregroundCalls="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/BluetoothDualTalkUtils;->log(Ljava/lang/String;)V

    .line 86
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 87
    .local v0, c:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 88
    move-object v1, v0

    goto :goto_0

    .line 91
    .end local v0           #c:Lcom/android/internal/telephony/Call;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listCall:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    :cond_1
    const-string v4, "getFirstActiveFgCall: no match type!"

    invoke-direct {p0, v4}, Lcom/android/phone/BluetoothDualTalkUtils;->log(Ljava/lang/String;)V

    .line 95
    :cond_2
    const-string v4, "[[getFirstActiveFgCall]]"

    invoke-direct {p0, v4}, Lcom/android/phone/BluetoothDualTalkUtils;->log(Ljava/lang/String;)V

    .line 96
    return-object v1
.end method

.method public getRingingCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/phone/BluetoothDualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getRingingCalls()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSecondActiveRingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/phone/BluetoothDualTalkUtils;->mDualTalk:Lcom/mediatek/phone/DualTalkUtils;

    invoke-virtual {v0}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveRingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z
    .locals 1
    .parameter "background"

    .prologue
    .line 236
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method public hangupRingingCall(Lcom/android/internal/telephony/Call;)Z
    .locals 1
    .parameter "ringing"

    .prologue
    .line 232
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method public isCdmaActive()Z
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/phone/BluetoothDualTalkUtils;->isPhoneActive(I)Z

    move-result v0

    return v0
.end method

.method public isGsmActive()Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/BluetoothDualTalkUtils;->isPhoneActive(I)Z

    move-result v0

    return v0
.end method

.method public isPhoneActive(I)Z
    .locals 6
    .parameter "type"

    .prologue
    .line 181
    const-string v4, "[isPhoneActive]"

    invoke-direct {p0, v4}, Lcom/android/phone/BluetoothDualTalkUtils;->log(Ljava/lang/String;)V

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPhoneActive: type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/BluetoothDualTalkUtils;->log(Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, bPhoneActive:Z
    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_6

    .line 186
    :cond_0
    const/4 v3, 0x0

    .line 188
    .local v3, listCall:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    if-nez v0, :cond_2

    .line 189
    iget-object v4, p0, Lcom/android/phone/BluetoothDualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v3

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPhoneActive: foregroundCalls="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/BluetoothDualTalkUtils;->log(Ljava/lang/String;)V

    .line 191
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Call;

    .line 192
    .local v1, c:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne p1, v4, :cond_1

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    if-eq v4, v5, :cond_1

    .line 193
    const/4 v0, 0x1

    goto :goto_0

    .line 197
    .end local v1           #c:Lcom/android/internal/telephony/Call;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    if-nez v0, :cond_4

    .line 198
    iget-object v4, p0, Lcom/android/phone/BluetoothDualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v3

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPhoneActive: backgroundCalls="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/BluetoothDualTalkUtils;->log(Ljava/lang/String;)V

    .line 200
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Call;

    .line 201
    .restart local v1       #c:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne p1, v4, :cond_3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    if-eq v4, v5, :cond_3

    .line 202
    const/4 v0, 0x1

    goto :goto_1

    .line 206
    .end local v1           #c:Lcom/android/internal/telephony/Call;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_4
    if-nez v0, :cond_7

    .line 207
    iget-object v4, p0, Lcom/android/phone/BluetoothDualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getRingingCalls()Ljava/util/List;

    move-result-object v3

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPhoneActive: ringingCalls="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/BluetoothDualTalkUtils;->log(Ljava/lang/String;)V

    .line 209
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Call;

    .line 210
    .restart local v1       #c:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne p1, v4, :cond_5

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    if-eq v4, v5, :cond_5

    .line 211
    const/4 v0, 0x1

    goto :goto_2

    .line 215
    .end local v1           #c:Lcom/android/internal/telephony/Call;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listCall:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    :cond_6
    const-string v4, "isPhoneActive: no match type!"

    invoke-direct {p0, v4}, Lcom/android/phone/BluetoothDualTalkUtils;->log(Ljava/lang/String;)V

    .line 218
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPhoneActive: bPhoneActive="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/BluetoothDualTalkUtils;->log(Ljava/lang/String;)V

    .line 219
    const-string v4, "[[isPhoneActive]]"

    invoke-direct {p0, v4}, Lcom/android/phone/BluetoothDualTalkUtils;->log(Ljava/lang/String;)V

    .line 220
    return v0
.end method

.method public isSupportPhone(I)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, bSupportPhoneType:Z
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 174
    :cond_0
    const/4 v0, 0x1

    .line 177
    :cond_1
    return v0
.end method
