.class Lcom/android/internal/telephony/cat/OpenChannelResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

.field mBufferSize:I

.field mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/ChannelStatus;Lcom/android/internal/telephony/cat/BearerDesc;I)V
    .locals 3
    .parameter "channelStatus"
    .parameter "bearerDesc"
    .parameter "bufferSize"

    .prologue
    const/4 v0, 0x0

    .line 356
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 351
    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    .line 352
    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    .line 353
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBufferSize:I

    .line 357
    if-eqz p1, :cond_0

    .line 358
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenChannelResponseData-constructor: channelStatus cid/status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :goto_0
    if-eqz p2, :cond_1

    .line 364
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenChannelResponseData-constructor: bearerDesc bearerType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :goto_1
    if-lez p3, :cond_2

    .line 369
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenChannelResponseData-constructor: buffer size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :goto_2
    iput-object p1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    .line 375
    iput-object p2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    .line 376
    iput p3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBufferSize:I

    .line 377
    return-void

    .line 361
    :cond_0
    const-string v0, "[BIP]"

    const-string v1, "OpenChannelResponseData-constructor: channelStatus is null"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 366
    :cond_1
    const-string v0, "[BIP]"

    const-string v1, "OpenChannelResponseData-constructor: bearerDesc is null"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 371
    :cond_2
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenChannelResponseData-constructor: bearerDesc is invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 8
    .parameter "buf"

    .prologue
    const/16 v2, 0x80

    const/4 v3, 0x0

    const/4 v7, 0x2

    .line 381
    if-nez p1, :cond_0

    .line 382
    const-string v1, "[BIP]"

    const-string v2, "OpenChannelResponseData-format: buf is null"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v1, v1, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    if-eq v1, v7, :cond_1

    .line 387
    const-string v1, "[BIP]"

    const-string v2, "OpenChannelResponseData-format: bearer type is not gprs"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBufferSize:I

    if-lez v1, :cond_5

    .line 394
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    if-eqz v1, :cond_2

    .line 395
    const-string v1, "[BIP]"

    const-string v4, "OpenChannelResponseData-format: Write channel status into TR"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    .line 397
    .local v0, tag:I
    const-string v1, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OpenChannelResponseData-format: tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 399
    const-string v1, "[BIP]"

    const-string v4, "OpenChannelResponseData-format: length: 2"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 401
    const-string v4, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OpenChannelResponseData-format: channel id & isActivated: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    iget v6, v1, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelId:I

    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/ChannelStatus;->isActivated:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    or-int/2addr v1, v6

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    iget v1, v1, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelId:I

    iget-object v4, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    iget-boolean v4, v4, Lcom/android/internal/telephony/cat/ChannelStatus;->isActivated:Z

    if-eqz v4, :cond_4

    :goto_2
    or-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 404
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenChannelResponseData-format: channel status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    iget v3, v3, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    iget v1, v1, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 408
    .end local v0           #tag:I
    :cond_2
    const-string v1, "[BIP]"

    const-string v2, "Write bearer description into TR"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BEARER_DESCRIPTION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    .line 410
    .restart local v0       #tag:I
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenChannelResponseData-format: tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 412
    const-string v1, "[BIP]"

    const-string v2, "OpenChannelResponseData-format: length: 7"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 414
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenChannelResponseData-format: bearer type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v3, v3, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v1, v1, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 416
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenChannelResponseData-format: precedence: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v3, v3, Lcom/android/internal/telephony/cat/BearerDesc;->precedence:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v1, v1, Lcom/android/internal/telephony/cat/BearerDesc;->precedence:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 418
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenChannelResponseData-format: delay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v3, v3, Lcom/android/internal/telephony/cat/BearerDesc;->delay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v1, v1, Lcom/android/internal/telephony/cat/BearerDesc;->delay:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 420
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenChannelResponseData-format: reliability: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v3, v3, Lcom/android/internal/telephony/cat/BearerDesc;->reliability:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v1, v1, Lcom/android/internal/telephony/cat/BearerDesc;->reliability:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 422
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenChannelResponseData-format: peak: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v3, v3, Lcom/android/internal/telephony/cat/BearerDesc;->peak:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v1, v1, Lcom/android/internal/telephony/cat/BearerDesc;->peak:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 424
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenChannelResponseData-format: mean: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v3, v3, Lcom/android/internal/telephony/cat/BearerDesc;->mean:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v1, v1, Lcom/android/internal/telephony/cat/BearerDesc;->mean:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 426
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenChannelResponseData-format: pdp type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v3, v3, Lcom/android/internal/telephony/cat/BearerDesc;->pdpType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v1, v1, Lcom/android/internal/telephony/cat/BearerDesc;->pdpType:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 429
    const-string v1, "[BIP]"

    const-string v2, "Write buffer size into TR"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BUFFER_SIZE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    .line 431
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenChannelResponseData-format: tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 433
    const-string v1, "[BIP]"

    const-string v2, "OpenChannelResponseData-format: length: 2"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 435
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenChannelResponseData-format: length(hi-byte): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBufferSize:I

    shr-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBufferSize:I

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 437
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenChannelResponseData-format: length(low-byte): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBufferSize:I

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBufferSize:I

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 401
    goto/16 :goto_1

    :cond_4
    move v2, v3

    .line 403
    goto/16 :goto_2

    .line 440
    .end local v0           #tag:I
    :cond_5
    const-string v1, "[BIP]"

    const-string v2, "Miss ChannelStatus, BearerDesc or BufferSize"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
