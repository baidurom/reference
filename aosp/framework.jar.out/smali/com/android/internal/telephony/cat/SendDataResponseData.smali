.class Lcom/android/internal/telephony/cat/SendDataResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field mTxBufferSize:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 446
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/SendDataResponseData;->mTxBufferSize:I

    .line 450
    iput p1, p0, Lcom/android/internal/telephony/cat/SendDataResponseData;->mTxBufferSize:I

    .line 451
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .parameter "buf"

    .prologue
    const/16 v2, 0xff

    .line 455
    if-nez p1, :cond_0

    .line 469
    :goto_0
    return-void

    .line 461
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    or-int/lit16 v0, v1, 0x80

    .line 462
    .local v0, tag:I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 463
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 464
    iget v1, p0, Lcom/android/internal/telephony/cat/SendDataResponseData;->mTxBufferSize:I

    if-lt v1, v2, :cond_1

    .line 465
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 467
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/cat/SendDataResponseData;->mTxBufferSize:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method
