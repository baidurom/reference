.class public Lcom/android/phone/EmergencyCallHelper;
.super Landroid/os/Handler;
.source "EmergencyCallHelper.java"


# static fields
.field private static final DBG:Z = true

.field private static final DISCONNECT:I = 0x3

.field static final DUALSIM_OFF:I = 0x0

.field static final DUALSIM_ON:I = 0x3

.field public static final MAX_NUM_RETRIES:I = 0x6

.field private static final RETRY_TIMEOUT:I = 0x4

.field private static final SERVICE_STATE_CHANGED:I = 0x2

.field private static final SERVICE_STATE_CHANGED2:I = 0x5

.field static final SIM1_ONLY:I = 0x1

.field static final SIM2_ONLY:I = 0x2

.field private static final START_SEQUENCE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EmergencyCallHelper"

.field public static final TIME_BETWEEN_RETRIES:J = 0x3a98L

.field public static final WAKE_LOCK_TIMEOUT:J = 0x493e0L


# instance fields
.field private mApp:Lcom/android/phone/PhoneApp;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

.field private mCallController:Lcom/android/phone/CallController;

.field private mNumRetriesSoFar:I

.field private mNumber:Ljava/lang/String;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallController;)V
    .locals 1
    .parameter "callController"

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 92
    const-string v0, "EmergencyCallHelper constructor..."

    invoke-static {v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 93
    iput-object p1, p0, Lcom/android/phone/EmergencyCallHelper;->mCallController:Lcom/android/phone/CallController;

    .line 94
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    .line 95
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 96
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iput-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    .line 97
    return-void
.end method

.method private cancelRetryTimer()V
    .locals 1

    .prologue
    .line 611
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->removeMessages(I)V

    .line 612
    return-void
.end method

.method private cleanup()V
    .locals 1

    .prologue
    .line 557
    const-string v0, "cleanup()..."

    invoke-static {v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->clearProgressIndication()V

    .line 562
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->unregisterForServiceStateChanged()V

    .line 563
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->unregisterForDisconnect()V

    .line 564
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cancelRetryTimer()V

    .line 567
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    const-string v0, "- releasing wake lock"

    invoke-static {v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 572
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    .line 578
    return-void
.end method

.method private getProperDualSimMode()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 710
    const/4 v1, 0x1

    .line 711
    .local v1, mode:I
    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {v2}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 713
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget v2, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-ne v2, v3, :cond_0

    .line 714
    const/4 v1, 0x2

    .line 717
    :cond_0
    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 725
    const-string v0, "EmergencyCallHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    return-void
.end method

.method private needSetDualSimMode(I)Z
    .locals 9
    .parameter "lastMode"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 678
    iget-object v7, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {v7}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 679
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 681
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v7, v6}, Lcom/android/phone/PhoneInterfaceManager;->isSimInsert(I)Z

    move-result v3

    .line 682
    .local v3, isSimInserted:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v7, v5}, Lcom/android/phone/PhoneInterfaceManager;->isSimInsert(I)Z

    move-result v2

    .line 683
    .local v2, isSim2Inserted:Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSimInserted = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  isSim2Inserted = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 684
    if-nez v3, :cond_2

    if-nez v2, :cond_2

    .line 706
    .end local v2           #isSim2Inserted:Z
    .end local v3           #isSimInserted:Z
    :cond_1
    :goto_0
    return v5

    .line 691
    :cond_2
    if-eqz p1, :cond_1

    .line 696
    const/4 v7, 0x3

    if-ne v7, p1, :cond_3

    move v5, v6

    .line 697
    goto :goto_0

    .line 700
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    .line 701
    .local v1, info:Landroid/provider/Telephony$SIMInfo;
    iget v7, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    add-int/lit8 v7, v7, 0x1

    if-ne p1, v7, :cond_4

    move v5, v6

    .line 702
    goto :goto_0
.end method

.method private onDisconnect(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 287
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 288
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 289
    .local v0, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnect: connection \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', addr \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 292
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v2, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    .line 313
    :goto_0
    return-void

    .line 305
    :cond_0
    const-string v2, "==> Disconnect event; clean up..."

    invoke-static {v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 306
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    goto :goto_0
.end method

.method private onRetryTimeout(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 319
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 321
    .local v0, phoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    const/4 v2, 0x0

    .line 323
    .local v2, slot:I
    iget-object v3, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 325
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 326
    iget-object v3, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getServiceStateGemini(I)Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 330
    .local v1, serviceState:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRetryTimeout():  phone state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mNumRetriesSoFar = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 342
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v3, :cond_0

    .line 343
    const-string v3, "- onRetryTimeout: Call is active!  Cleaning up..."

    invoke-static {v3}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 344
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    .line 379
    :goto_0
    return-void

    .line 348
    :cond_0
    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    .line 353
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->unregisterForServiceStateChanged()V

    .line 356
    iget-object v3, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v3}, Lcom/android/phone/InCallUiState;->clearProgressIndication()V

    .line 359
    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyCallHelper;->placeEmergencyCall(I)V

    .line 378
    :goto_1
    iget-object v3, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneApp;->displayCallScreen(Z)V

    goto :goto_0

    .line 367
    :cond_1
    const-string v3, "- Trying (again) to turn on the radio..."

    invoke-static {v3}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 368
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->powerOnRadio()V

    .line 373
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->scheduleRetryOrBailOut()V

    goto :goto_1
.end method

.method private onServiceStateChanged(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 222
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v2, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/ServiceState;

    .line 223
    .local v2, state:Landroid/telephony/ServiceState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceStateChanged()...  new state = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_0

    move v1, v4

    .line 244
    .local v1, okToCall:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 246
    const-string v3, "onServiceStateChanged: ok to call!"

    invoke-static {v3}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->unregisterForServiceStateChanged()V

    .line 252
    iget-object v3, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v3}, Lcom/android/phone/InCallUiState;->clearProgressIndication()V

    .line 255
    const/4 v3, 0x2

    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v3, v5, :cond_1

    .line 257
    .local v0, iSimId:I
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->placeEmergencyCall(I)V

    .line 264
    iget-object v3, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneApp;->displayCallScreen(Z)V

    .line 277
    .end local v0           #iSimId:I
    :goto_2
    return-void

    .end local v1           #okToCall:Z
    :cond_0
    move v1, v0

    .line 242
    goto :goto_0

    .restart local v1       #okToCall:Z
    :cond_1
    move v0, v4

    .line 255
    goto :goto_1

    .line 275
    :cond_2
    const-string v3, "onServiceStateChanged: not ready to call yet, keep waiting..."

    invoke-static {v3}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private placeEmergencyCall(I)V
    .locals 9
    .parameter "simId"

    .prologue
    const/4 v3, 0x0

    .line 448
    const-string v0, "placeEmergencyCall()..."

    invoke-static {v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 456
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->registerForDisconnect()V

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- placing call to \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " simId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    const/4 v4, 0x1

    move-object v5, v3

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/android/phone/PhoneUtils;->placeCallGemini(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;I)I

    move-result v7

    .line 468
    .local v7, callStatus:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- PhoneUtils.placeCallGemini() returned status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 482
    packed-switch v7, :pswitch_data_0

    .line 491
    const-string v0, "EmergencyCallHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeEmergencyCall(): placeCall() failed: callStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v8, 0x0

    .line 496
    .local v8, success:Z
    :goto_0
    if-eqz v8, :cond_0

    .line 497
    const-string v0, "==> Success from PhoneUtils.placeCall()!"

    invoke-static {v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 510
    :goto_1
    return-void

    .line 484
    .end local v8           #success:Z
    :pswitch_0
    const/4 v8, 0x1

    .line 485
    .restart local v8       #success:Z
    goto :goto_0

    .line 505
    :cond_0
    const-string v0, "==> Failure."

    invoke-static {v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 508
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->scheduleRetryOrBailOut()V

    goto :goto_1

    .line 482
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private powerOnRadio()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 391
    const-string v4, "- powerOnRadio()..."

    invoke-static {v4}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 395
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->registerForServiceStateChanged()V

    .line 399
    const/4 v1, 0x0

    .line 400
    .local v1, dualSimMode:I
    const/4 v0, 0x0

    .line 402
    .local v0, bOffAirplaneMode:Z
    iget-object v4, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dual_sim_mode_setting"

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 406
    const-string v4, "EmergencyCallHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dualSimMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v4, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_0

    .line 408
    const-string v4, "==> Turning off airplane mode..."

    invoke-static {v4}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 411
    iget-object v4, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 414
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "state"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 416
    iget-object v4, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4, v2}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 417
    const/4 v0, 0x1

    .line 426
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyCallHelper;->needSetDualSimMode(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 428
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->getProperDualSimMode()I

    move-result v3

    .line 429
    .local v3, mode:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send broadcast to turn on radio with mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 430
    iget-object v4, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dual_sim_mode_setting"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 432
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "mode"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 434
    iget-object v4, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4, v2}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 438
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #mode:I
    :goto_0
    return-void

    .line 436
    :cond_2
    const-string v4, "do nothing."

    invoke-static {v4}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerForDisconnect()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 652
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 653
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerForDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 657
    return-void
.end method

.method private registerForServiceStateChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 619
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForServiceStateChangedGemini(Landroid/os/Handler;I)V

    .line 620
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForServiceStateChangedGemini(Landroid/os/Handler;I)V

    .line 622
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v4, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForServiceStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 623
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, v4, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForServiceStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 628
    return-void
.end method

.method private scheduleRetryOrBailOut()V
    .locals 2

    .prologue
    .line 519
    iget v0, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleRetryOrBailOut()...  mNumRetriesSoFar is now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 522
    iget v0, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 523
    const-string v0, "EmergencyCallHelper"

    const-string v1, "scheduleRetryOrBailOut: hit MAX_NUM_RETRIES; giving up..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    .line 527
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 533
    :goto_0
    return-void

    .line 529
    :cond_0
    const-string v0, "- Scheduling another retry..."

    invoke-static {v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 530
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->startRetryTimer()V

    .line 531
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    sget-object v1, Lcom/android/phone/InCallUiState$ProgressIndicationType;->RETRYING:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setProgressIndication(Lcom/android/phone/InCallUiState$ProgressIndicationType;)V

    goto :goto_0
.end method

.method private startRetryTimer()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 581
    invoke-virtual {p0, v8}, Lcom/android/phone/EmergencyCallHelper;->removeMessages(I)V

    .line 589
    const/4 v0, 0x0

    .line 590
    .local v0, dualSimMode:I
    iget-object v5, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dual_sim_mode_setting"

    const/4 v7, 0x3

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 593
    const/4 v2, 0x0

    .line 594
    .local v2, slot:I
    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->needSetDualSimMode(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 595
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->getProperDualSimMode()I

    move-result v5

    if-ne v5, v4, :cond_1

    move v2, v3

    .line 600
    :cond_0
    :goto_0
    invoke-virtual {p0, v8, v2, v3}, Lcom/android/phone/EmergencyCallHelper;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 601
    .local v1, msg:Landroid/os/Message;
    const-wide/16 v3, 0x3a98

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/phone/EmergencyCallHelper;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 602
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRetryTimer, slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 608
    return-void

    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    move v2, v4

    .line 595
    goto :goto_0

    .line 596
    :cond_2
    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    .line 597
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private startSequenceInternal(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSequenceInternal(): msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 165
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    .line 167
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- startSequenceInternal: Got mNumber: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 170
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    .line 179
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 183
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 184
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "EmergencyCallHelper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 188
    const-string v1, "- startSequenceInternal: acquiring wake lock"

    invoke-static {v1}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 197
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->powerOnRadio()V

    .line 205
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->startRetryTimer()V

    .line 209
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    sget-object v2, Lcom/android/phone/InCallUiState$ProgressIndicationType;->TURNING_ON_RADIO:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallUiState;->setProgressIndication(Lcom/android/phone/InCallUiState$ProgressIndicationType;)V

    .line 212
    return-void
.end method

.method private unregisterForDisconnect()V
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisconnectGemini(Landroid/os/Handler;I)V

    .line 662
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForDisconnectGemini(Landroid/os/Handler;I)V

    .line 664
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->removeMessages(I)V

    .line 669
    return-void
.end method

.method private unregisterForServiceStateChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 632
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForServiceStateChangedGemini(Landroid/os/Handler;I)V

    .line 635
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForServiceStateChangedGemini(Landroid/os/Handler;I)V

    .line 637
    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallHelper;->removeMessages(I)V

    .line 638
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->removeMessages(I)V

    .line 644
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallHelper;->removeMessages(I)V

    .line 645
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 116
    const-string v0, "EmergencyCallHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_0
    return-void

    .line 103
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallHelper;->startSequenceInternal(Landroid/os/Message;)V

    goto :goto_0

    .line 107
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallHelper;->onServiceStateChanged(Landroid/os/Message;)V

    goto :goto_0

    .line 110
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallHelper;->onDisconnect(Landroid/os/Message;)V

    goto :goto_0

    .line 113
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallHelper;->onRetryTimeout(Landroid/os/Message;)V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public startEmergencyCallFromAirplaneModeSequence(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startEmergencyCallFromAirplaneModeSequence(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 148
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/phone/EmergencyCallHelper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 149
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->sendMessage(Landroid/os/Message;)Z

    .line 150
    return-void
.end method
