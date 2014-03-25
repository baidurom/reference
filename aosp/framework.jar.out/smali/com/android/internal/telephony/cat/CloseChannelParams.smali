.class Lcom/android/internal/telephony/cat/CloseChannelParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mBackToTcpListen:Z

.field mCloseCid:I

.field textMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;ILcom/android/internal/telephony/cat/TextMessage;Z)V
    .locals 2
    .parameter "cmdDet"
    .parameter "cid"
    .parameter "textMsg"
    .parameter "backToTcpListen"

    .prologue
    const/4 v1, 0x0

    .line 263
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 258
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 259
    iput v1, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mCloseCid:I

    .line 260
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mBackToTcpListen:Z

    .line 264
    iput-object p3, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 265
    iput p2, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mCloseCid:I

    .line 266
    iput-boolean p4, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mBackToTcpListen:Z

    .line 267
    return-void
.end method
