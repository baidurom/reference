.class public Lcom/android/internal/telephony/gemini/MTKCallManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Lcom/android/internal/telephony/gemini/MTKCallManager;


# instance fields
.field a:Lcom/android/internal/telephony/CallManager;

.field b:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/gemini/MTKCallManager;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKCallManager;->c:Lcom/android/internal/telephony/gemini/MTKCallManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    .line 89
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/gemini/MTKCallManager;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKCallManager;->c:Lcom/android/internal/telephony/gemini/MTKCallManager;

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
    .line 140
    add-int/lit8 v0, p3, 0x0

    .line 141
    if-ltz v0, :cond_0

    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v1, :cond_1

    .line 142
    :cond_0
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

    .line 143
    const/4 v0, 0x0

    .line 147
    :goto_0
    return-object v0

    .line 146
    :cond_1
    check-cast p1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v0, p2}, Lcom/android/internal/telephony/CallManager;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultPhoneGemini()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public registerForCallWaitingGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->registerForCallWaitingEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 599
    return-void
.end method

.method public registerForCdmaOtaStatusChangeGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChangeEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 696
    return-void
.end method

.method public registerForCipherIndicationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->registerForCipherIndicationEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 904
    return-void
.end method

.method public registerForCrssSuppServiceNotificationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->registerForCrssSuppServiceNotificationEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 850
    return-void
.end method

.method public registerForDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->registerForDisconnectEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 180
    return-void
.end method

.method public registerForDisplayInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->registerForDisplayInfoEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 665
    return-void
.end method

.method public registerForEcmTimerResetGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->registerForEcmTimerResetEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 451
    return-void
.end method

.method public registerForInCallVoicePrivacyOffGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOffEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 569
    return-void
.end method

.method public registerForInCallVoicePrivacyOnGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOnEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 539
    return-void
.end method

.method public registerForIncomingRingGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRingEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 303
    return-void
.end method

.method public registerForMmiCompleteGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->registerForMmiCompleteEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 423
    return-void
.end method

.method public registerForMmiInitiateGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->registerForMmiInitiateEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 393
    return-void
.end method

.method public registerForNewRingingConnectionGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnectionEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 272
    return-void
.end method

.method public registerForPostDialCharacterGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->registerForPostDialCharacterEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 778
    return-void
.end method

.method public registerForPreciseCallStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChangedEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 211
    return-void
.end method

.method public registerForResendIncallMuteGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->registerForResendIncallMuteEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 361
    return-void
.end method

.method public registerForRingbackToneGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->registerForRingbackToneEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 335
    return-void
.end method

.method public registerForServiceStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->registerForServiceStateChangedEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 478
    return-void
.end method

.method public registerForSignalInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->registerForSignalInfoEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 632
    return-void
.end method

.method public registerForSpeechInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->registerForSpeechInfoEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 796
    return-void
.end method

.method public registerForSubscriptionInfoReadyGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->registerForSubscriptionInfoReadyEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 724
    return-void
.end method

.method public registerForSuppServiceFailedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceFailedEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 508
    return-void
.end method

.method public registerForSuppServiceNotificationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceNotificationEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 868
    return-void
.end method

.method public registerForUnknownConnectionGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->registerForUnknownConnectionEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 237
    return-void
.end method

.method public registerForVtReplaceDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->registerForVtReplaceDisconnectEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 886
    return-void
.end method

.method public registerForVtRingInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->registerForVtRingInfoEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 832
    return-void
.end method

.method public registerForVtStatusInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->registerForVtStatusInfoEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 814
    return-void
.end method

.method public registerPhoneGemini(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->b:Lcom/android/internal/telephony/Phone;

    .line 109
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v0, :cond_0

    move-object v0, p1

    .line 110
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    add-int/lit8 v2, v1, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 111
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 109
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 119
    return-void
.end method

.method public unregisterForCallWaitingGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaitingEx(Landroid/os/Handler;I)V

    .line 612
    return-void
.end method

.method public unregisterForCdmaOtaStatusChangeGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChangeEx(Landroid/os/Handler;I)V

    .line 709
    return-void
.end method

.method public unregisterForCipherIndicationGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->unregisterForCipherIndicationEx(Landroid/os/Handler;I)V

    .line 913
    return-void
.end method

.method public unregisterForCrssSuppServiceNotificationGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 853
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->unregisterForCrssSuppServiceNotificationEx(Landroid/os/Handler;I)V

    .line 859
    return-void
.end method

.method public unregisterForDisconnectGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnectEx(Landroid/os/Handler;I)V

    .line 193
    return-void
.end method

.method public unregisterForDisplayInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->unregisterForDisplayInfoEx(Landroid/os/Handler;I)V

    .line 680
    return-void
.end method

.method public unregisterForEcmTimerResetGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->unregisterForEcmTimerResetEx(Landroid/os/Handler;I)V

    .line 464
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOffGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOffEx(Landroid/os/Handler;I)V

    .line 583
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOnGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOnEx(Landroid/os/Handler;I)V

    .line 553
    return-void
.end method

.method public unregisterForIncomingRingGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->unregisterForIncomingRingEx(Landroid/os/Handler;I)V

    .line 317
    return-void
.end method

.method public unregisterForMmiCompleteGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiCompleteEx(Landroid/os/Handler;I)V

    .line 436
    return-void
.end method

.method public unregisterForMmiInitiateGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiInitiateEx(Landroid/os/Handler;I)V

    .line 406
    return-void
.end method

.method public unregisterForNewRingingConnectionGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->unregisterForNewRingingConnectionEx(Landroid/os/Handler;I)V

    .line 286
    return-void
.end method

.method public unregisterForPostDialCharacterGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->unregisterForPostDialCharacterEx(Landroid/os/Handler;I)V

    .line 787
    return-void
.end method

.method public unregisterForPreciseCallStateChangedGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChangedEx(Landroid/os/Handler;I)V

    .line 224
    return-void
.end method

.method public unregisterForResendIncallMuteGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->unregisterForResendIncallMuteEx(Landroid/os/Handler;I)V

    .line 373
    return-void
.end method

.method public unregisterForRingbackToneGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->unregisterForRingbackToneEx(Landroid/os/Handler;I)V

    .line 348
    return-void
.end method

.method public unregisterForServiceStateChangedGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->unregisterForServiceStateChangedEx(Landroid/os/Handler;I)V

    .line 491
    return-void
.end method

.method public unregisterForSignalInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->unregisterForSignalInfoEx(Landroid/os/Handler;I)V

    .line 647
    return-void
.end method

.method public unregisterForSpeechInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->unregisterForSpeechInfoEx(Landroid/os/Handler;I)V

    .line 805
    return-void
.end method

.method public unregisterForSubscriptionInfoReadyGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->unregisterForSubscriptionInfoReadyEx(Landroid/os/Handler;I)V

    .line 737
    return-void
.end method

.method public unregisterForSuppServiceFailedGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceFailedEx(Landroid/os/Handler;I)V

    .line 523
    return-void
.end method

.method public unregisterForSuppServiceNotificationGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceNotificationEx(Landroid/os/Handler;I)V

    .line 877
    return-void
.end method

.method public unregisterForUnknownConnectionGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->unregisterForUnknownConnectionEx(Landroid/os/Handler;I)V

    .line 249
    return-void
.end method

.method public unregisterForVtReplaceDisconnectGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 889
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->unregisterForVtReplaceDisconnectEx(Landroid/os/Handler;I)V

    .line 895
    return-void
.end method

.method public unregisterForVtRingInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->unregisterForVtRingInfoEx(Landroid/os/Handler;I)V

    .line 841
    return-void
.end method

.method public unregisterForVtStatusInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 817
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->unregisterForVtStatusInfoEx(Landroid/os/Handler;I)V

    .line 823
    return-void
.end method

.method public unregisterPhoneGemini(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .parameter

    .prologue
    .line 125
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v0, :cond_0

    move-object v0, p1

    .line 126
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    add-int/lit8 v2, v1, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 127
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    .line 125
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 135
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
    .line 153
    add-int/lit8 v0, p3, 0x0

    .line 154
    if-ltz v0, :cond_0

    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v1, :cond_1

    .line 155
    :cond_0
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

    .line 156
    const/4 v0, 0x0

    .line 160
    :goto_0
    return-object v0

    .line 159
    :cond_1
    check-cast p1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->a:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v0, p2}, Lcom/android/internal/telephony/CallManager;->vtDial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0
.end method
