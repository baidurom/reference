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

    .line 523
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 519
    iput v0, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;->mChannelId:I

    .line 520
    iput v0, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;->mChannelStatus:I

    .line 521
    iput v0, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;->mChannelStatusInfo:I

    .line 524
    iput p1, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;->mChannelId:I

    .line 525
    iput p2, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;->mChannelStatus:I

    .line 526
    iput p3, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;->mChannelStatusInfo:I

    .line 527
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .parameter "buf"

    .prologue
    .line 531
    if-nez p1, :cond_0

    .line 540
    :goto_0
    return-void

    .line 535
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    or-int/lit16 v0, v1, 0x80

    .line 536
    .local v0, tag:I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 537
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 538
    iget v1, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;->mChannelId:I

    and-int/lit8 v1, v1, 0x7

    iget v2, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;->mChannelStatus:I

    or-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 539
    iget v1, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;->mChannelStatusInfo:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method
