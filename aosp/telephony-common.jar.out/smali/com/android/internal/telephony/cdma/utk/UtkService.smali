.class public Lcom/android/internal/telephony/cdma/utk/UtkService;
.super Landroid/os/Handler;
.source "UtkService.java"

# interfaces
.implements Lcom/android/internal/telephony/cdma/utk/AppInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/utk/UtkService$1;
    }
.end annotation


# static fields
.field private static final DEV_ID_DISPLAY:I = 0x2

.field private static final DEV_ID_EARPIECE:I = 0x3

.field private static final DEV_ID_KEYPAD:I = 0x1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_TERMINAL:I = 0x82

.field private static final DEV_ID_UICC:I = 0x81

.field static final MSG_ID_CALL_SETUP:I = 0x4

.field static final MSG_ID_EVENT_NOTIFY:I = 0x3

.field static final MSG_ID_ICC_CHANGED:I = 0xb

.field static final MSG_ID_PROACTIVE_COMMAND:I = 0x2

.field static final MSG_ID_REFRESH:I = 0x5

.field static final MSG_ID_RESPONSE:I = 0x6

.field static final MSG_ID_RIL_LOCAL_INFO:I = 0xc

.field static final MSG_ID_RIL_MSG_DECODED:I = 0xa

.field static final MSG_ID_RIL_REFRESH_RESULT:I = 0xd

.field static final MSG_ID_RUIM_READY:I = 0x7

.field static final MSG_ID_SESSION_END:I = 0x1

.field static final UTK_DEFAULT:Ljava/lang/String; = "Defualt Message"

.field private static mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

.field private static mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

.field private static sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

.field private mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

.field private mMenuCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

.field private mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

.field private mSimId:I

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/UiccCardApplication;Lcom/android/internal/telephony/cdma/RuimRecords;Landroid/content/Context;Lcom/android/internal/telephony/cdma/RuimFileHandler;Lcom/android/internal/telephony/UiccCard;)V
    .locals 4
    .parameter "ci"
    .parameter "ca"
    .parameter "ir"
    .parameter "context"
    .parameter "fh"
    .parameter "ic"

    .prologue
    const/4 v3, 0x0

    .line 109
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 69
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 78
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 79
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMenuCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 81
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 83
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/utk/LocalInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    .line 111
    const-string v0, "UtkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ci"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ca "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ir "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fh "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-nez p6, :cond_1

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Service: Input parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 120
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    .line 121
    sput-object p3, Lcom/android/internal/telephony/cdma/utk/UtkService;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 122
    invoke-virtual {p2}, Lcom/android/internal/telephony/UiccCardApplication;->getMySimId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mSimId:I

    .line 125
    invoke-static {p0, p5}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/cdma/RuimFileHandler;)Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 128
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mSimId:I

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(I)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v1, 0xb

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 131
    const-string v0, "mUiccController != null, register for icc change successly"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    :goto_0
    sput-object p2, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 137
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnUtkSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnUtkProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnUtkEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->reportUtkServiceIsRunning(Landroid/os/Message;)V

    .line 145
    const-string v0, "UtkService v1.2.0 is running"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    return-void

    .line 133
    :cond_2
    const-string v0, "mUiccController = null, cant register for icc change"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private eventDownload(III[BZ)V
    .locals 11
    .parameter "event"
    .parameter "sourceId"
    .parameter "destinationId"
    .parameter "additionalInfo"
    .parameter "oneShot"

    .prologue
    .line 462
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 465
    .local v2, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0xd6

    .line 466
    .local v8, tag:I
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 469
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 472
    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    .line 473
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 474
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 475
    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 478
    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    .line 479
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 480
    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 481
    invoke-virtual {v2, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 482
    invoke-virtual {v2, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 485
    if-eqz p4, :cond_0

    .line 486
    move-object v0, p4

    .local v0, arr$:[B
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-byte v1, v0, v4

    .line 487
    .local v1, b:B
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 486
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 491
    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v4           #i$:I
    .end local v6           #len$:I
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 494
    .local v7, rawData:[B
    array-length v9, v7

    add-int/lit8 v5, v9, -0x2

    .line 495
    .local v5, len:I
    const/4 v9, 0x1

    int-to-byte v10, v5

    aput-byte v10, v7, v9

    .line 497
    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 499
    .local v3, hexString:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x0

    invoke-interface {v9, v3, v10}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 500
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/cdma/utk/AppInterface;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 569
    invoke-static {v0, v0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/UiccCard;)Lcom/android/internal/telephony/cdma/utk/UtkService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/UiccCard;)Lcom/android/internal/telephony/cdma/utk/UtkService;
    .locals 9
    .parameter "ci"
    .parameter "context"
    .parameter "ic"

    .prologue
    const/4 v0, 0x0

    .line 515
    const-string v1, "UtkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getInstance ci "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ic "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/4 v2, 0x0

    .line 518
    .local v2, ca:Lcom/android/internal/telephony/UiccCardApplication;
    const/4 v5, 0x0

    .line 519
    .local v5, fh:Lcom/android/internal/telephony/cdma/RuimFileHandler;
    const/4 v3, 0x0

    .line 520
    .local v3, ir:Lcom/android/internal/telephony/cdma/RuimRecords;
    if-eqz p2, :cond_0

    .line 524
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v2

    .line 525
    if-eqz v2, :cond_0

    .line 526
    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v5

    .end local v5           #fh:Lcom/android/internal/telephony/cdma/RuimFileHandler;
    check-cast v5, Lcom/android/internal/telephony/cdma/RuimFileHandler;

    .line 527
    .restart local v5       #fh:Lcom/android/internal/telephony/cdma/RuimFileHandler;
    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v3

    .end local v3           #ir:Lcom/android/internal/telephony/cdma/RuimRecords;
    check-cast v3, Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 530
    .restart local v3       #ir:Lcom/android/internal/telephony/cdma/RuimRecords;
    :cond_0
    sget-object v8, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v8

    .line 531
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    if-nez v1, :cond_3

    .line 532
    if-eqz p0, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    if-eqz v5, :cond_1

    if-nez p2, :cond_2

    .line 535
    :cond_1
    const-string v1, "UtkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getInstance ca "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ir "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " fh "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    monitor-exit v8

    .line 559
    :goto_0
    return-object v0

    .line 539
    :cond_2
    new-instance v7, Landroid/os/HandlerThread;

    const-string v0, "Utk Telephony service"

    invoke-direct {v7, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 540
    .local v7, thread:Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 541
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/UtkService;

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/utk/UtkService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/UiccCardApplication;Lcom/android/internal/telephony/cdma/RuimRecords;Landroid/content/Context;Lcom/android/internal/telephony/cdma/RuimFileHandler;Lcom/android/internal/telephony/UiccCard;)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    .line 542
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string v1, "new sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    .end local v7           #thread:Landroid/os/HandlerThread;
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    monitor-exit v8

    goto :goto_0

    .line 560
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 544
    :cond_3
    if-eqz v2, :cond_5

    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eq v0, v2, :cond_5

    .line 545
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_4

    .line 546
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 548
    :cond_4
    sput-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 549
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const/4 v4, 0x7

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v4, v6}, Lcom/android/internal/telephony/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 550
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string v1, "reinitialize with new ca"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    :cond_5
    if-eqz v3, :cond_6

    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eq v0, v3, :cond_6

    .line 554
    sput-object v3, Lcom/android/internal/telephony/cdma/utk/UtkService;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 555
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string v1, "reinitialize with new ir"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 557
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string v1, "Return current sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private handleCmdResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V
    .locals 9
    .parameter "resMsg"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 687
    const-string v0, "handleCmdResponse"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 688
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->validateResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    const-string v0, "handleCmdResponse:validateResponse"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 756
    :goto_0
    return-void

    .line 692
    :cond_0
    const/4 v5, 0x0

    .line 693
    .local v5, resp:Lcom/android/internal/telephony/cdma/utk/ResponseData;
    const/4 v6, 0x0

    .line 694
    .local v6, helpRequired:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-result-object v1

    .line 695
    .local v1, cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCmdResponse:resMsg.resCode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService$1;->$SwitchMap$com$android$internal$telephony$cdma$utk$ResultCode:[I

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 698
    :pswitch_0
    const/4 v6, 0x1

    .line 710
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCmdResponse cmd = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 711
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService$1;->$SwitchMap$com$android$internal$telephony$cdma$utk$AppInterface$CommandType:[I

    iget v2, v1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1

    .line 754
    :cond_1
    :goto_1
    :pswitch_2
    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 755
    iput-object v8, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto :goto_0

    .line 713
    :pswitch_3
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    if-ne v0, v2, :cond_2

    const/4 v6, 0x1

    .line 714
    :goto_2
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersMenuSelection:I

    invoke-direct {p0, v0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendMenuSelection(IZ)V

    goto :goto_0

    :cond_2
    move v6, v3

    .line 713
    goto :goto_2

    .line 717
    :pswitch_4
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/SelectItemResponseData;

    .end local v5           #resp:Lcom/android/internal/telephony/cdma/utk/ResponseData;
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersMenuSelection:I

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cdma/utk/SelectItemResponseData;-><init>(I)V

    .line 718
    .restart local v5       #resp:Lcom/android/internal/telephony/cdma/utk/ResponseData;
    goto :goto_1

    .line 721
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geInput()Lcom/android/internal/telephony/cdma/utk/Input;

    move-result-object v7

    .line 722
    .local v7, input:Lcom/android/internal/telephony/cdma/utk/Input;
    iget-boolean v0, v7, Lcom/android/internal/telephony/cdma/utk/Input;->yesNo:Z

    if-nez v0, :cond_3

    .line 725
    if-nez v6, :cond_1

    .line 726
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;

    .end local v5           #resp:Lcom/android/internal/telephony/cdma/utk/ResponseData;
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersInput:Ljava/lang/String;

    iget-boolean v2, v7, Lcom/android/internal/telephony/cdma/utk/Input;->ucs2:Z

    iget-boolean v4, v7, Lcom/android/internal/telephony/cdma/utk/Input;->packed:Z

    invoke-direct {v5, v0, v2, v4}, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;-><init>(Ljava/lang/String;ZZ)V

    .restart local v5       #resp:Lcom/android/internal/telephony/cdma/utk/ResponseData;
    goto :goto_1

    .line 730
    :cond_3
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;

    .end local v5           #resp:Lcom/android/internal/telephony/cdma/utk/ResponseData;
    iget-boolean v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersYesNoSelection:Z

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;-><init>(Z)V

    .line 733
    .restart local v5       #resp:Lcom/android/internal/telephony/cdma/utk/ResponseData;
    goto :goto_1

    .line 738
    .end local v7           #input:Lcom/android/internal/telephony/cdma/utk/Input;
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersConfirm:Z

    invoke-interface {v0, v2, v8}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromUim(ZLandroid/os/Message;)V

    .line 742
    iput-object v8, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 749
    :pswitch_7
    const/4 v5, 0x0

    .line 750
    goto :goto_1

    .line 696
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    .line 711
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

.method private handleProactiveCommand(Lcom/android/internal/telephony/cdma/utk/CommandParams;)V
    .locals 10
    .parameter "cmdParams"

    .prologue
    .line 262
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;->getCommandType()Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    new-instance v6, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-direct {v6, p1}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandParams;)V

    .line 266
    .local v6, cmdMsg:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleProactiveCommand "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;->getCommandType()Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService$1;->$SwitchMap$com$android$internal$telephony$cdma$utk$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;->getCommandType()Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 342
    const-string v0, "Unsupported command"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    :goto_0
    return-void

    .line 270
    :pswitch_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getMenu()Lcom/android/internal/telephony/cdma/utk/Menu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->removeMenu(Lcom/android/internal/telephony/cdma/utk/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMenuCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 275
    :goto_1
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 345
    :cond_0
    :goto_2
    :pswitch_1
    iput-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 346
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.utk.command"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "UTK CMD"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 273
    .end local v7           #intent:Landroid/content/Intent;
    :cond_1
    iput-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMenuCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto :goto_1

    .line 281
    :pswitch_2
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cdma/utk/TextMessage;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/utk/TextMessage;->responseNeeded:Z

    if-nez v0, :cond_0

    .line 282
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_2

    .line 289
    :pswitch_3
    const-string v0, "UtkService handleProactiveCommand Do refresh"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    const/4 v8, 0x1

    .line 291
    .local v8, type:I
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 293
    :cond_2
    const/4 v8, 0x1

    .line 297
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestUtkRefresh(ILandroid/os/Message;)V

    .line 298
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->handleRuimRefresh(I)V

    .line 299
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->value()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    .line 301
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_2

    .line 294
    :cond_4
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 295
    const/4 v8, 0x2

    goto :goto_3

    .line 306
    .end local v8           #type:I
    :pswitch_4
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto/16 :goto_2

    .line 322
    :pswitch_5
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto/16 :goto_0

    .line 328
    :pswitch_6
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 330
    :cond_5
    const-string v0, "Local information get AT data"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getUtkLocalInfo(Landroid/os/Message;)V

    .line 332
    iput-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 335
    :cond_6
    const-string v0, "handleCmdResponse Local info"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;

    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    invoke-direct {v5, v0, v9}, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;-><init>(ILcom/android/internal/telephony/cdma/utk/LocalInfo;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private handleRilMsg(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V
    .locals 9
    .parameter "rilMsg"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 196
    if-nez p1, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    const/4 v7, 0x0

    .line 203
    .local v7, cmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRilMsg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iget v1, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mId:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 247
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleSessionEnd()V

    goto :goto_0

    .line 207
    :pswitch_2
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    if-ne v1, v2, :cond_0

    .line 208
    iget-object v7, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mData:Ljava/lang/Object;

    .end local v7           #cmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 209
    .restart local v7       #cmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;
    if-eqz v7, :cond_0

    .line 210
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleProactiveCommand(Lcom/android/internal/telephony/cdma/utk/CommandParams;)V

    goto :goto_0

    .line 216
    :pswitch_3
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mData:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRilMsg cmdParams!=null ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v7, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rilMsg.mResCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    if-eqz v7, :cond_0

    .line 229
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    if-ne v1, v2, :cond_3

    .line 230
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleProactiveCommand(Lcom/android/internal/telephony/cdma/utk/CommandParams;)V

    goto :goto_0

    .line 217
    :catch_0
    move-exception v8

    .line 219
    .local v8, e:Ljava/lang/ClassCastException;
    const-string v1, "Fail to parse proactive command"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v2, v1, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_0

    .end local v8           #e:Ljava/lang/ClassCastException;
    :cond_2
    move v1, v4

    .line 227
    goto :goto_1

    .line 235
    :cond_3
    iget-object v2, v7, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto/16 :goto_0

    .line 241
    :pswitch_4
    iget-object v7, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mData:Ljava/lang/Object;

    .end local v7           #cmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 242
    .restart local v7       #cmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;
    if-eqz v7, :cond_0

    .line 243
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleProactiveCommand(Lcom/android/internal/telephony/cdma/utk/CommandParams;)V

    goto/16 :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleSessionEnd()V
    .locals 2

    .prologue
    .line 356
    const-string v1, "SESSION END"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMenuCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 359
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.utk.session_end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 361
    return-void
.end method

.method private removeMenu(Lcom/android/internal/telephony/cdma/utk/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 666
    :try_start_0
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/utk/Menu;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/utk/Menu;->items:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_0

    .line 673
    :goto_0
    return v1

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "Unable to get Menu\'s items size"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    move v1, v2

    .line 673
    goto :goto_0
.end method

.method private sendMenuSelection(IZ)V
    .locals 8
    .parameter "menuId"
    .parameter "helpRequired"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 419
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 422
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd3

    .line 423
    .local v4, tag:I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 426
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 429
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v4

    .line 430
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 431
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 432
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 433
    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 436
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v4

    .line 437
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 438
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 439
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 442
    if-eqz p2, :cond_0

    .line 443
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v4

    .line 444
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 445
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 448
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 451
    .local v3, rawData:[B
    array-length v5, v3

    add-int/lit8 v2, v5, -0x2

    .line 452
    .local v2, len:I
    int-to-byte v5, v2

    aput-byte v5, v3, v6

    .line 454
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, hexString:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 457
    return-void
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V
    .locals 7
    .parameter "cmdDet"
    .parameter "resultCode"
    .parameter "includeAdditionalInfo"
    .parameter "additionalInfo"
    .parameter "resp"

    .prologue
    const/4 v2, 0x2

    .line 367
    if-nez p1, :cond_0

    .line 414
    :goto_0
    return-void

    .line 370
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 373
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v4

    .line 374
    .local v4, tag:I
    iget-boolean v5, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->compRequired:Z

    if-eqz v5, :cond_1

    .line 375
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 377
    :cond_1
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 378
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 379
    iget v5, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 380
    iget v5, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 381
    iget v5, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 384
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v4

    .line 385
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 386
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 387
    const/16 v5, 0x82

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 388
    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 391
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 392
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 393
    if-eqz p3, :cond_4

    .line 394
    .local v2, length:I
    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 395
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->value()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 398
    if-eqz p3, :cond_2

    .line 399
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 403
    :cond_2
    if-eqz p5, :cond_3

    .line 404
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/cdma/utk/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    .line 407
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 408
    .local v3, rawData:[B
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, hexString:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TERMINAL RESPONSE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 393
    .end local v1           #hexString:Ljava/lang/String;
    .end local v2           #length:I
    .end local v3           #rawData:[B
    :cond_4
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private updateIccStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 170
    const-string v1, "updateIccStatus"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v1, :cond_1

    .line 172
    const-string v1, "mUiccController == null, cant do nothing"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 178
    .local v0, newUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newUiccApplication "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eq v1, v0, :cond_0

    .line 181
    const-string v1, "mUiccApplication have changed!"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_2

    .line 183
    const-string v1, "mUiccApplication unregisterForReady!"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 185
    sput-object v3, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 187
    :cond_2
    if-eqz v0, :cond_0

    .line 188
    const-string v1, "mUiccApplication registerForReady successly"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 190
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v2, 0x7

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private validateResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)Z
    .locals 2
    .parameter "resMsg"

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->compareTo(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)Z

    move-result v0

    .line 661
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    const-string v0, "dispose"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUtkSessionEnd(Landroid/os/Handler;)V

    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUtkProactiveCmd(Landroid/os/Handler;)V

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUtkEvent(Landroid/os/Handler;)V

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 156
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 158
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 159
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 160
    sput-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 162
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 166
    const-string v0, "Service finalized"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/4 v12, 0x0

    .line 575
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 644
    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized UTK command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 580
    :pswitch_1
    const-string v0, "ril message arrived"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    const/4 v8, 0x0

    .line 582
    .local v8, data:Ljava/lang/String;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 583
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 584
    .local v6, ar:Landroid/os/AsyncResult;
    if-eqz v6, :cond_0

    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 586
    :try_start_0
    iget-object v8, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v8           #data:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    .end local v6           #ar:Landroid/os/AsyncResult;
    .restart local v8       #data:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    new-instance v1, Lcom/android/internal/telephony/cdma/utk/RilMessage;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {v1, v2, v8}, Lcom/android/internal/telephony/cdma/utk/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V

    .line 646
    .end local v8           #data:Ljava/lang/String;
    :goto_0
    return-void

    .line 587
    .restart local v6       #ar:Landroid/os/AsyncResult;
    :catch_0
    move-exception v9

    .line 588
    .local v9, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 595
    .end local v6           #ar:Landroid/os/AsyncResult;
    .end local v9           #e:Ljava/lang/ClassCastException;
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    new-instance v1, Lcom/android/internal/telephony/cdma/utk/RilMessage;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {v1, v2, v12}, Lcom/android/internal/telephony/cdma/utk/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V

    goto :goto_0

    .line 598
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->updateIccStatus()V

    goto :goto_0

    .line 601
    :pswitch_4
    const-string v0, "utk profileDownload"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, ""

    invoke-interface {v0, v1, v12}, Lcom/android/internal/telephony/CommandsInterface;->profileDownload(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 605
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/RilMessage;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleRilMsg(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V

    goto :goto_0

    .line 608
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleCmdResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V

    goto :goto_0

    .line 611
    :pswitch_7
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 613
    .local v7, aresult:Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    move-object v10, v0

    check-cast v10, [I

    .line 616
    .local v10, info:[I
    array-length v0, v10

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 617
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    aget v1, v10, v3

    iput v1, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->Technology:I

    .line 618
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v1, 0x1

    aget v1, v10, v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 619
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v1, 0x2

    aget v1, v10, v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    .line 620
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v1, 0x3

    aget v1, v10, v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->SID:I

    .line 621
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v1, 0x4

    aget v1, v10, v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->NID:I

    .line 622
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v1, 0x5

    aget v1, v10, v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_ID:I

    .line 623
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v1, 0x6

    aget v1, v10, v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LAT:I

    .line 624
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v1, 0x7

    aget v1, v10, v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LONG:I

    .line 630
    .end local v10           #info:[I
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    new-instance v5, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    invoke-direct {v5, v0, v4}, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;-><init>(ILcom/android/internal/telephony/cdma/utk/LocalInfo;)V

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 632
    iput-object v12, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 626
    .restart local v10       #info:[I
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string v1, "MSG_ID_RIL_LOCAL_INFO error"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 636
    .end local v7           #aresult:Landroid/os/AsyncResult;
    .end local v10           #info:[I
    :pswitch_8
    const-string v0, "MSG_ID_RIL_REFRESH_RESULT  Complete! "

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 637
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 638
    .local v11, intent:Landroid/content/Intent;
    const-string v0, "com.android.contacts.action.CONTACTS_INIT_RETRY_ACTION"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 640
    iput-object v12, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 575
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public declared-synchronized onCmdResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V
    .locals 2
    .parameter "resMsg"

    .prologue
    .line 649
    monitor-enter p0

    if-nez p1, :cond_0

    .line 655
    :goto_0
    monitor-exit p0

    return-void

    .line 653
    :cond_0
    const/4 v1, 0x6

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 654
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 649
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
