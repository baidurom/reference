.class Lcom/android/internal/telephony/cdma/utk/CallSetupParams;
.super Lcom/android/internal/telephony/cdma/utk/CommandParams;
.source "CommandParams.java"


# instance fields
.field callMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

.field confirmMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

.field setupMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;Lcom/android/internal/telephony/cdma/utk/TextMessage;Lcom/android/internal/telephony/cdma/utk/TextMessage;)V
    .locals 0
    .parameter "cmdDet"
    .parameter "confirmMsg"
    .parameter "callMsg"
    .parameter "setupMsg"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    .line 111
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/utk/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    .line 112
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/utk/CallSetupParams;->callMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    .line 113
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/utk/CallSetupParams;->setupMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    .line 114
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 3
    .parameter "icon"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 117
    if-nez p1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iput-object p1, v0, Lcom/android/internal/telephony/cdma/utk/TextMessage;->icon:Landroid/graphics/Bitmap;

    move v0, v1

    .line 122
    goto :goto_0

    .line 123
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/CallSetupParams;->callMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/CallSetupParams;->callMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CallSetupParams;->callMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iput-object p1, v0, Lcom/android/internal/telephony/cdma/utk/TextMessage;->icon:Landroid/graphics/Bitmap;

    move v0, v1

    .line 125
    goto :goto_0
.end method
