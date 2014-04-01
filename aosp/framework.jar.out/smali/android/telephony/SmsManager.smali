.class public final Landroid/telephony/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"


# static fields
.field public static final EXTRA_PARAMS_ENCODING_TYPE:Ljava/lang/String; = "encoding_type"

.field public static final EXTRA_PARAMS_VALIDITY_PERIOD:Ljava/lang/String; = "validity_period"

.field public static final RESULT_ERROR_FDN_CHECK_FAILURE:I = 0x6

.field public static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final RESULT_ERROR_INVALID_ADDRESS:I = 0x8

.field public static final RESULT_ERROR_LIMIT_EXCEEDED:I = 0x5

.field public static final RESULT_ERROR_NO_SERVICE:I = 0x4

.field public static final RESULT_ERROR_NULL_PDU:I = 0x3

.field public static final RESULT_ERROR_RADIO_OFF:I = 0x2

.field public static final RESULT_ERROR_SIM_MEM_FULL:I = 0x7

.field public static final RESULT_ERROR_SUCCESS:I = 0x0

.field public static final STATUS_ON_ICC_FREE:I = 0x0

.field public static final STATUS_ON_ICC_READ:I = 0x1

.field public static final STATUS_ON_ICC_SENT:I = 0x5

.field public static final STATUS_ON_ICC_UNREAD:I = 0x3

.field public static final STATUS_ON_ICC_UNSENT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "SMS"

.field private static final TEST_MODE_CTA:I = 0x1

.field private static final TEST_MODE_FTA:I = 0x2

.field private static final TEST_MODE_IOT:I = 0x3

.field private static final TEST_MODE_PROPERTY_KEY:Ljava/lang/String; = "gsm.gcf.testmode"

.field private static final TEST_MODE_PROPERTY_KEY2:Ljava/lang/String; = "gsm.gcf.testmode2"

.field private static final TEST_MODE_UNKNOWN:I = -0x1

.field public static final VALIDITY_PERIOD_MAX_DURATION:I = 0xff

.field public static final VALIDITY_PERIOD_NO_DURATION:I = -0x1

.field public static final VALIDITY_PERIOD_ONE_DAY:I = 0xa7

.field public static final VALIDITY_PERIOD_ONE_HOUR:I = 0xb

.field public static final VALIDITY_PERIOD_SIX_HOURS:I = 0x47

.field public static final VALIDITY_PERIOD_TWELVE_HOURS:I = 0x8f

.field private static lastReceivedSmsSimId:I

.field private static final sInstance:Landroid/telephony/SmsManager;


# instance fields
.field private testMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Landroid/telephony/SmsManager;

    invoke-direct {v0}, Landroid/telephony/SmsManager;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    .line 68
    const/4 v0, 0x0

    sput v0, Landroid/telephony/SmsManager;->lastReceivedSmsSimId:I

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 216
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v1, 0x0

    iput v1, p0, Landroid/telephony/SmsManager;->testMode:I

    .line 220
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v1

    if-nez v1, :cond_0

    .line 221
    const-string v1, "SMS"

    const-string v2, "SM-constructor: get test mode from SIM 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v1, "gsm.gcf.testmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroid/telephony/SmsManager;->testMode:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SM-constructor: test mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/SmsManager;->testMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void

    .line 224
    :cond_0
    :try_start_1
    const-string v1, "SMS"

    const-string v2, "SM-constructor: get test mode from SIM 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v1, "gsm.gcf.testmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroid/telephony/SmsManager;->testMode:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v1, "SMS"

    const-string v2, "SM-constructor: invalid property value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v1, -0x1

    iput v1, p0, Landroid/telephony/SmsManager;->testMode:I

    goto :goto_0
.end method

.method private static createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    .local p0, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v3, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p0, :cond_1

    .line 440
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 441
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 442
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    .line 444
    .local v1, data:Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_0

    .line 445
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[B)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 446
    .local v4, sms:Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_0

    .line 447
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    .end local v4           #sms:Landroid/telephony/SmsMessage;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 452
    .end local v0           #count:I
    .end local v1           #data:Lcom/android/internal/telephony/SmsRawData;
    .end local v2           #i:I
    :cond_1
    return-object v3
.end method

.method public static getDefault()Landroid/telephony/SmsManager;
    .locals 1

    .prologue
    .line 213
    sget-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    return-object v0
.end method

.method private getDefaultSim()I
    .locals 1

    .prologue
    .line 794
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSmsDefaultSim()I

    move-result v0

    return v0
.end method


# virtual methods
.method public copyMessageToIcc([B[BI)Z
    .locals 1
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"

    .prologue
    .line 251
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v0

    invoke-static {p1, p2, p3, v0}, Landroid/telephony/gemini/GeminiSmsManager;->copyMessageToIccGemini([B[BII)Z

    move-result v0

    return v0
.end method

.method public copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    .locals 7
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
    .line 707
    .local p3, text:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v6

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v6}, Landroid/telephony/gemini/GeminiSmsManager;->copyTextMessageToIccCardGemini(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJI)I

    move-result v0

    return v0
.end method

.method public deleteMessageFromIcc(I)Z
    .locals 1
    .parameter "messageIndex"

    .prologue
    .line 269
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v0

    invoke-static {p1, v0}, Landroid/telephony/gemini/GeminiSmsManager;->deleteMessageFromIccGemini(II)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcast(I)Z
    .locals 3
    .parameter "messageIdentifier"

    .prologue
    .line 353
    const/4 v1, 0x0

    .line 356
    .local v1, success:Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 357
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 358
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->disableCellBroadcast(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 364
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 360
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public disableCellBroadcastRange(II)Z
    .locals 3
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    .line 415
    const/4 v1, 0x0

    .line 418
    .local v1, success:Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 419
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 420
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastRange(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 426
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 422
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {p1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 4
    .parameter "text"
    .parameter "encodingType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 898
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call divideMessage, encoding = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    invoke-static {p1, p2}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 900
    .local v0, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "divideMessage: size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    return-object v0
.end method

.method public enableCellBroadcast(I)Z
    .locals 3
    .parameter "messageIdentifier"

    .prologue
    .line 323
    const/4 v1, 0x0

    .line 326
    .local v1, success:Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 327
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 328
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->enableCellBroadcast(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 334
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 330
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public enableCellBroadcastRange(II)Z
    .locals 3
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    .line 384
    const/4 v1, 0x0

    .line 387
    .local v1, success:Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 388
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 389
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastRange(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 395
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 391
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getAllMessagesFromIcc()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/gemini/GeminiSmsManager;->getAllMessagesFromIccGemini(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSmsSimMemoryStatus()Landroid/telephony/SmsMemoryStatus;
    .locals 1

    .prologue
    .line 786
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsSimMemoryStatusGemini(I)Landroid/telephony/SmsMemoryStatus;

    move-result-object v0

    return-object v0
.end method

.method public insertRawMessageToIccCard(I[B[B)Landroid/telephony/SimSmsInsertStatus;
    .locals 1
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"

    .prologue
    .line 934
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v0

    invoke-static {p1, p2, p3, v0}, Landroid/telephony/gemini/GeminiSmsManager;->insertRawMessageToIccCardGemini(I[B[BI)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v0

    return-object v0
.end method

.method public insertTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)Landroid/telephony/SimSmsInsertStatus;
    .locals 7
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
    .line 919
    .local p3, text:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v6

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v6}, Landroid/telephony/gemini/GeminiSmsManager;->insertTextMessageToIccCardGemini(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJI)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v0

    return-object v0
.end method

.method public isSmsReady()Z
    .locals 1

    .prologue
    .line 719
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/gemini/GeminiSmsManager;->isSmsReadyGemini(I)Z

    move-result v0

    return v0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;SS[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "originalPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 648
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v5

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Landroid/telephony/gemini/GeminiSmsManager;->sendDataMessageGemini(Ljava/lang/String;Ljava/lang/String;SS[BILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 651
    return-void
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 202
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v4

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Landroid/telephony/gemini/GeminiSmsManager;->sendDataMessageGemini(Ljava/lang/String;Ljava/lang/String;S[BILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 205
    return-void
.end method

.method public sendMultipartDataMessage(Ljava/lang/String;Ljava/lang/String;S[[BLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "S[[B",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 689
    .local p5, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v4

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Landroid/telephony/gemini/GeminiSmsManager;->sendMultipartDataMessageGemini(Ljava/lang/String;Ljava/lang/String;S[[BILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 692
    return-void
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v3

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Landroid/telephony/gemini/GeminiSmsManager;->sendMultipartTextMessageGemini(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 169
    return-void
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;SLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter "destinationPort"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;S",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 611
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v4

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Landroid/telephony/gemini/GeminiSmsManager;->sendMultipartTextMessageGemini(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;SILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 614
    return-void
.end method

.method public sendMultipartTextMessageWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter "encodingType"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 882
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v4

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Landroid/telephony/gemini/GeminiSmsManager;->sendMultipartTextMessageWithEncodingTypeGemini(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 885
    return-void
.end method

.method public sendMultipartTextMessageWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter "extraParams"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 991
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v4

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Landroid/telephony/gemini/GeminiSmsManager;->sendMultipartTextMessageWithExtraParamsGemini(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 994
    return-void
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 6
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v3

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Landroid/telephony/gemini/GeminiSmsManager;->sendTextMessageGemini(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 115
    return-void
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "destinationPort"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 567
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v4

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Landroid/telephony/gemini/GeminiSmsManager;->sendTextMessageGemini(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 570
    return-void
.end method

.method public sendTextMessageWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "encodingType"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 835
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v4

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Landroid/telephony/gemini/GeminiSmsManager;->sendTextMessageWithEncodingTypeGemini(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 838
    return-void
.end method

.method public sendTextMessageWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "extraParams"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 960
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v4

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Landroid/telephony/gemini/GeminiSmsManager;->sendTextMessageWithExtraParamsGemini(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 962
    return-void
.end method

.method public setLastIncomingSmsSimId(I)V
    .locals 1
    .parameter "simId"

    .prologue
    .line 771
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 773
    :cond_0
    sput p1, Landroid/telephony/SmsManager;->lastReceivedSmsSimId:I

    .line 775
    :cond_1
    return-void
.end method

.method public setSmsMemoryStatus(Z)V
    .locals 6
    .parameter "status"

    .prologue
    .line 732
    const/4 v1, 0x0

    .line 735
    .local v1, isTestIccCard:Z
    :try_start_0
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 737
    .local v2, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    sget v3, Landroid/telephony/SmsManager;->lastReceivedSmsSimId:I

    if-ltz v3, :cond_0

    .line 738
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isTestIccCard()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 748
    .end local v2           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 752
    sget v3, Landroid/telephony/SmsManager;->lastReceivedSmsSimId:I

    invoke-static {p1, v3}, Landroid/telephony/gemini/GeminiSmsManager;->setSmsMemoryStatusGemini(ZI)V

    .line 759
    :goto_1
    return-void

    .line 740
    :catch_0
    move-exception v0

    .line 742
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSmsMemoryStatus, remoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 743
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 745
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSmsMemoryStatus, NullPointerException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 753
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :cond_1
    iget v3, p0, Landroid/telephony/SmsManager;->testMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 754
    sget v3, Landroid/telephony/SmsManager;->lastReceivedSmsSimId:I

    invoke-static {p1, v3}, Landroid/telephony/gemini/GeminiSmsManager;->setSmsMemoryStatusGemini(ZI)V

    goto :goto_1

    .line 757
    :cond_2
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v3

    invoke-static {p1, v3}, Landroid/telephony/gemini/GeminiSmsManager;->setSmsMemoryStatusGemini(ZI)V

    goto :goto_1
.end method

.method public updateMessageOnIcc(II[B)Z
    .locals 1
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"

    .prologue
    .line 289
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getDefaultSim()I

    move-result v0

    invoke-static {p1, p2, p3, v0}, Landroid/telephony/gemini/GeminiSmsManager;->updateMessageOnIccGemini(II[BI)Z

    move-result v0

    return v0
.end method
