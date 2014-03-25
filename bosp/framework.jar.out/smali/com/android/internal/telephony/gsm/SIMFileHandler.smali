.class public final Lcom/android/internal/telephony/gsm/SIMFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "SIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .parameter "app"
    .parameter "aid"
    .parameter "ci"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 75
    return-void
.end method


# virtual methods
.method protected getEFPath(I)Ljava/lang/String;
    .locals 1
    .parameter "efid"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getEFPath(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getEFPath(IZ)Ljava/lang/String;
    .locals 4
    .parameter "efid"
    .parameter "is7FFF"

    .prologue
    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEFPath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->logd(Ljava/lang/String;)V

    .line 87
    const-string v0, "7F20"

    .line 89
    .local v0, DF_APP:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMFileHandler;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMFileHandler;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getType()Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne v2, v3, :cond_0

    .line 90
    const-string v0, "7FFF"

    .line 93
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, path:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 128
    const-string v2, "GSM"

    const-string v3, "Error: EF Path being returned in null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v1

    .line 130
    .end local v0           #DF_APP:Ljava/lang/String;
    .end local v1           #path:Ljava/lang/String;
    :goto_0
    :sswitch_0
    return-object v0

    .line 95
    .restart local v0       #DF_APP:Ljava/lang/String;
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :sswitch_2
    const-string v0, "3F007F20"

    goto :goto_0

    .line 122
    :sswitch_3
    const-string v0, "7FFF7F665F30"

    goto :goto_0

    .line 124
    :sswitch_4
    const-string v0, "3F007F25"

    goto :goto_0

    .line 93
    nop

    :sswitch_data_0
    .sparse-switch
        0x2fe2 -> :sswitch_1
        0x4f36 -> :sswitch_3
        0x6f11 -> :sswitch_2
        0x6f13 -> :sswitch_2
        0x6f14 -> :sswitch_2
        0x6f15 -> :sswitch_2
        0x6f16 -> :sswitch_2
        0x6f17 -> :sswitch_2
        0x6f18 -> :sswitch_2
        0x6f22 -> :sswitch_4
        0x6f38 -> :sswitch_0
        0x6f3e -> :sswitch_0
        0x6f3f -> :sswitch_0
        0x6f46 -> :sswitch_0
        0x6fad -> :sswitch_0
        0x6fb7 -> :sswitch_0
        0x6fc5 -> :sswitch_0
        0x6fc6 -> :sswitch_0
        0x6fc7 -> :sswitch_0
        0x6fc8 -> :sswitch_0
        0x6fc9 -> :sswitch_0
        0x6fca -> :sswitch_0
        0x6fcb -> :sswitch_0
        0x6fcd -> :sswitch_0
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 135
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 140
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method
