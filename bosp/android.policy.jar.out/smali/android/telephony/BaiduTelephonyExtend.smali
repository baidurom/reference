.class public Landroid/telephony/BaiduTelephonyExtend;
.super Ljava/lang/Object;
.source "BaiduTelephonyExtend.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "BaiduTelephonyExtend"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static baiduTelephonyExtendTest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "BaiduTelephonyExtend"

    return-object v0
.end method

.method public static copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;IJ)I
    .locals 7
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
    .line 55
    .local p2, msgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 56
    .local v0, smsMgr:Landroid/telephony/SmsManager;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;IJ)I

    move-result v1

    .line 59
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getIccCardType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 38
    .local v0, tlMgr:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIccCardType()Ljava/lang/String;

    move-result-object v1

    .line 41
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getIccPinPukRetryTimes()I
    .locals 3

    .prologue
    .line 68
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 69
    .local v1, iTel:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 70
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getIccPinPukRetryTimes()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 75
    :goto_0
    return v2

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 75
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static isPhbReady()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method
