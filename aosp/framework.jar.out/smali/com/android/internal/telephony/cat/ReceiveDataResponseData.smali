.class Lcom/android/internal/telephony/cat/ReceiveDataResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field mData:[B

.field mRemainingCount:I


# direct methods
.method constructor <init>([BI)V
    .locals 1
    .parameter "data"
    .parameter "remaining"

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    .line 474
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mRemainingCount:I

    .line 478
    iput-object p1, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    .line 479
    iput p2, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mRemainingCount:I

    .line 480
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .parameter "buf"

    .prologue
    const/16 v4, 0xff

    .line 484
    if-nez p1, :cond_0

    .line 511
    :goto_0
    return-void

    .line 490
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    or-int/lit16 v0, v1, 0x80

    .line 491
    .local v0, tag:I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 493
    iget-object v1, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    array-length v1, v1

    const/16 v2, 0x80

    if-lt v1, v2, :cond_1

    .line 494
    const/16 v1, 0x81

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 497
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 498
    iget-object v1, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    array-length v3, v3

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 500
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    or-int/lit16 v0, v1, 0x80

    .line 501
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 502
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 504
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReceiveDataResponseData: length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mRemainingCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget v1, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mRemainingCount:I

    if-lt v1, v4, :cond_2

    .line 507
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 509
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mRemainingCount:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method
