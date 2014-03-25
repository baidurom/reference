.class Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;
.super Lcom/android/internal/telephony/cat/OpenChannelResponseData;
.source "ResponseData.java"


# instance fields
.field mProtocolType:I


# direct methods
.method constructor <init>(Lcom/mediatek/common/telephony/ChannelStatus;Lcom/mediatek/common/telephony/BearerDesc;II)V
    .locals 3
    .parameter "channelStatus"
    .parameter "bearerDesc"
    .parameter "bufferSize"
    .parameter "protocolType"

    .prologue
    .line 397
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/mediatek/common/telephony/ChannelStatus;Lcom/mediatek/common/telephony/BearerDesc;I)V

    .line 395
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mProtocolType:I

    .line 398
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenChannelResponseDataEx-constructor: protocolType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iput p4, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mProtocolType:I

    .line 400
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 7
    .parameter "buf"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 403
    if-nez p1, :cond_0

    .line 404
    const-string v2, "[BIP]"

    const-string v3, "OpenChannelResponseDataEx-format: buf is null"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    :goto_0
    return-void

    .line 407
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mProtocolType:I

    if-eq v5, v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mProtocolType:I

    if-ne v6, v2, :cond_3

    .line 409
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    if-nez v2, :cond_2

    .line 410
    const-string v2, "[BIP]"

    const-string v3, "OpenChannelResponseDataEx-format: bearer null"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 412
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v2, v2, Lcom/mediatek/common/telephony/BearerDesc;->bearerType:I

    if-eq v2, v5, :cond_3

    .line 413
    const-string v2, "[BIP]"

    const-string v3, "OpenChannelResponseDataEx-format: bearer type is not gprs"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    :cond_3
    const/4 v0, 0x0

    .line 418
    .local v0, length:I
    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mChannelStatus:Lcom/mediatek/common/telephony/ChannelStatus;

    if-eqz v2, :cond_6

    .line 419
    const-string v2, "[BIP]"

    const-string v3, "OpenChannelResponseDataEx-format: Write channel status into TR"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 421
    .local v1, tag:I
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 422
    const/4 v0, 0x2

    .line 423
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 424
    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mChannelStatus:Lcom/mediatek/common/telephony/ChannelStatus;

    iget v2, v2, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelId:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mChannelStatus:Lcom/mediatek/common/telephony/ChannelStatus;

    iget v3, v3, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelStatus:I

    or-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 425
    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mChannelStatus:Lcom/mediatek/common/telephony/ChannelStatus;

    iget v2, v2, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelStatusInfo:I

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 426
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OpenChannel Channel status Rsp:tag["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "],len["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "],cId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mChannelStatus:Lcom/mediatek/common/telephony/ChannelStatus;

    iget v4, v4, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "],status["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mChannelStatus:Lcom/mediatek/common/telephony/ChannelStatus;

    iget v4, v4, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    .end local v1           #tag:I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    if-eqz v2, :cond_7

    .line 435
    iget v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mProtocolType:I

    if-eq v5, v2, :cond_4

    iget v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mProtocolType:I

    if-ne v6, v2, :cond_5

    .line 437
    :cond_4
    const-string v2, "[BIP]"

    const-string v3, "Write bearer description into TR"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BEARER_DESCRIPTION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 439
    .restart local v1       #tag:I
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 440
    const/4 v0, 0x7

    .line 441
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 442
    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v2, v2, Lcom/mediatek/common/telephony/BearerDesc;->bearerType:I

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 443
    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v2, v2, Lcom/mediatek/common/telephony/BearerDesc;->precedence:I

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 444
    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v2, v2, Lcom/mediatek/common/telephony/BearerDesc;->delay:I

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 445
    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v2, v2, Lcom/mediatek/common/telephony/BearerDesc;->reliability:I

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 446
    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v2, v2, Lcom/mediatek/common/telephony/BearerDesc;->peak:I

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 447
    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v2, v2, Lcom/mediatek/common/telephony/BearerDesc;->mean:I

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 448
    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v2, v2, Lcom/mediatek/common/telephony/BearerDesc;->pdpType:I

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 449
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OpenChannelResponseDataEx-format: tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",bearerType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v4, v4, Lcom/mediatek/common/telephony/BearerDesc;->bearerType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",precedence: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v4, v4, Lcom/mediatek/common/telephony/BearerDesc;->precedence:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",delay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v4, v4, Lcom/mediatek/common/telephony/BearerDesc;->delay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",reliability: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v4, v4, Lcom/mediatek/common/telephony/BearerDesc;->reliability:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",peak: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v4, v4, Lcom/mediatek/common/telephony/BearerDesc;->peak:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mean: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v4, v4, Lcom/mediatek/common/telephony/BearerDesc;->mean:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",pdp type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v4, v4, Lcom/mediatek/common/telephony/BearerDesc;->pdpType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    .end local v1           #tag:I
    :cond_5
    :goto_2
    iget v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBufferSize:I

    if-ltz v2, :cond_8

    .line 463
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Write buffer size into TR.["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBufferSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BUFFER_SIZE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 465
    .restart local v1       #tag:I
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 466
    const/4 v0, 0x2

    .line 467
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 468
    iget v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBufferSize:I

    shr-int/lit8 v2, v2, 0x8

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 469
    iget v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBufferSize:I

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 470
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OpenChannelResponseDataEx-format: tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",buffer size(hi-byte): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBufferSize:I

    shr-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",buffer size(low-byte): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBufferSize:I

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 430
    .end local v1           #tag:I
    :cond_6
    const-string v2, "[BIP]"

    const-string v3, "No Channel status in TR."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 460
    :cond_7
    const-string v2, "[BIP]"

    const-string v3, "No bearer description in TR."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 475
    :cond_8
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No buffer size in TR.["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBufferSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
