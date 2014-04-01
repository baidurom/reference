.class public Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;
.super Lcom/android/internal/telephony/IccSmsInterfaceManager;
.source "SimSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field private static final EVENT_GET_SMS_SIM_MEM_STATUS_DONE:I = 0x67

.field private static final EVENT_INSERT_TEXT_MESSAGE_TO_ICC_DONE:I = 0x68

.field private static final EVENT_LOAD_DONE:I = 0x1

.field private static final EVENT_SET_BROADCAST_ACTIVATION_DONE:I = 0x3

.field private static final EVENT_SET_BROADCAST_CONFIG_DONE:I = 0x4

.field private static final EVENT_SIM_SMS_DELETE_DONE:I = 0x5

.field private static final EVENT_UPDATE_DONE:I = 0x2

.field private static final INDEXT_SPLITOR:Ljava/lang/String; = ";"

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final SMS_CB_CODE_SCHEME_MAX:I = 0xff

.field private static final SMS_CB_CODE_SCHEME_MIN:I

.field private static sConcatenatedRef:I


# instance fields
.field private mCellBroadcastRangeManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;

.field private mCellBroadcastSubscriptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDeleteLock:Ljava/lang/Object;

.field mHandler:Landroid/os/Handler;

.field private mInsertMessageSuccess:Z

.field private final mLock:Ljava/lang/Object;

.field private final mSimInsertLock:Ljava/lang/Object;

.field private mSimMemStatus:Landroid/telephony/SmsMemoryStatus;

.field private final mSimSmsLock:Ljava/lang/Object;

.field private mSms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsWipeReceiver:Landroid/content/BroadcastReceiver;

.field private mSuccess:Z

.field private smsInsertRet:Landroid/telephony/SimSmsInsertStatus;

.field private smsInsertRet2:Landroid/telephony/SimSmsInsertStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    const/16 v0, 0x1c8

    sput v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->sConcatenatedRef:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 4
    .parameter "phone"
    .parameter "dispatcher"

    .prologue
    const/4 v3, 0x0

    .line 237
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 82
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    .line 83
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimSmsLock:Ljava/lang/Object;

    .line 84
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mDeleteLock:Ljava/lang/Object;

    .line 87
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCellBroadcastSubscriptions:Ljava/util/HashMap;

    .line 90
    new-instance v1, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;-><init>(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;

    .line 111
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimInsertLock:Ljava/lang/Object;

    .line 112
    new-instance v1, Landroid/telephony/SimSmsInsertStatus;

    const-string v2, ""

    invoke-direct {v1, v3, v2}, Landroid/telephony/SimSmsInsertStatus;-><init>(ILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;

    .line 117
    new-instance v1, Landroid/telephony/SimSmsInsertStatus;

    const-string v2, ""

    invoke-direct {v1, v3, v2}, Landroid/telephony/SimSmsInsertStatus;-><init>(ILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet2:Landroid/telephony/SimSmsInsertStatus;

    .line 119
    new-instance v1, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;-><init>(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    .line 595
    new-instance v1, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$2;-><init>(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsWipeReceiver:Landroid/content/BroadcastReceiver;

    .line 238
    iput-object p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 241
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 242
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.dm.LAWMO_WIPE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsWipeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mDeleteLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mInsertMessageSuccess:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mInsertMessageSuccess:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Landroid/telephony/SimSmsInsertStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Landroid/telephony/SimSmsInsertStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet2:Landroid/telephony/SimSmsInsertStatus;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Lcom/android/internal/telephony/SMSDispatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimSmsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Landroid/telephony/SmsMemoryStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimMemStatus:Landroid/telephony/SmsMemoryStatus;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Landroid/telephony/SmsMemoryStatus;)Landroid/telephony/SmsMemoryStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimMemStatus:Landroid/telephony/SmsMemoryStatus;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimInsertLock:Ljava/lang/Object;

    return-object v0
.end method

.method private static checkPhoneNumberCharacter(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 775
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkPhoneNumberInternal(Ljava/lang/String;)Z
    .locals 4
    .parameter "number"

    .prologue
    const/4 v2, 0x1

    .line 780
    if-nez p0, :cond_1

    .line 792
    :cond_0
    :goto_0
    return v2

    .line 784
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, n:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 785
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->checkPhoneNumberCharacter(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 784
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 788
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getNextConcatRef()I
    .locals 2

    .prologue
    .line 771
    sget v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->sConcatenatedRef:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->sConcatenatedRef:I

    return v0
.end method

.method private getSmsSimMemoryStatusInternal()Landroid/telephony/SmsMemoryStatus;
    .locals 5

    .prologue
    .line 570
    const-string v2, "getSmsSimMemoryStatusInternal"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 572
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 573
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    .line 575
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x67

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 577
    .local v1, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->getSmsSimMemoryStatus(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 584
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 586
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    if-eqz v2, :cond_0

    .line 587
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimMemStatus:Landroid/telephony/SmsMemoryStatus;

    .line 590
    :goto_1
    return-object v2

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to get SMS SIM Card Memory Status from SIM"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 584
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 590
    .restart local v1       #response:Landroid/os/Message;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private setCellBroadcastActivation(Z)Z
    .locals 5
    .parameter "activate"

    .prologue
    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling setCellBroadcastActivation("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 494
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 495
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 497
    .local v1, response:Landroid/os/Message;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    .line 498
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setGsmBroadcastActivation(ZLandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 505
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 507
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    return v2

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to set cell broadcast activation"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 505
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z
    .locals 5
    .parameter "configs"

    .prologue
    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling setGsmBroadcastConfig with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " configurations"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 474
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 475
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 477
    .local v1, response:Landroid/os/Message;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    .line 478
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 485
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 487
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    return v2

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to set cell broadcast config"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 485
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method


# virtual methods
.method public copyMessageToIccEf(I[B[B)Z
    .locals 6
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"

    .prologue
    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyMessageToIccEf: status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "pdu=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), smsm=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 325
    const-string v2, "Copying message to SIM"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 326
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 327
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    .line 328
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 330
    .local v1, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, p1, v4, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 338
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 339
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    return v2

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to update by index"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 338
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    .locals 8
    .parameter "scAddress"
    .parameter "address"
    .parameter
    .parameter "status"
    .parameter "timestamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ)I"
        }
    .end annotation

    .prologue
    .line 531
    .local p3, text:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sc address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " message count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 534
    const-string v0, "Copying message to SIM"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 538
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->getSmsSimMemoryStatusInternal()Landroid/telephony/SmsMemoryStatus;

    move-result-object v7

    .line 540
    .local v7, memStatus:Landroid/telephony/SmsMemoryStatus;
    if-nez v7, :cond_0

    .line 542
    const-string v0, "Fail to get SIM memory status"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 543
    const/4 v0, 0x1

    .line 553
    :goto_0
    return v0

    .line 547
    :cond_0
    invoke-virtual {v7}, Landroid/telephony/SmsMemoryStatus;->getUnused()I

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 548
    const-string v0, "SIM memory is not enough"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 549
    const/4 v0, 0x7

    goto :goto_0

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I

    move-result v0

    goto :goto_0
.end method

.method public disableCellBroadcast(I)Z
    .locals 1
    .parameter "messageIdentifier"

    .prologue
    .line 373
    invoke-virtual {p0, p1, p1}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->disableCellBroadcastRange(II)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcastRange(II)Z
    .locals 6
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 404
    const-string v4, "disableCellBroadcastRange"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 406
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 408
    .local v1, context:Landroid/content/Context;
    const-string v4, "android.permission.RECEIVE_SMS"

    const-string v5, "Disabling cell broadcast SMS"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, client:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-virtual {v4, p1, p2, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->disableRange(IILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove cell broadcast subscription for MID range "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 427
    :goto_0
    return v2

    .line 422
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed cell broadcast subscription for MID range "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 425
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->setCellBroadcastActivation(Z)Z

    move v2, v3

    .line 427
    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public enableCellBroadcast(I)Z
    .locals 1
    .parameter "messageIdentifier"

    .prologue
    .line 369
    invoke-virtual {p0, p1, p1}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->enableCellBroadcastRange(II)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcastRange(II)Z
    .locals 6
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 377
    const-string v4, "enableCellBroadcastRange"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 379
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 381
    .local v1, context:Landroid/content/Context;
    const-string v4, "android.permission.RECEIVE_SMS"

    const-string v5, "Enabling cell broadcast SMS"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, client:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-virtual {v4, p1, p2, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->enableRange(IILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add cell broadcast subscription for MID range "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 400
    :goto_0
    return v2

    .line 395
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added cell broadcast subscription for MID range "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 398
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$CellBroadcastRangeManager;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->setCellBroadcastActivation(Z)Z

    move v2, v3

    .line 400
    goto :goto_0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 253
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    const-string v1, "GSM"

    const-string v2, "SimSmsInterfaceManager finalized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, throwable:Ljava/lang/Throwable;
    const-string v1, "GSM"

    const-string v2, "Error while finalizing:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAllMessagesFromIccEf()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    const-string v3, "getAllMessagesFromEF"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 350
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 352
    .local v0, context:Landroid/content/Context;
    const-string v3, "android.permission.RECEIVE_SMS"

    const-string v4, "Reading messages from SIM"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimSmsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 356
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 357
    .local v2, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    const/16 v5, 0x6f3c

    invoke-virtual {v3, v5, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimSmsLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 364
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 365
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object v3

    .line 361
    :catch_0
    move-exception v1

    .line 362
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "interrupted while trying to load from the SIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 364
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #response:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public getSmsSimMemoryStatus()Landroid/telephony/SmsMemoryStatus;
    .locals 1

    .prologue
    .line 563
    const-string v0, "getSmsSimMemoryStatus"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 565
    const-string v0, "Get SMS SIM Card Memory Status from SIM"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 566
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->getSmsSimMemoryStatusInternal()Landroid/telephony/SmsMemoryStatus;

    move-result-object v0

    return-object v0
.end method

.method public insertRawMessageToIccCard(I[B[B)Landroid/telephony/SimSmsInsertStatus;
    .locals 7
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"

    .prologue
    const/4 v6, 0x1

    .line 797
    const-string v2, "[insertRaw insert message into SIM"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 798
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 799
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    .line 800
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet2:Landroid/telephony/SimSmsInsertStatus;

    const/4 v4, 0x1

    iput v4, v2, Landroid/telephony/SimSmsInsertStatus;->insertStatus:I

    .line 801
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet2:Landroid/telephony/SimSmsInsertStatus;

    const-string v4, ""

    iput-object v4, v2, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 802
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 804
    .local v1, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, p1, v4, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 808
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 812
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 814
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    if-ne v2, v6, :cond_0

    .line 815
    const-string v2, "[insertRaw message inserted"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 816
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet2:Landroid/telephony/SimSmsInsertStatus;

    iput v6, v2, Landroid/telephony/SimSmsInsertStatus;->insertStatus:I

    .line 817
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet2:Landroid/telephony/SimSmsInsertStatus;

    .line 822
    :goto_1
    return-object v2

    .line 809
    :catch_0
    move-exception v0

    .line 810
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "[insertRaw interrupted while trying to update by index"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 812
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 820
    .restart local v1       #response:Landroid/os/Message;
    :cond_0
    const-string v2, "[insertRaw pdu insert fail"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 821
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet2:Landroid/telephony/SimSmsInsertStatus;

    iput v6, v2, Landroid/telephony/SimSmsInsertStatus;->insertStatus:I

    .line 822
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet2:Landroid/telephony/SimSmsInsertStatus;

    goto :goto_1
.end method

.method public insertTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)Landroid/telephony/SimSmsInsertStatus;
    .locals 31
    .parameter "scAddress"
    .parameter "address"
    .parameter
    .parameter "status"
    .parameter "timestamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ)",
            "Landroid/telephony/SimSmsInsertStatus;"
        }
    .end annotation

    .prologue
    .line 629
    .local p3, text:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "[insertText insert message into SIM"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 631
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    .line 632
    .local v5, msgCount:I
    const/16 v27, 0x1

    .line 634
    .local v27, isDeliverPdu:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[insertText scAddr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msgCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", timestamp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;

    const-string v3, ""

    iput-object v3, v2, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 639
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->getSmsSimMemoryStatusInternal()Landroid/telephony/SmsMemoryStatus;

    move-result-object v28

    .line 640
    .local v28, memStatus:Landroid/telephony/SmsMemoryStatus;
    if-eqz v28, :cond_0

    .line 641
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/SmsMemoryStatus;->getUnused()I

    move-result v30

    .line 642
    .local v30, unused:I
    move/from16 v0, v30

    if-ge v0, v5, :cond_1

    .line 643
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[insertText SIM mem is not enough ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;

    const/4 v3, 0x7

    iput v3, v2, Landroid/telephony/SimSmsInsertStatus;->insertStatus:I

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;

    .line 767
    .end local v30           #unused:I
    :goto_0
    return-object v2

    .line 648
    :cond_0
    const-string v2, "[insertText fail to get SIM mem status"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;

    const/4 v3, 0x1

    iput v3, v2, Landroid/telephony/SimSmsInsertStatus;->insertStatus:I

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;

    goto :goto_0

    .line 653
    .restart local v30       #unused:I
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->checkPhoneNumberInternal(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 654
    const-string v2, "[insertText invalid sc address"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 655
    const/16 p1, 0x0

    .line 658
    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->checkPhoneNumberInternal(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 659
    const-string v2, "[insertText invalid address"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;

    const/16 v3, 0x8

    iput v3, v2, Landroid/telephony/SimSmsInsertStatus;->insertStatus:I

    .line 661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;

    goto :goto_0

    .line 664
    :cond_3
    const/4 v2, 0x1

    move/from16 v0, p4

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    move/from16 v0, p4

    if-ne v0, v2, :cond_7

    .line 665
    :cond_4
    const-string v2, "[insertText to encode delivery pdu"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 666
    const/16 v27, 0x1

    .line 675
    :goto_1
    const-string v2, "[insertText params check pass"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 677
    const/16 v25, 0x0

    .line 678
    .local v25, encoding:I
    new-array v0, v5, [Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-object/from16 v23, v0

    .line 679
    .local v23, details:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/16 v26, 0x0

    .local v26, i:I
    :goto_2
    move/from16 v0, v26

    if-ge v0, v5, :cond_a

    .line 680
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v2

    aput-object v2, v23, v26

    .line 681
    aget-object v2, v23, v26

    iget v2, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move/from16 v0, v25

    if-eq v0, v2, :cond_6

    if-eqz v25, :cond_5

    const/4 v2, 0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_6

    .line 684
    :cond_5
    aget-object v2, v23, v26

    iget v0, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move/from16 v25, v0

    .line 679
    :cond_6
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 667
    .end local v23           #details:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v25           #encoding:I
    .end local v26           #i:I
    :cond_7
    const/4 v2, 0x5

    move/from16 v0, p4

    if-eq v0, v2, :cond_8

    const/4 v2, 0x7

    move/from16 v0, p4

    if-ne v0, v2, :cond_9

    .line 668
    :cond_8
    const-string v2, "[insertText to encode submit pdu"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 669
    const/16 v27, 0x0

    goto :goto_1

    .line 671
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[insertText invalid status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;

    const/4 v3, 0x1

    iput v3, v2, Landroid/telephony/SimSmsInsertStatus;->insertStatus:I

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;

    goto/16 :goto_0

    .line 688
    .restart local v23       #details:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .restart local v25       #encoding:I
    .restart local v26       #i:I
    :cond_a
    const-string v2, "[insertText create & insert pdu start..."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 689
    const/16 v26, 0x0

    :goto_3
    move/from16 v0, v26

    if-ge v0, v5, :cond_13

    .line 690
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mInsertMessageSuccess:Z

    if-nez v2, :cond_b

    if-lez v26, :cond_b

    .line 691
    const-string v2, "[insertText last message insert fail"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 692
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;

    const/4 v3, 0x1

    iput v3, v2, Landroid/telephony/SimSmsInsertStatus;->insertStatus:I

    .line 693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;

    goto/16 :goto_0

    .line 696
    :cond_b
    const/4 v6, -0x1

    .line 697
    .local v6, singleShiftId:I
    const/4 v7, -0x1

    .line 698
    .local v7, lockingShiftId:I
    aget-object v2, v23, v26

    iget v15, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->shiftLangId:I

    .line 699
    .local v15, language:I
    move/from16 v14, v25

    .line 701
    .local v14, encoding_detail:I
    const/4 v2, 0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_c

    .line 702
    aget-object v2, v23, v26

    iget v2, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    if-lez v2, :cond_e

    aget-object v2, v23, v26

    iget v2, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    if-lez v2, :cond_e

    .line 703
    aget-object v2, v23, v26

    iget v6, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    .line 704
    aget-object v2, v23, v26

    iget v7, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    .line 705
    const/16 v14, 0xd

    .line 715
    :cond_c
    :goto_4
    const/4 v11, 0x0

    .line 716
    .local v11, smsHeader:[B
    const/4 v2, 0x1

    if-le v5, v2, :cond_d

    .line 717
    const-string v2, "[insertText create pdu header for concat-message"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 718
    const/4 v2, -0x1

    invoke-static {}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->getNextConcatRef()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v26, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/SmsHeader;->getSubmitPduHeaderWithLang(IIIIII)[B

    move-result-object v11

    .line 722
    :cond_d
    if-eqz v27, :cond_11

    .line 723
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v12, p5

    invoke-static/range {v8 .. v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPduWithLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJII)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    move-result-object v29

    .line 725
    .local v29, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    if-eqz v29, :cond_10

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/internal/telephony/SmsMessageBase$PduBase;->encodedScAddress:[B

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/internal/telephony/SmsMessageBase$PduBase;->encodedMessage:[B

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x68

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    move/from16 v0, p4

    invoke-interface {v2, v0, v3, v4, v8}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 746
    .end local v29           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimInsertLock:Ljava/lang/Object;

    monitor-enter v3

    .line 748
    :try_start_0
    const-string v2, "[insertText wait until the pdu be wrote into the SIM"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSimInsertLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 689
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_3

    .line 706
    .end local v11           #smsHeader:[B
    :cond_e
    aget-object v2, v23, v26

    iget v2, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    if-lez v2, :cond_f

    .line 707
    aget-object v2, v23, v26

    iget v7, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    .line 708
    const/16 v14, 0xc

    goto :goto_4

    .line 709
    :cond_f
    aget-object v2, v23, v26

    iget v2, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    if-lez v2, :cond_c

    .line 710
    aget-object v2, v23, v26

    iget v6, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    .line 711
    const/16 v14, 0xb

    goto/16 :goto_4

    .line 729
    .restart local v11       #smsHeader:[B
    .restart local v29       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    :cond_10
    const-string v2, "[insertText fail to create deliver pdu"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;

    const/4 v3, 0x1

    iput v3, v2, Landroid/telephony/SimSmsInsertStatus;->insertStatus:I

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;

    goto/16 :goto_0

    .line 734
    .end local v29           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    :cond_11
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v20, v11

    move/from16 v21, v14

    move/from16 v22, v15

    invoke-static/range {v16 .. v22}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduWithLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v29

    .line 736
    .local v29, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v29, :cond_12

    .line 737
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/internal/telephony/SmsMessageBase$PduBase;->encodedScAddress:[B

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/internal/telephony/SmsMessageBase$PduBase;->encodedMessage:[B

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x68

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    move/from16 v0, p4

    invoke-interface {v2, v0, v3, v4, v8}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_5

    .line 740
    :cond_12
    const-string v2, "[insertText fail to create submit pdu"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;

    const/4 v3, 0x1

    iput v3, v2, Landroid/telephony/SimSmsInsertStatus;->insertStatus:I

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;

    goto/16 :goto_0

    .line 750
    .end local v29           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :catch_0
    move-exception v24

    .line 751
    .local v24, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "[insertText fail to insert pdu"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;

    const/4 v4, 0x1

    iput v4, v2, Landroid/telephony/SimSmsInsertStatus;->insertStatus:I

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;

    monitor-exit v3

    goto/16 :goto_0

    .line 755
    .end local v24           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 757
    .end local v6           #singleShiftId:I
    .end local v7           #lockingShiftId:I
    .end local v11           #smsHeader:[B
    .end local v14           #encoding_detail:I
    .end local v15           #language:I
    :cond_13
    const-string v2, "[insertText create & insert pdu end"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 759
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mInsertMessageSuccess:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    .line 760
    const-string v2, "[insertText all messages inserted"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;

    const/4 v3, 0x1

    iput v3, v2, Landroid/telephony/SimSmsInsertStatus;->insertStatus:I

    .line 762
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;

    goto/16 :goto_0

    .line 765
    :cond_14
    const-string v2, "[insertText pdu insert fail"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;

    const/4 v3, 0x1

    iput v3, v2, Landroid/telephony/SimSmsInsertStatus;->insertStatus:I

    .line 767
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->smsInsertRet:Landroid/telephony/SimSmsInsertStatus;

    goto/16 :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 512
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimSmsInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    return-void
.end method

.method public updateMessageOnIccEf(II[B)Z
    .locals 8
    .parameter "index"
    .parameter "status"
    .parameter "pdu"

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateMessageOnIccEf: index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 276
    const-string v0, "Updating message on SIM"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 278
    if-nez p2, :cond_0

    .line 279
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mDeleteLock:Ljava/lang/Object;

    monitor-enter v1

    .line 280
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 283
    .local v5, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, v5}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnSim(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mDeleteLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 290
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 309
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    return v0

    .line 287
    :catch_0
    move-exception v6

    .line 288
    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v0, "interrupted while trying to delete by index"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 290
    .end local v5           #response:Landroid/os/Message;
    .end local v6           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 292
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 293
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 296
    .restart local v5       #response:Landroid/os/Message;
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->makeSmsRecordData(I[B)[B

    move-result-object v3

    .line 297
    .local v3, record:[B
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f3c

    const/4 v4, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 302
    :try_start_5
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 306
    :goto_2
    :try_start_6
    monitor-exit v7

    goto :goto_1

    .end local v3           #record:[B
    .end local v5           #response:Landroid/os/Message;
    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 303
    .restart local v3       #record:[B
    .restart local v5       #response:Landroid/os/Message;
    :catch_1
    move-exception v6

    .line 304
    .restart local v6       #e:Ljava/lang/InterruptedException;
    :try_start_7
    const-string v0, "interrupted while trying to update by index"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2
.end method
