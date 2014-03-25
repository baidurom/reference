.class Lcom/android/internal/telephony/cat/OpenChannelResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

.field mBufferSize:I

.field mChannelStatus:Lcom/mediatek/common/telephony/ChannelStatus;


# direct methods
.method constructor <init>(Lcom/mediatek/common/telephony/ChannelStatus;Lcom/mediatek/common/telephony/BearerDesc;I)V
    .locals 3
    .parameter "channelStatus"
    .parameter "bearerDesc"
    .parameter "bufferSize"

    .prologue
    const/4 v0, 0x0

    .line 486
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 481
    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/mediatek/common/telephony/ChannelStatus;

    .line 482
    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    .line 483
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBufferSize:I

    .line 487
    if-eqz p1, :cond_0

    .line 488
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenChannelResponseData-constructor: channelStatus cid/status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :goto_0
    if-eqz p2, :cond_1

    .line 494
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenChannelResponseData-constructor: bearerDesc bearerType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/mediatek/common/telephony/BearerDesc;->bearerType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :goto_1
    if-lez p3, :cond_2

    .line 500
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

    .line 506
    :goto_2
    iput-object p1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/mediatek/common/telephony/ChannelStatus;

    .line 507
    iput-object p2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    .line 508
    iput p3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBufferSize:I

    .line 509
    return-void

    .line 491
    :cond_0
    const-string v0, "[BIP]"

    const-string v1, "OpenChannelResponseData-constructor: channelStatus is null"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 497
    :cond_1
    const-string v0, "[BIP]"

    const-string v1, "OpenChannelResponseData-constructor: bearerDesc is null"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 502
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

    .line 513
    if-nez p1, :cond_0

    .line 514
    const-string v1, "[BIP]"

    const-string v2, "OpenChannelResponseData-format: buf is null"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :goto_0
    return-void

    .line 518
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v1, v1, Lcom/mediatek/common/telephony/BearerDesc;->bearerType:I

    if-eq v1, v7, :cond_1

    .line 519
    const-string v1, "[BIP]"

    const-string v2, "OpenChannelResponseData-format: bearer type is not gprs"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 525
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBufferSize:I

    if-lez v1, :cond_5

    .line 526
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/mediatek/common/telephony/ChannelStatus;

    if-eqz v1, :cond_2

    .line 527
    const-string v1, "[BIP]"

    const-string v4, "OpenChannelResponseData-format: Write channel status into TR"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    .line 529
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

    .line 530
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 531
    const-string v1, "[BIP]"

    const-string v4, "OpenChannelResponseData-format: length: 2"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 533
    const-string v4, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OpenChannelResponseData-format: channel id & isActivated: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/mediatek/common/telephony/ChannelStatus;

    iget v6, v1, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelId:I

    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/mediatek/common/telephony/ChannelStatus;

    iget-boolean v1, v1, Lcom/mediatek/common/telephony/ChannelStatus;->isActivated:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    or-int/2addr v1, v6

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/mediatek/common/telephony/ChannelStatus;

    iget v1, v1, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelId:I

    iget-object v4, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/mediatek/common/telephony/ChannelStatus;

    iget-boolean v4, v4, Lcom/mediatek/common/telephony/ChannelStatus;->isActivated:Z

    if-eqz v4, :cond_4

    :goto_2
    or-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 536
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenChannelResponseData-format: channel status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/mediatek/common/telephony/ChannelStatus;

    iget v3, v3, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/mediatek/common/telephony/ChannelStatus;

    iget v1, v1, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelStatus:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 541
    .end local v0           #tag:I
    :cond_2
    const-string v1, "[BIP]"

    const-string v2, "Write bearer description into TR"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BEARER_DESCRIPTION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    .line 543
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

    .line 544
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 545
    const-string v1, "[BIP]"

    const-string v2, "OpenChannelResponseData-format: length: 7"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 547
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenChannelResponseData-format: bearer type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v3, v3, Lcom/mediatek/common/telephony/BearerDesc;->bearerType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v1, v1, Lcom/mediatek/common/telephony/BearerDesc;->bearerType:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 550
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenChannelResponseData-format: precedence: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v3, v3, Lcom/mediatek/common/telephony/BearerDesc;->precedence:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v1, v1, Lcom/mediatek/common/telephony/BearerDesc;->precedence:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 553
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenChannelResponseData-format: delay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v3, v3, Lcom/mediatek/common/telephony/BearerDesc;->delay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v1, v1, Lcom/mediatek/common/telephony/BearerDesc;->delay:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 555
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenChannelResponseData-format: reliability: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v3, v3, Lcom/mediatek/common/telephony/BearerDesc;->reliability:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v1, v1, Lcom/mediatek/common/telephony/BearerDesc;->reliability:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 558
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenChannelResponseData-format: peak: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v3, v3, Lcom/mediatek/common/telephony/BearerDesc;->peak:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v1, v1, Lcom/mediatek/common/telephony/BearerDesc;->peak:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 560
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenChannelResponseData-format: mean: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v3, v3, Lcom/mediatek/common/telephony/BearerDesc;->mean:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v1, v1, Lcom/mediatek/common/telephony/BearerDesc;->mean:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 562
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenChannelResponseData-format: pdp type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v3, v3, Lcom/mediatek/common/telephony/BearerDesc;->pdpType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v1, v1, Lcom/mediatek/common/telephony/BearerDesc;->pdpType:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 565
    const-string v1, "[BIP]"

    const-string v2, "Write buffer size into TR"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BUFFER_SIZE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    .line 567
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

    .line 568
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 569
    const-string v1, "[BIP]"

    const-string v2, "OpenChannelResponseData-format: length: 2"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 571
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

    .line 573
    iget v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBufferSize:I

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 574
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

    .line 576
    iget v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBufferSize:I

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 533
    goto/16 :goto_1

    :cond_4
    move v2, v3

    .line 535
    goto/16 :goto_2

    .line 578
    .end local v0           #tag:I
    :cond_5
    const-string v1, "[BIP]"

    const-string v2, "Miss ChannelStatus, BearerDesc or BufferSize"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
