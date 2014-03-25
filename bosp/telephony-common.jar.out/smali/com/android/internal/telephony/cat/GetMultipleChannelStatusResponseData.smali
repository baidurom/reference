.class Lcom/android/internal/telephony/cat/GetMultipleChannelStatusResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field mArrList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .parameter "arrList"

    .prologue
    .line 659
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 657
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/GetMultipleChannelStatusResponseData;->mArrList:Ljava/util/ArrayList;

    .line 660
    iput-object p1, p0, Lcom/android/internal/telephony/cat/GetMultipleChannelStatusResponseData;->mArrList:Ljava/util/ArrayList;

    .line 661
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 8
    .parameter "buf"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 665
    if-nez p1, :cond_1

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v3

    or-int/lit16 v2, v3, 0x80

    .line 670
    .local v2, tag:I
    const-string v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ChannelStatusResp: size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cat/GetMultipleChannelStatusResponseData;->mArrList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    iget-object v3, p0, Lcom/android/internal/telephony/cat/GetMultipleChannelStatusResponseData;->mArrList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 673
    iget-object v3, p0, Lcom/android/internal/telephony/cat/GetMultipleChannelStatusResponseData;->mArrList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 674
    .local v1, iterator:Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 675
    .local v0, chStatus:Lcom/mediatek/common/telephony/ChannelStatus;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 676
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 677
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 678
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #chStatus:Lcom/mediatek/common/telephony/ChannelStatus;
    check-cast v0, Lcom/mediatek/common/telephony/ChannelStatus;

    .line 679
    .restart local v0       #chStatus:Lcom/mediatek/common/telephony/ChannelStatus;
    iget v3, v0, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelId:I

    and-int/lit8 v3, v3, 0x7

    iget v4, v0, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelStatus:I

    or-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 680
    iget v3, v0, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelStatusInfo:I

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 681
    const-string v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ChannelStatusResp: cid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",info:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelStatusInfo:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 684
    .end local v0           #chStatus:Lcom/mediatek/common/telephony/ChannelStatus;
    .end local v1           #iterator:Ljava/util/Iterator;
    :cond_2
    const-string v3, "[BIP]"

    const-string v4, "ChannelStatusResp: no channel status."

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 686
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 687
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 688
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_0
.end method
