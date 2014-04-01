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
    .line 57
    const/4 v0, 0x0

    sput v0, Landroid/telephony/BaiduTelephonyManager;->defaultSimId:I

    .line 64
    new-instance v0, Landroid/telephony/BaiduTelephonyManager;

    invoke-direct {v0}, Landroid/telephony/BaiduTelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/BaiduTelephonyManager;->sInstance:Landroid/telephony/BaiduTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static getDefault()Landroid/telephony/BaiduTelephonyManager;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Landroid/telephony/BaiduTelephonyManager;->sInstance:Landroid/telephony/BaiduTelephonyManager;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 776
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
    .line 337
    packed-switch p0, :pswitch_data_0

    .line 357
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 343
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 353
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 355
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 337
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

    .line 179
    const-string v1, "ro.telephony.default_network"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 180
    .local v0, mode:I
    if-ne v0, v2, :cond_0

    .line 181
    const/4 v1, 0x0

    .line 182
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
    .line 169
    const-string v1, "gsm.current.phone-type"

    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getPhoneTypeFromNetworkType()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 172
    .local v0, type:I
    return v0
.end method

.method private getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 625
    const-string v0, "BaiduTelephonyManager"

    const-string v1, "getSubscriberInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    if-nez p1, :cond_0

    .line 628
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    .line 630
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

    .line 690
    const-string v2, "BaiduTelephonyManager"

    const-string v3, "getCallState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getCallStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 698
    :goto_0
    return v1

    .line 693
    :catch_0
    move-exception v0

    .line 695
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 696
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 698
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    .line 103
    const-string v3, "BaiduTelephonyManager"

    const-string v4, "getCellLocation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getCellLocationGemini(I)Landroid/os/Bundle;

    move-result-object v0

    .line 106
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 110
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 109
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 110
    .local v1, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 578
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 583
    :goto_0
    return-object v1

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 581
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 583
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCurrentPhoneType(I)I
    .locals 4
    .parameter "slotId"

    .prologue
    .line 135
    const-string v2, "BaiduTelephonyManager"

    const-string v3, "getPhoneType"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 138
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 139
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneTypeGemini(I)I

    move-result v2

    .line 151
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 142
    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 144
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 147
    .local v0, ex:Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_0

    .line 148
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 151
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

    .line 727
    const-string v2, "BaiduTelephonyManager"

    const-string v3, "getDataActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDataActivityGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 735
    :goto_0
    return v1

    .line 730
    :catch_0
    move-exception v0

    .line 732
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 733
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 735
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataState(I)I
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 764
    const-string v2, "BaiduTelephonyManager"

    const-string v3, "getDataState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDataStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 771
    :goto_0
    return v1

    .line 767
    :catch_0
    move-exception v0

    .line 769
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 770
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 771
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 86
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 90
    :goto_0
    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 89
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 90
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 539
    const-string v2, "BaiduTelephonyManager"

    const-string v3, "getLine1Number"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 546
    :goto_0
    return-object v1

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 544
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 546
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNetworkCountryIso(I)Ljava/lang/String;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 241
    const-string v0, "BaiduTelephonyManager"

    const-string v1, "getNetworkCountryIso"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
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
    .line 213
    const-string v0, "BaiduTelephonyManager"

    const-string v1, "getNetworkOperator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
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
    .line 199
    const-string v0, "BaiduTelephonyManager"

    const-string v1, "getNetworkOperatorName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
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

    .line 303
    const-string v3, "BaiduTelephonyManager"

    const-string v4, "getNetworkType"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 306
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 307
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getNetworkTypeGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 317
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 312
    :catch_0
    move-exception v0

    .line 314
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 315
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 317
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 369
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
    .line 165
    invoke-virtual {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    return v0
.end method

.method public getScAddress(I)Ljava/lang/String;
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    .line 656
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getScAddressGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 662
    :goto_0
    return-object v2

    .line 657
    :catch_0
    move-exception v0

    .line 658
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 660
    .end local v0           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 661
    .local v1, e2:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSimCountryIso(I)Ljava/lang/String;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 481
    const-string v0, "BaiduTelephonyManager"

    const-string v1, "getSimCountryIso"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
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
    .line 455
    const-string v0, "BaiduTelephonyManager"

    const-string v1, "getSimOperator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    if-nez p1, :cond_0

    .line 457
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
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
    .line 471
    const-string v0, "BaiduTelephonyManager"

    const-string v1, "getSimOperatorName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
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

    .line 495
    const-string v2, "BaiduTelephonyManager"

    const-string v3, "getSimSerialNumber"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 502
    :goto_0
    return-object v1

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 500
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 502
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimState(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    .line 422
    const-string v1, "BaiduTelephonyManager"

    const-string v2, "getSimState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    if-nez p1, :cond_0

    const-string v1, "gsm.sim.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, prop:Ljava/lang/String;
    :goto_0
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    const/4 v1, 0x1

    .line 442
    :goto_1
    return v1

    .line 423
    .end local v0           #prop:Ljava/lang/String;
    :cond_0
    const-string v1, "gsm.sim.state.2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 429
    .restart local v0       #prop:Ljava/lang/String;
    :cond_1
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 430
    const/4 v1, 0x2

    goto :goto_1

    .line 432
    :cond_2
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 433
    const/4 v1, 0x3

    goto :goto_1

    .line 435
    :cond_3
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 436
    const/4 v1, 0x4

    goto :goto_1

    .line 438
    :cond_4
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 439
    const/4 v1, 0x5

    goto :goto_1

    .line 442
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 520
    const-string v2, "BaiduTelephonyManager"

    const-string v3, "getSubscriberId"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 527
    :goto_0
    return-object v1

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 525
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 527
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 613
    const-string v2, "BaiduTelephonyManager"

    const-string v3, "getVoiceMailAlphaTag"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 620
    :goto_0
    return-object v1

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 618
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 620
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 557
    const-string v2, "BaiduTelephonyManager"

    const-string v3, "getVoiceMailNumber"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/BaiduTelephonyManager;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 564
    :goto_0
    return-object v1

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 562
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 564
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMessageCount(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 596
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 601
    :goto_0
    return v1

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 599
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 601
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public handlePinMmi(Ljava/lang/String;I)Z
    .locals 4
    .parameter "mmiCode"
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    .line 840
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 842
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-nez p2, :cond_0

    .line 843
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/ITelephony;->handlePinMmiGemini(Ljava/lang/String;I)Z

    move-result v2

    .line 847
    :goto_0
    return v2

    .line 845
    :cond_0
    const/4 v3, 0x1

    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/ITelephony;->handlePinMmiGemini(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 846
    :catch_0
    move-exception v0

    .line 847
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public hasIccCard(I)Z
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 398
    const-string v2, "BaiduTelephonyManager"

    const-string v3, "hasIccCard"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->hasIccCardGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 406
    :goto_0
    return v1

    .line 401
    :catch_0
    move-exception v0

    .line 403
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 404
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 406
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isNetworkRoaming(I)Z
    .locals 2
    .parameter "slotId"

    .prologue
    .line 226
    const-string v0, "BaiduTelephonyManager"

    const-string v1, "isNetworkRoaming"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
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
    .line 809
    const-string v6, "BaiduTelephonyManager"

    const-string v7, "listen"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 812
    .local v0, appContext:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 813
    move-object v5, v0

    .line 818
    .local v5, sContext:Landroid/content/Context;
    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 820
    .local v4, pkgForDebug:Ljava/lang/String;
    :goto_1
    const-string v6, "telephony.registry"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    .line 822
    .local v1, mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;
    const-string v6, "telephony.registry2"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v2

    .line 826
    .local v2, mRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 827
    .local v3, notifyNow:Ljava/lang/Boolean;
    if-nez p4, :cond_3

    .line 828
    invoke-virtual {p2}, Landroid/telephony/PhoneStateListener;->getCallback()Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v1, v4, v6, p3, v7}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 837
    .end local v3           #notifyNow:Ljava/lang/Boolean;
    :goto_3
    return-void

    .line 815
    .end local v1           #mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;
    .end local v2           #mRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;
    .end local v4           #pkgForDebug:Ljava/lang/String;
    .end local v5           #sContext:Landroid/content/Context;
    :cond_0
    move-object v5, p1

    .restart local v5       #sContext:Landroid/content/Context;
    goto :goto_0

    .line 818
    :cond_1
    const-string v4, "<unknown>"

    goto :goto_1

    .line 826
    .restart local v1       #mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;
    .restart local v2       #mRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;
    .restart local v4       #pkgForDebug:Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 830
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

    .line 832
    .end local v3           #notifyNow:Ljava/lang/Boolean;
    :catch_0
    move-exception v6

    goto :goto_3

    .line 834
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

    .line 676
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setScAddressGemini(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 677
    const/4 v2, 0x1

    .line 683
    :goto_0
    return v2

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 681
    .end local v0           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 682
    .local v1, e2:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
