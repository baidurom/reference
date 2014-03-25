.class public final Lcom/android/internal/telephony/cdma/RuimRecords;
.super Lcom/android/internal/telephony/IccRecords;
.source "RuimRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/RuimRecords$RuimBroadCastReceiver;,
        Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimEprlLoaded;,
        Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimCdmaHomeLoaded;,
        Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimImsimLoaded;,
        Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimMdnLoaded;,
        Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;,
        Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimLiLoaded;,
        Lcom/android/internal/telephony/cdma/RuimRecords$EfPlLoaded;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_APP_READY:I = 0x1

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CDMA_SUBSCRIPTION_DONE:I = 0xa

.field private static final EVENT_GET_DEVICE_IDENTITY_DONE:I = 0x4

.field private static final EVENT_GET_ICCID_DONE:I = 0x5

.field private static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_IMSI_RETRY:I = 0x6

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_PHB_READY:I = 0x66

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_RADIO_STATE_CHANGED:I = 0x65

.field private static final EVENT_RUIM_REFRESH:I = 0x1f

.field private static final EVENT_SMS_ON_RUIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field static final PROPERTY_RIL_PHB_READY:Ljava/lang/String; = "gsm.sim.ril.phbready"

.field static final PROPERTY_RIL_PHB_READY_2:Ljava/lang/String; = "gsm.sim.ril.phbready.2"


# instance fields
.field bEccRequired:Z

.field mCsimSpnDisplayCondition:Z

.field private mEFli:[B

.field private mEFpl:[B

.field private final mHandlePhbReadyReceiver:Landroid/content/BroadcastReceiver;

.field private mHomeNetworkId:Ljava/lang/String;

.field private mHomeSystemId:Ljava/lang/String;

.field private mMdn:Ljava/lang/String;

.field private mMin:Ljava/lang/String;

.field private mMin2Min1:Ljava/lang/String;

.field private mMyMobileNumber:Ljava/lang/String;

.field private mPhbReady:Z

.field private mPrlVersion:Ljava/lang/String;

.field private mRuimReceiver:Landroid/content/BroadcastReceiver;

.field private mSIMInfoReady:Z

.field private mSimId:I

.field private m_ota_commited:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .parameter "app"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 177
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 119
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->m_ota_commited:Z

    .line 128
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mEFpl:[B

    .line 129
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mEFli:[B

    .line 130
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCsimSpnDisplayCondition:Z

    .line 136
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->bEccRequired:Z

    .line 170
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mPhbReady:Z

    .line 171
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSIMInfoReady:Z

    .line 1101
    new-instance v2, Lcom/android/internal/telephony/cdma/RuimRecords$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdma/RuimRecords$1;-><init>(Lcom/android/internal/telephony/cdma/RuimRecords;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mHandlePhbReadyReceiver:Landroid/content/BroadcastReceiver;

    .line 179
    invoke-virtual {p1}, Lcom/android/internal/telephony/UiccCardApplication;->getMySimId()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSimId:I

    .line 181
    new-instance v2, Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/AdnRecordCache;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 183
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsRequested:Z

    .line 186
    iput v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    .line 188
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x2

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 190
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x1f

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 193
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x66

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForPhbReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 195
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 196
    .local v1, phbFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string v2, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mHandlePhbReadyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    new-instance v2, Lcom/android/internal/telephony/cdma/RuimRecords$RuimBroadCastReceiver;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/cdma/RuimRecords$RuimBroadCastReceiver;-><init>(Lcom/android/internal/telephony/cdma/RuimRecords;Lcom/android/internal/telephony/cdma/RuimRecords$1;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mRuimReceiver:Landroid/content/BroadcastReceiver;

    .line 203
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 204
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mRuimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->resetRecords()V

    .line 211
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3, v5}, Lcom/android/internal/telephony/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 212
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/RuimRecords;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mEFpl:[B

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/cdma/RuimRecords;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/RuimRecords;->adjstMinDigits(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/cdma/RuimRecords;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mEFpl:[B

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/cdma/RuimRecords;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/internal/telephony/cdma/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/internal/telephony/cdma/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/internal/telephony/cdma/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/cdma/RuimRecords;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/RuimRecords;->onGetCSimEprlDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/RuimRecords;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mEFli:[B

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/cdma/RuimRecords;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mEFli:[B

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/cdma/RuimRecords;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mHandlePhbReadyReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/telephony/cdma/RuimRecords;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/internal/telephony/cdma/RuimRecords;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSIMInfoReady:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/internal/telephony/cdma/RuimRecords;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/telephony/cdma/RuimRecords;)Lcom/android/internal/telephony/UiccCardApplication;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/internal/telephony/cdma/RuimRecords;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mPhbReady:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/internal/telephony/cdma/RuimRecords;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->setDefaultNameByLocale()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/cdma/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->spn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/cdma/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->spn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/cdma/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->spn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/cdma/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->spn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/cdma/RuimRecords;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->spn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/cdma/RuimRecords;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->spn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/cdma/RuimRecords;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMdn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/telephony/cdma/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMdn:Ljava/lang/String;

    return-object p1
.end method

.method private adjstMinDigits(I)I
    .locals 1
    .parameter "digits"

    .prologue
    .line 294
    add-int/lit8 p1, p1, 0x6f

    .line 295
    rem-int/lit8 v0, p1, 0xa

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, -0xa

    .line 296
    :cond_0
    div-int/lit8 v0, p1, 0xa

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_1

    add-int/lit8 p1, p1, -0x64

    .line 297
    :cond_1
    div-int/lit8 v0, p1, 0x64

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_2

    add-int/lit16 p1, p1, -0x3e8

    .line 298
    :cond_2
    return p1
.end method

.method private fetchEccList()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 754
    const-string v1, "fetchEccList()"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 755
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->bEccRequired:Z

    .line 756
    const-string v1, "ro.ril.ecclist"

    const-string v2, "112,911"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const-string v1, "ro.ril.ecclist.cdma"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 758
    .local v0, numbers:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchEccList from ro.ril.cdma.ecclist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 759
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 760
    iget v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSimId:I

    if-ne v3, v1, :cond_1

    .line 761
    const-string v1, "ril.ecclist2"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    :cond_0
    :goto_0
    const-string v1, "ril.ecclist2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchEccList from ro.ril.cdma.ecclist after write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 769
    return-void

    .line 763
    :cond_1
    const-string v1, "ril.ecclist"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fetchRuimRecords()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x64

    .line 890
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsRequested:Z

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchRuimRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 894
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 895
    iget v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    .line 897
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x2fe2

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 899
    iget v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    .line 901
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x2f05

    new-instance v2, Lcom/android/internal/telephony/cdma/RuimRecords$EfPlLoaded;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/cdma/RuimRecords$EfPlLoaded;-><init>(Lcom/android/internal/telephony/cdma/RuimRecords;Lcom/android/internal/telephony/cdma/RuimRecords$1;)V

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 903
    iget v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    .line 905
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f3a

    new-instance v2, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimLiLoaded;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimLiLoaded;-><init>(Lcom/android/internal/telephony/cdma/RuimRecords;Lcom/android/internal/telephony/cdma/RuimRecords$1;)V

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 907
    iget v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    .line 909
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f41

    new-instance v2, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;-><init>(Lcom/android/internal/telephony/cdma/RuimRecords;Lcom/android/internal/telephony/cdma/RuimRecords$1;)V

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 911
    iget v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    .line 913
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f44

    new-instance v2, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimMdnLoaded;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimMdnLoaded;-><init>(Lcom/android/internal/telephony/cdma/RuimRecords;Lcom/android/internal/telephony/cdma/RuimRecords$1;)V

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 915
    iget v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    .line 917
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f22

    new-instance v2, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimImsimLoaded;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimImsimLoaded;-><init>(Lcom/android/internal/telephony/cdma/RuimRecords;Lcom/android/internal/telephony/cdma/RuimRecords$1;)V

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 919
    iget v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    .line 921
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f28

    new-instance v2, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimCdmaHomeLoaded;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimCdmaHomeLoaded;-><init>(Lcom/android/internal/telephony/cdma/RuimRecords;Lcom/android/internal/telephony/cdma/RuimRecords$1;)V

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 923
    iget v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    .line 927
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f5a

    const/4 v2, 0x4

    new-instance v3, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimEprlLoaded;

    invoke-direct {v3, p0, v5}, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimEprlLoaded;-><init>(Lcom/android/internal/telephony/cdma/RuimRecords;Lcom/android/internal/telephony/cdma/RuimRecords$1;)V

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(IILandroid/os/Message;)V

    .line 929
    iget v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchRuimRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 933
    return-void
.end method

.method private findBestLanguage([B)Ljava/lang/String;
    .locals 11
    .parameter "languages"

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x2

    .line 689
    const/4 v0, 0x0

    .line 690
    .local v0, bestMatch:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v5

    .line 692
    .local v5, locales:[Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez v5, :cond_2

    :cond_0
    move-object v4, v6

    .line 710
    :cond_1
    :goto_0
    return-object v4

    .line 695
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    add-int/lit8 v7, v2, 0x1

    array-length v8, p1

    if-ge v7, v8, :cond_5

    .line 697
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const/4 v7, 0x2

    const-string v8, "ISO-8859-1"

    invoke-direct {v4, p1, v2, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 698
    .local v4, lang:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    array-length v7, v5

    if-ge v3, v7, :cond_4

    .line 699
    aget-object v7, v5, v3

    if-eqz v7, :cond_3

    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v10, :cond_3

    aget-object v7, v5, v3

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_1

    .line 698
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 704
    :cond_4
    if-eqz v0, :cond_6

    .end local v3           #j:I
    .end local v4           #lang:Ljava/lang/String;
    :cond_5
    move-object v4, v6

    .line 710
    goto :goto_0

    .line 705
    :catch_0
    move-exception v1

    .line 706
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v7, "Failed to parse SIM language records"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 695
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :cond_6
    add-int/lit8 v2, v2, 0x2

    goto :goto_1
.end method

.method private getIMSIDelay(J)V
    .locals 3
    .parameter "delayMillis"

    .prologue
    .line 884
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "to getIMSIDelay, delayMillis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/cdma/RuimRecords;->sendEmptyMessageDelayed(IJ)Z

    .line 886
    return-void
.end method

.method private handleRuimRefresh(Lcom/android/internal/telephony/IccRefreshResponse;)V
    .locals 3
    .parameter "refreshResponse"

    .prologue
    .line 1011
    if-nez p1, :cond_1

    .line 1012
    const-string v0, "handleRuimRefresh received without input"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 1049
    :cond_0
    :goto_0
    return-void

    .line 1016
    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/IccRefreshResponse;->aid:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/internal/telephony/IccRefreshResponse;->aid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    :cond_2
    iget v0, p1, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:I

    packed-switch v0, :pswitch_data_0

    .line 1046
    const-string v0, "handleRuimRefresh with unknown operation"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1024
    :pswitch_0
    const-string v0, "handleRuimRefresh with SIM_REFRESH_FILE_UPDATED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 1025
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 1026
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->fetchRuimRecords()V

    goto :goto_0

    .line 1029
    :pswitch_1
    const-string v0, "handleRuimRefresh with SIM_REFRESH_INIT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 1031
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->fetchRuimRecords()V

    goto :goto_0

    .line 1034
    :pswitch_2
    const-string v0, "handleRuimRefresh with SIM_REFRESH_RESET"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 1035
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 1022
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onGetCSimEprlDone(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v4, 0x3

    .line 510
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    .line 511
    .local v0, data:[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CSIM_EPRL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 514
    array-length v2, v0

    if-le v2, v4, :cond_0

    .line 515
    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 516
    .local v1, prlId:I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mPrlVersion:Ljava/lang/String;

    .line 518
    .end local v1           #prlId:I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CSIM PRL version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method private setDefaultNameByLocale()V
    .locals 6

    .prologue
    .line 1155
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSimId:I

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 1156
    .local v2, simInfos:Landroid/provider/Telephony$SIMInfo;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 1157
    .local v1, operator:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDefaultNameByLocale() operator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 1158
    if-eqz v1, :cond_1

    .line 1159
    const/4 v0, 0x0

    .line 1160
    .local v0, newName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v3, Lcom/android/internal/telephony/RIL;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/RIL;->lookupOperatorName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDefaultNameByLocale() newName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 1162
    iget v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSimId:I

    if-nez v3, :cond_0

    .line 1163
    const-string v3, "gsm.sim.operator.default-name"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->setDefaultNameForNewSIM(Ljava/lang/String;)V

    .line 1173
    .end local v0           #newName:Ljava/lang/String;
    :goto_1
    return-void

    .line 1165
    .restart local v0       #newName:Ljava/lang/String;
    :cond_0
    const-string v3, "gsm.sim.operator.default-name.2"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1170
    .end local v0           #newName:Ljava/lang/String;
    :cond_1
    const-string v3, "setDefaultNameByLocale() no operator name, but this intent should be received when operator is not null"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 1171
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->setDefaultNameForNewSIM(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setLocaleFromCsim()V
    .locals 5

    .prologue
    .line 714
    const/4 v2, 0x0

    .line 716
    .local v2, prefLang:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mEFli:[B

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->findBestLanguage([B)Ljava/lang/String;

    move-result-object v2

    .line 718
    if-nez v2, :cond_0

    .line 719
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mEFpl:[B

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->findBestLanguage([B)Ljava/lang/String;

    move-result-object v2

    .line 722
    :cond_0
    if-eqz v2, :cond_2

    .line 724
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    .line 725
    .local v1, imsi:Ljava/lang/String;
    const/4 v0, 0x0

    .line 726
    .local v0, country:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 727
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 730
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting locale to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 731
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v0}, Lcom/android/internal/telephony/MccTable;->setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    .end local v0           #country:Ljava/lang/String;
    .end local v1           #imsi:Ljava/lang/String;
    :goto_0
    return-void

    .line 733
    :cond_2
    const-string v3, "No suitable CSIM selected locale"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public broadCastSetDefaultNameDone()V
    .locals 4

    .prologue
    .line 869
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_NAME_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 870
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "simId"

    iget v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSimId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 871
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 872
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RUIMRECORDS]broadCast intent ACTION_SIM_NAME_UPDATE for sim "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    return-void
.end method

.method public broadcastPhbStateChangedIntent(Z)V
    .locals 3
    .parameter "isReady"

    .prologue
    .line 1072
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastPhbStateChangedIntent, mPhbReady "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mPhbReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSIMInfoReady "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSIMInfoReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 1073
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mPhbReady:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSIMInfoReady:Z

    if-eqz v1, :cond_0

    .line 1074
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PHB_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1075
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ready"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1076
    const-string v1, "simId"

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getMySimId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1077
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent ACTION_PHB_STATE_CHANGED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sim id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getMySimId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 1079
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1081
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disposing RuimRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mHandlePhbReadyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 222
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->resetRecords()V

    .line 223
    invoke-super {p0}, Lcom/android/internal/telephony/IccRecords;->dispose()V

    .line 224
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 228
    const-string v0, "RuimRecords finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMin2Min1:Ljava/lang/String;

    return-object v0
.end method

.method public getCsimSpnDisplayCondition()Z
    .locals 1

    .prologue
    .line 1068
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCsimSpnDisplayCondition:Z

    return v0
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 1
    .parameter "plmn"

    .prologue
    .line 943
    const/4 v0, 0x0

    return v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMdn:Ljava/lang/String;

    return-object v0
.end method

.method public getMdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMin:Ljava/lang/String;

    return-object v0
.end method

.method public getNid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mPrlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRUIMOperatorNumeric()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 306
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 307
    const/4 v1, 0x0

    .line 320
    :goto_0
    return-object v1

    .line 310
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mncLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mncLength:I

    if-eqz v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mncLength:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 320
    .local v0, mcc:I
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x6

    .line 527
    const/4 v4, 0x0

    .line 529
    .local v4, isRecordLoadResponse:Z
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 530
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received message "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] while being destroyed. Ignoring."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->loge(Ljava/lang/String;)V

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    :try_start_0
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 675
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccRecords;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :cond_2
    :goto_1
    if-eqz v4, :cond_0

    .line 683
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRecordLoaded()V

    goto :goto_0

    .line 537
    :sswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onReady()V

    .line 539
    const-string v7, "handleMessage (EVENT_APP_READY)"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 677
    :catch_0
    move-exception v3

    .line 679
    .local v3, exc:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v7, "CDMA"

    const-string v8, "Exception parsing RUIM record"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 682
    if-eqz v4, :cond_0

    .line 683
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRecordLoaded()V

    goto :goto_0

    .line 550
    .end local v3           #exc:Ljava/lang/RuntimeException;
    :sswitch_1
    :try_start_3
    const-string v7, "Event EVENT_GET_IMSI_RETRY Received, to get through ril"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 551
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 682
    :catchall_0
    move-exception v7

    if-eqz v4, :cond_3

    .line 683
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRecordLoaded()V

    :cond_3
    throw v7

    .line 555
    :sswitch_2
    :try_start_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->resetRecords()V

    goto :goto_1

    .line 559
    :sswitch_3
    const-string v7, "Event EVENT_GET_DEVICE_IDENTITY_DONE Received"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 564
    :sswitch_4
    const/4 v4, 0x1

    .line 566
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 567
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_4

    .line 568
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception querying IMSI, Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 572
    :cond_4
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    .line 576
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v11, :cond_5

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xf

    if-le v7, v8, :cond_6

    .line 577
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid IMSI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->loge(Ljava/lang/String;)V

    .line 578
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    .line 581
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IMSI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x6

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "xxxxxxxxx"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 584
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    const-string v8, "111111110000000"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 585
    const-string v7, "CDMA"

    const-string v8, "it is a default IMSI from via modemm, must to retry"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IMSI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    .line 591
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    .line 592
    .local v6, operatorNumeric:Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 593
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v11, :cond_8

    .line 594
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 599
    :cond_8
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    if-nez v7, :cond_9

    .line 600
    const/4 v4, 0x0

    .line 601
    const-wide/16 v7, 0xbb8

    invoke-direct {p0, v7, v8}, Lcom/android/internal/telephony/cdma/RuimRecords;->getIMSIDelay(J)V

    .line 604
    :cond_9
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_1

    .line 608
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v6           #operatorNumeric:Ljava/lang/String;
    :sswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 609
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    move-object v0, v7

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0

    .line 610
    .local v5, localTemp:[Ljava/lang/String;
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_2

    .line 614
    const/4 v7, 0x0

    aget-object v7, v5, v7

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    .line 615
    const/4 v7, 0x3

    aget-object v7, v5, v7

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMin2Min1:Ljava/lang/String;

    .line 616
    const/4 v7, 0x4

    aget-object v7, v5, v7

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mPrlVersion:Ljava/lang/String;

    .line 618
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MDN: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " MIN: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMin2Min1:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 623
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v5           #localTemp:[Ljava/lang/String;
    :sswitch_6
    const/4 v4, 0x1

    .line 625
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 626
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [B

    move-object v0, v7

    check-cast v0, [B

    move-object v2, v0

    .line 628
    .local v2, data:[B
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_2

    .line 632
    const/4 v7, 0x0

    array-length v8, v2

    invoke-static {v2, v7, v8}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->iccid:Ljava/lang/String;

    .line 634
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "iccid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->iccid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 639
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #data:[B
    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 640
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_2

    .line 641
    const-string v7, "CDMA"

    const-string v8, "RuimRecords update failed"

    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v7, v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 649
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_8
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Event not supported: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 654
    :sswitch_9
    const-string v7, "Event EVENT_GET_SST_DONE Received"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 658
    :sswitch_a
    const/4 v4, 0x0

    .line 659
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 660
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_2

    goto/16 :goto_1

    .line 668
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_b
    const-string v7, "handleMessage (EVENT_PHB_READY)"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 669
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mPhbReady:Z

    .line 671
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mPhbReady:Z

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->broadcastPhbStateChangedIntent(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 535
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0x5 -> :sswitch_6
        0x6 -> :sswitch_1
        0xa -> :sswitch_5
        0xe -> :sswitch_7
        0x11 -> :sswitch_9
        0x12 -> :sswitch_8
        0x13 -> :sswitch_8
        0x15 -> :sswitch_8
        0x16 -> :sswitch_8
        0x1f -> :sswitch_a
        0x66 -> :sswitch_b
    .end sparse-switch
.end method

.method public handleRuimRefresh(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRuimRefresh type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 992
    packed-switch p1, :pswitch_data_0

    .line 1004
    const-string v0, "Refresh with unknown operation"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 1007
    :goto_0
    return-void

    .line 997
    :pswitch_0
    const-string v0, "Refresh with NAA file change"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 998
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    goto :goto_0

    .line 1001
    :pswitch_1
    const-string v0, "Refresh with UICC reset 0x04"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 992
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isPhbReady()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPhbReady(): cached mPhbReady = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mPhbReady:Z

    if-eqz v1, :cond_0

    const-string v1, "true"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 1085
    const/4 v0, 0x0

    .line 1086
    .local v0, strPhbReady:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getMySimId()I

    move-result v1

    if-ne v3, v1, :cond_1

    .line 1087
    const-string v1, "gsm.sim.ril.phbready.2"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1092
    :goto_1
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1093
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mPhbReady:Z

    .line 1097
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPhbReady(): mPhbReady = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mPhbReady:Z

    if-eqz v1, :cond_3

    const-string v1, "true"

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 1098
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mPhbReady:Z

    return v1

    .line 1084
    .end local v0           #strPhbReady:Ljava/lang/String;
    :cond_0
    const-string v1, "false"

    goto :goto_0

    .line 1089
    .restart local v0       #strPhbReady:Ljava/lang/String;
    :cond_1
    const-string v1, "gsm.sim.ril.phbready"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1095
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mPhbReady:Z

    goto :goto_2

    .line 1097
    :cond_3
    const-string v1, "false"

    goto :goto_3
.end method

.method public isProvisioned()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 954
    const-string v2, "persist.radio.test-csim"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 966
    :cond_0
    :goto_0
    return v0

    .line 958
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    if-nez v2, :cond_2

    move v0, v1

    .line 959
    goto :goto_0

    .line 962
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getType()Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMdn:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMin:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 964
    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1146
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1151
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    .line 774
    const-string v4, "record load complete"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 778
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 779
    .local v3, operator:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RuimRecords: onAllRecordsLoaded set \'gsm.sim.operator.numeric\' to operator=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 788
    const-string v4, "gsm.sim.operator.numeric"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 793
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_0

    .line 794
    const-string v4, "cdma.icc.operator.mcc"

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 813
    .local v0, countryCode:Ljava/lang/String;
    :goto_0
    const-string v4, "gsm.sim.operator.iso-country"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RUIMRecords: countryCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    .end local v0           #countryCode:Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->setLocaleFromCsim()V

    .line 822
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v7, v7, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 825
    if-eqz v3, :cond_2

    .line 826
    const/4 v2, 0x0

    .line 827
    .local v2, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v4, Lcom/android/internal/telephony/RIL;

    check-cast v4, Lcom/android/internal/telephony/RIL;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/RIL;->lookupOperatorName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 835
    const-string v4, "gsm.sim.operator.default-name"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RUIMRecords: setDefaultNameForNewSIM name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->setDefaultNameForNewSIM(Ljava/lang/String;)V

    .line 842
    .end local v2           #name:Ljava/lang/String;
    :goto_2
    return-void

    .line 801
    :catch_0
    move-exception v1

    .line 802
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 803
    .restart local v0       #countryCode:Ljava/lang/String;
    const-string v4, "CDMA"

    const-string v5, "RUIMRecords: Corrupt IMSI!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 819
    .end local v0           #countryCode:Ljava/lang/String;
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_1
    const-string v4, "SIM"

    const-string v5, "[RUIMRecords] onAllRecordsLoaded: mImsi is NULL!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 840
    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->setDefaultNameForNewSIM(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onReady()V
    .locals 2

    .prologue
    .line 877
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->fetchRuimRecords()V

    .line 879
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 880
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 2

    .prologue
    .line 741
    iget v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordLoaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 744
    iget v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsRequested:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 745
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onAllRecordsLoaded()V

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 746
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    if-gez v0, :cond_0

    .line 747
    const-string v0, "recordsToLoad <0, programmer error suspected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->loge(Ljava/lang/String;)V

    .line 748
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .parameter "fileChanged"
    .parameter "fileList"

    .prologue
    .line 284
    if-eqz p1, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->fetchRuimRecords()V

    .line 290
    :cond_0
    return-void
.end method

.method protected resetRecords()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 232
    iput v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->countVoiceMessages:I

    .line 233
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mncLength:I

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->iccid:Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 247
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsRequested:Z

    .line 248
    return-void
.end method

.method public setDefaultNameForNewSIM(Ljava/lang/String;)V
    .locals 10
    .parameter "strName"

    .prologue
    .line 845
    const-wide/16 v4, 0x1

    .line 847
    .local v4, nameSource:J
    if-nez p1, :cond_0

    .line 848
    const-wide/16 v4, 0x0

    .line 851
    :cond_0
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RUIMRECORDS]setDefaultNameForNewSIM SimInfo mSimId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSimId:I

    invoke-static {v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v9

    .line 853
    .local v9, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v9, :cond_3

    .line 854
    iget v0, v9, Landroid/provider/Telephony$SIMInfo;->mNameSource:I

    int-to-long v6, v0

    .line 855
    .local v6, OriNameSource:J
    iget-object v8, v9, Landroid/provider/Telephony$SIMInfo;->mDefaultName:Ljava/lang/String;

    .line 856
    .local v8, simDisplayName:Ljava/lang/String;
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RUIMRECORDS 1]setDefaultNameForNewSIM SimInfo simId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v9, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", simDisplayName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", OriNameSource = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", NewNameSource = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    if-eqz v8, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const-wide/16 v0, 0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 861
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mContext:Landroid/content/Context;

    iget-wide v1, v9, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Landroid/provider/Telephony$SIMInfo;->setDefaultNameEx(Landroid/content/Context;JLjava/lang/String;J)I

    .line 862
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RUIMRECORDS]setDefaultNameForNewSIM SimInfo simId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v9, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->broadCastSetDefaultNameDone()V

    .line 866
    .end local v6           #OriNameSource:J
    .end local v8           #simDisplayName:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "alphaTag"
    .parameter "voiceNumber"
    .parameter "onComplete"

    .prologue
    .line 271
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/IccException;

    const-string v2, "setVoiceMailNumber not implemented"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/IccException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 273
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 274
    const-string v0, "method setVoiceMailNumber is not implemented"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->loge(Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 2
    .parameter "line"
    .parameter "countWaiting"

    .prologue
    .line 971
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 987
    :goto_0
    return-void

    .line 977
    :cond_0
    if-gez p2, :cond_2

    .line 978
    const/4 p2, -0x1

    .line 984
    :cond_1
    :goto_1
    iput p2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->countVoiceMessages:I

    .line 986
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 979
    :cond_2
    const/16 v0, 0xff

    if-le p2, v0, :cond_1

    .line 982
    const/16 p2, 0xff

    goto :goto_1
.end method
