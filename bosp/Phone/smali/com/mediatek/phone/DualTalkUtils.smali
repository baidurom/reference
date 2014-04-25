.class public final Lcom/mediatek/phone/DualTalkUtils;
.super Ljava/lang/Object;
.source "DualTalkUtils.java"


# static fields
.field private static final DBG:Z = true

.field public static final EVDO_DT_SUPPORT:Ljava/lang/String; = "EVDO_DT_SUPPORT"

.field private static final INSTANCE:Lcom/mediatek/phone/DualTalkUtils; = null

.field private static final LOG_TAG:Ljava/lang/String; = "DualTalkUtils"

.field private static sIsEvdoDTSupport:Z

.field private static sIsSupportDualTalk:Z


# instance fields
.field private final mActivePhoneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Phone;",
            ">;"
        }
    .end annotation
.end field

.field private mCM:Lcom/android/internal/telephony/CallManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/mediatek/phone/DualTalkUtils;

    invoke-direct {v0}, Lcom/mediatek/phone/DualTalkUtils;-><init>()V

    sput-object v0, Lcom/mediatek/phone/DualTalkUtils;->INSTANCE:Lcom/mediatek/phone/DualTalkUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    .line 42
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/mediatek/phone/DualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 43
    return-void
.end method

.method private dumpActivePhone()V
    .locals 4

    .prologue
    .line 333
    const-string v2, "DualTalkUtils dumpActivePhone ******* start *******"

    invoke-static {v2}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    .line 334
    iget-object v2, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 335
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Phone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 337
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_0
    const-string v2, "DualTalkUtils dumpActivePhone ******** end  *******"

    invoke-static {v2}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public static generateBurstDtmfparam(CZ)Ljava/lang/String;
    .locals 4
    .parameter "c"
    .parameter "start"

    .prologue
    .line 718
    const-string v1, "SetWarningTone="

    .line 719
    .local v1, prefix:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 720
    const-string v1, "StopWarningTone="

    .line 722
    :cond_0
    const/16 v2, 0x30

    if-lt p0, v2, :cond_1

    const/16 v2, 0x39

    if-gt p0, v2, :cond_1

    .line 723
    add-int/lit8 v2, p0, -0x30

    add-int/lit8 v0, v2, 0x11

    .line 724
    .local v0, iTemp:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 730
    .end local v0           #iTemp:I
    :goto_0
    return-object v2

    .line 725
    :cond_1
    const/16 v2, 0x2a

    if-ne p0, v2, :cond_2

    .line 726
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "27"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 727
    :cond_2
    const/16 v2, 0x23

    if-ne p0, v2, :cond_3

    .line 728
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "28"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 730
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static generateDtmfparam(CZ)Ljava/lang/String;
    .locals 3
    .parameter "c"
    .parameter "start"

    .prologue
    .line 702
    const-string v0, "SetWarningTone="

    .line 703
    .local v0, prefix:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 704
    const-string v0, "StopWarningTone="

    .line 706
    :cond_0
    const/16 v1, 0x30

    if-lt p0, v1, :cond_1

    const/16 v1, 0x39

    if-gt p0, v1, :cond_1

    .line 707
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 713
    :goto_0
    return-object v1

    .line 708
    :cond_1
    const/16 v1, 0x2a

    if-ne p0, v1, :cond_2

    .line 709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "10"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 710
    :cond_2
    const/16 v1, 0x23

    if-ne p0, v1, :cond_3

    .line 711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "11"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 713
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getActivePhoneList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Phone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    iget-object v4, p0, Lcom/mediatek/phone/DualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v2

    .line 347
    .local v2, listPhones:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Phone;

    .line 348
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v5, :cond_0

    .line 349
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 353
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    return-object v1
.end method

.method private getCDMAPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 913
    iget-object v3, p0, Lcom/mediatek/phone/DualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v1

    .line 914
    .local v1, listPhones:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 915
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 920
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getFeatureOption(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 885
    const-string v0, "EVDO_DT_SUPPORT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    sget-boolean v0, Lcom/mediatek/phone/DualTalkUtils;->sIsEvdoDTSupport:Z

    .line 888
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/mediatek/phone/DualTalkUtils;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/mediatek/phone/DualTalkUtils;->INSTANCE:Lcom/mediatek/phone/DualTalkUtils;

    return-object v0
.end method

.method public static init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 897
    const-string v1, "mediatek.gemini"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 898
    .local v0, iGemini:I
    if-nez v0, :cond_0

    .line 899
    sput-boolean v4, Lcom/mediatek/phone/DualTalkUtils;->sIsSupportDualTalk:Z

    .line 900
    sput-boolean v4, Lcom/mediatek/phone/DualTalkUtils;->sIsEvdoDTSupport:Z

    .line 905
    :goto_0
    return-void

    .line 902
    :cond_0
    sput-boolean v3, Lcom/mediatek/phone/DualTalkUtils;->sIsSupportDualTalk:Z

    .line 903
    sput-boolean v3, Lcom/mediatek/phone/DualTalkUtils;->sIsEvdoDTSupport:Z

    goto :goto_0
.end method

.method public static isEvdoDTSupport()Z
    .locals 1

    .prologue
    .line 881
    sget-boolean v0, Lcom/mediatek/phone/DualTalkUtils;->sIsEvdoDTSupport:Z

    return v0
.end method

.method public static isSupportDualTalk()Z
    .locals 1

    .prologue
    .line 877
    sget-boolean v0, Lcom/mediatek/phone/DualTalkUtils;->sIsSupportDualTalk:Z

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 37
    const-string v0, "DualTalkUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method

.method public static switchDTFeatureOption(Z)V
    .locals 0
    .parameter "dt"

    .prologue
    .line 908
    sput-boolean p0, Lcom/mediatek/phone/DualTalkUtils;->sIsSupportDualTalk:Z

    .line 909
    sput-boolean p0, Lcom/mediatek/phone/DualTalkUtils;->sIsEvdoDTSupport:Z

    .line 910
    return-void
.end method

.method private switchPhoneByNeeded()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 413
    iget-object v4, p0, Lcom/mediatek/phone/DualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    .line 414
    .local v3, state:Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v4, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 415
    .local v2, size:I
    const/4 v4, 0x2

    if-ge v2, v4, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_3

    .line 419
    iget-object v4, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 420
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    iget-object v4, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 422
    .local v1, phone0:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 424
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->switchCalls()V

    goto :goto_0

    .line 425
    :cond_2
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->switchCalls()V

    goto :goto_0

    .line 433
    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    .end local v1           #phone0:Lcom/android/internal/telephony/Phone;
    :cond_3
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_0

    .line 434
    iget-object v4, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 435
    .restart local v0       #phone:Lcom/android/internal/telephony/Phone;
    iget-object v4, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 437
    .restart local v1       #phone0:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v5, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v5, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->switchCalls()V

    goto/16 :goto_0
.end method


# virtual methods
.method public canAddCallForDualTalk()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 671
    sget-boolean v4, Lcom/mediatek/phone/DualTalkUtils;->sIsSupportDualTalk:Z

    if-nez v4, :cond_1

    .line 683
    :cond_0
    :goto_0
    return v3

    .line 675
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->getAllNoIdleCalls()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 676
    .local v1, len:I
    iget-object v4, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 677
    .local v0, count:I
    if-ne v1, v5, :cond_3

    .line 678
    if-ne v0, v5, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 679
    :cond_3
    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    move v3, v2

    .line 683
    goto :goto_0
.end method

.method public canSplitCallFromConference()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 687
    sget-boolean v3, Lcom/mediatek/phone/DualTalkUtils;->sIsSupportDualTalk:Z

    if-nez v3, :cond_1

    .line 697
    :cond_0
    :goto_0
    return v2

    .line 692
    :cond_1
    iget-object v3, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 695
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 696
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 697
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getActiveCdmaPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 817
    const/4 v1, 0x0

    .line 818
    .local v1, p:Lcom/android/internal/telephony/Phone;
    iget-object v3, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 819
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 820
    move-object v1, v2

    .line 825
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    return-object v1
.end method

.method public getActiveFgCall()Lcom/android/internal/telephony/Call;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->isCdmaAndGsmActive()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 144
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->getActiveCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 145
    .local v2, cdmaPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->getActiveGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 146
    .local v4, gsmPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 147
    .local v1, cdmaFg:Lcom/android/internal/telephony/Call;
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 149
    .local v3, gsmFg:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 150
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_2

    .line 152
    move-object v0, v1

    .line 178
    .end local v1           #cdmaFg:Lcom/android/internal/telephony/Call;
    .end local v2           #cdmaPhone:Lcom/android/internal/telephony/Phone;
    .end local v3           #gsmFg:Lcom/android/internal/telephony/Call;
    .end local v4           #gsmPhone:Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 179
    iget-object v5, p0, Lcom/mediatek/phone/DualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 181
    :cond_1
    return-object v0

    .line 154
    .restart local v1       #cdmaFg:Lcom/android/internal/telephony/Call;
    .restart local v2       #cdmaPhone:Lcom/android/internal/telephony/Phone;
    .restart local v3       #gsmFg:Lcom/android/internal/telephony/Call;
    .restart local v4       #gsmPhone:Lcom/android/internal/telephony/Phone;
    :cond_2
    move-object v0, v3

    goto :goto_0

    .line 157
    :cond_3
    move-object v0, v1

    goto :goto_0

    .line 159
    .end local v1           #cdmaFg:Lcom/android/internal/telephony/Call;
    .end local v2           #cdmaPhone:Lcom/android/internal/telephony/Phone;
    .end local v3           #gsmFg:Lcom/android/internal/telephony/Call;
    .end local v4           #gsmPhone:Lcom/android/internal/telephony/Phone;
    :cond_4
    iget-object v5, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 160
    iget-object v5, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_6

    .line 161
    iget-object v5, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_5

    .line 168
    iget-object v5, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_5
    iget-object v5, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto/16 :goto_0

    .line 173
    :cond_6
    iget-object v5, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getActiveGsmPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 833
    const/4 v1, 0x0

    .line 834
    .local v1, p:Lcom/android/internal/telephony/Phone;
    iget-object v3, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 835
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 837
    :cond_1
    move-object v1, v2

    .line 842
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    :cond_2
    return-object v1
.end method

.method public getAllActiveCalls()Ljava/util/List;
    .locals 5
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
    .line 924
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 925
    .local v0, callList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    iget-object v4, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Phone;

    .line 926
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 927
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 928
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 931
    .end local v1           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    return-object v0
.end method

.method public getAllHoldCalls()Ljava/util/List;
    .locals 7
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
    .line 487
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .local v3, holdCallList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v0, 0x1

    .line 489
    .local v0, bSkipFirstActive:Z
    iget-object v6, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/Phone;

    .line 490
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 491
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 492
    if-eqz v0, :cond_2

    .line 493
    const/4 v0, 0x0

    .line 498
    :cond_1
    :goto_1
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 499
    .local v1, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 500
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 495
    .end local v1           #bgCall:Lcom/android/internal/telephony/Call;
    :cond_2
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 504
    .end local v2           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v5           #phone:Lcom/android/internal/telephony/Phone;
    :cond_3
    return-object v3
.end method

.method public getAllNoIdleCalls()Ljava/util/List;
    .locals 6
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
    .line 466
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v1, callList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    iget-object v5, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Phone;

    .line 468
    .local v4, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 469
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 470
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_1
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 473
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 474
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 478
    .end local v0           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v2           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v4           #phone:Lcom/android/internal/telephony/Phone;
    :cond_2
    return-object v1
.end method

.method public getFirstActiveBgCall()Lcom/android/internal/telephony/Call;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->isCdmaAndGsmActive()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 192
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->getActiveCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 193
    .local v1, cdmaPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->getActiveGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 194
    .local v2, gsmPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 195
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 198
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 221
    .end local v1           #cdmaPhone:Lcom/android/internal/telephony/Phone;
    .end local v2           #gsmPhone:Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 222
    iget-object v3, p0, Lcom/mediatek/phone/DualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 225
    :cond_1
    return-object v0

    .line 202
    .restart local v1       #cdmaPhone:Lcom/android/internal/telephony/Phone;
    .restart local v2       #gsmPhone:Lcom/android/internal/telephony/Phone;
    :cond_2
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0

    .line 206
    :cond_3
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0

    .line 208
    .end local v1           #cdmaPhone:Lcom/android/internal/telephony/Phone;
    .end local v2           #gsmPhone:Lcom/android/internal/telephony/Phone;
    :cond_4
    iget-object v3, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 209
    iget-object v3, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_5

    iget-object v3, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_5

    .line 215
    iget-object v3, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto/16 :goto_0

    .line 217
    :cond_5
    iget-object v3, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;
    .locals 3

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, call:Lcom/android/internal/telephony/Call;
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 101
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v1

    if-nez v1, :cond_2

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 105
    :cond_2
    return-object v0
.end method

.method public getFirstPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 869
    iget-object v0, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 873
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecondActiveBgCall()Lcom/android/internal/telephony/Call;
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, call:Lcom/android/internal/telephony/Call;
    iget-object v2, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 238
    iget-object v2, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 239
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 240
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 253
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    return-object v0

    .line 242
    .restart local v1       #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_2

    .line 247
    iget-object v2, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0

    .line 249
    :cond_2
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getSecondActiveFgCall()Lcom/android/internal/telephony/Call;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, call:Lcom/android/internal/telephony/Call;
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 117
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 120
    :cond_0
    return-object v0
.end method

.method public getSecondActiveRingCall()Lcom/android/internal/telephony/Call;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, call:Lcom/android/internal/telephony/Call;
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 131
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 134
    :cond_0
    return-object v0
.end method

.method public hasActiveCdmaPhone()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 754
    sget-boolean v3, Lcom/mediatek/phone/DualTalkUtils;->sIsSupportDualTalk:Z

    if-nez v3, :cond_1

    .line 764
    :cond_0
    :goto_0
    return v2

    .line 758
    :cond_1
    iget-object v3, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 759
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 760
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public hasActiveGsmPhone()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 768
    sget-boolean v4, Lcom/mediatek/phone/DualTalkUtils;->sIsSupportDualTalk:Z

    if-nez v4, :cond_1

    .line 778
    :cond_0
    :goto_0
    return v2

    .line 772
    :cond_1
    iget-object v4, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 773
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v3, :cond_2

    move v2, v3

    .line 774
    goto :goto_0
.end method

.method public hasActiveOrHoldBothCdmaAndGsm()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 800
    sget-boolean v3, Lcom/mediatek/phone/DualTalkUtils;->sIsSupportDualTalk:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 812
    :cond_0
    :goto_0
    return v2

    .line 804
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->getActiveGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 805
    .local v1, gsmPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->getActiveCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 807
    .local v0, cdmaPhone:Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 808
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public hasDualHoldCallsOnly()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 551
    iget-object v0, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 564
    :cond_0
    :goto_0
    return v1

    .line 555
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->isCdmaAndGsmActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public hasMultipleRingingCall()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 449
    sget-boolean v0, Lcom/mediatek/phone/DualTalkUtils;->sIsSupportDualTalk:Z

    if-nez v0, :cond_1

    .line 457
    :cond_0
    :goto_0
    return v2

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    .line 457
    iget-object v0, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public isAllowedIncomingCall(Lcom/android/internal/telephony/Call;)Z
    .locals 6
    .parameter "ringing"

    .prologue
    .line 735
    const/4 v0, 0x0

    .line 737
    .local v0, bResult:Z
    iget-object v4, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 738
    const/4 v4, 0x1

    .line 750
    :goto_0
    return v4

    .line 741
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 743
    .local v3, ringPhone:Lcom/android/internal/telephony/Phone;
    iget-object v4, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 744
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    if-ne v2, v3, :cond_1

    .line 745
    const/4 v0, 0x1

    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    :cond_2
    move v4, v0

    .line 750
    goto :goto_0
.end method

.method public isCDMAPhoneActive()Z
    .locals 2

    .prologue
    .line 846
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->getActiveCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 847
    .local v0, p:Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isCdmaAndGsmActive()Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 782
    sget-boolean v3, Lcom/mediatek/phone/DualTalkUtils;->sIsSupportDualTalk:Z

    if-nez v3, :cond_1

    .line 796
    :cond_0
    :goto_0
    return v2

    .line 786
    :cond_1
    iget-object v3, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v4, :cond_0

    .line 790
    iget-object v3, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 791
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 792
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isCdmaCallWaiting(Lcom/android/internal/telephony/Call;)Z
    .locals 2
    .parameter "call"

    .prologue
    .line 856
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->hasMultipleConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 857
    const/4 v1, 0x0

    .line 861
    :goto_0
    return v1

    .line 860
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 861
    .local v0, conns:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    goto :goto_0
.end method

.method public isDualTalkAnswerCase()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x2

    .line 516
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->getAllNoIdleCalls()Ljava/util/List;

    move-result-object v2

    .line 517
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 522
    .local v1, callCount:I
    if-ne v1, v3, :cond_0

    .line 523
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 524
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 525
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v6, :cond_0

    .line 526
    add-int/lit8 v1, v1, 0x1

    .line 531
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :cond_0
    if-lt v1, v6, :cond_1

    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method public isDualTalkMultipleHoldCase()Z
    .locals 3

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->getAllNoIdleCalls()Ljava/util/List;

    move-result-object v0

    .line 542
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMultiplePhoneActive()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 54
    sget-boolean v6, Lcom/mediatek/phone/DualTalkUtils;->sIsSupportDualTalk:Z

    if-nez v6, :cond_0

    .line 56
    const-string v5, "don\'t support dualtalk!"

    invoke-static {v5}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    .line 88
    :goto_0
    return v4

    .line 61
    :cond_0
    iget-object v6, p0, Lcom/mediatek/phone/DualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v7, :cond_1

    .line 63
    const-string v5, "CallManager says in idle state!"

    invoke-static {v5}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v6, p0, Lcom/mediatek/phone/DualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v3

    .line 69
    .local v3, phoneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    const/4 v0, 0x0

    .line 71
    .local v0, count:I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 72
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v6, v7, :cond_2

    .line 73
    add-int/lit8 v0, v0, 0x1

    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "non IDLE phone = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    .line 77
    if-le v0, v5, :cond_2

    .line 79
    const-string v4, "More than one phone active!"

    invoke-static {v4}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    move v4, v5

    .line 81
    goto :goto_0

    .line 86
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    :cond_3
    const-string v5, "Strange! no phone active but we go here!"

    invoke-static {v5}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isPhoneCallAllowed(I)Z
    .locals 6
    .parameter "slot"

    .prologue
    .line 649
    const/4 v3, 0x1

    .line 650
    .local v3, result:Z
    iget-object v4, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_5

    .line 651
    const/4 v0, 0x0

    .line 652
    .local v0, found:Z
    iget-object v4, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 653
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    instance-of v4, v2, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v4, :cond_1

    .line 654
    const-string v4, "match the SipPhone, do nothing."

    invoke-static {v4}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 655
    :cond_1
    instance-of v4, v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v4, :cond_2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 656
    const/4 v0, 0x1

    goto :goto_0

    .line 657
    :cond_2
    instance-of v4, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v4, :cond_0

    .line 658
    const-string v4, "match the CDMAPhone, do nothing."

    invoke-static {v4}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 662
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isBTConnected()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 663
    :cond_4
    const/4 v3, 0x0

    .line 667
    .end local v0           #found:Z
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_5
    return v3
.end method

.method public isPhoneCallAllowed(Lcom/android/internal/telephony/Phone;)Z
    .locals 3
    .parameter "phone"

    .prologue
    .line 632
    const/4 v0, 0x1

    .line 633
    .local v0, result:Z
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 636
    const/4 v0, 0x0

    .line 639
    :cond_0
    return v0
.end method

.method public isRingingWhenOutgoing()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 575
    sget-boolean v4, Lcom/mediatek/phone/DualTalkUtils;->sIsSupportDualTalk:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    :cond_0
    move v2, v3

    .line 595
    :cond_1
    :goto_0
    return v2

    .line 579
    :cond_2
    iget-object v4, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 580
    .local v1, fgPhone:Lcom/android/internal/telephony/Phone;
    iget-object v4, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 595
    .local v0, bgPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public isSupportHoldAndUnhold()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    .line 608
    sget-boolean v1, Lcom/mediatek/phone/DualTalkUtils;->sIsSupportDualTalk:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/mediatek/phone/DualTalkUtils;->sIsEvdoDTSupport:Z

    if-eqz v1, :cond_1

    .line 621
    :cond_0
    :goto_0
    return v0

    .line 613
    :cond_1
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v3, :cond_0

    .line 617
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_0

    .line 621
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->getAllNoIdleCalls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public switchCalls()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 392
    const-string v1, "Enter switchCalls!"

    invoke-static {v1}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    .line 394
    invoke-direct {p0}, Lcom/mediatek/phone/DualTalkUtils;->dumpActivePhone()V

    .line 395
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 400
    .local v0, firstPhone:Lcom/android/internal/telephony/Phone;
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 401
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 402
    invoke-direct {p0}, Lcom/mediatek/phone/DualTalkUtils;->dumpActivePhone()V

    .line 404
    const-string v1, "Exit switchCalls!"

    invoke-static {v1}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchPhoneByNeededForRing(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "ringPhone"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 365
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-nez v1, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 370
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->updateState()V

    .line 373
    :cond_2
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 375
    .local v0, num:I
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 376
    if-ne v0, v3, :cond_3

    .line 377
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 378
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->switchCalls()V

    goto :goto_0
.end method

.method public updateState()V
    .locals 9

    .prologue
    .line 268
    const-string v7, "updateState: start!"

    invoke-static {v7}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    .line 270
    iget-object v7, p0, Lcom/mediatek/phone/DualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    .line 271
    .local v5, state:Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v7, :cond_1

    .line 273
    const-string v7, "updateState: CM is idle! clear activePhoneList!"

    invoke-static {v7}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    .line 275
    iget-object v7, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 276
    sget-boolean v7, Lcom/mediatek/phone/DualTalkUtils;->sIsEvdoDTSupport:Z

    if-eqz v7, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/mediatek/phone/DualTalkUtils;->getCDMAPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 278
    .local v6, tempPhone:Lcom/android/internal/telephony/Phone;
    if-eqz v6, :cond_0

    .line 279
    const-string v7, "hasActiveGsmPhone, disable HPF"

    invoke-static {v7}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    .line 330
    .end local v6           #tempPhone:Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iget-object v7, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 287
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/Phone;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 288
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Phone;

    .line 289
    .local v4, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v7, v8, :cond_2

    .line 291
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateState: remove "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " activePhoneList!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    .line 293
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 297
    .end local v4           #phone:Lcom/android/internal/telephony/Phone;
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/phone/DualTalkUtils;->getActivePhoneList()Ljava/util/List;

    move-result-object v3

    .line 298
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    const/4 v0, 0x0

    .line 299
    .local v0, addFlag:Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Phone;

    .line 300
    .restart local v4       #phone:Lcom/android/internal/telephony/Phone;
    iget-object v7, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 302
    iget-object v7, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_4

    .line 304
    iget-object v7, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 305
    const/4 v0, 0x1

    goto :goto_2

    .line 309
    .end local v4           #phone:Lcom/android/internal/telephony/Phone;
    :cond_5
    iget-object v7, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_6

    .line 310
    invoke-direct {p0}, Lcom/mediatek/phone/DualTalkUtils;->switchPhoneByNeeded()V

    .line 313
    :cond_6
    sget-boolean v7, Lcom/mediatek/phone/DualTalkUtils;->sIsEvdoDTSupport:Z

    if-eqz v7, :cond_7

    .line 314
    invoke-direct {p0}, Lcom/mediatek/phone/DualTalkUtils;->getCDMAPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 315
    .restart local v6       #tempPhone:Lcom/android/internal/telephony/Phone;
    if-eqz v6, :cond_7

    .line 316
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->hasActiveGsmPhone()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 317
    const-string v7, "hasActiveGsmPhone, enable HPF"

    invoke-static {v7}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    .line 327
    .end local v6           #tempPhone:Lcom/android/internal/telephony/Phone;
    :cond_7
    :goto_3
    invoke-direct {p0}, Lcom/mediatek/phone/DualTalkUtils;->dumpActivePhone()V

    .line 328
    const-string v7, "updateState: exit!"

    invoke-static {v7}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 320
    .restart local v6       #tempPhone:Lcom/android/internal/telephony/Phone;
    :cond_8
    const-string v7, "hasActiveGsmPhone, disable HPF"

    invoke-static {v7}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    goto :goto_3
.end method
