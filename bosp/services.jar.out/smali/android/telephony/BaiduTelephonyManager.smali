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

.field private static defaultSimId:I

.field private static sInstance:Landroid/telephony/BaiduTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput v0, Landroid/telephony/BaiduTelephonyManager;->defaultSimId:I

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 777
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
    .line 338
    packed-switch p0, :pswitch_data_0

    .line 358
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 344
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 354
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 356
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 338
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

.method private getPhoneTypeFromNetworkType()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 180
    const-string v1, "ro.telephony.default_network"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 181
    .local v0, mode:I
    if-ne v0, v2, :cond_0

    .line 182
    const/4 v1, 0x0

    .line 183
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v1

    goto :goto_0
.end method

.method private getPhoneTypeFromProperty()I
    .locals 3

    .prologue
    .line 170
    const-string v1, "gsm.current.phone-type"

    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getPhoneTypeFromNetworkType()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 173
    .local v0, type:I
    return v0
.end method

.method private getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 626
    const-string v0, "BaiduTelephonyManager"

    const-string v1, "getSubscriberInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    if-nez p1, :cond_0

    .line 629
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    .line 631
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "iphonesubinfo2"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getCallState(I)I
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 691
    const-string v2, "BaiduTelephonyManager"

    const-string v3, "getCallState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getCallStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 699
    :goto_0
    return v1

    .line 694
    :catch_0
    move-exception v0

    .line 696
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 697
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 699
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    .line 104
    const-string v3, "BaiduTelephonyManager"

    const-string v4, "getCellLocation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getCellLocationGemini(I)Landroid/os/Bundle;

    move-result-object v0

    .line 107
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 111
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 110
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 111
    .local v1, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 579
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 584
    :goto_0
    return-object v1

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 582
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 584
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCurrentPhoneType(I)I
    .locals 4
    .parameter "slotId"

    .prologue
    .line 136
    const-string v2, "BaiduTelephonyManager"

    const-string v3, "getPhoneType"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 139
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 140
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneTypeGemini(I)I

    move-result v2

    .line 152
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 143
    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 145
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 148
    .local v0, ex:Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0

    .line 149
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 152
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0
.end method

.method public getDataActivity(I)I
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 728
    const-string v2, "BaiduTelephonyManager"

    const-string v3, "getDataActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDataActivityGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 736
    :goto_0
    return v1

    .line 731
    :catch_0
    move-exception v0

    .line 733
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 734
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 736
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataState(I)I
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 765
    const-string v2, "BaiduTelephonyManager"

    const-string v3, "getDataState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDataStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 772
    :goto_0
    return v1

    .line 768
    :catch_0
    move-exception v0

    .line 770
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 771
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 772
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 87
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 91
    :goto_0
    return-object v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 90
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 91
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 540
    const-string v2, "BaiduTelephonyManager"

    const-string v3, "getLine1Number"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 547
    :goto_0
    return-object v1

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 545
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 547
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNetworkCountryIso(I)Ljava/lang/String;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 242
    const-string v0, "BaiduTelephonyManager"

    const-string v1, "getNetworkCountryIso"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    if-nez p1, :cond_0

    const-string v0, "gsm.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gsm.operator.iso-country.2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 214
    const-string v0, "BaiduTelephonyManager"

    const-string v1, "getNetworkOperator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    if-nez p1, :cond_0

    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gsm.operator.numeric.2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 200
    const-string v0, "BaiduTelephonyManager"

    const-string v1, "getNetworkOperatorName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    if-nez p1, :cond_0

    const-string v0, "gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gsm.operator.alpha.2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkType(I)I
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    .line 304
    const-string v3, "BaiduTelephonyManager"

    const-string v4, "getNetworkType"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 307
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 308
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getNetworkTypeGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 318
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 313
    :catch_0
    move-exception v0

    .line 315
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 316
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 318
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 370
    invoke-virtual {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getNetworkType(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType(I)I
    .locals 1
    .parameter "slotId"

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    return v0
.end method

.method public getScAddress(I)Ljava/lang/String;
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    .line 657
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getScAddressGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 663
    :goto_0
    return-object v2

    .line 658
    :catch_0
    move-exception v0

    .line 659
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 661
    .end local v0           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 662
    .local v1, e2:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSimCountryIso(I)Ljava/lang/String;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 482
    const-string v0, "BaiduTelephonyManager"

    const-string v1, "getSimCountryIso"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    if-nez p1, :cond_0

    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gsm.sim.operator.iso-country.2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 456
    const-string v0, "BaiduTelephonyManager"

    const-string v1, "getSimOperator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    if-nez p1, :cond_0

    .line 458
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gsm.sim.operator.numeric.2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimOperatorName(I)Ljava/lang/String;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 472
    const-string v0, "BaiduTelephonyManager"

    const-string v1, "getSimOperatorName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    if-nez p1, :cond_0

    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gsm.sim.operator.alpha.2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 496
    const-string v2, "BaiduTelephonyManager"

    const-string v3, "getSimSerialNumber"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 503
    :goto_0
    return-object v1

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 501
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 503
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimState(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    .line 423
    const-string v1, "BaiduTelephonyManager"

    const-string v2, "getSimState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    if-nez p1, :cond_0

    const-string v1, "gsm.sim.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, prop:Ljava/lang/String;
    :goto_0
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    const/4 v1, 0x1

    .line 443
    :goto_1
    return v1

    .line 424
    .end local v0           #prop:Ljava/lang/String;
    :cond_0
    const-string v1, "gsm.sim.state.2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 430
    .restart local v0       #prop:Ljava/lang/String;
    :cond_1
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 431
    const/4 v1, 0x2

    goto :goto_1

    .line 433
    :cond_2
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 434
    const/4 v1, 0x3

    goto :goto_1

    .line 436
    :cond_3
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 437
    const/4 v1, 0x4

    goto :goto_1

    .line 439
    :cond_4
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 440
    const/4 v1, 0x5

    goto :goto_1

    .line 443
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 521
    const-string v2, "BaiduTelephonyManager"

    const-string v3, "getSubscriberId"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 528
    :goto_0
    return-object v1

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 526
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 528
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 614
    const-string v2, "BaiduTelephonyManager"

    const-string v3, "getVoiceMailAlphaTag"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 621
    :goto_0
    return-object v1

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 619
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 621
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 558
    const-string v2, "BaiduTelephonyManager"

    const-string v3, "getVoiceMailNumber"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 565
    :goto_0
    return-object v1

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 563
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 565
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMessageCount(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 597
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 602
    :goto_0
    return v1

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 600
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 602
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public handlePinMmi(Ljava/lang/String;I)Z
    .locals 4
    .parameter "mmiCode"
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    .line 841
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 843
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-nez p2, :cond_0

    .line 844
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/ITelephony;->handlePinMmiGemini(Ljava/lang/String;I)Z

    move-result v2

    .line 848
    :goto_0
    return v2

    .line 846
    :cond_0
    const/4 v3, 0x1

    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/ITelephony;->handlePinMmiGemini(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 847
    :catch_0
    move-exception v0

    .line 848
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public hasIccCard(I)Z
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 399
    const-string v2, "BaiduTelephonyManager"

    const-string v3, "hasIccCard"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->hasIccCardGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 407
    :goto_0
    return v1

    .line 402
    :catch_0
    move-exception v0

    .line 404
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 405
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 407
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isNetworkRoaming(I)Z
    .locals 2
    .parameter "slotId"

    .prologue
    .line 227
    const-string v0, "BaiduTelephonyManager"

    const-string v1, "isNetworkRoaming"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    if-nez p1, :cond_0

    const-string v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "true"

    const-string v1, "gsm.operator.isroaming.2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public listen(Landroid/content/Context;Landroid/telephony/PhoneStateListener;II)V
    .locals 8
    .parameter "context"
    .parameter "listener"
    .parameter "events"
    .parameter "slotId"

    .prologue
    .line 810
    const-string v6, "BaiduTelephonyManager"

    const-string v7, "listen"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 813
    .local v0, appContext:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 814
    move-object v5, v0

    .line 819
    .local v5, sContext:Landroid/content/Context;
    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 821
    .local v4, pkgForDebug:Ljava/lang/String;
    :goto_1
    const-string v6, "telephony.registry"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    .line 823
    .local v1, mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;
    const-string v6, "telephony.registry2"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v2

    .line 827
    .local v2, mRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 828
    .local v3, notifyNow:Ljava/lang/Boolean;
    if-nez p4, :cond_3

    .line 829
    invoke-virtual {p2}, Landroid/telephony/PhoneStateListener;->getCallback()Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v1, v4, v6, p3, v7}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 838
    .end local v3           #notifyNow:Ljava/lang/Boolean;
    :goto_3
    return-void

    .line 816
    .end local v1           #mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;
    .end local v2           #mRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;
    .end local v4           #pkgForDebug:Ljava/lang/String;
    .end local v5           #sContext:Landroid/content/Context;
    :cond_0
    move-object v5, p1

    .restart local v5       #sContext:Landroid/content/Context;
    goto :goto_0

    .line 819
    :cond_1
    const-string v4, "<unknown>"

    goto :goto_1

    .line 827
    .restart local v1       #mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;
    .restart local v2       #mRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;
    .restart local v4       #pkgForDebug:Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 831
    .restart local v3       #notifyNow:Ljava/lang/Boolean;
    :cond_3
    :try_start_1
    invoke-virtual {p2}, Landroid/telephony/PhoneStateListener;->getCallback()Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v2, v4, v6, p3, v7}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 833
    .end local v3           #notifyNow:Ljava/lang/Boolean;
    :catch_0
    move-exception v6

    goto :goto_3

    .line 835
    :catch_1
    move-exception v6

    goto :goto_3
.end method

.method public setScAddress(Ljava/lang/String;I)Z
    .locals 4
    .parameter "address"
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    .line 677
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setScAddressGemini(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 678
    const/4 v2, 0x1

    .line 684
    :goto_0
    return v2

    .line 679
    :catch_0
    move-exception v0

    .line 680
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 682
    .end local v0           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 683
    .local v1, e2:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
