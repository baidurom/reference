.class public Lcom/android/phone/InCallMenuState;
.super Ljava/lang/Object;
.source "InCallMenuState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InCallMenuState"


# instance fields
.field public canECT:Z

.field public canHangupActiveAndAnswerWaiting:Z

.field public canHangupAll:Z

.field public canHangupHolding:Z

.field public canMuteRinger:Z

.field public canVTVoiceAnswer:Z

.field public hasPermanentMenuKey:Z

.field protected mCM:Lcom/android/internal/telephony/CallManager;

.field protected mInCallScreen:Lcom/android/phone/InCallScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V
    .locals 1
    .parameter "incallScreen"
    .parameter "cm"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/phone/InCallMenuState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 29
    iput-object p2, p0, Lcom/android/phone/InCallMenuState;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 31
    iget-object v0, p0, Lcom/android/phone/InCallMenuState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/InCallMenuState;->hasPermanentMenuKey:Z

    .line 32
    return-void
.end method

.method public static canHangupActiveAndAnswerWaiting(Lcom/android/internal/telephony/CallManager;)Z
    .locals 11
    .parameter "cm"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 75
    const/4 v5, 0x0

    .line 77
    .local v5, retval:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 78
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 79
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 81
    .local v6, rgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_1

    move v3, v7

    .line 82
    .local v3, isFgActive:Z
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_2

    move v2, v7

    .line 83
    .local v2, isBgIdle:Z
    :goto_1
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_3

    move v4, v7

    .line 85
    .local v4, isRgWaiting:Z
    :goto_2
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 86
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    if-ne v7, v8, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v7

    if-nez v7, :cond_0

    .line 88
    const/4 v5, 0x1

    .line 91
    :cond_0
    return v5

    .end local v2           #isBgIdle:Z
    .end local v3           #isFgActive:Z
    .end local v4           #isRgWaiting:Z
    :cond_1
    move v3, v8

    .line 81
    goto :goto_0

    .restart local v3       #isFgActive:Z
    :cond_2
    move v2, v8

    .line 82
    goto :goto_1

    .restart local v2       #isBgIdle:Z
    :cond_3
    move v4, v8

    .line 83
    goto :goto_2
.end method

.method public static canIncomingMenuShow(Lcom/android/internal/telephony/CallManager;)Z
    .locals 1
    .parameter "cm"

    .prologue
    .line 132
    invoke-static {p0}, Lcom/android/phone/InCallMenuState;->canHangupActiveAndAnswerWaiting(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/InCallMenuState;->canVTVoiceAnswer()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canMuteRinger()Z
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    return v0
.end method

.method public static canVTVoiceAnswer()Z
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isVTRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected canECT(Lcom/android/internal/telephony/CallManager;)Z
    .locals 11
    .parameter "cm"

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 95
    const/4 v5, 0x0

    .line 97
    .local v5, retval:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    .line 98
    .local v1, hasActiveFgCall:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    .line 99
    .local v0, hasActiveBgCall:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 101
    .local v2, hasActiveRingingCall:Z
    if-eqz v2, :cond_0

    .line 103
    const/4 v5, 0x0

    move v6, v5

    .line 114
    .end local v5           #retval:Z
    .local v6, retval:I
    :goto_0
    return v6

    .line 107
    .end local v6           #retval:I
    .restart local v5       #retval:Z
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    if-ne v9, v10, :cond_2

    move v4, v7

    .line 109
    .local v4, isFgSipPhone:Z
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    if-ne v9, v10, :cond_3

    move v3, v7

    .line 110
    .local v3, isBgSipPhone:Z
    :goto_2
    if-nez v4, :cond_1

    if-nez v3, :cond_1

    .line 111
    const/4 v5, 0x1

    .end local v3           #isBgSipPhone:Z
    .end local v4           #isFgSipPhone:Z
    :cond_1
    move v6, v5

    .line 114
    .restart local v6       #retval:I
    goto :goto_0

    .end local v6           #retval:I
    :cond_2
    move v4, v8

    .line 108
    goto :goto_1

    .restart local v4       #isFgSipPhone:Z
    :cond_3
    move v3, v8

    .line 109
    goto :goto_2
.end method

.method protected canHangupAll(Lcom/android/internal/telephony/CallManager;)Z
    .locals 6
    .parameter "cm"

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 49
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 50
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 52
    .local v3, rgCall:Lcom/android/internal/telephony/Call;
    const/4 v2, 0x0

    .line 53
    .local v2, retval:Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    .line 54
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_4

    .line 55
    const/4 v2, 0x1

    .line 60
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_3

    .line 61
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_3

    .line 62
    :cond_2
    const/4 v2, 0x1

    .line 65
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canHangupAll = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallMenuState;->log(Ljava/lang/String;)V

    .line 66
    return v2

    .line 56
    :cond_4
    iget-object v4, p0, Lcom/android/phone/InCallMenuState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hasActivefgEccCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected canHangupHolding(Lcom/android/internal/telephony/CallManager;)Z
    .locals 3
    .parameter "cm"

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 71
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 44
    const-string v0, "InCallMenuState"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/phone/InCallMenuState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallMenuState;->canHangupAll(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/InCallMenuState;->canHangupAll:Z

    .line 36
    iget-object v0, p0, Lcom/android/phone/InCallMenuState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallMenuState;->canHangupHolding(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/InCallMenuState;->canHangupHolding:Z

    .line 37
    iget-object v0, p0, Lcom/android/phone/InCallMenuState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/InCallMenuState;->canHangupActiveAndAnswerWaiting(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/InCallMenuState;->canHangupActiveAndAnswerWaiting:Z

    .line 38
    iget-object v0, p0, Lcom/android/phone/InCallMenuState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallMenuState;->canECT(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/InCallMenuState;->canECT:Z

    .line 39
    invoke-static {}, Lcom/android/phone/InCallMenuState;->canVTVoiceAnswer()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/InCallMenuState;->canVTVoiceAnswer:Z

    .line 40
    invoke-static {}, Lcom/android/phone/InCallMenuState;->canMuteRinger()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/InCallMenuState;->canMuteRinger:Z

    .line 41
    return-void
.end method
