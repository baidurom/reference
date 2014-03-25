.class public final Lcom/android/internal/telephony/UsimFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "UsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RIL_UsimFH"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .parameter "app"
    .parameter "aid"
    .parameter "ci"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected getEFPath(I)Ljava/lang/String;
    .locals 1
    .parameter "efid"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/UsimFileHandler;->getEFPath(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getEFPath(IZ)Ljava/lang/String;
    .locals 4
    .parameter "efid"
    .parameter "is7FFF"

    .prologue
    .line 44
    const-string v0, "7F20"

    .line 46
    .local v0, DF_APP:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/UsimFileHandler;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/UsimFileHandler;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getType()Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne v2, v3, :cond_0

    .line 47
    const-string v0, "7FFF"

    .line 49
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/UsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, path:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 87
    const-string v1, "7F105F3A"

    .line 89
    .end local v1           #path:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 51
    :sswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 76
    :sswitch_1
    const-string v1, "7FFF"

    goto :goto_0

    .line 80
    :sswitch_2
    const-string v1, "7F105F3A"

    goto :goto_0

    .line 49
    :sswitch_data_0
    .sparse-switch
        0x2fe2 -> :sswitch_0
        0x4f30 -> :sswitch_2
        0x6f11 -> :sswitch_1
        0x6f13 -> :sswitch_1
        0x6f14 -> :sswitch_1
        0x6f15 -> :sswitch_1
        0x6f16 -> :sswitch_1
        0x6f17 -> :sswitch_1
        0x6f18 -> :sswitch_1
        0x6f38 -> :sswitch_1
        0x6f3b -> :sswitch_1
        0x6f3c -> :sswitch_1
        0x6f40 -> :sswitch_1
        0x6f46 -> :sswitch_1
        0x6f49 -> :sswitch_1
        0x6f4b -> :sswitch_1
        0x6fad -> :sswitch_1
        0x6fb7 -> :sswitch_1
        0x6fc5 -> :sswitch_1
        0x6fc6 -> :sswitch_1
        0x6fc7 -> :sswitch_1
        0x6fc8 -> :sswitch_1
        0x6fc9 -> :sswitch_1
        0x6fca -> :sswitch_1
        0x6fcb -> :sswitch_1
        0x6fcd -> :sswitch_1
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 94
    const-string v0, "RIL_UsimFH"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 99
    const-string v0, "RIL_UsimFH"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method
