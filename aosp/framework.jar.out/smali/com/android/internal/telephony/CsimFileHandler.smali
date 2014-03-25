.class public final Lcom/android/internal/telephony/CsimFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "CsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RIL_CsimFH"


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
    sparse-switch p1, :sswitch_data_0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 57
    const-string v0, "3F007F105F3A"

    .line 59
    .end local v0           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 50
    :sswitch_0
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f22 -> :sswitch_0
        0x6f28 -> :sswitch_0
        0x6f32 -> :sswitch_0
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f3c -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f41 -> :sswitch_0
        0x6f44 -> :sswitch_0
        0x6f5a -> :sswitch_0
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 64
    const-string v0, "RIL_CsimFH"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 69
    const-string v0, "RIL_CsimFH"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method
