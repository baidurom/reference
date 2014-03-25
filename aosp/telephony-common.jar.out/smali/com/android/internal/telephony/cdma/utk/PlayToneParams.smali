.class Lcom/android/internal/telephony/cdma/utk/PlayToneParams;
.super Lcom/android/internal/telephony/cdma/utk/CommandParams;
.source "CommandParams.java"


# instance fields
.field settings:Lcom/android/internal/telephony/cdma/utk/ToneSettings;

.field textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;Lcom/android/internal/telephony/cdma/utk/Tone;Lcom/android/internal/telephony/cdma/utk/Duration;Z)V
    .locals 1
    .parameter "cmdDet"
    .parameter "textMsg"
    .parameter "tone"
    .parameter "duration"
    .parameter "vibrate"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    .line 90
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/utk/PlayToneParams;->textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    .line 91
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/ToneSettings;

    invoke-direct {v0, p4, p3, p5}, Lcom/android/internal/telephony/cdma/utk/ToneSettings;-><init>(Lcom/android/internal/telephony/cdma/utk/Duration;Lcom/android/internal/telephony/cdma/utk/Tone;Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/PlayToneParams;->settings:Lcom/android/internal/telephony/cdma/utk/ToneSettings;

    .line 92
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "icon"

    .prologue
    .line 95
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/PlayToneParams;->textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/PlayToneParams;->textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iput-object p1, v0, Lcom/android/internal/telephony/cdma/utk/TextMessage;->icon:Landroid/graphics/Bitmap;

    .line 97
    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
