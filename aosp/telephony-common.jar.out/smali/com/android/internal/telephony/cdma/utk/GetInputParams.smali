.class Lcom/android/internal/telephony/cdma/utk/GetInputParams;
.super Lcom/android/internal/telephony/cdma/utk/CommandParams;
.source "CommandParams.java"


# instance fields
.field input:Lcom/android/internal/telephony/cdma/utk/Input;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/Input;)V
    .locals 1
    .parameter "cmdDet"
    .parameter "input"

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/GetInputParams;->input:Lcom/android/internal/telephony/cdma/utk/Input;

    .line 165
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/utk/GetInputParams;->input:Lcom/android/internal/telephony/cdma/utk/Input;

    .line 166
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "icon"

    .prologue
    .line 169
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/GetInputParams;->input:Lcom/android/internal/telephony/cdma/utk/Input;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/GetInputParams;->input:Lcom/android/internal/telephony/cdma/utk/Input;

    iput-object p1, v0, Lcom/android/internal/telephony/cdma/utk/Input;->icon:Landroid/graphics/Bitmap;

    .line 172
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
