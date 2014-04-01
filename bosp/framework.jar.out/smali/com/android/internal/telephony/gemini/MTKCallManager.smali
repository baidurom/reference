.class public Lcom/android/internal/telephony/gemini/MTKCallManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/android/internal/telephony/gemini/MTKCallManager;


# instance fields
.field private b:Lcom/android/internal/telephony/CallManager;

.field private c:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/gemini/MTKCallManager;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/gemini/MTKCallManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    .line 93
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/gemini/MTKCallManager;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/gemini/MTKCallManager;

    return-object v0
.end method


# virtual methods
.method public dialGemini(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 138
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    .line 139
    const-string v0, "MTKCallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialGemini receives error simId. simId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    .line 143
    :cond_0
    check-cast p1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v0, p2}, Lcom/android/internal/telephony/CallManager;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultPhoneGemini()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->c:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public registerForCallWaitingGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 559
    if-nez p4, :cond_0

    .line 560
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 564
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForCdmaOtaStatusChangeGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 650
    if-nez p4, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 655
    :goto_0
    return-void

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForCrssSuppServiceNotificationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 792
    if-nez p4, :cond_0

    .line 793
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 797
    :goto_0
    return-void

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForCrssSuppServiceNotification2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    if-nez p4, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForDisplayInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 621
    if-nez p4, :cond_0

    .line 622
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 626
    :goto_0
    return-void

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForDisplayInfo2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForEcmTimerResetGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 421
    if-nez p4, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 426
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForEcmTimerReset2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForInCallVoicePrivacyOffGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 531
    if-nez p4, :cond_0

    .line 532
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 536
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOff2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForInCallVoicePrivacyOnGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 503
    if-nez p4, :cond_0

    .line 504
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 508
    :goto_0
    return-void

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOn2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForIncomingRingGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 283
    if-nez p4, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForMmiCompleteGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 395
    if-nez p4, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForMmiInitiateGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 367
    if-nez p4, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 372
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForMmiInitiate2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForNewRingingConnectionGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 254
    if-nez p4, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForPostDialCharacterGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 728
    if-nez p4, :cond_0

    .line 729
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 733
    :goto_0
    return-void

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForPostDialCharacter2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForPreciseCallStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 199
    if-nez p4, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForResendIncallMuteGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 337
    if-nez p4, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForResendIncallMute2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForRingbackToneGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 313
    if-nez p4, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForRingbackTone2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForServiceStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 446
    if-nez p4, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 451
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForServiceStateChanged2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForSignalInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 590
    if-nez p4, :cond_0

    .line 591
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 595
    :goto_0
    return-void

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSignalInfo2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForSpeechInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 744
    if-nez p4, :cond_0

    .line 745
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 749
    :goto_0
    return-void

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSpeechInfo2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForSubscriptionInfoReadyGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 676
    if-nez p4, :cond_0

    .line 677
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 681
    :goto_0
    return-void

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSubscriptionInfoReady2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForSuppServiceFailedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 474
    if-nez p4, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 479
    :goto_0
    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceFailed2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForSuppServiceNotificationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 808
    if-nez p4, :cond_0

    .line 809
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 813
    :goto_0
    return-void

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceNotification2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForUnknownConnectionGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 223
    if-nez p4, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForUnknownConnection2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForVtReplaceDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 824
    if-nez p4, :cond_0

    .line 825
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 829
    :goto_0
    return-void

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForVtReplaceDisconnect2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForVtRingInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 776
    if-nez p4, :cond_0

    .line 777
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 781
    :goto_0
    return-void

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForVtRingInfo2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForVtStatusInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 760
    if-nez p4, :cond_0

    .line 761
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 765
    :goto_0
    return-void

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForVtStatusInfo2(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerPhoneGemini(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->c:Lcom/android/internal/telephony/Phone;

    move-object v0, p1

    .line 113
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    move-object v0, p1

    .line 116
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 120
    return-void
.end method

.method public unregisterForCallWaitingGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 571
    if-nez p2, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 576
    :goto_0
    return-void

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForCdmaOtaStatusChangeGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 662
    if-nez p2, :cond_0

    .line 663
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 667
    :goto_0
    return-void

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForCrssSuppServiceNotificationGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 800
    if-nez p2, :cond_0

    .line 801
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V

    .line 805
    :goto_0
    return-void

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForCrssSuppServiceNotification2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForDisconnectGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 182
    if-nez p2, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForDisplayInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 635
    if-nez p2, :cond_0

    .line 636
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 640
    :goto_0
    return-void

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisplayInfo2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForEcmTimerResetGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 433
    if-nez p2, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 438
    :goto_0
    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForEcmTimerReset2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForInCallVoicePrivacyOffGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 544
    if-nez p2, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 549
    :goto_0
    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOff2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForInCallVoicePrivacyOnGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 516
    if-nez p2, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 521
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOn2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForIncomingRingGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 296
    if-nez p2, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForIncomingRing2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForMmiCompleteGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 407
    if-nez p2, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForMmiInitiateGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 379
    if-nez p2, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 384
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiInitiate2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForNewRingingConnectionGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 267
    if-nez p2, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForNewRingingConnection2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForPostDialCharacterGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 736
    if-nez p2, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForPostDialCharacter(Landroid/os/Handler;)V

    .line 741
    :goto_0
    return-void

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForPostDialCharacter2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForPreciseCallStateChangedGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 211
    if-nez p2, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForResendIncallMuteGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 348
    if-nez p2, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 353
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForResendIncallMute2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForRingbackToneGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 325
    if-nez p2, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForRingbackTone2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForServiceStateChangedGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 458
    if-nez p2, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 463
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForServiceStateChanged2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForSignalInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 604
    if-nez p2, :cond_0

    .line 605
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 609
    :goto_0
    return-void

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSignalInfo2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForSpeechInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 752
    if-nez p2, :cond_0

    .line 753
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSpeechInfo(Landroid/os/Handler;)V

    .line 757
    :goto_0
    return-void

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSpeechInfo2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForSubscriptionInfoReadyGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 688
    if-nez p2, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 693
    :goto_0
    return-void

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSubscriptionInfoReady2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForSuppServiceFailedGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 488
    if-nez p2, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 493
    :goto_0
    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceFailed2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForSuppServiceNotificationGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 816
    if-nez p2, :cond_0

    .line 817
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 821
    :goto_0
    return-void

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceNotification2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForUnknownConnectionGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 234
    if-nez p2, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForUnknownConnection2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForVtReplaceDisconnectGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 832
    if-nez p2, :cond_0

    .line 833
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V

    .line 837
    :goto_0
    return-void

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForVtReplaceDisconnect2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForVtRingInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 784
    if-nez p2, :cond_0

    .line 785
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForVtRingInfo(Landroid/os/Handler;)V

    .line 789
    :goto_0
    return-void

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForVtRingInfo2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForVtStatusInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 768
    if-nez p2, :cond_0

    .line 769
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForVtStatusInfo(Landroid/os/Handler;)V

    .line 773
    :goto_0
    return-void

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForVtStatusInfo2(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterPhoneGemini(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter

    .prologue
    .line 126
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    move-object v0, p1

    .line 129
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 133
    return-void
.end method

.method public vtDialGemini(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 150
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    .line 151
    const-string v0, "MTKCallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vtDialGemini receives error simId. simId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v0, 0x0

    .line 156
    :goto_0
    return-object v0

    .line 155
    :cond_0
    check-cast p1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v0, p2}, Lcom/android/internal/telephony/CallManager;->vtDial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0
.end method
