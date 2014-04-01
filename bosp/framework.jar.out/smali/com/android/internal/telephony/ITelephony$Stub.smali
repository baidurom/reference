.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final TRANSACTION_adjustModemRadioPower:I = 0x83

.field static final TRANSACTION_answerRingingCall:I = 0x6

.field static final TRANSACTION_answerRingingCallGemini:I = 0x37

.field static final TRANSACTION_aquire3GSwitchLock:I = 0x74

.field static final TRANSACTION_btSimapApduRequest:I = 0x62

.field static final TRANSACTION_btSimapConnectSIM:I = 0x60

.field static final TRANSACTION_btSimapDisconnectSIM:I = 0x61

.field static final TRANSACTION_btSimapPowerOffSIM:I = 0x65

.field static final TRANSACTION_btSimapPowerOnSIM:I = 0x64

.field static final TRANSACTION_btSimapResetSIM:I = 0x63

.field static final TRANSACTION_call:I = 0x2

.field static final TRANSACTION_callGemini:I = 0x33

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0xd

.field static final TRANSACTION_cancelMissedCallsNotificationGemini:I = 0x3d

.field static final TRANSACTION_cleanupApnTypeGemini:I = 0x7e

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_dialGemini:I = 0x32

.field static final TRANSACTION_disableApnType:I = 0x17

.field static final TRANSACTION_disableApnTypeGemini:I = 0x58

.field static final TRANSACTION_disableDataConnectivity:I = 0x19

.field static final TRANSACTION_disableDataConnectivityGemini:I = 0x59

.field static final TRANSACTION_disableLocationUpdates:I = 0x15

.field static final TRANSACTION_disableLocationUpdatesGemini:I = 0x49

.field static final TRANSACTION_enableApnType:I = 0x16

.field static final TRANSACTION_enableApnTypeGemini:I = 0x57

.field static final TRANSACTION_enableDataConnectivity:I = 0x18

.field static final TRANSACTION_enableDataConnectivityGemini:I = 0x56

.field static final TRANSACTION_enableLocationUpdates:I = 0x14

.field static final TRANSACTION_enableLocationUpdatesGemini:I = 0x48

.field static final TRANSACTION_endCall:I = 0x5

.field static final TRANSACTION_endCallGemini:I = 0x36

.field static final TRANSACTION_get3GCapabilitySIM:I = 0x72

.field static final TRANSACTION_getActivePhoneType:I = 0x20

.field static final TRANSACTION_getActivePhoneTypeGemini:I = 0x3f

.field static final TRANSACTION_getAdnStorageInfo:I = 0x7d

.field static final TRANSACTION_getCallState:I = 0x1d

.field static final TRANSACTION_getCallStateGemini:I = 0x3e

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x21

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x22

.field static final TRANSACTION_getCdmaEriText:I = 0x23

.field static final TRANSACTION_getCellLocation:I = 0x1b

.field static final TRANSACTION_getCellLocationGemini:I = 0x4a

.field static final TRANSACTION_getDataActivity:I = 0x1e

.field static final TRANSACTION_getDataActivityGemini:I = 0x5c

.field static final TRANSACTION_getDataState:I = 0x1f

.field static final TRANSACTION_getDataStateGemini:I = 0x5b

.field static final TRANSACTION_getGateway:I = 0x79

.field static final TRANSACTION_getGatewayGemini:I = 0x7c

.field static final TRANSACTION_getIccCardType:I = 0x2b

.field static final TRANSACTION_getIccCardTypeGemini:I = 0x44

.field static final TRANSACTION_getIccPinPukRetryTimes:I = 0x29

.field static final TRANSACTION_getInterfaceName:I = 0x77

.field static final TRANSACTION_getInterfaceNameGemini:I = 0x7a

.field static final TRANSACTION_getIpAddress:I = 0x78

.field static final TRANSACTION_getIpAddressGemini:I = 0x7b

.field static final TRANSACTION_getLteOnCdmaMode:I = 0x28

.field static final TRANSACTION_getMobileRevisionAndIMEI:I = 0x50

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x1c

.field static final TRANSACTION_getNeighboringCellInfoGemini:I = 0x4b

.field static final TRANSACTION_getNetworkType:I = 0x26

.field static final TRANSACTION_getNetworkTypeGemini:I = 0x53

.field static final TRANSACTION_getPendingMmiCodesGemini:I = 0x3c

.field static final TRANSACTION_getPreciseCallState:I = 0x2f

.field static final TRANSACTION_getSN:I = 0x51

.field static final TRANSACTION_getScAddressGemini:I = 0x6c

.field static final TRANSACTION_getServiceState:I = 0x68

.field static final TRANSACTION_getServiceStateGemini:I = 0x69

.field static final TRANSACTION_getSimIndicatorState:I = 0x66

.field static final TRANSACTION_getSimIndicatorStateGemini:I = 0x67

.field static final TRANSACTION_getSmsDefaultSim:I = 0x6e

.field static final TRANSACTION_getVoiceMessageCount:I = 0x25

.field static final TRANSACTION_getVoiceMessageCountGemini:I = 0x5d

.field static final TRANSACTION_handlePinMmi:I = 0x10

.field static final TRANSACTION_handlePinMmiGemini:I = 0x43

.field static final TRANSACTION_hasIccCard:I = 0x27

.field static final TRANSACTION_hasIccCardGemini:I = 0x54

.field static final TRANSACTION_is3GSwitchLocked:I = 0x76

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x1a

.field static final TRANSACTION_isDataConnectivityPossibleGemini:I = 0x5a

.field static final TRANSACTION_isFDNEnabled:I = 0x31

.field static final TRANSACTION_isFDNEnabledGemini:I = 0x5e

.field static final TRANSACTION_isIdle:I = 0xa

.field static final TRANSACTION_isIdleGemini:I = 0x3b

.field static final TRANSACTION_isOffhook:I = 0x8

.field static final TRANSACTION_isOffhookGemini:I = 0x39

.field static final TRANSACTION_isPhbReady:I = 0x6a

.field static final TRANSACTION_isPhbReadyGemini:I = 0x6b

.field static final TRANSACTION_isRadioOn:I = 0xb

.field static final TRANSACTION_isRadioOnGemini:I = 0x40

.field static final TRANSACTION_isRejectAllSIPCall:I = 0x71

.field static final TRANSACTION_isRejectAllVideoCall:I = 0x70

.field static final TRANSACTION_isRejectAllVoiceCall:I = 0x6f

.field static final TRANSACTION_isRinging:I = 0x9

.field static final TRANSACTION_isRingingGemini:I = 0x3a

.field static final TRANSACTION_isSimInsert:I = 0x4c

.field static final TRANSACTION_isSimPinEnabled:I = 0xc

.field static final TRANSACTION_isTestIccCard:I = 0x30

.field static final TRANSACTION_isTestIccCardGemini:I = 0x55

.field static final TRANSACTION_isVTIdle:I = 0x5f

.field static final TRANSACTION_isVoiceIdle:I = 0x2a

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x24

.field static final TRANSACTION_registerForSimModeChange:I = 0x7f

.field static final TRANSACTION_release3GSwitchLock:I = 0x75

.field static final TRANSACTION_set3GCapabilitySIM:I = 0x73

.field static final TRANSACTION_setDataRoamingEnabledGemini:I = 0x81

.field static final TRANSACTION_setDefaultPhone:I = 0x52

.field static final TRANSACTION_setGprsConnType:I = 0x4d

.field static final TRANSACTION_setGprsTransferType:I = 0x4e

.field static final TRANSACTION_setGprsTransferTypeGemini:I = 0x4f

.field static final TRANSACTION_setRadio:I = 0x12

.field static final TRANSACTION_setRadioOff:I = 0x2e

.field static final TRANSACTION_setRoamingIndicatorNeddedProperty:I = 0x82

.field static final TRANSACTION_setScAddressGemini:I = 0x6d

.field static final TRANSACTION_showCallScreen:I = 0x3

.field static final TRANSACTION_showCallScreenGemini:I = 0x34

.field static final TRANSACTION_showCallScreenWithDialpad:I = 0x4

.field static final TRANSACTION_showCallScreenWithDialpadGemini:I = 0x35

.field static final TRANSACTION_silenceRinger:I = 0x7

.field static final TRANSACTION_silenceRingerGemini:I = 0x38

.field static final TRANSACTION_simAuth:I = 0x2c

.field static final TRANSACTION_simAuthGemini:I = 0x45

.field static final TRANSACTION_supplyPin:I = 0xe

.field static final TRANSACTION_supplyPinGemini:I = 0x41

.field static final TRANSACTION_supplyPuk:I = 0xf

.field static final TRANSACTION_supplyPukGemini:I = 0x42

.field static final TRANSACTION_toggleRadioOnOff:I = 0x11

.field static final TRANSACTION_uSimAuth:I = 0x2d

.field static final TRANSACTION_uSimAuthGemini:I = 0x46

.field static final TRANSACTION_unregisterForSimModeChange:I = 0x80

.field static final TRANSACTION_updateMobileDataApp:I = 0x84

.field static final TRANSACTION_updateServiceLocation:I = 0x13

.field static final TRANSACTION_updateServiceLocationGemini:I = 0x47


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    .locals 2
    .parameter "obj"

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_1

    .line 36
    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    goto :goto_0

    .line 38
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 42
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 46
    sparse-switch p1, :sswitch_data_0

    .line 1361
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 50
    :sswitch_0
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :sswitch_1
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 64
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 73
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_3
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreen()Z

    move-result v3

    .line 75
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v3, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 81
    .end local v3           #_result:Z
    :sswitch_4
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    move v0, v6

    .line 84
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreenWithDialpad(Z)Z

    move-result v3

    .line 85
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v3, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_2
    move v0, v5

    .line 83
    goto :goto_1

    .line 91
    :sswitch_5
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCall()Z

    move-result v3

    .line 93
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v3, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 99
    .end local v3           #_result:Z
    :sswitch_6
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCall()V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 106
    :sswitch_7
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRinger()V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 113
    :sswitch_8
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhook()Z

    move-result v3

    .line 115
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v3, :cond_4

    move v5, v6

    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 121
    .end local v3           #_result:Z
    :sswitch_9
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRinging()Z

    move-result v3

    .line 123
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v3, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 129
    .end local v3           #_result:Z
    :sswitch_a
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdle()Z

    move-result v3

    .line 131
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v3, :cond_6

    move v5, v6

    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 137
    .end local v3           #_result:Z
    :sswitch_b
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn()Z

    move-result v3

    .line 139
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    if-eqz v3, :cond_7

    move v5, v6

    :cond_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 145
    .end local v3           #_result:Z
    :sswitch_c
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimPinEnabled()Z

    move-result v3

    .line 147
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v3, :cond_8

    move v5, v6

    :cond_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 153
    .end local v3           #_result:Z
    :sswitch_d
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->cancelMissedCallsNotification()V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 160
    :sswitch_e
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPin(Ljava/lang/String;)Z

    move-result v3

    .line 164
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v3, :cond_9

    move v5, v6

    :cond_9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 170
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_f
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 176
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v3, :cond_a

    move v5, v6

    :cond_a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 182
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_10
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v3

    .line 186
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v3, :cond_b

    move v5, v6

    :cond_b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 192
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_11
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 199
    :sswitch_12
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_d

    move v0, v6

    .line 202
    .local v0, _arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result v3

    .line 203
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    if-eqz v3, :cond_c

    move v5, v6

    :cond_c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_d
    move v0, v5

    .line 201
    goto :goto_2

    .line 209
    :sswitch_13
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 216
    :sswitch_14
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 223
    :sswitch_15
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 230
    :sswitch_16
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableApnType(Ljava/lang/String;)I

    move-result v3

    .line 234
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 240
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:I
    :sswitch_17
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 243
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableApnType(Ljava/lang/String;)I

    move-result v3

    .line 244
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 250
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:I
    :sswitch_18
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity()Z

    move-result v3

    .line 252
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    if-eqz v3, :cond_e

    move v5, v6

    :cond_e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 258
    .end local v3           #_result:Z
    :sswitch_19
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity()Z

    move-result v3

    .line 260
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    if-eqz v3, :cond_f

    move v5, v6

    :cond_f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 266
    .end local v3           #_result:Z
    :sswitch_1a
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible()Z

    move-result v3

    .line 268
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    if-eqz v3, :cond_10

    move v5, v6

    :cond_10
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 274
    .end local v3           #_result:Z
    :sswitch_1b
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation()Landroid/os/Bundle;

    move-result-object v3

    .line 276
    .local v3, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    if-eqz v3, :cond_11

    .line 278
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    invoke-virtual {v3, p3, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 282
    :cond_11
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 288
    .end local v3           #_result:Landroid/os/Bundle;
    :sswitch_1c
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v4

    .line 290
    .local v4, _result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 296
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_1d
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result v3

    .line 298
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 304
    .end local v3           #_result:I
    :sswitch_1e
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result v3

    .line 306
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 312
    .end local v3           #_result:I
    :sswitch_1f
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result v3

    .line 314
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 320
    .end local v3           #_result:I
    :sswitch_20
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    move-result v3

    .line 322
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 328
    .end local v3           #_result:I
    :sswitch_21
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex()I

    move-result v3

    .line 330
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 336
    .end local v3           #_result:I
    :sswitch_22
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode()I

    move-result v3

    .line 338
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 344
    .end local v3           #_result:I
    :sswitch_23
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText()Ljava/lang/String;

    move-result-object v3

    .line 346
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 352
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_24
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needsOtaServiceProvisioning()Z

    move-result v3

    .line 354
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    if-eqz v3, :cond_12

    move v5, v6

    :cond_12
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 360
    .end local v3           #_result:Z
    :sswitch_25
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCount()I

    move-result v3

    .line 362
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 368
    .end local v3           #_result:I
    :sswitch_26
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkType()I

    move-result v3

    .line 370
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 376
    .end local v3           #_result:I
    :sswitch_27
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result v3

    .line 378
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    if-eqz v3, :cond_13

    move v5, v6

    :cond_13
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 384
    .end local v3           #_result:Z
    :sswitch_28
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaMode()I

    move-result v3

    .line 386
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 392
    .end local v3           #_result:I
    :sswitch_29
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccPinPukRetryTimes()I

    move-result v3

    .line 394
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 400
    .end local v3           #_result:I
    :sswitch_2a
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoiceIdle()Z

    move-result v3

    .line 402
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    if-eqz v3, :cond_14

    move v5, v6

    :cond_14
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 408
    .end local v3           #_result:Z
    :sswitch_2b
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccCardType()Ljava/lang/String;

    move-result-object v3

    .line 410
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 416
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_2c
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 419
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->simAuth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 420
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 426
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_2d
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 430
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 431
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->uSimAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 432
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 438
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_2e
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioOff()Z

    move-result v3

    .line 440
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    if-eqz v3, :cond_15

    move v5, v6

    :cond_15
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 446
    .end local v3           #_result:Z
    :sswitch_2f
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPreciseCallState()I

    move-result v3

    .line 448
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 454
    .end local v3           #_result:I
    :sswitch_30
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isTestIccCard()Z

    move-result v3

    .line 456
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    if-eqz v3, :cond_16

    move v5, v6

    :cond_16
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 462
    .end local v3           #_result:Z
    :sswitch_31
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isFDNEnabled()Z

    move-result v3

    .line 464
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    if-eqz v3, :cond_17

    move v5, v6

    :cond_17
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 470
    .end local v3           #_result:Z
    :sswitch_32
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 474
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 475
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->dialGemini(Ljava/lang/String;I)V

    .line 476
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 481
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    :sswitch_33
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 485
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 486
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->callGemini(Ljava/lang/String;I)V

    .line 487
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 492
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    :sswitch_34
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 495
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreenGemini(I)Z

    move-result v3

    .line 496
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    if-eqz v3, :cond_18

    move v5, v6

    :cond_18
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 502
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_35
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1a

    move v0, v6

    .line 506
    .local v0, _arg0:Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 507
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreenWithDialpadGemini(ZI)Z

    move-result v3

    .line 508
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    if-eqz v3, :cond_19

    move v5, v6

    :cond_19
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:I
    .end local v3           #_result:Z
    :cond_1a
    move v0, v5

    .line 504
    goto :goto_3

    .line 514
    :sswitch_36
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 517
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCallGemini(I)Z

    move-result v3

    .line 518
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    if-eqz v3, :cond_1b

    move v5, v6

    :cond_1b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 524
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_37
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 527
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCallGemini(I)V

    .line 528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 533
    .end local v0           #_arg0:I
    :sswitch_38
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 536
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRingerGemini(I)V

    .line 537
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 542
    .end local v0           #_arg0:I
    :sswitch_39
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 545
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhookGemini(I)Z

    move-result v3

    .line 546
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    if-eqz v3, :cond_1c

    move v5, v6

    :cond_1c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 552
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_3a
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 555
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRingingGemini(I)Z

    move-result v3

    .line 556
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    if-eqz v3, :cond_1d

    move v5, v6

    :cond_1d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 562
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_3b
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 565
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdleGemini(I)Z

    move-result v3

    .line 566
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    if-eqz v3, :cond_1e

    move v5, v6

    :cond_1e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 572
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_3c
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 575
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPendingMmiCodesGemini(I)I

    move-result v3

    .line 576
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 582
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_3d
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 585
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->cancelMissedCallsNotificationGemini(I)V

    .line 586
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 591
    .end local v0           #_arg0:I
    :sswitch_3e
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 594
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallStateGemini(I)I

    move-result v3

    .line 595
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 601
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_3f
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 604
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneTypeGemini(I)I

    move-result v3

    .line 605
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 611
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_40
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 614
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnGemini(I)Z

    move-result v3

    .line 615
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    if-eqz v3, :cond_1f

    move v5, v6

    :cond_1f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 621
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_41
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 626
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinGemini(Ljava/lang/String;I)Z

    move-result v3

    .line 627
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    if-eqz v3, :cond_20

    move v5, v6

    :cond_20
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 633
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:Z
    :sswitch_42
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 637
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 639
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 640
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukGemini(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 641
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    if-eqz v3, :cond_21

    move v5, v6

    :cond_21
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 647
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:I
    .end local v3           #_result:Z
    :sswitch_43
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 651
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 652
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmiGemini(Ljava/lang/String;I)Z

    move-result v3

    .line 653
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    if-eqz v3, :cond_22

    move v5, v6

    :cond_22
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 659
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:Z
    :sswitch_44
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 662
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccCardTypeGemini(I)Ljava/lang/String;

    move-result-object v3

    .line 663
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 669
    .end local v0           #_arg0:I
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_45
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 674
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->simAuthGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 675
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 681
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_46
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 685
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 687
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 688
    .restart local v2       #_arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->uSimAuthGemini(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 689
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 695
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:I
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_47
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 698
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocationGemini(I)V

    .line 699
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 704
    .end local v0           #_arg0:I
    :sswitch_48
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 707
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdatesGemini(I)V

    .line 708
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 713
    .end local v0           #_arg0:I
    :sswitch_49
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 716
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdatesGemini(I)V

    .line 717
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 722
    .end local v0           #_arg0:I
    :sswitch_4a
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 725
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocationGemini(I)Landroid/os/Bundle;

    move-result-object v3

    .line 726
    .local v3, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    if-eqz v3, :cond_23

    .line 728
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 729
    invoke-virtual {v3, p3, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 732
    :cond_23
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 738
    .end local v0           #_arg0:I
    .end local v3           #_result:Landroid/os/Bundle;
    :sswitch_4b
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 741
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfoGemini(I)Ljava/util/List;

    move-result-object v4

    .line 742
    .restart local v4       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 748
    .end local v0           #_arg0:I
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_4c
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 751
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimInsert(I)Z

    move-result v3

    .line 752
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    if-eqz v3, :cond_24

    move v5, v6

    :cond_24
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 758
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_4d
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 760
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 762
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 763
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setGprsConnType(II)V

    .line 764
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 769
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_4e
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 772
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->setGprsTransferType(I)V

    .line 773
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 778
    .end local v0           #_arg0:I
    :sswitch_4f
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 782
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 783
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setGprsTransferTypeGemini(II)V

    .line 784
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 789
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_50
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 793
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_25

    .line 794
    sget-object v5, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 799
    .local v1, _arg1:Landroid/os/Message;
    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getMobileRevisionAndIMEI(ILandroid/os/Message;)V

    .line 800
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 797
    .end local v1           #_arg1:Landroid/os/Message;
    :cond_25
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/Message;
    goto :goto_4

    .line 805
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/os/Message;
    :sswitch_51
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 806
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSN()Ljava/lang/String;

    move-result-object v3

    .line 807
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 813
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_52
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 816
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->setDefaultPhone(I)V

    .line 817
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 822
    .end local v0           #_arg0:I
    :sswitch_53
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 825
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkTypeGemini(I)I

    move-result v3

    .line 826
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 832
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_54
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 835
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCardGemini(I)Z

    move-result v3

    .line 836
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    if-eqz v3, :cond_26

    move v5, v6

    :cond_26
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 842
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_55
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 844
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 845
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->isTestIccCardGemini(I)Z

    move-result v3

    .line 846
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    if-eqz v3, :cond_27

    move v5, v6

    :cond_27
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 852
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_56
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 854
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 855
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivityGemini(I)I

    move-result v3

    .line 856
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 862
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_57
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 864
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 866
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 867
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->enableApnTypeGemini(Ljava/lang/String;I)I

    move-result v3

    .line 868
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 874
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:I
    :sswitch_58
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 876
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 878
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 879
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->disableApnTypeGemini(Ljava/lang/String;I)I

    move-result v3

    .line 880
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 881
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 886
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:I
    :sswitch_59
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 889
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivityGemini(I)I

    move-result v3

    .line 890
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 896
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_5a
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 898
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 899
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossibleGemini(I)Z

    move-result v3

    .line 900
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    if-eqz v3, :cond_28

    move v5, v6

    :cond_28
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 906
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_5b
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 909
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataStateGemini(I)I

    move-result v3

    .line 910
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 911
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 916
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_5c
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 918
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 919
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivityGemini(I)I

    move-result v3

    .line 920
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 921
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 926
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_5d
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 928
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 929
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCountGemini(I)I

    move-result v3

    .line 930
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 931
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 936
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_5e
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 938
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 939
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->isFDNEnabledGemini(I)Z

    move-result v3

    .line 940
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 941
    if-eqz v3, :cond_29

    move v5, v6

    :cond_29
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 946
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_5f
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 947
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVTIdle()Z

    move-result v3

    .line 948
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 949
    if-eqz v3, :cond_2a

    move v5, v6

    :cond_2a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 954
    .end local v3           #_result:Z
    :sswitch_60
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 956
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 958
    .restart local v0       #_arg0:I
    new-instance v1, Landroid/telephony/BtSimapOperResponse;

    invoke-direct {v1}, Landroid/telephony/BtSimapOperResponse;-><init>()V

    .line 959
    .local v1, _arg1:Landroid/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapConnectSIM(ILandroid/telephony/BtSimapOperResponse;)I

    move-result v3

    .line 960
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 962
    if-eqz v1, :cond_2b

    .line 963
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 964
    invoke-virtual {v1, p3, v6}, Landroid/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 967
    :cond_2b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 973
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/telephony/BtSimapOperResponse;
    .end local v3           #_result:I
    :sswitch_61
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 974
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapDisconnectSIM()I

    move-result v3

    .line 975
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 981
    .end local v3           #_result:I
    :sswitch_62
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 983
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 985
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 987
    .local v1, _arg1:Ljava/lang/String;
    new-instance v2, Landroid/telephony/BtSimapOperResponse;

    invoke-direct {v2}, Landroid/telephony/BtSimapOperResponse;-><init>()V

    .line 988
    .local v2, _arg2:Landroid/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapApduRequest(ILjava/lang/String;Landroid/telephony/BtSimapOperResponse;)I

    move-result v3

    .line 989
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 990
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 991
    if-eqz v2, :cond_2c

    .line 992
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 993
    invoke-virtual {v2, p3, v6}, Landroid/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 996
    :cond_2c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1002
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Landroid/telephony/BtSimapOperResponse;
    .end local v3           #_result:I
    :sswitch_63
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1006
    .restart local v0       #_arg0:I
    new-instance v1, Landroid/telephony/BtSimapOperResponse;

    invoke-direct {v1}, Landroid/telephony/BtSimapOperResponse;-><init>()V

    .line 1007
    .local v1, _arg1:Landroid/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapResetSIM(ILandroid/telephony/BtSimapOperResponse;)I

    move-result v3

    .line 1008
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1009
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1010
    if-eqz v1, :cond_2d

    .line 1011
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1012
    invoke-virtual {v1, p3, v6}, Landroid/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 1015
    :cond_2d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1021
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/telephony/BtSimapOperResponse;
    .end local v3           #_result:I
    :sswitch_64
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1023
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1025
    .restart local v0       #_arg0:I
    new-instance v1, Landroid/telephony/BtSimapOperResponse;

    invoke-direct {v1}, Landroid/telephony/BtSimapOperResponse;-><init>()V

    .line 1026
    .restart local v1       #_arg1:Landroid/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapPowerOnSIM(ILandroid/telephony/BtSimapOperResponse;)I

    move-result v3

    .line 1027
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1028
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1029
    if-eqz v1, :cond_2e

    .line 1030
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1031
    invoke-virtual {v1, p3, v6}, Landroid/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 1034
    :cond_2e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1040
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/telephony/BtSimapOperResponse;
    .end local v3           #_result:I
    :sswitch_65
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapPowerOffSIM()I

    move-result v3

    .line 1042
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1048
    .end local v3           #_result:I
    :sswitch_66
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimIndicatorState()I

    move-result v3

    .line 1050
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1051
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1056
    .end local v3           #_result:I
    :sswitch_67
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1059
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimIndicatorStateGemini(I)I

    move-result v3

    .line 1060
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1066
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_68
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceState()Landroid/os/Bundle;

    move-result-object v3

    .line 1068
    .local v3, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1069
    if-eqz v3, :cond_2f

    .line 1070
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1071
    invoke-virtual {v3, p3, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 1074
    :cond_2f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1080
    .end local v3           #_result:Landroid/os/Bundle;
    :sswitch_69
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1083
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceStateGemini(I)Landroid/os/Bundle;

    move-result-object v3

    .line 1084
    .restart local v3       #_result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1085
    if-eqz v3, :cond_30

    .line 1086
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1087
    invoke-virtual {v3, p3, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 1090
    :cond_30
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1096
    .end local v0           #_arg0:I
    .end local v3           #_result:Landroid/os/Bundle;
    :sswitch_6a
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1097
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isPhbReady()Z

    move-result v3

    .line 1098
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    if-eqz v3, :cond_31

    move v5, v6

    :cond_31
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1104
    .end local v3           #_result:Z
    :sswitch_6b
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1107
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->isPhbReadyGemini(I)Z

    move-result v3

    .line 1108
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1109
    if-eqz v3, :cond_32

    move v5, v6

    :cond_32
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1114
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_6c
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1117
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getScAddressGemini(I)Ljava/lang/String;

    move-result-object v3

    .line 1118
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1124
    .end local v0           #_arg0:I
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_6d
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1128
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1129
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setScAddressGemini(Ljava/lang/String;I)V

    .line 1130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1135
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    :sswitch_6e
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1136
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSmsDefaultSim()I

    move-result v3

    .line 1137
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1138
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1143
    .end local v3           #_result:I
    :sswitch_6f
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1144
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRejectAllVoiceCall()Z

    move-result v3

    .line 1145
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    if-eqz v3, :cond_33

    move v5, v6

    :cond_33
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1151
    .end local v3           #_result:Z
    :sswitch_70
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRejectAllVideoCall()Z

    move-result v3

    .line 1153
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    if-eqz v3, :cond_34

    move v5, v6

    :cond_34
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1159
    .end local v3           #_result:Z
    :sswitch_71
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1160
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRejectAllSIPCall()Z

    move-result v3

    .line 1161
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1162
    if-eqz v3, :cond_35

    move v5, v6

    :cond_35
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1167
    .end local v3           #_result:Z
    :sswitch_72
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1168
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->get3GCapabilitySIM()I

    move-result v3

    .line 1169
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1170
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1175
    .end local v3           #_result:I
    :sswitch_73
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1178
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->set3GCapabilitySIM(I)Z

    move-result v3

    .line 1179
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    if-eqz v3, :cond_36

    move v5, v6

    :cond_36
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1185
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_74
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->aquire3GSwitchLock()I

    move-result v3

    .line 1187
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1188
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1193
    .end local v3           #_result:I
    :sswitch_75
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1196
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->release3GSwitchLock(I)Z

    move-result v3

    .line 1197
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1198
    if-eqz v3, :cond_37

    move v5, v6

    :cond_37
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1203
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_76
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1204
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->is3GSwitchLocked()Z

    move-result v3

    .line 1205
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1206
    if-eqz v3, :cond_38

    move v5, v6

    :cond_38
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1211
    .end local v3           #_result:Z
    :sswitch_77
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1214
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getInterfaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1215
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1216
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1221
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_78
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1224
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1225
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1226
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1231
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_79
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1233
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1234
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getGateway(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1235
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1236
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1241
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_7a
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1243
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1245
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1246
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getInterfaceNameGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1247
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1248
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1253
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_7b
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1255
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1257
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1258
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getIpAddressGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1259
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1260
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1265
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_7c
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1269
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1270
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getGatewayGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1271
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1272
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1277
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_7d
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1280
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAdnStorageInfo(I)[I

    move-result-object v3

    .line 1281
    .local v3, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1282
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 1287
    .end local v0           #_arg0:I
    .end local v3           #_result:[I
    :sswitch_7e
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1289
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1291
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1292
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->cleanupApnTypeGemini(Ljava/lang/String;I)I

    move-result v3

    .line 1293
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1294
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1299
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:I
    :sswitch_7f
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1301
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1303
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1304
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForSimModeChange(Landroid/os/IBinder;I)V

    .line 1305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1310
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:I
    :sswitch_80
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1312
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1313
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForSimModeChange(Landroid/os/IBinder;)V

    .line 1314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1319
    .end local v0           #_arg0:Landroid/os/IBinder;
    :sswitch_81
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_39

    move v0, v6

    .line 1323
    .local v0, _arg0:Z
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1324
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataRoamingEnabledGemini(ZI)V

    .line 1325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:I
    :cond_39
    move v0, v5

    .line 1321
    goto :goto_5

    .line 1330
    :sswitch_82
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3a

    move v0, v6

    .line 1334
    .restart local v0       #_arg0:Z
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3b

    move v1, v6

    .line 1335
    .local v1, _arg1:Z
    :goto_7
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRoamingIndicatorNeddedProperty(ZZ)V

    .line 1336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Z
    :cond_3a
    move v0, v5

    .line 1332
    goto :goto_6

    .restart local v0       #_arg0:Z
    :cond_3b
    move v1, v5

    .line 1334
    goto :goto_7

    .line 1341
    .end local v0           #_arg0:Z
    :sswitch_83
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1345
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1346
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->adjustModemRadioPower(II)Z

    move-result v3

    .line 1347
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1348
    if-eqz v3, :cond_3c

    move v5, v6

    :cond_3c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1353
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v3           #_result:Z
    :sswitch_84
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1355
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1356
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateMobileDataApp(I)V

    .line 1357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 46
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
