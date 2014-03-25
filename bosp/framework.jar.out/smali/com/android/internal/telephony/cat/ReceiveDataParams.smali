.class Lcom/android/internal/telephony/cat/ReceiveDataParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field channelDataLength:I

.field mReceiveDataCid:I

.field textMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;IILcom/android/internal/telephony/cat/TextMessage;)V
    .locals 2
    .parameter "cmdDet"
    .parameter "length"
    .parameter "cid"
    .parameter "textMsg"

    .prologue
    const/4 v1, 0x0

    .line 276
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 271
    iput v1, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->channelDataLength:I

    .line 272
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 273
    iput v1, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mReceiveDataCid:I

    .line 277
    iput p2, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->channelDataLength:I

    .line 278
    iput-object p4, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 279
    iput p3, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mReceiveDataCid:I

    .line 280
    return-void
.end method
