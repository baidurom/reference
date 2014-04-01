.class public final Landroid/telephony/gemini/GeminiSmsMessage;
.super Landroid/telephony/SmsMessage;
.source "GeminiSmsMessage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SMS"


# instance fields
.field private simId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/telephony/gemini/GeminiSmsMessage;-><init>(I)V

    .line 74
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "simId"

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/telephony/SmsMessage;-><init>()V

    .line 78
    iput p1, p0, Landroid/telephony/gemini/GeminiSmsMessage;->simId:I

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/telephony/SmsMessage;I)V
    .locals 1
    .parameter "sms"
    .parameter "simId"

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/telephony/SmsMessage;-><init>()V

    .line 83
    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iput-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 89
    :goto_0
    iput p2, p0, Landroid/telephony/gemini/GeminiSmsMessage;->simId:I

    .line 90
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    goto :goto_0
.end method

.method public static createFromEfRecord(I[BI)Landroid/telephony/gemini/GeminiSmsMessage;
    .locals 2
    .parameter "index"
    .parameter "data"
    .parameter "simId"

    .prologue
    .line 156
    invoke-static {p0, p1}, Landroid/telephony/gemini/GeminiSmsMessage;->createFromEfRecord(I[B)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 158
    .local v0, sms:Landroid/telephony/SmsMessage;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/telephony/gemini/GeminiSmsMessage;

    invoke-direct {v1, v0, p2}, Landroid/telephony/gemini/GeminiSmsMessage;-><init>(Landroid/telephony/SmsMessage;I)V

    goto :goto_0
.end method

.method public static createFromPdu([BI)Landroid/telephony/gemini/GeminiSmsMessage;
    .locals 2
    .parameter "pdu"
    .parameter "simId"

    .prologue
    .line 99
    invoke-static {p0}, Landroid/telephony/gemini/GeminiSmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 101
    .local v0, sms:Landroid/telephony/SmsMessage;
    new-instance v1, Landroid/telephony/gemini/GeminiSmsMessage;

    invoke-direct {v1, v0, p1}, Landroid/telephony/gemini/GeminiSmsMessage;-><init>(Landroid/telephony/SmsMessage;I)V

    return-object v1
.end method

.method public static newFromCDS(Ljava/lang/String;I)Landroid/telephony/gemini/GeminiSmsMessage;
    .locals 2
    .parameter "line"
    .parameter "simId"

    .prologue
    .line 131
    invoke-static {p0}, Landroid/telephony/gemini/GeminiSmsMessage;->newFromCDS(Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 133
    .local v0, sms:Landroid/telephony/SmsMessage;
    new-instance v1, Landroid/telephony/gemini/GeminiSmsMessage;

    invoke-direct {v1, v0, p1}, Landroid/telephony/gemini/GeminiSmsMessage;-><init>(Landroid/telephony/SmsMessage;I)V

    return-object v1
.end method

.method public static newFromCMT([Ljava/lang/String;I)Landroid/telephony/gemini/GeminiSmsMessage;
    .locals 2
    .parameter "lines"
    .parameter "simId"

    .prologue
    .line 115
    invoke-static {p0}, Landroid/telephony/gemini/GeminiSmsMessage;->newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 117
    .local v0, sms:Landroid/telephony/SmsMessage;
    new-instance v1, Landroid/telephony/gemini/GeminiSmsMessage;

    invoke-direct {v1, v0, p1}, Landroid/telephony/gemini/GeminiSmsMessage;-><init>(Landroid/telephony/SmsMessage;I)V

    return-object v1
.end method

.method protected static newFromCMTI(Ljava/lang/String;I)Landroid/telephony/gemini/GeminiSmsMessage;
    .locals 2
    .parameter "line"
    .parameter "simId"

    .prologue
    .line 123
    invoke-static {p0}, Landroid/telephony/gemini/GeminiSmsMessage;->newFromCMTI(Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 125
    .local v0, sms:Landroid/telephony/SmsMessage;
    new-instance v1, Landroid/telephony/gemini/GeminiSmsMessage;

    invoke-direct {v1, v0, p1}, Landroid/telephony/gemini/GeminiSmsMessage;-><init>(Landroid/telephony/SmsMessage;I)V

    return-object v1
.end method

.method public static newFromParcel(Landroid/os/Parcel;I)Landroid/telephony/gemini/GeminiSmsMessage;
    .locals 2
    .parameter "p"
    .parameter "simId"

    .prologue
    .line 139
    invoke-static {p0}, Landroid/telephony/gemini/GeminiSmsMessage;->newFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 141
    .local v0, sms:Landroid/telephony/SmsMessage;
    new-instance v1, Landroid/telephony/gemini/GeminiSmsMessage;

    invoke-direct {v1, v0, p1}, Landroid/telephony/gemini/GeminiSmsMessage;-><init>(Landroid/telephony/SmsMessage;I)V

    return-object v1
.end method


# virtual methods
.method public getMessageSimId()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Landroid/telephony/gemini/GeminiSmsMessage;->simId:I

    return v0
.end method
