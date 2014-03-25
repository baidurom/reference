.class public Lcom/android/internal/telephony/UiccCard;
.super Ljava/lang/Object;
.source "UiccCard.java"


# static fields
.field protected static final DBG:Z = true

.field private static final EVENT_CARD_ADDED:I = 0xe

.field private static final EVENT_CARD_REMOVED:I = 0xd

.field private static final EVENT_CLOSE_CHANNEL_DONE:I = 0x66

.field private static final EVENT_EXCHANGE_APDU_DONE:I = 0x64

.field private static final EVENT_GET_ATR_DONE:I = 0x68

.field private static final EVENT_GET_CDMA_IMSI_DONE:I = 0x11

.field private static final EVENT_GET_GSM_IMSI_DONE:I = 0x10

.field private static final EVENT_IMSI_READY:I = 0xf

.field private static final EVENT_OPEN_CHANNEL_DONE:I = 0x65

.field private static final EVENT_OPEN_CHANNEL_WITH_SW_DONE:I = 0x69

.field private static final EVENT_SIM_IO_DONE:I = 0x67

.field protected static final LOG_TAG:Ljava/lang/String; = "RIL_UiccCard"

.field static final UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;


# instance fields
.field private mAbsentRegistrants:Landroid/os/RegistrantList;

.field private mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

.field private mCatService:Lcom/android/internal/telephony/cat/CatService;

.field private mCdmaImsi:Ljava/lang/String;

.field private mCdmaSubscriptionAppIndex:I

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mDualImsiReadyRegistrants:Landroid/os/RegistrantList;

.field private mGetImsiDoneFlag:Z

.field private mGsmImsi:Ljava/lang/String;

.field private mGsmUmtsSubscriptionAppIndex:I

.field protected mHandler:Landroid/os/Handler;

.field private mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

.field private mIccRecords:Lcom/android/internal/telephony/IccRecords;

.field private mIccType:Ljava/lang/String;

.field private mImsSubscriptionAppIndex:I

.field private mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field private final mLock:Ljava/lang/Object;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSimId:I

.field private mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

.field private mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gsm.ril.uicctype"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gsm.ril.uicctype.2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gsm.ril.uicctype.3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "gsm.ril.uicctype.4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/UiccCard;->UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccCardStatus;)V
    .locals 3
    .parameter "c"
    .parameter "ci"
    .parameter "ics"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mIccType:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mLock:Ljava/lang/Object;

    .line 95
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/telephony/UiccCardApplication;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    .line 100
    iput-boolean v2, p0, Lcom/android/internal/telephony/UiccCard;->mDestroyed:Z

    .line 101
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 103
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 104
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mDualImsiReadyRegistrants:Landroid/os/RegistrantList;

    .line 107
    iput-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 108
    iput-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 109
    iput-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mGsmImsi:Ljava/lang/String;

    .line 110
    iput-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mCdmaImsi:Ljava/lang/String;

    .line 111
    iput-boolean v2, p0, Lcom/android/internal/telephony/UiccCard;->mGetImsiDoneFlag:Z

    .line 455
    new-instance v0, Lcom/android/internal/telephony/UiccCard$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/UiccCard$2;-><init>(Lcom/android/internal/telephony/UiccCard;)V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mHandler:Landroid/os/Handler;

    .line 130
    const-string v0, "Creating"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 131
    iget-object v0, p3, Lcom/android/internal/telephony/IccCardStatus;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    .line 132
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/internal/telephony/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccCardStatus;Z)V

    .line 135
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v1, p0, Lcom/android/internal/telephony/UiccCard;->mSimId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccCardStatus;I)V
    .locals 3
    .parameter "c"
    .parameter "ci"
    .parameter "ics"
    .parameter "simId"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mIccType:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mLock:Ljava/lang/Object;

    .line 95
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/telephony/UiccCardApplication;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    .line 100
    iput-boolean v2, p0, Lcom/android/internal/telephony/UiccCard;->mDestroyed:Z

    .line 101
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 103
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 104
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mDualImsiReadyRegistrants:Landroid/os/RegistrantList;

    .line 107
    iput-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 108
    iput-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 109
    iput-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mGsmImsi:Ljava/lang/String;

    .line 110
    iput-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mCdmaImsi:Ljava/lang/String;

    .line 111
    iput-boolean v2, p0, Lcom/android/internal/telephony/UiccCard;->mGetImsiDoneFlag:Z

    .line 455
    new-instance v0, Lcom/android/internal/telephony/UiccCard$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/UiccCard$2;-><init>(Lcom/android/internal/telephony/UiccCard;)V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mHandler:Landroid/os/Handler;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating simId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 143
    iget-object v0, p3, Lcom/android/internal/telephony/IccCardStatus;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    .line 144
    iput p4, p0, Lcom/android/internal/telephony/UiccCard;->mSimId:I

    .line 145
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/internal/telephony/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccCardStatus;Z)V

    .line 148
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v1, p0, Lcom/android/internal/telephony/UiccCard;->mSimId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/UiccCard;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/UiccCard;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/UiccCard;[B)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccCard;->parseCdmaImsi([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/UiccCard;)Landroid/os/RegistrantList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mDualImsiReadyRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/UiccCard;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/UiccCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCard;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/UiccCard;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccCard;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/UiccCard;)Lcom/android/internal/telephony/IccRecords;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/UiccCard;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mGsmImsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/UiccCard;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCard;->mGsmImsi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/UiccCard;)Lcom/android/internal/telephony/IccFileHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/UiccCard;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mCdmaImsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/UiccCard;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCard;->mCdmaImsi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/internal/telephony/UiccCard;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/internal/telephony/UiccCard;->mGetImsiDoneFlag:Z

    return p1
.end method

.method private adjstMinDigits(II)I
    .locals 1
    .parameter "digits"
    .parameter "length"

    .prologue
    .line 751
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 752
    add-int/lit8 p1, p1, 0x6f

    .line 753
    rem-int/lit8 v0, p1, 0xa

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, -0xa

    .line 754
    :cond_0
    div-int/lit8 v0, p1, 0xa

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_1

    add-int/lit8 p1, p1, -0x64

    .line 755
    :cond_1
    div-int/lit8 v0, p1, 0x64

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_2

    add-int/lit16 p1, p1, -0x3e8

    .line 761
    :cond_2
    :goto_0
    return p1

    .line 756
    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 757
    add-int/lit8 p1, p1, 0xb

    .line 758
    rem-int/lit8 v0, p1, 0xa

    if-nez v0, :cond_4

    add-int/lit8 p1, p1, -0xa

    .line 759
    :cond_4
    div-int/lit8 v0, p1, 0xa

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_5

    add-int/lit8 p1, p1, -0x64

    :cond_5
    goto :goto_0
.end method

.method private checkIndex(ILcom/android/internal/telephony/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)I
    .locals 3
    .parameter "index"
    .parameter "expectedAppType"
    .parameter "altExpectedAppType"

    .prologue
    const/4 v0, -0x1

    .line 354
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    array-length v1, v1

    if-lt p1, v1, :cond_2

    .line 355
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid since there are no applications"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UiccCard;->loge(Ljava/lang/String;)V

    move p1, v0

    .line 372
    .end local p1
    :cond_1
    :goto_0
    return p1

    .line 359
    .restart local p1
    :cond_2
    if-gez p1, :cond_3

    move p1, v0

    .line 361
    goto :goto_0

    .line 364
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getType()Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v1

    if-eq v1, p2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getType()Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v1

    if-eq v1, p3, :cond_1

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid since it\'s not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UiccCard;->loge(Ljava/lang/String;)V

    move p1, v0

    .line 368
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 619
    const-string v0, "RIL_UiccCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/UiccCard;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 623
    const-string v0, "RIL_UiccCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/UiccCard;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return-void
.end method

.method private onIccSwap(Z)V
    .locals 10
    .parameter "isAdded"

    .prologue
    .line 411
    iget-object v8, p0, Lcom/android/internal/telephony/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 416
    const/4 v2, 0x0

    .line 422
    .local v2, listener:Landroid/content/DialogInterface$OnClickListener;
    :try_start_0
    new-instance v3, Lcom/android/internal/telephony/UiccCard$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/UiccCard$1;-><init>(Lcom/android/internal/telephony/UiccCard;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    .end local v2           #listener:Landroid/content/DialogInterface$OnClickListener;
    .local v3, listener:Landroid/content/DialogInterface$OnClickListener;
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 439
    .local v5, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    const v7, #string@sim_added_title#t

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 441
    .local v6, title:Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_1

    const v7, #string@sim_added_message#t

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 443
    .local v4, message:Ljava/lang/String;
    :goto_1
    const v7, #string@sim_restart_button#t

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, buttonTxt:Ljava/lang/String;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/internal/telephony/UiccCard;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 450
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v9, 0x7d3

    invoke-virtual {v7, v9}, Landroid/view/Window;->setType(I)V

    .line 451
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 452
    monitor-exit v8

    .line 453
    return-void

    .line 439
    .end local v0           #buttonTxt:Ljava/lang/String;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v4           #message:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    :cond_0
    const v7, #string@sim_removed_title#t

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 441
    .restart local v6       #title:Ljava/lang/String;
    :cond_1
    const v7, #string@sim_removed_message#t

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    goto :goto_1

    .line 452
    .end local v3           #listener:Landroid/content/DialogInterface$OnClickListener;
    .end local v5           #r:Landroid/content/res/Resources;
    .end local v6           #title:Ljava/lang/String;
    .restart local v2       #listener:Landroid/content/DialogInterface$OnClickListener;
    :catchall_0
    move-exception v7

    :goto_2
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .end local v2           #listener:Landroid/content/DialogInterface$OnClickListener;
    .restart local v3       #listener:Landroid/content/DialogInterface$OnClickListener;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #listener:Landroid/content/DialogInterface$OnClickListener;
    .restart local v2       #listener:Landroid/content/DialogInterface$OnClickListener;
    goto :goto_2
.end method

.method private parseCardType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "cdmaIMSI"
    .parameter "gsmIMSI"

    .prologue
    .line 693
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    const/4 v0, 0x3

    .line 700
    :goto_0
    return v0

    .line 695
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 696
    const/4 v0, 0x2

    goto :goto_0

    .line 697
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 698
    const/4 v0, 0x1

    goto :goto_0

    .line 700
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseCdmaImsi([B)Ljava/lang/String;
    .locals 14
    .parameter "data"

    .prologue
    .line 705
    const/4 v6, 0x0

    .line 706
    .local v6, mCdmaImsiTmp:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 707
    const/4 v9, 0x0

    .line 744
    :goto_0
    return-object v9

    .line 709
    :cond_0
    const/4 v9, 0x7

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0x80

    const/16 v10, 0x80

    if-ne v9, v10, :cond_2

    const/4 v7, 0x1

    .line 710
    .local v7, provisioned:Z
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "provisioned = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 711
    if-eqz v7, :cond_3

    .line 713
    const/16 v9, 0x9

    aget-byte v9, p1, v9

    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x8

    const/16 v10, 0x8

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    add-int v0, v9, v10

    .line 715
    .local v0, Mcc3digits:I
    const/4 v9, 0x6

    aget-byte v9, p1, v9

    and-int/lit16 v1, v9, 0xff

    .line 717
    .local v1, Mnc2digits:I
    const/4 v9, 0x2

    aget-byte v9, p1, v9

    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x8

    const/4 v10, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    add-int v4, v9, v10

    .line 719
    .local v4, first3digits:I
    const/4 v9, 0x5

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    const/4 v10, 0x4

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    shr-int/lit8 v8, v9, 0x6

    .line 721
    .local v8, second3digits:I
    const/4 v9, 0x4

    aget-byte v9, p1, v9

    shr-int/lit8 v9, v9, 0x2

    and-int/lit8 v3, v9, 0xf

    .line 722
    .local v3, digit7:I
    const/16 v9, 0x9

    if-le v3, v9, :cond_1

    const/4 v3, 0x0

    .line 724
    :cond_1
    const/4 v9, 0x4

    aget-byte v9, p1, v9

    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x8

    const/4 v10, 0x3

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    or-int v5, v9, v10

    .line 726
    .local v5, last3digits:I
    const/4 v9, 0x3

    invoke-direct {p0, v0, v9}, Lcom/android/internal/telephony/UiccCard;->adjstMinDigits(II)I

    move-result v0

    .line 727
    const/4 v9, 0x2

    invoke-direct {p0, v1, v9}, Lcom/android/internal/telephony/UiccCard;->adjstMinDigits(II)I

    move-result v1

    .line 728
    const/4 v9, 0x3

    invoke-direct {p0, v4, v9}, Lcom/android/internal/telephony/UiccCard;->adjstMinDigits(II)I

    move-result v4

    .line 729
    const/4 v9, 0x3

    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/UiccCard;->adjstMinDigits(II)I

    move-result v8

    .line 730
    const/4 v9, 0x3

    invoke-direct {p0, v5, v9}, Lcom/android/internal/telephony/UiccCard;->adjstMinDigits(II)I

    move-result v5

    .line 732
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 733
    .local v2, builderImsi:Ljava/lang/StringBuilder;
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%03d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%02d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%03d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%03d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%03d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 740
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mCdmaImsiTmp present="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    move-object v9, v6

    .line 741
    goto/16 :goto_0

    .line 709
    .end local v0           #Mcc3digits:I
    .end local v1           #Mnc2digits:I
    .end local v2           #builderImsi:Ljava/lang/StringBuilder;
    .end local v3           #digit7:I
    .end local v4           #first3digits:I
    .end local v5           #last3digits:I
    .end local v7           #provisioned:Z
    .end local v8           #second3digits:I
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 743
    .restart local v7       #provisioned:Z
    :cond_3
    const-string/jumbo v9, "mCSimImsiM not present"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 744
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method private sanitizeApplicationIndexes()V
    .locals 3

    .prologue
    .line 345
    iget v0, p0, Lcom/android/internal/telephony/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    sget-object v1, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/UiccCard;->checkIndex(ILcom/android/internal/telephony/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 347
    iget v0, p0, Lcom/android/internal/telephony/UiccCard;->mCdmaSubscriptionAppIndex:I

    sget-object v1, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/UiccCard;->checkIndex(ILcom/android/internal/telephony/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/UiccCard;->mCdmaSubscriptionAppIndex:I

    .line 349
    iget v0, p0, Lcom/android/internal/telephony/UiccCard;->mImsSubscriptionAppIndex:I

    sget-object v1, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/UiccCard;->checkIndex(ILcom/android/internal/telephony/IccCardApplicationStatus$AppType;Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/UiccCard;->mImsSubscriptionAppIndex:I

    .line 351
    return-void
.end method


# virtual methods
.method public closeLogicalChannel(ILandroid/os/Message;)V
    .locals 3
    .parameter "channel"
    .parameter "onComplete"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccCloseChannel(ILandroid/os/Message;)V

    .line 641
    return-void
.end method

.method public dispose()V
    .locals 7

    .prologue
    .line 155
    iget-object v5, p0, Lcom/android/internal/telephony/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 156
    :try_start_0
    const-string v4, "Disposing card"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 157
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    .local v1, arr$:[Lcom/android/internal/telephony/UiccCardApplication;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 160
    .local v0, app:Lcom/android/internal/telephony/UiccCardApplication;
    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->dispose()V

    .line 159
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    .end local v0           #app:Lcom/android/internal/telephony/UiccCardApplication;
    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 165
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    .line 166
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/UiccCard;->mGetImsiDoneFlag:Z

    .line 167
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    iget-object v6, p0, Lcom/android/internal/telephony/UiccCard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/IccRecords;->unregisterForImsiReady(Landroid/os/Handler;)V

    .line 168
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 169
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 170
    monitor-exit v5

    .line 171
    return-void

    .line 170
    .end local v1           #arr$:[Lcom/android/internal/telephony/UiccCardApplication;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "onComplete"

    .prologue
    .line 629
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    move-object/from16 v0, p8

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccExchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 631
    return-void
.end method

.method public exchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .parameter "fileID"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "pathID"
    .parameter "onComplete"

    .prologue
    .line 645
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x67

    move-object/from16 v0, p7

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move v2, p2

    move v3, p1

    move-object/from16 v4, p6

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 647
    return-void
.end method

.method public exchangeSimIO(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 11
    .parameter "fileID"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "pathID"
    .parameter "data"
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 651
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x67

    move-object/from16 v0, p9

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move v2, p2

    move v3, p1

    move-object/from16 v4, p6

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 653
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 336
    const-string v0, "UiccCard finalized"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public getApplication(I)Lcom/android/internal/telephony/UiccCardApplication;
    .locals 4
    .parameter "family"

    .prologue
    .line 583
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 584
    const/16 v0, 0x8

    .line 585
    .local v0, index:I
    packed-switch p1, :pswitch_data_0

    .line 598
    :goto_0
    if-ltz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 599
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v1, v1, v0

    monitor-exit v2

    .line 601
    :goto_1
    return-object v1

    .line 587
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mGsmUmtsSubscriptionAppIndex is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/telephony/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 588
    iget v0, p0, Lcom/android/internal/telephony/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 589
    goto :goto_0

    .line 591
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCdmaSubscriptionAppIndex is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/telephony/UiccCard;->mCdmaSubscriptionAppIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 592
    iget v0, p0, Lcom/android/internal/telephony/UiccCard;->mCdmaSubscriptionAppIndex:I

    .line 593
    goto :goto_0

    .line 595
    :pswitch_2
    iget v0, p0, Lcom/android/internal/telephony/UiccCard;->mImsSubscriptionAppIndex:I

    goto :goto_0

    .line 601
    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_1

    .line 602
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 585
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getApplicationIndex(I)Lcom/android/internal/telephony/UiccCardApplication;
    .locals 2
    .parameter "index"

    .prologue
    .line 606
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 607
    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v0, v0, p1

    monitor-exit v1

    .line 610
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 611
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;
    .locals 3

    .prologue
    .line 570
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 571
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCardState is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCard;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    monitor-exit v1

    return-object v0

    .line 573
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCdmaImsi()Ljava/lang/String;
    .locals 2

    .prologue
    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'s cdmaImsi is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mCdmaImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getGsmImsi()Ljava/lang/String;
    .locals 2

    .prologue
    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'s gsmImsi is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mGsmImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getIccCardType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 667
    sget-object v0, Lcom/android/internal/telephony/UiccCard;->UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccCard;->getMySimId()I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mIccType:Ljava/lang/String;

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIccCardType(): iccType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mIccType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mIccType:Ljava/lang/String;

    return-object v0
.end method

.method public getInternationalCardType()I
    .locals 3

    .prologue
    .line 673
    iget-boolean v1, p0, Lcom/android/internal/telephony/UiccCard;->mGetImsiDoneFlag:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-nez v1, :cond_1

    .line 674
    :cond_0
    const-string/jumbo v1, "mIccRecords has not been initialized or both IMSI have not been loaded"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UiccCard;->loge(Ljava/lang/String;)V

    .line 675
    const/4 v0, -0x1

    .line 680
    .local v0, cardType:I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cardType is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 681
    return v0

    .line 677
    .end local v0           #cardType:I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mGsmImsi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCard;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mCdmaImsi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCard;->mCdmaImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 678
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mCdmaImsi:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCard;->mGsmImsi:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/UiccCard;->parseCardType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0       #cardType:I
    goto :goto_0
.end method

.method public getMySimId()I
    .locals 1

    .prologue
    .line 615
    iget v0, p0, Lcom/android/internal/telephony/UiccCard;->mSimId:I

    return v0
.end method

.method public getUniversalPinState()Lcom/android/internal/telephony/IccCardStatus$PinState;
    .locals 2

    .prologue
    .line 577
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;

    monitor-exit v1

    return-object v0

    .line 579
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public iccGetATR(Landroid/os/Message;)V
    .locals 3
    .parameter "onComplete"

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccGetATR(Landroid/os/Message;)V

    .line 657
    return-void
.end method

.method public iccOpenChannelWithSw(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "AID"
    .parameter "onComplete"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccOpenChannelWithSw(Ljava/lang/String;Landroid/os/Message;)V

    .line 662
    return-void
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Z
    .locals 6
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 544
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 546
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    array-length v4, v4

    if-nez v4, :cond_3

    .line 547
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mIccType:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mIccType:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 548
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/UiccCard;->UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccCard;->getMySimId()I

    move-result v5

    aget-object v4, v4, v5

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mIccType:Ljava/lang/String;

    .line 550
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isApplicationOnIcc(): mIccType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCard;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 552
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mIccType:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mIccType:Ljava/lang/String;

    const-string v5, "USIM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 553
    monitor-exit v3

    .line 565
    :goto_0
    return v1

    .line 555
    :cond_2
    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 560
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 561
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v4, v4, v0

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardApplication;->getType()Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v4

    if-ne v4, p1, :cond_4

    .line 562
    monitor-exit v3

    goto :goto_0

    .line 566
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 560
    .restart local v0       #i:I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 565
    :cond_5
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    goto :goto_0
.end method

.method public openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "AID"
    .parameter "onComplete"

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V

    .line 636
    return-void
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 379
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 380
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 382
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 384
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    sget-object v3, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v1, v3, :cond_0

    .line 385
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 387
    :cond_0
    monitor-exit v2

    .line 388
    return-void

    .line 387
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForDualImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 397
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 398
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 399
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mDualImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 400
    monitor-exit v2

    .line 402
    return-void

    .line 400
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 391
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 393
    monitor-exit v1

    .line 394
    return-void

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForDualImsiReady(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 405
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mDualImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 407
    monitor-exit v1

    .line 408
    return-void

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccCardStatus;)V
    .locals 9
    .parameter "c"
    .parameter "ci"
    .parameter "ics"

    .prologue
    .line 174
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 175
    :try_start_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/UiccCard;->mDestroyed:Z

    if-eqz v3, :cond_0

    .line 176
    const-string v3, "Updated after destroyed! Fix me!"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UiccCard;->loge(Ljava/lang/String;)V

    .line 177
    monitor-exit v4

    .line 247
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    .line 180
    .local v1, oldState:Lcom/android/internal/telephony/IccCardStatus$CardState;
    iget-object v3, p3, Lcom/android/internal/telephony/IccCardStatus;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    .line 181
    iget-object v3, p3, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 182
    iget v3, p3, Lcom/android/internal/telephony/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    iput v3, p0, Lcom/android/internal/telephony/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ics.mGsmUmtsSubscriptionAppIndex is"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p3, Lcom/android/internal/telephony/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 184
    iget v3, p3, Lcom/android/internal/telephony/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    iput v3, p0, Lcom/android/internal/telephony/UiccCard;->mCdmaSubscriptionAppIndex:I

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ics.mCdmaSubscriptionAppIndex is"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p3, Lcom/android/internal/telephony/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 186
    iget v3, p3, Lcom/android/internal/telephony/IccCardStatus;->mImsSubscriptionAppIndex:I

    iput v3, p0, Lcom/android/internal/telephony/UiccCard;->mImsSubscriptionAppIndex:I

    .line 187
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCard;->mContext:Landroid/content/Context;

    .line 188
    iput-object p2, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p3, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " applications"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 191
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 192
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v3, v3, v0

    if-nez v3, :cond_2

    .line 194
    iget-object v3, p3, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 195
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    new-instance v5, Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v6, p3, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/android/internal/telephony/UiccCard;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/android/internal/telephony/UiccCardApplication;-><init>(Lcom/android/internal/telephony/UiccCard;Lcom/android/internal/telephony/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    aput-object v5, v3, v0

    .line 197
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 199
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 191
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 201
    :cond_2
    iget-object v3, p3, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    array-length v3, v3

    if-lt v0, v3, :cond_3

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update mUiccApplications["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] dispose"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 204
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/UiccCardApplication;->dispose()V

    .line 205
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v5, 0x0

    aput-object v5, v3, v0

    goto :goto_2

    .line 246
    .end local v0           #i:I
    .end local v1           #oldState:Lcom/android/internal/telephony/IccCardStatus$CardState;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 208
    .restart local v0       #i:I
    .restart local v1       #oldState:Lcom/android/internal/telephony/IccCardStatus$CardState;
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update mUiccApplications["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] update"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 209
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v3, v3, v0

    iget-object v5, p3, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/android/internal/telephony/UiccCard;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/internal/telephony/UiccCardApplication;->update(Lcom/android/internal/telephony/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_2

    .line 212
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v3, :cond_5

    .line 213
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xf

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/internal/telephony/IccRecords;->registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 214
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update mUiccApplications.length: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 215
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    array-length v3, v3

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    if-eqz v3, :cond_7

    .line 217
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCard;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, p0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/UiccCard;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 227
    :goto_3
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCard;->sanitizeApplicationIndexes()V

    .line 229
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    .line 230
    .local v2, radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update: radioState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mLastRadioState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 234
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v2, v3, :cond_6

    .line 235
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    sget-object v5, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v3, v5, :cond_9

    .line 236
    const-string/jumbo v3, "update: notify card removed"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 237
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 238
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xd

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 245
    :cond_6
    :goto_4
    iput-object v2, p0, Lcom/android/internal/telephony/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 246
    monitor-exit v4

    goto/16 :goto_0

    .line 221
    .end local v2           #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v3, :cond_8

    .line 222
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 224
    :cond_8
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    goto :goto_3

    .line 239
    .restart local v2       #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_9
    sget-object v3, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v1, v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    sget-object v5, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v3, v5, :cond_6

    .line 241
    const-string/jumbo v3, "update: notify card added"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 242
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method public update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccCardStatus;Z)V
    .locals 10
    .parameter "c"
    .parameter "ci"
    .parameter "ics"
    .parameter "isUpdateSimInfo"

    .prologue
    .line 250
    iget-object v5, p0, Lcom/android/internal/telephony/UiccCard;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 251
    :try_start_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/UiccCard;->mDestroyed:Z

    if-eqz v4, :cond_0

    .line 252
    const-string v4, "Updated after destroyed! Fix me!"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UiccCard;->loge(Ljava/lang/String;)V

    .line 253
    monitor-exit v5

    .line 333
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCard;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    .line 256
    .local v2, oldState:Lcom/android/internal/telephony/IccCardStatus$CardState;
    iget-object v4, p3, Lcom/android/internal/telephony/IccCardStatus;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    iput-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    .line 257
    iget-object v4, p3, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 258
    iget v4, p3, Lcom/android/internal/telephony/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    iput v4, p0, Lcom/android/internal/telephony/UiccCard;->mGsmUmtsSubscriptionAppIndex:I

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ics.mGsmUmtsSubscriptionAppIndex is"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p3, Lcom/android/internal/telephony/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 260
    iget v4, p3, Lcom/android/internal/telephony/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    iput v4, p0, Lcom/android/internal/telephony/UiccCard;->mCdmaSubscriptionAppIndex:I

    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ics.mCdmaSubscriptionAppIndex is"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p3, Lcom/android/internal/telephony/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 262
    iget v4, p3, Lcom/android/internal/telephony/IccCardStatus;->mImsSubscriptionAppIndex:I

    iput v4, p0, Lcom/android/internal/telephony/UiccCard;->mImsSubscriptionAppIndex:I

    .line 263
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCard;->mContext:Landroid/content/Context;

    .line 264
    iput-object p2, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p3, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    array-length v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " applications"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 267
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    array-length v4, v4

    if-ge v1, v4, :cond_4

    .line 268
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v4, v4, v1

    if-nez v4, :cond_2

    .line 270
    iget-object v4, p3, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 271
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    new-instance v6, Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v7, p3, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    aget-object v7, v7, v1

    iget-object v8, p0, Lcom/android/internal/telephony/UiccCard;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/android/internal/telephony/UiccCardApplication;-><init>(Lcom/android/internal/telephony/UiccCard;Lcom/android/internal/telephony/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    aput-object v6, v4, v1

    .line 273
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 274
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 267
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 276
    :cond_2
    iget-object v4, p3, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    array-length v4, v4

    if-lt v1, v4, :cond_3

    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update mUiccApplications["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] dispose"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 279
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardApplication;->dispose()V

    .line 280
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v6, 0x0

    aput-object v6, v4, v1

    goto :goto_2

    .line 332
    .end local v1           #i:I
    .end local v2           #oldState:Lcom/android/internal/telephony/IccCardStatus$CardState;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 283
    .restart local v1       #i:I
    .restart local v2       #oldState:Lcom/android/internal/telephony/IccCardStatus$CardState;
    :cond_3
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update mUiccApplications["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] update"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 284
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v4, v4, v1

    iget-object v6, p3, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/android/internal/telephony/UiccCard;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/internal/telephony/UiccCardApplication;->update(Lcom/android/internal/telephony/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_2

    .line 289
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v4, :cond_5

    .line 290
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    iget-object v6, p0, Lcom/android/internal/telephony/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xf

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/internal/telephony/IccRecords;->registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 292
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update mUiccApplications.length: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    array-length v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 293
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    array-length v4, v4

    if-lez v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    if-eqz v4, :cond_7

    .line 295
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/android/internal/telephony/UiccCard;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, p0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/UiccCard;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 305
    :goto_3
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCard;->sanitizeApplicationIndexes()V

    .line 308
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    .line 309
    .local v3, radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update: radioState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " mLastRadioState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 311
    if-eqz p4, :cond_6

    .line 314
    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v3, v4, :cond_6

    .line 315
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    sget-object v6, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v4, v6, :cond_9

    .line 316
    const-string/jumbo v4, "update: notify card removed"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 317
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 318
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/telephony/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xd

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 321
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 322
    .local v0, defaultPhone:Lcom/android/internal/telephony/Phone;
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local v0           #defaultPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccCard;->getMySimId()I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setSimInsertedState(IZ)V

    .line 331
    :cond_6
    :goto_4
    iput-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 332
    monitor-exit v5

    goto/16 :goto_0

    .line 299
    .end local v3           #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v4, :cond_8

    .line 300
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 302
    :cond_8
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    goto :goto_3

    .line 324
    .restart local v3       #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_9
    sget-object v4, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v2, v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    sget-object v6, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v4, v6, :cond_6

    .line 326
    const-string/jumbo v4, "update: notify card added"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V

    .line 327
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/telephony/UiccCard;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method
