.class Lcom/android/internal/telephony/cat/SendDataParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field channelData:[B

.field mSendDataCid:I

.field textMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;[BILcom/android/internal/telephony/cat/TextMessage;)V
    .locals 1
    .parameter "cmdDet"
    .parameter "data"
    .parameter "cid"
    .parameter "textMsg"

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/SendDataParams;->channelData:[B

    .line 242
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/SendDataParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 243
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/SendDataParams;->mSendDataCid:I

    .line 247
    iput-object p2, p0, Lcom/android/internal/telephony/cat/SendDataParams;->channelData:[B

    .line 248
    iput-object p4, p0, Lcom/android/internal/telephony/cat/SendDataParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 249
    iput p3, p0, Lcom/android/internal/telephony/cat/SendDataParams;->mSendDataCid:I

    .line 250
    return-void
.end method
