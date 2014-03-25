.class public Landroid/telephony/BaiduTelephonyManager;
.super Ljava/lang/Object;
.source "BaiduTelephonyManager.java"


# static fields
.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final DATA_UNKNOWN:I = -0x1

.field public static final NETWORK_CLASS_2_G:I = 0x1

.field public static final NETWORK_CLASS_3_G:I = 0x2

.field public static final NETWORK_CLASS_4_G:I = 0x3

.field public static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BaiduTelephonyManager"

.field private static sInstance:Landroid/telephony/BaiduTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Landroid/telephony/BaiduTelephonyManager;

    invoke-direct {v0}, Landroid/telephony/BaiduTelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/BaiduTelephonyManager;->sInstance:Landroid/telephony/BaiduTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static getDefault()Landroid/telephony/BaiduTelephonyManager;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Landroid/telephony/BaiduTelephonyManager;->sInstance:Landroid/telephony/BaiduTelephonyManager;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 744
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkClass(I)I
    .locals 1
    .parameter "networkType"

    .prologue
    .line 328
    packed-switch p0, :pswitch_data_0

    .line 348
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 334
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 344
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 346
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getPhoneTypeFromNetworkType(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v2, -0x1

    .line 184
    const-string v1, "ro.telephony.default_network"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 185
    .local v0, mode:I
    if-ne v0, v2, :cond_0

    .line 186
    const/4 v1, 0x0

    .line 187
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v1

    goto :goto_0
.end method

.method private getPhoneTypeFromProperty(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    .line 174
    const-string v1, "gsm.current.phone-type"

    invoke-direct {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getPhoneTypeFromNetworkType(I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 177
    .local v0, type:I
    return v0
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    .line 599
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCallState(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 669
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 675
    :goto_0
    return v1

    .line 670
    :catch_0
    move-exception v0

    .line 672
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 673
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 675
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v3, 0x0

    .line 108
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getCellLocation()Landroid/os/Bundle;

    move-result-object v0

    .line 109
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 110
    .local v1, cl:Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 116
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #cl:Landroid/telephony/CellLocation;
    :cond_0
    :goto_0
    return-object v1

    .line 113
    :catch_0
    move-exception v2

    .local v2, ex:Landroid/os/RemoteException;
    move-object v1, v3

    .line 114
    goto :goto_0

    .line 115
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .local v2, ex:Ljava/lang/NullPointerException;
    move-object v1, v3

    .line 116
    goto :goto_0
.end method

.method public getCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 552
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 557
    :goto_0
    return-object v1

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 555
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 557
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCurrentPhoneType(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    .line 142
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 143
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 144
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v2

    .line 156
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 147
    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getPhoneTypeFromProperty(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 149
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 152
    .local v0, ex:Landroid/os/RemoteException;
    invoke-direct {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v2

    goto :goto_0

    .line 153
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 156
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-direct {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v2

    goto :goto_0
.end method

.method public getDataActivity(I)I
    .locals 2
    .parameter "slot"

    .prologue
    .line 704
    const-string v0, "BaiduTelephonyManager"

    const-string v1, "getDataActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/4 v0, 0x0

    return v0
.end method

.method public getDataState(I)I
    .locals 3
    .parameter "slot"

    .prologue
    const/4 v1, 0x0

    .line 734
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 739
    :goto_0
    return v1

    .line 735
    :catch_0
    move-exception v0

    .line 737
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 738
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 739
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 90
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 94
    :goto_0
    return-object v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 93
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 94
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 514
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 519
    :goto_0
    return-object v1

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 517
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 519
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNetworkCountryIso(I)Ljava/lang/String;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 236
    const-string v0, "gsm.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 214
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 203
    const-string v0, "gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    .line 296
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 297
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 298
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 308
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 303
    :catch_0
    move-exception v0

    .line 305
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 306
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 308
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 360
    invoke-virtual {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getNetworkType(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneCount()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x2

    return v0
.end method

.method public getPhoneType(I)I
    .locals 1
    .parameter "slotId"

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    return v0
.end method

.method public getScAddress(I)Ljava/lang/String;
    .locals 9
    .parameter "slotId"

    .prologue
    const/4 v5, 0x0

    .line 624
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/ITelephony;->getScAddress()Ljava/lang/String;

    move-result-object v4

    .line 625
    .local v4, scAddressStr:Ljava/lang/String;
    const-string v6, "BaiduTelephonyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getScAddress scAddressStr"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 627
    .local v3, scAddressPdu:[B
    const/4 v6, 0x1

    const/16 v7, 0x8

    invoke-static {v3, v6, v7}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 629
    .local v2, scAddress:Ljava/lang/String;
    const-string v6, "BaiduTelephonyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "scAddress by calledPartyBCDToString"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 636
    .end local v2           #scAddress:Ljava/lang/String;
    .end local v3           #scAddressPdu:[B
    .end local v4           #scAddressStr:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v2, v5

    .line 633
    goto :goto_0

    .line 634
    .end local v0           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 635
    .local v1, e2:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v2, v5

    .line 636
    goto :goto_0
.end method

.method public getSimCountryIso(I)Ljava/lang/String;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 460
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 442
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName(I)Ljava/lang/String;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 453
    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 472
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 477
    :goto_0
    return-object v1

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 475
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 477
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimState(I)I
    .locals 2
    .parameter "slotId"

    .prologue
    .line 412
    const-string v1, "gsm.sim.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, prop:Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    const/4 v1, 0x1

    .line 429
    :goto_0
    return v1

    .line 416
    :cond_0
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 417
    const/4 v1, 0x2

    goto :goto_0

    .line 419
    :cond_1
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 420
    const/4 v1, 0x3

    goto :goto_0

    .line 422
    :cond_2
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 423
    const/4 v1, 0x4

    goto :goto_0

    .line 425
    :cond_3
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 426
    const/4 v1, 0x5

    goto :goto_0

    .line 429
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 496
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 501
    :goto_0
    return-object v1

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 499
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 501
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 588
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 593
    :goto_0
    return-object v1

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 591
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 593
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 533
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 538
    :goto_0
    return-object v1

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 536
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 538
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMessageCount(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 570
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 575
    :goto_0
    return v1

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 573
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 575
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public handlePinMmi(Ljava/lang/String;I)Z
    .locals 3
    .parameter "mmiCode"
    .parameter "slotId"

    .prologue
    .line 801
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 804
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 806
    :goto_0
    return v2

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasIccCard(I)Z
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 390
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->hasIccCard()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 396
    :goto_0
    return v1

    .line 391
    :catch_0
    move-exception v0

    .line 393
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 394
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 396
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isNetworkRoaming(I)Z
    .locals 2
    .parameter "slotId"

    .prologue
    .line 224
    const-string v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public listen(Landroid/content/Context;Landroid/telephony/PhoneStateListener;II)V
    .locals 7
    .parameter "context"
    .parameter "listener"
    .parameter "events"
    .parameter "slotId"

    .prologue
    .line 777
    const-string v5, "BaiduTelephonyManager"

    const-string v6, "listen"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 780
    .local v0, appContext:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 781
    move-object v3, v0

    .line 786
    .local v3, sContext:Landroid/content/Context;
    :goto_0
    const-string v5, "telephony.registry"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v4

    .line 789
    .local v4, sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 791
    .local v2, pkgForDebug:Ljava/lang/String;
    :goto_1
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 792
    .local v1, notifyNow:Ljava/lang/Boolean;
    iget-object v5, p2, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v4, v2, v5, p3, v6}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    .end local v1           #notifyNow:Ljava/lang/Boolean;
    :goto_3
    return-void

    .line 783
    .end local v2           #pkgForDebug:Ljava/lang/String;
    .end local v3           #sContext:Landroid/content/Context;
    .end local v4           #sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;
    :cond_0
    move-object v3, p1

    .restart local v3       #sContext:Landroid/content/Context;
    goto :goto_0

    .line 789
    .restart local v4       #sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;
    :cond_1
    const-string v2, "<unknown>"

    goto :goto_1

    .line 791
    .restart local v2       #pkgForDebug:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 795
    :catch_0
    move-exception v5

    goto :goto_3

    .line 793
    :catch_1
    move-exception v5

    goto :goto_3
.end method

.method public setScAddress(Ljava/lang/String;I)Z
    .locals 7
    .parameter "address"
    .parameter "slotId"

    .prologue
    const/4 v3, 0x0

    .line 650
    :try_start_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 653
    .local v2, encodedScAddress:Ljava/lang/String;
    const-string v4, "BaiduTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setScAddress encodedScAddress"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/android/internal/telephony/ITelephony;->setScAddress(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 655
    const/4 v3, 0x1

    .line 661
    .end local v2           #encodedScAddress:Ljava/lang/String;
    :goto_0
    return v3

    .line 656
    :catch_0
    move-exception v0

    .line 657
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 659
    .end local v0           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 660
    .local v1, e2:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
