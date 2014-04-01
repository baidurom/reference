.class Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field mChannelId:I

.field mChannelStatus:I

.field mChannelStatusInfo:I


# direct methods
.method constructor <init>(III)V
    .locals 1
    .parameter "cid"
    .parameter "status"
    .parameter "statusInfo"

    .prologue
    const/4 v0, 0x0

    .line 519
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 515
    iput v0, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;->mChannelId:I

    .line 516
    iput v0, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;->mChannelStatus:I

    .line 517
    iput v0, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;->mChannelStatusInfo:I

    .line 520
    iput p1, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;->mChannelId:I

    .line 521
    iput p2, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;->mChannelStatus:I

    .line 522
    iput p3, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;->mChannelStatusInfo:I

    .line 523
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .parameter "buf"

    .prologue
    .line 527
    if-nez p1, :cond_0

    .line 536
    :goto_0
    return-void

    .line 531
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    or-int/lit16 v0, v1, 0x80

    .line 532
    .local v0, tag:I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 533
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 534
    iget v1, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;->mChannelId:I

    and-int/lit8 v1, v1, 0x7

    iget v2, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;->mChannelStatus:I

    or-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 535
    iget v1, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;->mChannelStatusInfo:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method
