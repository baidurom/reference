.class public Landroid/telephony/BaiduTelephonyExtend;
.super Ljava/lang/Object;
.source "BaiduTelephonyExtend.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "BaiduTelephonyExtend"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static baiduTelephonyExtendTest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "BaiduTelephonyExtend"

    return-object v0
.end method

.method public static copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;IJ)I
    .locals 1
    .parameter "scAddress"
    .parameter "address"
    .parameter
    .parameter "status"
    .parameter "timeStamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;IJ)I"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, msgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public static getIccCardType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 35
    .local v0, tlMgr:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIccCardType()Ljava/lang/String;

    move-result-object v1

    .line 38
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getIccPinPukRetryTimes()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, -0x1

    return v0
.end method

.method public static isPhbReady()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method
