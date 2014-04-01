.class Lcom/android/internal/telephony/cat/GetChannelStatusParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field textMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 1
    .parameter "cmdDet"
    .parameter "textMsg"

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 254
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/GetChannelStatusParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 258
    iput-object p2, p0, Lcom/android/internal/telephony/cat/GetChannelStatusParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 259
    return-void
.end method
