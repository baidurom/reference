.class public Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;
.super Lcom/android/internal/telephony/IccSmsInterfaceManager;
.source "RuimSmsInterfaceManager.java"


# static fields
.field static final DBG:Z = true

.field private static final EVENT_DELETE_RUIM_SMS_DONE:I = 0x67

.field private static final EVENT_GET_SMS_SIM_MEM_STATUS_DONE:I = 0x3

.field private static final EVENT_LOAD_DONE:I = 0x1

.field private static final EVENT_LOAD_ONE_RECORD_DONE:I = 0x65

.field private static final EVENT_UPDATE_DONE:I = 0x2

.field private static final EVENT_WRITE_RUIM_SMS_DONE:I = 0x66

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"


# instance fields
.field private feedbackRawPdu:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mSimMemStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;

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

.field private mSmsRawData:Lcom/android/internal/telephony/SmsRawData;

.field private mSuccess:Z

.field private mUpdateIndex:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 1
    .parameter "phone"
    .parameter "dispatcher"

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mUpdateIndex:I

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSmsRawData:Lcom/android/internal/telephony/SmsRawData;

    .line 91
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;-><init>(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    .line 208
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 209
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSimMemStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Lcom/mediatek/common/telephony/IccSmsStorageStatus;)Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSimMemStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSmsRawData:Lcom/android/internal/telephony/SmsRawData;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mUpdateIndex:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->feedbackRawPdu:Ljava/lang/String;

    return-object p1
.end method

.method private getSmsSimMemoryStatusEx()Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    .locals 5

    .prologue
    .line 573
    const-string v2, "getSmsSimMemoryStatusEx"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 575
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 576
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z

    .line 578
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 580
    .local v1, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->getSmsSimMemoryStatus(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 587
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 589
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z

    if-eqz v2, :cond_0

    .line 590
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSimMemStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    .line 592
    :goto_1
    return-object v2

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to get SMS SIM Card Memory Status from RUIM"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 587
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 592
    .restart local v1       #response:Landroid/os/Message;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public activateCellBroadcastSms(Z)Z
    .locals 2
    .parameter "activate"

    .prologue
    .line 454
    const-string v0, "CDMA"

    const-string v1, "Error! Not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/4 v0, 0x0

    return v0
.end method

.method public copyMessageToIccEf(I[B[B)Z
    .locals 7
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyMessageToIccEf: status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ==> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "pdu=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 300
    if-nez p2, :cond_0

    .line 301
    const-string v4, "viaCode, pdu == null, return false"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 377
    :goto_0
    return v3

    .line 304
    :cond_0
    if-eqz p1, :cond_1

    if-eq p1, v6, :cond_1

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1

    const/4 v4, 0x5

    if-eq p1, v4, :cond_1

    const/4 v4, 0x7

    if-eq p1, v4, :cond_1

    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "viaCode, invalide status: status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " return false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :cond_1
    const-string v3, "to do copy action !"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 311
    const-string v3, "Copying message to RUIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 312
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 313
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z

    .line 314
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x66

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 352
    .local v2, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, p1, v5, v2}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 362
    :goto_1
    :try_start_2
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 363
    iget v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mUpdateIndex:I

    if-ltz v3, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mUpdateIndex:I

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 364
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->feedbackRawPdu:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->feedbackRawPdu:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 365
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->feedbackRawPdu:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {p1, v3, v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaces;->makeCDMASmsRecordData(I[BZ)[B

    move-result-object v1

    .line 367
    .local v1, record:[B
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;

    iget v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mUpdateIndex:I

    new-instance v6, Lcom/android/internal/telephony/SmsRawData;

    invoke-direct {v6, v1}, Lcom/android/internal/telephony/SmsRawData;-><init>([B)V

    invoke-interface {v3, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 372
    .end local v1           #record:[B
    :cond_2
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mUpdateIndex:I

    .line 374
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->feedbackRawPdu:Ljava/lang/String;

    .line 376
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 377
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z

    goto/16 :goto_0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "interrupted while trying to update by index"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 376
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v2           #response:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    .locals 9
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
    .line 490
    .local p3, text:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sc address: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " address: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " message count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " timestamp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 493
    const-string v6, "Copying message to UIM"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 497
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->getSmsSimMemoryStatusEx()Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    move-result-object v2

    .line 499
    .local v2, memStatus:Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    if-nez v2, :cond_0

    .line 501
    const-string v6, "Fail to get UIM memory status"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 502
    const/4 v6, 0x1

    .line 554
    :goto_0
    return v6

    .line 506
    :cond_0
    invoke-virtual {v2}, Lcom/mediatek/common/telephony/IccSmsStorageStatus;->getUnused()I

    move-result v6

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 507
    const-string v6, "UIM memory is not enough"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 508
    const/4 v6, 0x7

    goto :goto_0

    .line 512
    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z

    .line 514
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 515
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z

    if-nez v6, :cond_2

    .line 516
    const-string v6, "RuimSmsInterfaceManager via code"

    const-string v7, "[copyText Exception happened when copy message"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/4 v6, 0x1

    goto :goto_0

    .line 520
    :cond_2
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {p2, v6, p5, p6}, Lcom/android/internal/telephony/cdma/SmsMessage;->createEfPdu(Ljava/lang/String;Ljava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    .line 522
    .local v3, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v3, :cond_4

    .line 523
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x66

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 524
    .local v5, response:Landroid/os/Message;
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v7, v3, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, p4, v7, v5}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V

    .line 529
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 531
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 538
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;

    if-eqz v6, :cond_3

    .line 539
    iget v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mUpdateIndex:I

    if-ltz v6, :cond_3

    iget v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mUpdateIndex:I

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 540
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->feedbackRawPdu:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->feedbackRawPdu:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 541
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->feedbackRawPdu:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p4, v6, v7}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaces;->makeCDMASmsRecordData(I[BZ)[B

    move-result-object v4

    .line 543
    .local v4, record:[B
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;

    iget v7, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mUpdateIndex:I

    new-instance v8, Lcom/android/internal/telephony/SmsRawData;

    invoke-direct {v8, v4}, Lcom/android/internal/telephony/SmsRawData;-><init>([B)V

    invoke-interface {v6, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 548
    .end local v4           #record:[B
    :cond_3
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mUpdateIndex:I

    .line 550
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->feedbackRawPdu:Ljava/lang/String;

    .line 514
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 526
    .end local v5           #response:Landroid/os/Message;
    :cond_4
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 532
    .restart local v5       #response:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 533
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v6, 0x1

    :try_start_2
    monitor-exit v7

    goto/16 :goto_0

    .line 535
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 554
    .end local v3           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v5           #response:Landroid/os/Message;
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public disableCellBroadcast(I)Z
    .locals 2
    .parameter "messageIdentifier"

    .prologue
    .line 447
    const-string v0, "CDMA"

    const-string v1, "Error! Not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/4 v0, 0x0

    return v0
.end method

.method public disableCellBroadcastRange(II)Z
    .locals 2
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    .line 466
    const-string v0, "CDMA"

    const-string v1, "Error! Not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public enableCellBroadcast(I)Z
    .locals 2
    .parameter "messageIdentifier"

    .prologue
    .line 441
    const-string v0, "CDMA"

    const-string v1, "Error! Not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method public enableCellBroadcastRange(II)Z
    .locals 2
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    .line 460
    const-string v0, "CDMA"

    const-string v1, "Error! Not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 216
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    const-string v1, "CDMA"

    const-string v2, "RuimSmsInterfaceManager finalized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, throwable:Ljava/lang/Throwable;
    const-string v1, "CDMA"

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
    .line 384
    const-string v3, "getAllMessagesFromEF"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 385
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;

    if-nez v3, :cond_0

    .line 386
    const-string v3, "viacode: uim sms cache is null"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 387
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 389
    .local v0, context:Landroid/content/Context;
    const-string v3, "android.permission.RECEIVE_SMS"

    const-string v4, "Reading messages from RUIM"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 393
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 394
    .local v2, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    const/16 v5, 0x6f3c

    invoke-virtual {v3, v5, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 401
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 403
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #response:Landroid/os/Message;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object v3

    .line 398
    .restart local v0       #context:Landroid/content/Context;
    .restart local v2       #response:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 399
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "interrupted while trying to load from the RUIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 401
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #response:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public getAllMessagesFromIccEfByMode(I)Ljava/util/List;
    .locals 6
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 410
    if-lt p1, v3, :cond_0

    const/4 v3, 0x2

    if-le p1, v3, :cond_1

    .line 411
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllMessagesFromIccEfByMode wrong mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 412
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;

    .line 436
    :goto_0
    return-object v3

    .line 415
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllMessagesFromIccEfByMode, , mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 418
    const-string v3, "viacode: uim sms cache is null"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 419
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 421
    .local v0, context:Landroid/content/Context;
    const-string v3, "android.permission.RECEIVE_SMS"

    const-string v4, "Reading messages from RUIM"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 425
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 427
    .local v2, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    const/16 v5, 0x6f3c

    invoke-virtual {v3, v5, p1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 434
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 436
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;

    goto :goto_0

    .line 431
    :catch_0
    move-exception v1

    .line 432
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "interrupted while trying to load from the RUIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 434
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #response:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public getMessageFromIccEf(I)Lcom/android/internal/telephony/SmsRawData;
    .locals 6
    .parameter "index"

    .prologue
    .line 634
    const-string v3, "getMessagesFromIccEf by index"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 636
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 637
    .local v0, context:Landroid/content/Context;
    const-string v3, "android.permission.RECEIVE_SMS"

    const-string v4, "Reading messages from UIM"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSmsRawData:Lcom/android/internal/telephony/SmsRawData;

    .line 642
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 643
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 644
    .local v2, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    const/16 v5, 0x6f3c

    invoke-virtual {v3, v5, p1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 651
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 653
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSmsRawData:Lcom/android/internal/telephony/SmsRawData;

    return-object v3

    .line 648
    :catch_0
    move-exception v1

    .line 649
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "interrupted while trying to load from the SIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 651
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #response:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public getSmsParameters()Landroid/telephony/SmsParameters;
    .locals 1

    .prologue
    .line 615
    const-string v0, "don\'t support this method for cdma"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 616
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSmsSimMemoryStatus()Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    .locals 1

    .prologue
    .line 564
    const-string v0, "getSmsSimMemoryStatus"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 566
    const-string v0, "Get SMS SIM Card Memory Status from RUIM"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 568
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->getSmsSimMemoryStatusEx()Lcom/mediatek/common/telephony/IccSmsStorageStatus;

    move-result-object v0

    return-object v0
.end method

.method public insertRawMessageToIccCard(I[B[B)Landroid/telephony/SimSmsInsertStatus;
    .locals 1
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"

    .prologue
    .line 605
    const-string v0, "don\'t support this method for cdma"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 606
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)Landroid/telephony/SimSmsInsertStatus;
    .locals 1
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
    .line 599
    .local p3, text:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "don\'t support this method for cdma"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 600
    const/4 v0, 0x0

    return-object v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 471
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimSmsInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    return-void
.end method

.method public setEtwsConfig(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 657
    const-string v0, "don\'t support this method for cdma"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 658
    const/4 v0, 0x0

    return v0
.end method

.method public setSmsParameters(Landroid/telephony/SmsParameters;)Z
    .locals 1
    .parameter "params"

    .prologue
    .line 624
    const-string v0, "don\'t support this method for cdma"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 625
    const/4 v0, 0x0

    return v0
.end method

.method public updateMessageOnIccEf(II[B)Z
    .locals 10
    .parameter "index"
    .parameter "status"
    .parameter "pdu"

    .prologue
    const/4 v9, -0x1

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMessageOnIccEf: index="

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

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 240
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pdu.length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 243
    :cond_0
    const-string v0, "Updating message on RUIM"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 244
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 245
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z

    .line 248
    if-nez p2, :cond_2

    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 252
    .local v5, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, v5}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnRuim(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 265
    :goto_1
    :try_start_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 266
    if-lez p1, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_4

    .line 267
    if-nez p2, :cond_3

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_1
    :goto_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mUpdateIndex:I

    .line 282
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z

    return v0

    .line 254
    .end local v5           #response:Landroid/os/Message;
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 255
    .restart local v5       #response:Landroid/os/Message;
    const/4 v0, 0x1

    invoke-static {p2, p3, v0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaces;->makeCDMASmsRecordData(I[BZ)[B

    move-result-object v3

    .line 256
    .local v3, record:[B
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f3c

    const/4 v4, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 282
    .end local v3           #record:[B
    .end local v5           #response:Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 261
    .restart local v5       #response:Landroid/os/Message;
    :catch_0
    move-exception v6

    .line 262
    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v0, "interrupted while trying to update by index"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 270
    .end local v6           #e:Ljava/lang/InterruptedException;
    :cond_3
    const/4 v0, 0x1

    invoke-static {p2, p3, v0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaces;->makeCDMASmsRecordData(I[BZ)[B

    move-result-object v3

    .line 271
    .restart local v3       #record:[B
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    new-instance v2, Lcom/android/internal/telephony/SmsRawData;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/SmsRawData;-><init>([B)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 273
    .end local v3           #record:[B
    :cond_4
    if-ne p1, v9, :cond_1

    .line 274
    const-string v0, "is deleting all smss on uim by index = -1, clear cache."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 275
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v7, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 275
    add-int/lit8 v7, v7, 0x1

    goto :goto_3
.end method
