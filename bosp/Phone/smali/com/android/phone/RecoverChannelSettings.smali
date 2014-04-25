.class Lcom/android/phone/RecoverChannelSettings;
.super Landroid/os/Handler;
.source "CellBroadcastCheckBox.java"


# static fields
.field private static final CHANNEL_URI:Landroid/net/Uri; = null

.field private static final CHANNEL_URI1:Landroid/net/Uri; = null

.field private static final ENABLE:Ljava/lang/String; = "enable"

.field private static final KEYID:Ljava/lang/String; = "_id"

.field private static final LOG_TAG:Ljava/lang/String; = "RecoverChannelSettings"

.field private static final MESSAGE_GET_CONFIG:I = 0x64

.field private static final MESSAGE_SET_CONFIG:I = 0x65

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final NUMBER:Ljava/lang/String; = "number"


# instance fields
.field private mChannelArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/CellBroadcastChannel;",
            ">;"
        }
    .end annotation
.end field

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mSimId:I

.field private mUri:Landroid/net/Uri;

.field private resolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 283
    const-string v0, "content://cb/channel"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/RecoverChannelSettings;->CHANNEL_URI:Landroid/net/Uri;

    .line 284
    const-string v0, "content://cb/channel1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/RecoverChannelSettings;->CHANNEL_URI1:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(ILandroid/content/ContentResolver;)V
    .locals 2
    .parameter "simId"
    .parameter "resolver"

    .prologue
    const/4 v1, 0x0

    .line 292
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 286
    sget-object v0, Lcom/android/phone/RecoverChannelSettings;->CHANNEL_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/phone/RecoverChannelSettings;->mUri:Landroid/net/Uri;

    .line 288
    iput-object v1, p0, Lcom/android/phone/RecoverChannelSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 289
    iput-object v1, p0, Lcom/android/phone/RecoverChannelSettings;->resolver:Landroid/content/ContentResolver;

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    .line 293
    iput p1, p0, Lcom/android/phone/RecoverChannelSettings;->mSimId:I

    .line 294
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RecoverChannelSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 295
    iput-object p2, p0, Lcom/android/phone/RecoverChannelSettings;->resolver:Landroid/content/ContentResolver;

    .line 297
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget v0, p0, Lcom/android/phone/RecoverChannelSettings;->mSimId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 301
    sget-object v0, Lcom/android/phone/RecoverChannelSettings;->CHANNEL_URI1:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/phone/RecoverChannelSettings;->mUri:Landroid/net/Uri;

    .line 304
    :cond_0
    return-void
.end method

.method private getCellBroadcastConfig(Z)V
    .locals 5
    .parameter "reason"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x64

    .line 447
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 448
    invoke-virtual {p0, v2, v3, v2, v4}, Lcom/android/phone/RecoverChannelSettings;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 452
    .local v0, msg:Landroid/os/Message;
    :goto_0
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    iget-object v1, p0, Lcom/android/phone/RecoverChannelSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/android/phone/RecoverChannelSettings;->mSimId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCellBroadcastSmsConfigGemini(Landroid/os/Message;I)V

    .line 460
    :goto_1
    return-void

    .line 450
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const/16 v1, 0x65

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/android/phone/RecoverChannelSettings;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_0

    .line 458
    :cond_1
    iget-object v1, p0, Lcom/android/phone/RecoverChannelSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    goto :goto_1
.end method

.method private handleGetCellBroadcastConfigResponse(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 412
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 413
    .local v0, ar:Landroid/os/AsyncResult;
    if-nez v0, :cond_0

    .line 426
    :goto_0
    return-void

    .line 416
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 417
    const-string v1, "RecoverChannelSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetCellBroadcastConfigResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 420
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 421
    const-string v1, "RecoverChannelSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetCellBroadcastConfigResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 423
    :cond_2
    const-string v1, "RecoverChannelSettings"

    const-string v2, "handleGetCellBroadcastConfigResponse: success!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleSetCellBroadcastConfigResponse(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 430
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 431
    .local v0, ar:Landroid/os/AsyncResult;
    if-nez v0, :cond_0

    .line 432
    const-string v1, "RecoverChannelSettings"

    const-string v2, "handleSetCellBroadcastConfigResponse,ar is null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 437
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v1}, Lcom/android/phone/RecoverChannelSettings;->updateChannelToDatabase(I)Z

    .line 438
    const-string v1, "RecoverChannelSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetCellBroadcastConfigResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_1
    return-void
.end method

.method private makeChannelConfigArray(Lcom/android/phone/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .locals 8
    .parameter "channel"

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 392
    const/4 v0, 0x2

    new-array v6, v0, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 393
    .local v6, objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {p1}, Lcom/android/phone/CellBroadcastChannel;->getChannelId()I

    move-result v1

    .line 394
    .local v1, tChannelId:I
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    aput-object v0, v6, v5

    .line 395
    const/4 v7, 0x1

    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-virtual {p1}, Lcom/android/phone/CellBroadcastChannel;->getChannelState()Z

    move-result v5

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    aput-object v0, v6, v7

    .line 396
    return-object v6
.end method

.method private setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;I)V
    .locals 4
    .parameter "objectList"
    .parameter "index"

    .prologue
    .line 380
    const/16 v1, 0x65

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, p2, v3}, Lcom/android/phone/RecoverChannelSettings;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 381
    .local v0, msg:Landroid/os/Message;
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/android/phone/RecoverChannelSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/android/phone/RecoverChannelSettings;->mSimId:I

    invoke-virtual {v1, p1, p1, v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setCellBroadcastSmsConfigGemini([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;I)V

    .line 389
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/android/phone/RecoverChannelSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, p1, v0}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private updateChannelToDatabase(I)Z
    .locals 13
    .parameter "index"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 309
    const/4 v8, 0x4

    new-array v5, v8, [Ljava/lang/String;

    const-string v8, "_id"

    aput-object v8, v5, v10

    const-string v8, "name"

    aput-object v8, v5, v9

    const/4 v8, 0x2

    const-string v11, "number"

    aput-object v11, v5, v8

    const/4 v8, 0x3

    const-string v11, "enable"

    aput-object v11, v5, v8

    .line 310
    .local v5, projection:[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 311
    iget-object v8, p0, Lcom/android/phone/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/phone/CellBroadcastChannel;

    invoke-virtual {v8}, Lcom/android/phone/CellBroadcastChannel;->getKeyId()I

    move-result v2

    .line 312
    .local v2, id:I
    iget-object v8, p0, Lcom/android/phone/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/phone/CellBroadcastChannel;

    invoke-virtual {v8}, Lcom/android/phone/CellBroadcastChannel;->getChannelName()Ljava/lang/String;

    move-result-object v3

    .line 313
    .local v3, name:Ljava/lang/String;
    const/4 v1, 0x0

    .line 314
    .local v1, enable:Z
    iget-object v8, p0, Lcom/android/phone/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/phone/CellBroadcastChannel;

    invoke-virtual {v8}, Lcom/android/phone/CellBroadcastChannel;->getChannelId()I

    move-result v4

    .line 315
    .local v4, number:I
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 316
    .local v6, values:Landroid/content/ContentValues;
    const-string v8, "_id"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 317
    const-string v8, "name"

    invoke-virtual {v6, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v8, "number"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 319
    const-string v8, "enable"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 320
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v8, p0, Lcom/android/phone/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/phone/CellBroadcastChannel;

    invoke-virtual {v8}, Lcom/android/phone/CellBroadcastChannel;->getKeyId()I

    move-result v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 323
    .local v7, where:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/android/phone/RecoverChannelSettings;->resolver:Landroid/content/ContentResolver;

    iget-object v11, p0, Lcom/android/phone/RecoverChannelSettings;->mUri:Landroid/net/Uri;

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v6, v7, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v9

    .line 327
    :goto_0
    return v8

    .line 324
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v8, v10

    .line 325
    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 400
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 408
    :goto_0
    return-void

    .line 402
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/RecoverChannelSettings;->handleGetCellBroadcastConfigResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 405
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/RecoverChannelSettings;->handleSetCellBroadcastConfigResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method queryChannelFromDatabase()Z
    .locals 11

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 332
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    const-string v0, "name"

    aput-object v0, v2, v9

    const-string v0, "number"

    aput-object v0, v2, v1

    const-string v0, "enable"

    aput-object v0, v2, v3

    .line 334
    .local v2, projection:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/RecoverChannelSettings;->resolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/phone/RecoverChannelSettings;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 335
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 336
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    new-instance v6, Lcom/android/phone/CellBroadcastChannel;

    invoke-direct {v6}, Lcom/android/phone/CellBroadcastChannel;-><init>()V

    .line 338
    .local v6, channel:Lcom/android/phone/CellBroadcastChannel;
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/android/phone/CellBroadcastChannel;->setChannelId(I)V

    .line 339
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/android/phone/CellBroadcastChannel;->setKeyId(I)V

    .line 340
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/phone/CellBroadcastChannel;->setChannelName(Ljava/lang/String;)V

    .line 342
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v9, :cond_0

    move v0, v9

    :goto_1
    invoke-virtual {v6, v0}, Lcom/android/phone/CellBroadcastChannel;->setChannelState(Z)V

    .line 343
    iget-object v0, p0, Lcom/android/phone/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 347
    .end local v6           #channel:Lcom/android/phone/CellBroadcastChannel;
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .local v8, e:Ljava/lang/Exception;
    move v0, v10

    .line 350
    .end local v8           #e:Ljava/lang/Exception;
    :goto_2
    return v0

    .restart local v6       #channel:Lcom/android/phone/CellBroadcastChannel;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_0
    move v0, v10

    .line 342
    goto :goto_1

    .line 345
    .end local v6           #channel:Lcom/android/phone/CellBroadcastChannel;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v9

    .line 350
    goto :goto_2
.end method

.method public setSimId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 464
    iput p1, p0, Lcom/android/phone/RecoverChannelSettings;->mSimId:I

    .line 465
    return-void
.end method

.method updateChannelStatus()V
    .locals 11

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/android/phone/RecoverChannelSettings;->queryChannelFromDatabase()Z

    move-result v9

    if-nez v9, :cond_1

    .line 377
    :cond_0
    return-void

    .line 361
    :cond_1
    iget-object v9, p0, Lcom/android/phone/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 362
    .local v5, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 363
    iget-object v9, p0, Lcom/android/phone/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/phone/CellBroadcastChannel;

    invoke-virtual {v9}, Lcom/android/phone/CellBroadcastChannel;->getKeyId()I

    move-result v4

    .line 364
    .local v4, keyId:I
    iget-object v9, p0, Lcom/android/phone/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/phone/CellBroadcastChannel;

    invoke-virtual {v9}, Lcom/android/phone/CellBroadcastChannel;->getChannelName()Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, channelName:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/phone/CellBroadcastChannel;

    invoke-virtual {v9}, Lcom/android/phone/CellBroadcastChannel;->getChannelId()I

    move-result v0

    .line 366
    .local v0, channelId:I
    iget-object v9, p0, Lcom/android/phone/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/phone/CellBroadcastChannel;

    invoke-virtual {v9}, Lcom/android/phone/CellBroadcastChannel;->getChannelState()Z

    move-result v2

    .line 367
    .local v2, channelState:Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 369
    .local v8, title:Ljava/lang/String;
    new-instance v7, Lcom/android/phone/CellBroadcastChannel;

    invoke-direct {v7, v4, v0, v1, v2}, Lcom/android/phone/CellBroadcastChannel;-><init>(IILjava/lang/String;Z)V

    .line 370
    .local v7, oldChannel:Lcom/android/phone/CellBroadcastChannel;
    if-eqz v2, :cond_2

    .line 372
    invoke-direct {p0, v7}, Lcom/android/phone/RecoverChannelSettings;->makeChannelConfigArray(Lcom/android/phone/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v6

    .line 373
    .local v6, objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-direct {p0, v6, v3}, Lcom/android/phone/RecoverChannelSettings;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;I)V

    .line 362
    .end local v6           #objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
