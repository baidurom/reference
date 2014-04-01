.class Lcom/android/internal/telephony/cat/ReceiveDataParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field channelDataLength:I

.field textMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;ILcom/android/internal/telephony/cat/TextMessage;)V
    .locals 1
    .parameter "cmdDet"
    .parameter "length"
    .parameter "textMsg"

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->channelDataLength:I

    .line 231
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 235
    iput p2, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->channelDataLength:I

    .line 236
    iput-object p3, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 237
    return-void
.end method
