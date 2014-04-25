.class public Lcom/android/phone/PLMNListPreference;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "PLMNListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PLMNListPreference$SIMCapability;,
        Lcom/android/phone/PLMNListPreference$MyHandler;,
        Lcom/android/phone/PLMNListPreference$PLMNPreference;,
        Lcom/android/phone/PLMNListPreference$NetworkCompare;
    }
.end annotation


# static fields
.field private static final BUTTON_ADD_PLMN:Ljava/lang/String; = "button_add_plmn_key"

.field private static final BUTTON_ADD_PLMN_FROM_LIST:Ljava/lang/String; = "button_add_plmn_from_list_key"

.field private static final BUTTON_PLMN_CONTAINER:Ljava/lang/String; = "plmn_list"

.field private static final DBG:Z = true

.field private static final DGB:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/PLMNListPreference"

.field private static final REQUEST_ADD_OR_EDIT_PLMN:I = 0x1


# instance fields
.field listPriority:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field listService:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonAddnew:Landroid/preference/Preference;

.field private mCapability:Lcom/android/phone/PLMNListPreference$SIMCapability;

.field private mClicked:Landroid/preference/Preference;

.field private mHandler:Lcom/android/phone/PLMNListPreference$MyHandler;

.field private mPLMNList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ">;"
        }
    .end annotation
.end field

.field private mPLMNListContainer:Landroid/preference/PreferenceCategory;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/preference/Preference;",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ">;"
        }
    .end annotation
.end field

.field private mSlotId:I

.field private numbers:I

.field private startIndex:I

.field private stopIndex:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 44
    iput v2, p0, Lcom/android/phone/PLMNListPreference;->startIndex:I

    .line 45
    iput v2, p0, Lcom/android/phone/PLMNListPreference;->stopIndex:I

    .line 46
    iput v2, p0, Lcom/android/phone/PLMNListPreference;->numbers:I

    .line 47
    iput-object v6, p0, Lcom/android/phone/PLMNListPreference;->mClicked:Landroid/preference/Preference;

    .line 50
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    .line 60
    iput v2, p0, Lcom/android/phone/PLMNListPreference;->mSlotId:I

    .line 61
    iput-object v6, p0, Lcom/android/phone/PLMNListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 62
    new-instance v0, Lcom/android/phone/PLMNListPreference$SIMCapability;

    move-object v1, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/PLMNListPreference$SIMCapability;-><init>(Lcom/android/phone/PLMNListPreference;IIII)V

    iput-object v0, p0, Lcom/android/phone/PLMNListPreference;->mCapability:Lcom/android/phone/PLMNListPreference$SIMCapability;

    .line 64
    new-instance v0, Lcom/android/phone/PLMNListPreference$MyHandler;

    invoke-direct {v0, p0, v6}, Lcom/android/phone/PLMNListPreference$MyHandler;-><init>(Lcom/android/phone/PLMNListPreference;Lcom/android/phone/PLMNListPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/PLMNListPreference;->mHandler:Lcom/android/phone/PLMNListPreference$MyHandler;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PLMNListPreference;->listPriority:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PLMNListPreference;->listService:Ljava/util/ArrayList;

    .line 572
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/PLMNListPreference;)Landroid/preference/PreferenceCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/PLMNListPreference;->mPLMNListContainer:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/PLMNListPreference;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/PLMNListPreference;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/phone/PLMNListPreference;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/phone/PLMNListPreference;->refreshPreference(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/PLMNListPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/phone/PLMNListPreference;->numbers:I

    return v0
.end method

.method static synthetic access$410(Lcom/android/phone/PLMNListPreference;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/phone/PLMNListPreference;->numbers:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/phone/PLMNListPreference;->numbers:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/PLMNListPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/phone/PLMNListPreference;->mSlotId:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/PLMNListPreference;)Lcom/android/phone/PLMNListPreference$MyHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/PLMNListPreference;->mHandler:Lcom/android/phone/PLMNListPreference$MyHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/PLMNListPreference;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/PLMNListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/PLMNListPreference;)Lcom/android/phone/PLMNListPreference$SIMCapability;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/PLMNListPreference;->mCapability:Lcom/android/phone/PLMNListPreference$SIMCapability;

    return-object v0
.end method

.method private adjustPriority(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    const/4 v2, 0x0

    .line 381
    .local v2, priority:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .line 382
    .local v1, info:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    add-int/lit8 v3, v2, 0x1

    .end local v2           #priority:I
    .local v3, priority:I
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->setPriority(I)V

    move v2, v3

    .end local v3           #priority:I
    .restart local v2       #priority:I
    goto :goto_0

    .line 384
    .end local v1           #info:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    :cond_0
    return-void
.end method

.method private createNetworkInfo(Landroid/content/Intent;)Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 222
    const-string v4, "plmn_code"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, numberName:Ljava/lang/String;
    const-string v4, "plmn_name"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, operatorName:Ljava/lang/String;
    const-string v4, "plmn_priority"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 225
    .local v3, priority:I
    const-string v4, "plmn_service"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 226
    .local v0, act:I
    new-instance v4, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    invoke-direct {v4, v2, v1, v0, v3}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object v4
.end method

.method private dumpNetworkInfo(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    const-string v1, "Settings/PLMNListPreference"

    const-string v2, "dumpNetworkInfo : **********start*******"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 295
    const-string v2, "Settings/PLMNListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpNetworkInfo : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_0
    const-string v1, "Settings/PLMNListPreference"

    const-string v2, "dumpNetworkInfo : ***********stop*******"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void
.end method

.method private getSIMCapability()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 105
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/phone/PLMNListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 108
    .local v0, dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget v1, p0, Lcom/android/phone/PLMNListPreference;->mSlotId:I

    iget-object v2, p0, Lcom/android/phone/PLMNListPreference;->mHandler:Lcom/android/phone/PLMNListPreference$MyHandler;

    iget v3, p0, Lcom/android/phone/PLMNListPreference;->mSlotId:I

    invoke-virtual {v2, v4, v3, v4}, Lcom/android/phone/PLMNListPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPOLCapabilityGemini(ILandroid/os/Message;)V

    .line 112
    .end local v0           #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PLMNListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/PLMNListPreference;->mHandler:Lcom/android/phone/PLMNListPreference$MyHandler;

    iget v3, p0, Lcom/android/phone/PLMNListPreference;->mSlotId:I

    invoke-virtual {v2, v4, v3, v4}, Lcom/android/phone/PLMNListPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPOLCapability(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private initStringList()V
    .locals 5

    .prologue
    .line 429
    iget-object v3, p0, Lcom/android/phone/PLMNListPreference;->listPriority:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 430
    iget-object v3, p0, Lcom/android/phone/PLMNListPreference;->listService:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 431
    const/4 v2, 0x0

    .line 432
    .local v2, maxPriority:I
    iget-object v3, p0, Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 433
    iget-object v3, p0, Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;

    iget-object v4, p0, Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .line 434
    .local v1, info:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 438
    .end local v1           #info:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-gt v0, v2, :cond_1

    .line 439
    iget-object v3, p0, Lcom/android/phone/PLMNListPreference;->listPriority:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 436
    .end local v0           #i:I
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 442
    .restart local v0       #i:I
    :cond_1
    iget-object v3, p0, Lcom/android/phone/PLMNListPreference;->listService:Ljava/util/ArrayList;

    const-string v4, "GSM"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v3, p0, Lcom/android/phone/PLMNListPreference;->listService:Ljava/util/ArrayList;

    const-string v4, "TD-SCDMA"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    iget-object v3, p0, Lcom/android/phone/PLMNListPreference;->listService:Ljava/util/ArrayList;

    const-string v4, "Dual mode"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    return-void
.end method

.method private refreshPreference(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    iget-object v2, p0, Lcom/android/phone/PLMNListPreference;->mPLMNListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/android/phone/PLMNListPreference;->mPLMNListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/android/phone/PLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 127
    iget-object v2, p0, Lcom/android/phone/PLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 130
    :cond_1
    iget-object v2, p0, Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 131
    iget-object v2, p0, Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 133
    :cond_2
    iput-object p1, p0, Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;

    .line 134
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 135
    :cond_3
    const-string v2, "Settings/PLMNListPreference"

    const-string v3, "refreshPreference : NULL PLMN list!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-nez p1, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;

    .line 148
    :cond_4
    return-void

    .line 140
    :cond_5
    new-instance v2, Lcom/android/phone/PLMNListPreference$NetworkCompare;

    invoke-direct {v2, p0}, Lcom/android/phone/PLMNListPreference$NetworkCompare;-><init>(Lcom/android/phone/PLMNListPreference;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 142
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .line 143
    .local v1, network:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    invoke-virtual {p0, v1}, Lcom/android/phone/PLMNListPreference;->addPLMNPreference(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)V

    .line 145
    const-string v2, "Settings/PLMNListPreference"

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showInputDialog(Ljava/lang/String;)V
    .locals 13
    .parameter "pinRetryLeft"

    .prologue
    const/4 v12, 0x0

    const v11, 0x1090009

    const v10, 0x1090008

    .line 448
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 449
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f040023

    invoke-virtual {v5, v9, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 451
    .local v4, dialogView:Landroid/view/View;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 452
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 454
    invoke-direct {p0}, Lcom/android/phone/PLMNListPreference;->initStringList()V

    .line 456
    const v9, 0x7f0700b9

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    .line 457
    .local v6, spPriority:Landroid/widget/Spinner;
    const v9, 0x7f0700ba

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    .line 459
    .local v7, spService:Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v9, p0, Lcom/android/phone/PLMNListPreference;->listPriority:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v10, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 460
    .local v0, adapterPriority:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v9, p0, Lcom/android/phone/PLMNListPreference;->listService:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v10, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 461
    .local v1, adapterService:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 462
    invoke-virtual {v1, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 464
    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 465
    invoke-virtual {v7, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 467
    const v9, 0x7f0b0039

    invoke-virtual {v2, v9, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 468
    const v9, 0x7f0b0035

    new-instance v10, Lcom/android/phone/PLMNListPreference$1;

    invoke-direct {v10, p0, v4, v6, v7}, Lcom/android/phone/PLMNListPreference$1;-><init>(Lcom/android/phone/PLMNListPreference;Landroid/view/View;Landroid/widget/Spinner;Landroid/widget/Spinner;)V

    invoke-virtual {v2, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 483
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 484
    .local v3, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 485
    .local v8, window:Landroid/view/Window;
    const/16 v9, 0x15

    invoke-virtual {v8, v9}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 487
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 488
    return-void
.end method


# virtual methods
.method addPLMNPreference(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)V
    .locals 5
    .parameter "network"

    .prologue
    .line 160
    new-instance v2, Lcom/android/phone/PLMNListPreference$PLMNPreference;

    invoke-direct {v2, p0, p0}, Lcom/android/phone/PLMNListPreference$PLMNPreference;-><init>(Lcom/android/phone/PLMNListPreference;Landroid/content/Context;)V

    .line 161
    .local v2, pref:Lcom/android/phone/PLMNListPreference$PLMNPreference;
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getOperatorAlphaName()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, plmnName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getAccessTechnology()I

    move-result v3

    invoke-static {v3}, Lcom/android/phone/NetworkEditor;->getNWString(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, extendName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/PLMNListPreference$PLMNPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v3, p0, Lcom/android/phone/PLMNListPreference;->mPLMNListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 165
    iget-object v3, p0, Lcom/android/phone/PLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    return-void
.end method

.method extractInfoFromNetworkInfo(Landroid/content/Intent;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)V
    .locals 3
    .parameter "intent"
    .parameter "info"

    .prologue
    .line 170
    const-string v1, "plmn_code"

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v1, "plmn_name"

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getOperatorAlphaName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v1, "plmn_priority"

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    const-string v1, "plmn_service"

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getAccessTechnology()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    iget-object v1, p0, Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .line 175
    .local v0, info2:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    const-string v1, "plmn_max_priority"

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    return-void
.end method

.method genDelete(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)Ljava/util/ArrayList;
    .locals 9
    .parameter "network"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 387
    const-string v5, "Settings/PLMNListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "genDelete : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v5, p0, Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/android/phone/PLMNListPreference;->dumpNetworkInfo(Ljava/util/List;)V

    .line 390
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    new-instance v2, Lcom/android/phone/PLMNListPreference$NetworkCompare;

    invoke-direct {v2, p0}, Lcom/android/phone/PLMNListPreference$NetworkCompare;-><init>(Lcom/android/phone/PLMNListPreference;)V

    .line 392
    .local v2, nc:Lcom/android/phone/PLMNListPreference$NetworkCompare;
    iget-object v5, p0, Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-static {v5, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    .line 395
    .local v4, pos:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 396
    iget-object v5, p0, Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 400
    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->setOperatorNumeric(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    iget-object v5, p0, Lcom/android/phone/PLMNListPreference;->mCapability:Lcom/android/phone/PLMNListPreference$SIMCapability;

    iget v5, v5, Lcom/android/phone/PLMNListPreference$SIMCapability;->lastIndex:I

    add-int/lit8 v5, v5, 0x1

    if-ge v0, v5, :cond_1

    .line 406
    new-instance v3, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    const-string v5, ""

    const/4 v6, 0x1

    invoke-direct {v3, v5, v8, v6, v0}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 407
    .local v3, ni:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 409
    .end local v3           #ni:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/phone/PLMNListPreference;->adjustPriority(Ljava/util/ArrayList;)V

    .line 410
    invoke-direct {p0, v1}, Lcom/android/phone/PLMNListPreference;->dumpNetworkInfo(Ljava/util/List;)V

    .line 425
    return-object v1
.end method

.method genModifyEx(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)Ljava/util/ArrayList;
    .locals 10
    .parameter "newInfo"
    .parameter "oldInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    const-string v7, "Settings/PLMNListPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "genModifyEx: change : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "----> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v7, p0, Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-direct {p0, v7}, Lcom/android/phone/PLMNListPreference;->dumpNetworkInfo(Ljava/util/List;)V

    .line 304
    new-instance v3, Lcom/android/phone/PLMNListPreference$NetworkCompare;

    invoke-direct {v3, p0}, Lcom/android/phone/PLMNListPreference$NetworkCompare;-><init>(Lcom/android/phone/PLMNListPreference;)V

    .line 305
    .local v3, nc:Lcom/android/phone/PLMNListPreference$NetworkCompare;
    iget-object v7, p0, Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-static {v7, p2, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v5

    .line 306
    .local v5, oldPos:I
    iget-object v7, p0, Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-static {v7, p1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    .line 308
    .local v4, newPos:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v7

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 314
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-direct {p0, v2}, Lcom/android/phone/PLMNListPreference;->dumpNetworkInfo(Ljava/util/List;)V

    .line 348
    :goto_0
    return-object v2

    .line 319
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v7, p0, Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 320
    iget-object v7, p0, Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 324
    :cond_1
    const/4 v6, -0x1

    .line 325
    .local v6, properPos:I
    if-gez v4, :cond_2

    .line 326
    iget-object v7, p0, Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-virtual {p0, v7, p1}, Lcom/android/phone/PLMNListPreference;->getPosition(Ljava/util/List;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)I

    move-result v6

    .line 327
    invoke-virtual {v2, v6, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 328
    invoke-direct {p0, v2}, Lcom/android/phone/PLMNListPreference;->dumpNetworkInfo(Ljava/util/List;)V

    goto :goto_0

    .line 333
    :cond_2
    move v0, v4

    .line 334
    .local v0, adjustIndex:I
    if-le v5, v4, :cond_3

    .line 335
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 336
    invoke-virtual {v2, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 346
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/phone/PLMNListPreference;->adjustPriority(Ljava/util/ArrayList;)V

    .line 347
    invoke-direct {p0, v2}, Lcom/android/phone/PLMNListPreference;->dumpNetworkInfo(Ljava/util/List;)V

    goto :goto_0

    .line 337
    :cond_3
    if-ge v5, v4, :cond_4

    .line 338
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v2, v7, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 339
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 340
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 342
    :cond_4
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 343
    invoke-virtual {v2, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method getPosition(Ljava/util/List;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)I
    .locals 6
    .parameter
    .parameter "newInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ">;",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 352
    const/4 v1, -0x1

    .line 354
    .local v1, index:I
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    .line 376
    :goto_0
    return v2

    .line 358
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 359
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v5

    if-le v2, v5, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0

    .line 362
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 363
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 364
    if-nez v0, :cond_6

    .line 365
    const/4 v1, 0x0

    .line 373
    :cond_4
    :goto_1
    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 374
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :cond_5
    move v2, v1

    .line 376
    goto :goto_0

    .line 367
    :cond_6
    add-int/lit8 v1, v0, -0x1

    goto :goto_1
.end method

.method handlePLMNListAdd(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)V
    .locals 8
    .parameter "newInfo"

    .prologue
    .line 267
    const-string v5, "Settings/PLMNListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handlePLMNListAdd: add new network: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v5, p0, Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/android/phone/PLMNListPreference;->dumpNetworkInfo(Ljava/util/List;)V

    .line 269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 271
    iget-object v5, p0, Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_0
    new-instance v2, Lcom/android/phone/PLMNListPreference$NetworkCompare;

    invoke-direct {v2, p0}, Lcom/android/phone/PLMNListPreference$NetworkCompare;-><init>(Lcom/android/phone/PLMNListPreference;)V

    .line 274
    .local v2, nc:Lcom/android/phone/PLMNListPreference$NetworkCompare;
    iget-object v5, p0, Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-static {v5, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    .line 276
    .local v3, pos:I
    const/4 v4, -0x1

    .line 277
    .local v4, properPos:I
    if-gez v3, :cond_1

    .line 278
    iget-object v5, p0, Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-virtual {p0, v5, p1}, Lcom/android/phone/PLMNListPreference;->getPosition(Ljava/util/List;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)I

    move-result v4

    .line 280
    :cond_1
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 281
    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 285
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/phone/PLMNListPreference;->adjustPriority(Ljava/util/ArrayList;)V

    .line 286
    invoke-direct {p0, v1}, Lcom/android/phone/PLMNListPreference;->dumpNetworkInfo(Ljava/util/List;)V

    .line 287
    invoke-virtual {p0, v1}, Lcom/android/phone/PLMNListPreference;->handleSetPLMN(Ljava/util/ArrayList;)V

    .line 288
    return-void

    .line 283
    :cond_2
    invoke-virtual {v1, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method handlePLMNListChange(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)V
    .locals 2
    .parameter "newInfo"
    .parameter "oldInfo"

    .prologue
    .line 257
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 259
    invoke-virtual {p0, p2}, Lcom/android/phone/PLMNListPreference;->genDelete(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PLMNListPreference;->handleSetPLMN(Ljava/util/ArrayList;)V

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/PLMNListPreference;->genModifyEx(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PLMNListPreference;->handleSetPLMN(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method handleSetPLMN(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    const/4 v6, 0x1

    .line 237
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/android/phone/PLMNListPreference;->numbers:I

    .line 238
    iget-object v3, p0, Lcom/android/phone/PLMNListPreference;->mPLMNListContainer:Landroid/preference/PreferenceCategory;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/PLMNListPreference;->onStarted(Landroid/preference/Preference;Z)V

    .line 239
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 240
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .line 241
    .local v2, ni:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/phone/PLMNListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 243
    .local v0, dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget v3, p0, Lcom/android/phone/PLMNListPreference;->mSlotId:I

    iget-object v4, p0, Lcom/android/phone/PLMNListPreference;->mHandler:Lcom/android/phone/PLMNListPreference$MyHandler;

    iget v5, p0, Lcom/android/phone/PLMNListPreference;->mSlotId:I

    invoke-virtual {v4, v6, v5, v6}, Lcom/android/phone/PLMNListPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPOLEntryGemini(ILcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V

    .line 239
    .end local v0           #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    :cond_0
    iget-object v3, p0, Lcom/android/phone/PLMNListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/PLMNListPreference;->mHandler:Lcom/android/phone/PLMNListPreference$MyHandler;

    iget v5, p0, Lcom/android/phone/PLMNListPreference;->mSlotId:I

    invoke-virtual {v4, v6, v5, v6}, Lcom/android/phone/PLMNListPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/Phone;->setPOLEntry(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V

    .line 249
    const-string v3, "Settings/PLMNListPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetPLMN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 253
    .end local v2           #ni:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    :cond_1
    return-void
.end method

.method init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V
    .locals 5
    .parameter "listener"
    .parameter "skipReading"
    .parameter "mSlotId"

    .prologue
    const/4 v4, 0x0

    .line 88
    const-string v1, "Settings/PLMNListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init with simSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    if-nez p2, :cond_0

    .line 90
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    iget-object v0, p0, Lcom/android/phone/PLMNListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 93
    .local v0, dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget-object v1, p0, Lcom/android/phone/PLMNListPreference;->mHandler:Lcom/android/phone/PLMNListPreference$MyHandler;

    invoke-virtual {v1, v4, p3, v4}, Lcom/android/phone/PLMNListPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPreferedOperatorListGemini(ILandroid/os/Message;)V

    .line 98
    .end local v0           #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :goto_0
    if-eqz p1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/phone/PLMNListPreference;->mPLMNListContainer:Landroid/preference/PreferenceCategory;

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 102
    :cond_0
    return-void

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/android/phone/PLMNListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/PLMNListPreference;->mHandler:Lcom/android/phone/PLMNListPreference$MyHandler;

    invoke-virtual {v2, v4, p3, v4}, Lcom/android/phone/PLMNListPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferedOperatorList(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 206
    const-string v1, "Settings/PLMNListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v1, 0x1

    if-gt p2, v1, :cond_0

    .line 219
    :goto_0
    return-void

    .line 210
    :cond_0
    const/4 v1, 0x2

    if-ne v1, p2, :cond_2

    .line 211
    const-string v1, "Settings/PLMNListPreference"

    const-string v2, "onActivityResult delete"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 216
    .local v0, newInfo:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    invoke-direct {p0, p3}, Lcom/android/phone/PLMNListPreference;->createNetworkInfo(Landroid/content/Intent;)Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/android/phone/PLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/phone/PLMNListPreference;->mClicked:Landroid/preference/Preference;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/PLMNListPreference;->handlePLMNListChange(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)V

    goto :goto_0

    .line 212
    .end local v0           #newInfo:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    :cond_2
    const/4 v1, 0x3

    if-ne v1, p2, :cond_1

    .line 213
    const-string v1, "Settings/PLMNListPreference"

    const-string v2, "onActivityResult modify"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f05001a

    invoke-virtual {p0, v0}, Lcom/android/phone/PLMNListPreference;->addPreferencesFromResource(I)V

    .line 74
    const-string v0, "plmn_list"

    invoke-virtual {p0, v0}, Lcom/android/phone/PLMNListPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/phone/PLMNListPreference;->mPLMNListContainer:Landroid/preference/PreferenceCategory;

    .line 75
    const-string v0, "button_add_plmn_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/PLMNListPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PLMNListPreference;->mButtonAddnew:Landroid/preference/Preference;

    .line 77
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PLMNListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 78
    invoke-virtual {p0}, Lcom/android/phone/PLMNListPreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "simId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/PLMNListPreference;->mSlotId:I

    .line 79
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 116
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 117
    const v1, 0x7f0b0367

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 119
    :cond_0
    return-object v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 179
    instance-of v5, p2, Lcom/android/phone/PLMNListPreference$PLMNPreference;

    if-eqz v5, :cond_1

    .line 180
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/phone/NetworkEditor;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/phone/PLMNListPreference;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .line 182
    .local v1, info:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    invoke-virtual {p0, v2, v1}, Lcom/android/phone/PLMNListPreference;->extractInfoFromNetworkInfo(Landroid/content/Intent;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)V

    .line 183
    invoke-virtual {p0, v2, v4}, Lcom/android/phone/PLMNListPreference;->startActivityForResult(Landroid/content/Intent;I)V

    .line 184
    iput-object p2, p0, Lcom/android/phone/PLMNListPreference;->mClicked:Landroid/preference/Preference;

    move v3, v4

    .line 201
    .end local v1           #info:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return v3

    .line 186
    :cond_1
    iget-object v5, p0, Lcom/android/phone/PLMNListPreference;->mButtonAddnew:Landroid/preference/Preference;

    if-ne p2, v5, :cond_0

    .line 187
    iget-object v5, p0, Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/PLMNListPreference;->mPLMNList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 188
    .local v0, index:I
    :goto_1
    iget-object v5, p0, Lcom/android/phone/PLMNListPreference;->mCapability:Lcom/android/phone/PLMNListPreference$SIMCapability;

    iget v5, v5, Lcom/android/phone/PLMNListPreference$SIMCapability;->lastIndex:I

    add-int/lit8 v5, v5, 0x1

    if-lt v0, v5, :cond_3

    .line 189
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "SIM has no space to add new PLMN!"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040014

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040013

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .end local v0           #index:I
    :cond_2
    move v0, v3

    .line 187
    goto :goto_1

    .line 196
    .restart local v0       #index:I
    :cond_3
    const-string v3, ""

    invoke-direct {p0, v3}, Lcom/android/phone/PLMNListPreference;->showInputDialog(Ljava/lang/String;)V

    .line 197
    iput-object p2, p0, Lcom/android/phone/PLMNListPreference;->mClicked:Landroid/preference/Preference;

    move v3, v4

    .line 198
    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 83
    invoke-direct {p0}, Lcom/android/phone/PLMNListPreference;->getSIMCapability()V

    .line 84
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/phone/PLMNListPreference;->mSlotId:I

    invoke-virtual {p0, p0, v0, v1}, Lcom/android/phone/PLMNListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    .line 85
    return-void
.end method
