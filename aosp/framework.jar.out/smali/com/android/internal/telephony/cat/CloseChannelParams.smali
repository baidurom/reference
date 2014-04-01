.class Lcom/android/internal/telephony/cat/CloseChannelParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mCloseCid:I

.field textMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;ILcom/android/internal/telephony/cat/TextMessage;)V
    .locals 1
    .parameter "cmdDet"
    .parameter "cid"
    .parameter "textMsg"

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 219
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mCloseCid:I

    .line 224
    iput-object p3, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 225
    iput p2, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mCloseCid:I

    .line 226
    return-void
.end method
