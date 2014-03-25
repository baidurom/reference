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

.field static final TRANSACTION_adjustModemRadioPower:I = 0xa0

.field static final TRANSACTION_adjustModemRadioPowerByBand:I = 0xa1

.field static final TRANSACTION_answerRingingCall:I = 0x6

.field static final TRANSACTION_answerRingingCallGemini:I = 0x48

.field static final TRANSACTION_aquire3GSwitchLock:I = 0x8d

.field static final TRANSACTION_btSimapApduRequest:I = 0x7e

.field static final TRANSACTION_btSimapConnectSIM:I = 0x7c

.field static final TRANSACTION_btSimapDisconnectSIM:I = 0x7d

.field static final TRANSACTION_btSimapPowerOffSIM:I = 0x81

.field static final TRANSACTION_btSimapPowerOnSIM:I = 0x80

.field static final TRANSACTION_btSimapResetSIM:I = 0x7f

.field static final TRANSACTION_call:I = 0x2

.field static final TRANSACTION_callGemini:I = 0x44

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0xd

.field static final TRANSACTION_cancelMissedCallsNotificationGemini:I = 0x4e

.field static final TRANSACTION_cleanupApnTypeGemini:I = 0x9a

.field static final TRANSACTION_closeIccLogicalChannel:I = 0x2f

.field static final TRANSACTION_closeIccLogicalChannelGemini:I = 0x30

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_dialGemini:I = 0x43

.field static final TRANSACTION_disableApnType:I = 0x17

.field static final TRANSACTION_disableApnTypeGemini:I = 0x74

.field static final TRANSACTION_disableDataConnectivity:I = 0x19

.field static final TRANSACTION_disableDataConnectivityGemini:I = 0x75

.field static final TRANSACTION_disableLocationUpdates:I = 0x15

.field static final TRANSACTION_disableLocationUpdatesGemini:I = 0x5a

.field static final TRANSACTION_enableApnType:I = 0x16

.field static final TRANSACTION_enableApnTypeGemini:I = 0x73

.field static final TRANSACTION_enableDataConnectivity:I = 0x18

.field static final TRANSACTION_enableDataConnectivityGemini:I = 0x72

.field static final TRANSACTION_enableLocationUpdates:I = 0x14

.field static final TRANSACTION_enableLocationUpdatesGemini:I = 0x59

.field static final TRANSACTION_endCall:I = 0x5

.field static final TRANSACTION_endCallGemini:I = 0x47

.field static final TRANSACTION_get3GCapabilitySIM:I = 0x8b

.field static final TRANSACTION_get3GSwitchAllowed3GSlots:I = 0x92

.field static final TRANSACTION_getActivePhoneType:I = 0x20

.field static final TRANSACTION_getActivePhoneTypeGemini:I = 0x50

.field static final TRANSACTION_getAdnStorageInfo:I = 0x99

.field static final TRANSACTION_getAllCellInfo:I = 0x3a

.field static final TRANSACTION_getCallState:I = 0x1d

.field static final TRANSACTION_getCallStateGemini:I = 0x4f

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x21

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x22

.field static final TRANSACTION_getCdmaEriText:I = 0x23

.field static final TRANSACTION_getCellLocation:I = 0x1b

.field static final TRANSACTION_getCellLocationGemini:I = 0x5b

.field static final TRANSACTION_getDataActivity:I = 0x1e

.field static final TRANSACTION_getDataActivityGemini:I = 0x78

.field static final TRANSACTION_getDataState:I = 0x1f

.field static final TRANSACTION_getDataStateGemini:I = 0x77

.field static final TRANSACTION_getGateway:I = 0x95

.field static final TRANSACTION_getGatewayGemini:I = 0x98

.field static final TRANSACTION_getIccATR:I = 0x36

.field static final TRANSACTION_getIccATRGemini:I = 0x37

.field static final TRANSACTION_getIccCardType:I = 0x3c

.field static final TRANSACTION_getIccCardTypeGemini:I = 0x55

.field static final TRANSACTION_getInterfaceName:I = 0x93

.field static final TRANSACTION_getInterfaceNameGemini:I = 0x96

.field static final TRANSACTION_getIpAddress:I = 0x94

.field static final TRANSACTION_getIpAddressGemini:I = 0x97

.field static final TRANSACTION_getLastError:I = 0x31

.field static final TRANSACTION_getLastErrorGemini:I = 0x32

.field static final TRANSACTION_getLine1AlphaTag:I = 0x6e

.field static final TRANSACTION_getLine1Number:I = 0x6d

.field static final TRANSACTION_getLteOnCdmaMode:I = 0x28

.field static final TRANSACTION_getMissedCallCount:I = 0x9f

.field static final TRANSACTION_getMobileRevisionAndIMEI:I = 0x61

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x1c

.field static final TRANSACTION_getNeighboringCellInfoGemini:I = 0x5c

.field static final TRANSACTION_getNetworkCountryIsoGemini:I = 0xad

.field static final TRANSACTION_getNetworkOperatorGemini:I = 0xab

.field static final TRANSACTION_getNetworkOperatorNameGemini:I = 0xaa

.field static final TRANSACTION_getNetworkType:I = 0x26

.field static final TRANSACTION_getNetworkTypeGemini:I = 0x64

.field static final TRANSACTION_getPendingMmiCodesGemini:I = 0x4d

.field static final TRANSACTION_getPreciseCallState:I = 0x40

.field static final TRANSACTION_getSN:I = 0x62

.field static final TRANSACTION_getScAddressGemini:I = 0x88

.field static final TRANSACTION_getServiceState:I = 0x84

.field static final TRANSACTION_getServiceStateGemini:I = 0x85

.field static final TRANSACTION_getSimCountryIso:I = 0x69

.field static final TRANSACTION_getSimIndicatorState:I = 0x82

.field static final TRANSACTION_getSimIndicatorStateGemini:I = 0x83

.field static final TRANSACTION_getSimOperator:I = 0x67

.field static final TRANSACTION_getSimOperatorName:I = 0x68

.field static final TRANSACTION_getSimSerialNumber:I = 0x6b

.field static final TRANSACTION_getSimState:I = 0x66

.field static final TRANSACTION_getSmsDefaultSim:I = 0x8a

.field static final TRANSACTION_getSpNameInEfSpn:I = 0xa2

.field static final TRANSACTION_getSpNameInEfSpnGemini:I = 0xa3

.field static final TRANSACTION_getSubscriberId:I = 0x6c

.field static final TRANSACTION_getSubscriberInfo:I = 0x6a

.field static final TRANSACTION_getVoiceMailAlphaTag:I = 0x70

.field static final TRANSACTION_getVoiceMailNumber:I = 0x6f

.field static final TRANSACTION_getVoiceMessageCount:I = 0x25

.field static final TRANSACTION_getVoiceMessageCountGemini:I = 0x79

.field static final TRANSACTION_handlePinMmi:I = 0x10

.field static final TRANSACTION_handlePinMmiGemini:I = 0x54

.field static final TRANSACTION_hasIccCard:I = 0x27

.field static final TRANSACTION_hasIccCardGemini:I = 0x65

.field static final TRANSACTION_is3GSwitchLocked:I = 0x8f

.field static final TRANSACTION_is3GSwitchManualChange3GAllowed:I = 0x91

.field static final TRANSACTION_is3GSwitchManualEnabled:I = 0x90

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x1a

.field static final TRANSACTION_isDataConnectivityPossibleGemini:I = 0x76

.field static final TRANSACTION_isFDNEnabled:I = 0x42

.field static final TRANSACTION_isFDNEnabledGemini:I = 0x7a

.field static final TRANSACTION_isIccCardProviderAsMvno:I = 0xa8

.field static final TRANSACTION_isIccCardProviderAsMvnoGemini:I = 0xa9

.field static final TRANSACTION_isIdle:I = 0xa

.field static final TRANSACTION_isIdleGemini:I = 0x4c

.field static final TRANSACTION_isNetworkRoamingGemini:I = 0xac

.field static final TRANSACTION_isOffhook:I = 0x8

.field static final TRANSACTION_isOffhookGemini:I = 0x4a

.field static final TRANSACTION_isOperatorMvnoForEfPnn:I = 0xa6

.field static final TRANSACTION_isOperatorMvnoForEfPnnGemini:I = 0xa7

.field static final TRANSACTION_isOperatorMvnoForImsi:I = 0xa4

.field static final TRANSACTION_isOperatorMvnoForImsiGemini:I = 0xa5

.field static final TRANSACTION_isPhbReady:I = 0x86

.field static final TRANSACTION_isPhbReadyGemini:I = 0x87

.field static final TRANSACTION_isRadioOn:I = 0xb

.field static final TRANSACTION_isRadioOnGemini:I = 0x51

.field static final TRANSACTION_isRinging:I = 0x9

.field static final TRANSACTION_isRingingGemini:I = 0x4b

.field static final TRANSACTION_isSimInsert:I = 0x5d

.field static final TRANSACTION_isSimPinEnabled:I = 0xc

.field static final TRANSACTION_isTestIccCard:I = 0x41

.field static final TRANSACTION_isTestIccCardGemini:I = 0x71

.field static final TRANSACTION_isVTIdle:I = 0x7b

.field static final TRANSACTION_isVoiceIdle:I = 0x3b

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x24

.field static final TRANSACTION_openIccLogicalChannel:I = 0x2d

.field static final TRANSACTION_openIccLogicalChannelGemini:I = 0x2e

.field static final TRANSACTION_openIccLogicalChannelWithSw:I = 0x38

.field static final TRANSACTION_openIccLogicalChannelWithSwGemini:I = 0x39

.field static final TRANSACTION_registerForSimModeChange:I = 0x9b

.field static final TRANSACTION_release3GSwitchLock:I = 0x8e

.field static final TRANSACTION_set3GCapabilitySIM:I = 0x8c

.field static final TRANSACTION_setDataRoamingEnabledGemini:I = 0x9d

.field static final TRANSACTION_setDefaultPhone:I = 0x63

.field static final TRANSACTION_setGprsConnType:I = 0x5e

.field static final TRANSACTION_setGprsTransferType:I = 0x5f

.field static final TRANSACTION_setGprsTransferTypeGemini:I = 0x60

.field static final TRANSACTION_setRadio:I = 0x12

.field static final TRANSACTION_setRadioOff:I = 0x3f

.field static final TRANSACTION_setRoamingIndicatorNeddedProperty:I = 0x9e

.field static final TRANSACTION_setScAddressGemini:I = 0x89

.field static final TRANSACTION_showCallScreen:I = 0x3

.field static final TRANSACTION_showCallScreenGemini:I = 0x45

.field static final TRANSACTION_showCallScreenWithDialpad:I = 0x4

.field static final TRANSACTION_showCallScreenWithDialpadGemini:I = 0x46

.field static final TRANSACTION_silenceRinger:I = 0x7

.field static final TRANSACTION_silenceRingerGemini:I = 0x49

.field static final TRANSACTION_simAuth:I = 0x3d

.field static final TRANSACTION_simAuthGemini:I = 0x56

.field static final TRANSACTION_supplyPin:I = 0xe

.field static final TRANSACTION_supplyPinGemini:I = 0x52

.field static final TRANSACTION_supplyPuk:I = 0xf

.field static final TRANSACTION_supplyPukGemini:I = 0x53

.field static final TRANSACTION_toggleRadioOnOff:I = 0x11

.field static final TRANSACTION_transmitIccBasicChannel:I = 0x2b

.field static final TRANSACTION_transmitIccBasicChannelGemini:I = 0x2c

.field static final TRANSACTION_transmitIccLogicalChannel:I = 0x29

.field static final TRANSACTION_transmitIccLogicalChannelGemini:I = 0x2a

.field static final TRANSACTION_transmitIccSimIO:I = 0x33

.field static final TRANSACTION_transmitIccSimIOExGemini:I = 0x35

.field static final TRANSACTION_transmitIccSimIOGemini:I = 0x34

.field static final TRANSACTION_uSimAuth:I = 0x3e

.field static final TRANSACTION_uSimAuthGemini:I = 0x57

.field static final TRANSACTION_unregisterForSimModeChange:I = 0x9c

.field static final TRANSACTION_updateServiceLocation:I = 0x13

.field static final TRANSACTION_updateServiceLocationGemini:I = 0x58


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
    .locals 14
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
    .line 46
    sparse-switch p1, :sswitch_data_0

    .line 1854
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 50
    :sswitch_0
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    const/4 v1, 0x1

    goto :goto_0

    .line 55
    :sswitch_1
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    const/4 v1, 0x1

    goto :goto_0

    .line 64
    .end local v2           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 67
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    const/4 v1, 0x1

    goto :goto_0

    .line 73
    .end local v2           #_arg0:Ljava/lang/String;
    :sswitch_3
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreen()Z

    move-result v11

    .line 75
    .local v11, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v11, :cond_0

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    const/4 v1, 0x1

    goto :goto_0

    .line 76
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 81
    .end local v11           #_result:Z
    :sswitch_4
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 84
    .local v2, _arg0:Z
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreenWithDialpad(Z)Z

    move-result v11

    .line 85
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v11, :cond_2

    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    const/4 v1, 0x1

    goto :goto_0

    .line 83
    .end local v2           #_arg0:Z
    .end local v11           #_result:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 86
    .restart local v2       #_arg0:Z
    .restart local v11       #_result:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 91
    .end local v2           #_arg0:Z
    .end local v11           #_result:Z
    :sswitch_5
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCall()Z

    move-result v11

    .line 93
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v11, :cond_3

    const/4 v1, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 94
    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    .line 99
    .end local v11           #_result:Z
    :sswitch_6
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCall()V

    .line 101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 106
    :sswitch_7
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRinger()V

    .line 108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 113
    :sswitch_8
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhook()Z

    move-result v11

    .line 115
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v11, :cond_4

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 116
    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    .line 121
    .end local v11           #_result:Z
    :sswitch_9
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRinging()Z

    move-result v11

    .line 123
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v11, :cond_5

    const/4 v1, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 124
    :cond_5
    const/4 v1, 0x0

    goto :goto_6

    .line 129
    .end local v11           #_result:Z
    :sswitch_a
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdle()Z

    move-result v11

    .line 131
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v11, :cond_6

    const/4 v1, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 132
    :cond_6
    const/4 v1, 0x0

    goto :goto_7

    .line 137
    .end local v11           #_result:Z
    :sswitch_b
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn()Z

    move-result v11

    .line 139
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    if-eqz v11, :cond_7

    const/4 v1, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 140
    :cond_7
    const/4 v1, 0x0

    goto :goto_8

    .line 145
    .end local v11           #_result:Z
    :sswitch_c
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimPinEnabled()Z

    move-result v11

    .line 147
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v11, :cond_8

    const/4 v1, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 148
    :cond_8
    const/4 v1, 0x0

    goto :goto_9

    .line 153
    .end local v11           #_result:Z
    :sswitch_d
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->cancelMissedCallsNotification()V

    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 160
    :sswitch_e
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPin(Ljava/lang/String;)Z

    move-result v11

    .line 164
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v11, :cond_9

    const/4 v1, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 165
    :cond_9
    const/4 v1, 0x0

    goto :goto_a

    .line 170
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v11           #_result:Z
    :sswitch_f
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 174
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    .line 176
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v11, :cond_a

    const/4 v1, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 177
    :cond_a
    const/4 v1, 0x0

    goto :goto_b

    .line 182
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v11           #_result:Z
    :sswitch_10
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 185
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v11

    .line 186
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v11, :cond_b

    const/4 v1, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 187
    :cond_b
    const/4 v1, 0x0

    goto :goto_c

    .line 192
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v11           #_result:Z
    :sswitch_11
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    .line 194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 199
    :sswitch_12
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v2, 0x1

    .line 202
    .local v2, _arg0:Z
    :goto_d
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result v11

    .line 203
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    if-eqz v11, :cond_d

    const/4 v1, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 201
    .end local v2           #_arg0:Z
    .end local v11           #_result:Z
    :cond_c
    const/4 v2, 0x0

    goto :goto_d

    .line 204
    .restart local v2       #_arg0:Z
    .restart local v11       #_result:Z
    :cond_d
    const/4 v1, 0x0

    goto :goto_e

    .line 209
    .end local v2           #_arg0:Z
    .end local v11           #_result:Z
    :sswitch_13
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    .line 211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 216
    :sswitch_14
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    .line 218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 223
    :sswitch_15
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    .line 225
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 230
    :sswitch_16
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableApnType(Ljava/lang/String;)I

    move-result v11

    .line 234
    .local v11, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 240
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v11           #_result:I
    :sswitch_17
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 243
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->disableApnType(Ljava/lang/String;)I

    move-result v11

    .line 244
    .restart local v11       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 250
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v11           #_result:I
    :sswitch_18
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity()Z

    move-result v11

    .line 252
    .local v11, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    if-eqz v11, :cond_e

    const/4 v1, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 253
    :cond_e
    const/4 v1, 0x0

    goto :goto_f

    .line 258
    .end local v11           #_result:Z
    :sswitch_19
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity()Z

    move-result v11

    .line 260
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    if-eqz v11, :cond_f

    const/4 v1, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 261
    :cond_f
    const/4 v1, 0x0

    goto :goto_10

    .line 266
    .end local v11           #_result:Z
    :sswitch_1a
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible()Z

    move-result v11

    .line 268
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    if-eqz v11, :cond_10

    const/4 v1, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 269
    :cond_10
    const/4 v1, 0x0

    goto :goto_11

    .line 274
    .end local v11           #_result:Z
    :sswitch_1b
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation()Landroid/os/Bundle;

    move-result-object v11

    .line 276
    .local v11, _result:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    if-eqz v11, :cond_11

    .line 278
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 284
    :goto_12
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 282
    :cond_11
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 288
    .end local v11           #_result:Landroid/os/Bundle;
    :sswitch_1c
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v13

    .line 290
    .local v13, _result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 292
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 296
    .end local v13           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_1d
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result v11

    .line 298
    .local v11, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 304
    .end local v11           #_result:I
    :sswitch_1e
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result v11

    .line 306
    .restart local v11       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 312
    .end local v11           #_result:I
    :sswitch_1f
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result v11

    .line 314
    .restart local v11       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 320
    .end local v11           #_result:I
    :sswitch_20
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    move-result v11

    .line 322
    .restart local v11       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 328
    .end local v11           #_result:I
    :sswitch_21
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex()I

    move-result v11

    .line 330
    .restart local v11       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 336
    .end local v11           #_result:I
    :sswitch_22
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode()I

    move-result v11

    .line 338
    .restart local v11       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 344
    .end local v11           #_result:I
    :sswitch_23
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText()Ljava/lang/String;

    move-result-object v11

    .line 346
    .local v11, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 348
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 352
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_24
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needsOtaServiceProvisioning()Z

    move-result v11

    .line 354
    .local v11, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    if-eqz v11, :cond_12

    const/4 v1, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 355
    :cond_12
    const/4 v1, 0x0

    goto :goto_13

    .line 360
    .end local v11           #_result:Z
    :sswitch_25
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCount()I

    move-result v11

    .line 362
    .local v11, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 368
    .end local v11           #_result:I
    :sswitch_26
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkType()I

    move-result v11

    .line 370
    .restart local v11       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 376
    .end local v11           #_result:I
    :sswitch_27
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result v11

    .line 378
    .local v11, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    if-eqz v11, :cond_13

    const/4 v1, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 379
    :cond_13
    const/4 v1, 0x0

    goto :goto_14

    .line 384
    .end local v11           #_result:Z
    :sswitch_28
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaMode()I

    move-result v11

    .line 386
    .local v11, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 392
    .end local v11           #_result:I
    :sswitch_29
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 396
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 398
    .local v3, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 400
    .local v4, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 402
    .local v5, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 404
    .local v6, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 406
    .local v7, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, _arg6:Ljava/lang/String;
    move-object v1, p0

    .line 407
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/ITelephony$Stub;->transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 408
    .local v11, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 410
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 414
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    .end local v6           #_arg4:I
    .end local v7           #_arg5:I
    .end local v8           #_arg6:Ljava/lang/String;
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_2a
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 418
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 420
    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 422
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 424
    .restart local v5       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 426
    .restart local v6       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 428
    .restart local v7       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 430
    .restart local v8       #_arg6:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, _arg7:I
    move-object v1, p0

    .line 431
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/ITelephony$Stub;->transmitIccLogicalChannelGemini(IIIIIILjava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 432
    .restart local v11       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 434
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 438
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    .end local v6           #_arg4:I
    .end local v7           #_arg5:I
    .end local v8           #_arg6:Ljava/lang/String;
    .end local v9           #_arg7:I
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_2b
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 442
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 444
    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 446
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 448
    .restart local v5       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 450
    .restart local v6       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, _arg5:Ljava/lang/String;
    move-object v1, p0

    .line 451
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/ITelephony$Stub;->transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 452
    .restart local v11       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 454
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 458
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    .end local v6           #_arg4:I
    .end local v7           #_arg5:Ljava/lang/String;
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_2c
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 462
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 464
    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 466
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 468
    .restart local v5       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 470
    .restart local v6       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 472
    .restart local v7       #_arg5:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, _arg6:I
    move-object v1, p0

    .line 473
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/ITelephony$Stub;->transmitIccBasicChannelGemini(IIIIILjava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 474
    .restart local v11       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 476
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 480
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    .end local v6           #_arg4:I
    .end local v7           #_arg5:Ljava/lang/String;
    .end local v8           #_arg6:I
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_2d
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 483
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->openIccLogicalChannel(Ljava/lang/String;)I

    move-result v11

    .line 484
    .local v11, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 490
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v11           #_result:I
    :sswitch_2e
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 494
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 495
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->openIccLogicalChannelGemini(Ljava/lang/String;I)I

    move-result v11

    .line 496
    .restart local v11       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 502
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    .end local v11           #_result:I
    :sswitch_2f
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 505
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->closeIccLogicalChannel(I)Z

    move-result v11

    .line 506
    .local v11, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    if-eqz v11, :cond_14

    const/4 v1, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 507
    :cond_14
    const/4 v1, 0x0

    goto :goto_15

    .line 512
    .end local v2           #_arg0:I
    .end local v11           #_result:Z
    :sswitch_30
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 516
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 517
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->closeIccLogicalChannelGemini(II)Z

    move-result v11

    .line 518
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    if-eqz v11, :cond_15

    const/4 v1, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 519
    :cond_15
    const/4 v1, 0x0

    goto :goto_16

    .line 524
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v11           #_result:Z
    :sswitch_31
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLastError()I

    move-result v11

    .line 526
    .local v11, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 532
    .end local v11           #_result:I
    :sswitch_32
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 535
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getLastErrorGemini(I)I

    move-result v11

    .line 536
    .restart local v11       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 538
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 542
    .end local v2           #_arg0:I
    .end local v11           #_result:I
    :sswitch_33
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 546
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 548
    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 550
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 552
    .restart local v5       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 554
    .restart local v6       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #_arg5:Ljava/lang/String;
    move-object v1, p0

    .line 555
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/ITelephony$Stub;->transmitIccSimIO(IIIIILjava/lang/String;)[B

    move-result-object v11

    .line 556
    .local v11, _result:[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 558
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 562
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    .end local v6           #_arg4:I
    .end local v7           #_arg5:Ljava/lang/String;
    .end local v11           #_result:[B
    :sswitch_34
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 566
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 568
    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 570
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 572
    .restart local v5       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 574
    .restart local v6       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 576
    .restart local v7       #_arg5:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8       #_arg6:I
    move-object v1, p0

    .line 577
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/ITelephony$Stub;->transmitIccSimIOGemini(IIIIILjava/lang/String;I)[B

    move-result-object v11

    .line 578
    .restart local v11       #_result:[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 580
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 584
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    .end local v6           #_arg4:I
    .end local v7           #_arg5:Ljava/lang/String;
    .end local v8           #_arg6:I
    .end local v11           #_result:[B
    :sswitch_35
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 588
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 590
    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 592
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 594
    .restart local v5       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 596
    .restart local v6       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 598
    .restart local v7       #_arg5:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 600
    .local v8, _arg6:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 602
    .local v9, _arg7:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, _arg8:I
    move-object v1, p0

    .line 603
    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/ITelephony$Stub;->transmitIccSimIOExGemini(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v11

    .line 604
    .restart local v11       #_result:[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 606
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 610
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    .end local v6           #_arg4:I
    .end local v7           #_arg5:Ljava/lang/String;
    .end local v8           #_arg6:Ljava/lang/String;
    .end local v9           #_arg7:Ljava/lang/String;
    .end local v10           #_arg8:I
    .end local v11           #_result:[B
    :sswitch_36
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccATR()Ljava/lang/String;

    move-result-object v11

    .line 612
    .local v11, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 614
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 618
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_37
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 620
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 621
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccATRGemini(I)Ljava/lang/String;

    move-result-object v11

    .line 622
    .restart local v11       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 624
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 628
    .end local v2           #_arg0:I
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_38
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 631
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->openIccLogicalChannelWithSw(Ljava/lang/String;)[B

    move-result-object v11

    .line 632
    .local v11, _result:[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 634
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 638
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v11           #_result:[B
    :sswitch_39
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 642
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 643
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->openIccLogicalChannelWithSwGemini(Ljava/lang/String;I)[B

    move-result-object v11

    .line 644
    .restart local v11       #_result:[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 646
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 650
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    .end local v11           #_result:[B
    :sswitch_3a
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllCellInfo()Ljava/util/List;

    move-result-object v12

    .line 652
    .local v12, _result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 654
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 658
    .end local v12           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_3b
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoiceIdle()Z

    move-result v11

    .line 660
    .local v11, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    if-eqz v11, :cond_16

    const/4 v1, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 661
    :cond_16
    const/4 v1, 0x0

    goto :goto_17

    .line 666
    .end local v11           #_result:Z
    :sswitch_3c
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccCardType()Ljava/lang/String;

    move-result-object v11

    .line 668
    .local v11, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 670
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 674
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_3d
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 677
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->simAuth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 678
    .restart local v11       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 680
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 684
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_3e
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 688
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 689
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->uSimAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 690
    .restart local v11       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 692
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 696
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_3f
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioOff()Z

    move-result v11

    .line 698
    .local v11, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    if-eqz v11, :cond_17

    const/4 v1, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 700
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 699
    :cond_17
    const/4 v1, 0x0

    goto :goto_18

    .line 704
    .end local v11           #_result:Z
    :sswitch_40
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPreciseCallState()I

    move-result v11

    .line 706
    .local v11, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 708
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 712
    .end local v11           #_result:I
    :sswitch_41
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isTestIccCard()Z

    move-result v11

    .line 714
    .local v11, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    if-eqz v11, :cond_18

    const/4 v1, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 716
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 715
    :cond_18
    const/4 v1, 0x0

    goto :goto_19

    .line 720
    .end local v11           #_result:Z
    :sswitch_42
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isFDNEnabled()Z

    move-result v11

    .line 722
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    if-eqz v11, :cond_19

    const/4 v1, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 724
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 723
    :cond_19
    const/4 v1, 0x0

    goto :goto_1a

    .line 728
    .end local v11           #_result:Z
    :sswitch_43
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 732
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 733
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->dialGemini(Ljava/lang/String;I)V

    .line 734
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 739
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    :sswitch_44
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 743
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 744
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->callGemini(Ljava/lang/String;I)V

    .line 745
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 750
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    :sswitch_45
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 753
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreenGemini(I)Z

    move-result v11

    .line 754
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    if-eqz v11, :cond_1a

    const/4 v1, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 756
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 755
    :cond_1a
    const/4 v1, 0x0

    goto :goto_1b

    .line 760
    .end local v2           #_arg0:I
    .end local v11           #_result:Z
    :sswitch_46
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v2, 0x1

    .line 764
    .local v2, _arg0:Z
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 765
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreenWithDialpadGemini(ZI)Z

    move-result v11

    .line 766
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    if-eqz v11, :cond_1c

    const/4 v1, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 762
    .end local v2           #_arg0:Z
    .end local v3           #_arg1:I
    .end local v11           #_result:Z
    :cond_1b
    const/4 v2, 0x0

    goto :goto_1c

    .line 767
    .restart local v2       #_arg0:Z
    .restart local v3       #_arg1:I
    .restart local v11       #_result:Z
    :cond_1c
    const/4 v1, 0x0

    goto :goto_1d

    .line 772
    .end local v2           #_arg0:Z
    .end local v3           #_arg1:I
    .end local v11           #_result:Z
    :sswitch_47
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 775
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->endCallGemini(I)Z

    move-result v11

    .line 776
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    if-eqz v11, :cond_1d

    const/4 v1, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 778
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 777
    :cond_1d
    const/4 v1, 0x0

    goto :goto_1e

    .line 782
    .end local v2           #_arg0:I
    .end local v11           #_result:Z
    :sswitch_48
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 785
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCallGemini(I)V

    .line 786
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 787
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 791
    .end local v2           #_arg0:I
    :sswitch_49
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 793
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 794
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRingerGemini(I)V

    .line 795
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 800
    .end local v2           #_arg0:I
    :sswitch_4a
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 802
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 803
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhookGemini(I)Z

    move-result v11

    .line 804
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    if-eqz v11, :cond_1e

    const/4 v1, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 806
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 805
    :cond_1e
    const/4 v1, 0x0

    goto :goto_1f

    .line 810
    .end local v2           #_arg0:I
    .end local v11           #_result:Z
    :sswitch_4b
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 812
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 813
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRingingGemini(I)Z

    move-result v11

    .line 814
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    if-eqz v11, :cond_1f

    const/4 v1, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 816
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 815
    :cond_1f
    const/4 v1, 0x0

    goto :goto_20

    .line 820
    .end local v2           #_arg0:I
    .end local v11           #_result:Z
    :sswitch_4c
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 822
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 823
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdleGemini(I)Z

    move-result v11

    .line 824
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    if-eqz v11, :cond_20

    const/4 v1, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 826
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 825
    :cond_20
    const/4 v1, 0x0

    goto :goto_21

    .line 830
    .end local v2           #_arg0:I
    .end local v11           #_result:Z
    :sswitch_4d
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 833
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getPendingMmiCodesGemini(I)I

    move-result v11

    .line 834
    .local v11, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 840
    .end local v2           #_arg0:I
    .end local v11           #_result:I
    :sswitch_4e
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 843
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->cancelMissedCallsNotificationGemini(I)V

    .line 844
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 849
    .end local v2           #_arg0:I
    :sswitch_4f
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 851
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 852
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallStateGemini(I)I

    move-result v11

    .line 853
    .restart local v11       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 855
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 859
    .end local v2           #_arg0:I
    .end local v11           #_result:I
    :sswitch_50
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 861
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 862
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneTypeGemini(I)I

    move-result v11

    .line 863
    .restart local v11       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 865
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 869
    .end local v2           #_arg0:I
    .end local v11           #_result:I
    :sswitch_51
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 872
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnGemini(I)Z

    move-result v11

    .line 873
    .local v11, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    if-eqz v11, :cond_21

    const/4 v1, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 875
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 874
    :cond_21
    const/4 v1, 0x0

    goto :goto_22

    .line 879
    .end local v2           #_arg0:I
    .end local v11           #_result:Z
    :sswitch_52
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 881
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 883
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 884
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinGemini(Ljava/lang/String;I)Z

    move-result v11

    .line 885
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    if-eqz v11, :cond_22

    const/4 v1, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 887
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 886
    :cond_22
    const/4 v1, 0x0

    goto :goto_23

    .line 891
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    .end local v11           #_result:Z
    :sswitch_53
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 893
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 895
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 897
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 898
    .restart local v4       #_arg2:I
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukGemini(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v11

    .line 899
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    if-eqz v11, :cond_23

    const/4 v1, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 901
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 900
    :cond_23
    const/4 v1, 0x0

    goto :goto_24

    .line 905
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:I
    .end local v11           #_result:Z
    :sswitch_54
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 909
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 910
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmiGemini(Ljava/lang/String;I)Z

    move-result v11

    .line 911
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    if-eqz v11, :cond_24

    const/4 v1, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 913
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 912
    :cond_24
    const/4 v1, 0x0

    goto :goto_25

    .line 917
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    .end local v11           #_result:Z
    :sswitch_55
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 920
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccCardTypeGemini(I)Ljava/lang/String;

    move-result-object v11

    .line 921
    .local v11, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 923
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 927
    .end local v2           #_arg0:I
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_56
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 929
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 931
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 932
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->simAuthGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 933
    .restart local v11       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 935
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 939
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_57
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 941
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 943
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 945
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 946
    .restart local v4       #_arg2:I
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->uSimAuthGemini(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 947
    .restart local v11       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 948
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 949
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 953
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:I
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_58
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 955
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 956
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocationGemini(I)V

    .line 957
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 962
    .end local v2           #_arg0:I
    :sswitch_59
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 964
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 965
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdatesGemini(I)V

    .line 966
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 971
    .end local v2           #_arg0:I
    :sswitch_5a
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 974
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdatesGemini(I)V

    .line 975
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 980
    .end local v2           #_arg0:I
    :sswitch_5b
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 983
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocationGemini(I)Landroid/os/Bundle;

    move-result-object v11

    .line 984
    .local v11, _result:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 985
    if-eqz v11, :cond_25

    .line 986
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 987
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 992
    :goto_26
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 990
    :cond_25
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 996
    .end local v2           #_arg0:I
    .end local v11           #_result:Landroid/os/Bundle;
    :sswitch_5c
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 999
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfoGemini(I)Ljava/util/List;

    move-result-object v13

    .line 1000
    .restart local v13       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1002
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1006
    .end local v2           #_arg0:I
    .end local v13           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_5d
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1008
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1009
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimInsert(I)Z

    move-result v11

    .line 1010
    .local v11, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    if-eqz v11, :cond_26

    const/4 v1, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1012
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1011
    :cond_26
    const/4 v1, 0x0

    goto :goto_27

    .line 1016
    .end local v2           #_arg0:I
    .end local v11           #_result:Z
    :sswitch_5e
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1018
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1020
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1021
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setGprsConnType(II)V

    .line 1022
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1023
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1027
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    :sswitch_5f
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1029
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1030
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setGprsTransferType(I)V

    .line 1031
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1032
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1036
    .end local v2           #_arg0:I
    :sswitch_60
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1038
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1040
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1041
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setGprsTransferTypeGemini(II)V

    .line 1042
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1047
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    :sswitch_61
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1049
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1051
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_27

    .line 1052
    sget-object v1, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 1057
    .local v3, _arg1:Landroid/os/Message;
    :goto_28
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getMobileRevisionAndIMEI(ILandroid/os/Message;)V

    .line 1058
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1055
    .end local v3           #_arg1:Landroid/os/Message;
    :cond_27
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/os/Message;
    goto :goto_28

    .line 1063
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/os/Message;
    :sswitch_62
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1064
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSN()Ljava/lang/String;

    move-result-object v11

    .line 1065
    .local v11, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1067
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1071
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_63
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1073
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1074
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setDefaultPhone(I)V

    .line 1075
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1080
    .end local v2           #_arg0:I
    :sswitch_64
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1082
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1083
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkTypeGemini(I)I

    move-result v11

    .line 1084
    .local v11, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1085
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1086
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1090
    .end local v2           #_arg0:I
    .end local v11           #_result:I
    :sswitch_65
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1092
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1093
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCardGemini(I)Z

    move-result v11

    .line 1094
    .local v11, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    if-eqz v11, :cond_28

    const/4 v1, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1096
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1095
    :cond_28
    const/4 v1, 0x0

    goto :goto_29

    .line 1100
    .end local v2           #_arg0:I
    .end local v11           #_result:Z
    :sswitch_66
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1103
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimState(I)I

    move-result v11

    .line 1104
    .local v11, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1106
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1110
    .end local v2           #_arg0:I
    .end local v11           #_result:I
    :sswitch_67
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1113
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimOperator(I)Ljava/lang/String;

    move-result-object v11

    .line 1114
    .local v11, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1115
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1116
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1120
    .end local v2           #_arg0:I
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_68
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1123
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v11

    .line 1124
    .restart local v11       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1125
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1126
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1130
    .end local v2           #_arg0:I
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_69
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1133
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v11

    .line 1134
    .restart local v11       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1136
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1140
    .end local v2           #_arg0:I
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_6a
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1143
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v11

    .line 1144
    .local v11, _result:Lcom/android/internal/telephony/IPhoneSubInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1145
    if-eqz v11, :cond_29

    invoke-interface {v11}, Lcom/android/internal/telephony/IPhoneSubInfo;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1146
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1145
    :cond_29
    const/4 v1, 0x0

    goto :goto_2a

    .line 1150
    .end local v2           #_arg0:I
    .end local v11           #_result:Lcom/android/internal/telephony/IPhoneSubInfo;
    :sswitch_6b
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1153
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v11

    .line 1154
    .local v11, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1155
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1156
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1160
    .end local v2           #_arg0:I
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_6c
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1163
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v11

    .line 1164
    .restart local v11       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1165
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1166
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1170
    .end local v2           #_arg0:I
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_6d
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1173
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1Number(I)Ljava/lang/String;

    move-result-object v11

    .line 1174
    .restart local v11       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1175
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1176
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1180
    .end local v2           #_arg0:I
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_6e
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1183
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1AlphaTag(I)Ljava/lang/String;

    move-result-object v11

    .line 1184
    .restart local v11       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1185
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1186
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1190
    .end local v2           #_arg0:I
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_6f
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1193
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v11

    .line 1194
    .restart local v11       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1195
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1196
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1200
    .end local v2           #_arg0:I
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_70
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1203
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v11

    .line 1204
    .restart local v11       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1205
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1206
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1210
    .end local v2           #_arg0:I
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_71
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1213
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isTestIccCardGemini(I)Z

    move-result v11

    .line 1214
    .local v11, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1215
    if-eqz v11, :cond_2a

    const/4 v1, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1216
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1215
    :cond_2a
    const/4 v1, 0x0

    goto :goto_2b

    .line 1220
    .end local v2           #_arg0:I
    .end local v11           #_result:Z
    :sswitch_72
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1223
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivityGemini(I)I

    move-result v11

    .line 1224
    .local v11, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1225
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1226
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1230
    .end local v2           #_arg0:I
    .end local v11           #_result:I
    :sswitch_73
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1234
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1235
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->enableApnTypeGemini(Ljava/lang/String;I)I

    move-result v11

    .line 1236
    .restart local v11       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1237
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1238
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1242
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    .end local v11           #_result:I
    :sswitch_74
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1246
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1247
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->disableApnTypeGemini(Ljava/lang/String;I)I

    move-result v11

    .line 1248
    .restart local v11       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1249
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1250
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1254
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    .end local v11           #_result:I
    :sswitch_75
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1257
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivityGemini(I)I

    move-result v11

    .line 1258
    .restart local v11       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1259
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1260
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1264
    .end local v2           #_arg0:I
    .end local v11           #_result:I
    :sswitch_76
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1267
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossibleGemini(I)Z

    move-result v11

    .line 1268
    .local v11, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1269
    if-eqz v11, :cond_2b

    const/4 v1, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1270
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1269
    :cond_2b
    const/4 v1, 0x0

    goto :goto_2c

    .line 1274
    .end local v2           #_arg0:I
    .end local v11           #_result:Z
    :sswitch_77
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1277
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataStateGemini(I)I

    move-result v11

    .line 1278
    .local v11, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1279
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1280
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1284
    .end local v2           #_arg0:I
    .end local v11           #_result:I
    :sswitch_78
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1287
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivityGemini(I)I

    move-result v11

    .line 1288
    .restart local v11       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1289
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1290
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1294
    .end local v2           #_arg0:I
    .end local v11           #_result:I
    :sswitch_79
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1297
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCountGemini(I)I

    move-result v11

    .line 1298
    .restart local v11       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1300
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1304
    .end local v2           #_arg0:I
    .end local v11           #_result:I
    :sswitch_7a
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1307
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isFDNEnabledGemini(I)Z

    move-result v11

    .line 1308
    .local v11, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    if-eqz v11, :cond_2c

    const/4 v1, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1310
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1309
    :cond_2c
    const/4 v1, 0x0

    goto :goto_2d

    .line 1314
    .end local v2           #_arg0:I
    .end local v11           #_result:Z
    :sswitch_7b
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1315
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVTIdle()Z

    move-result v11

    .line 1316
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1317
    if-eqz v11, :cond_2d

    const/4 v1, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1318
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1317
    :cond_2d
    const/4 v1, 0x0

    goto :goto_2e

    .line 1322
    .end local v11           #_result:Z
    :sswitch_7c
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1326
    .restart local v2       #_arg0:I
    new-instance v3, Landroid/telephony/BtSimapOperResponse;

    invoke-direct {v3}, Landroid/telephony/BtSimapOperResponse;-><init>()V

    .line 1327
    .local v3, _arg1:Landroid/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapConnectSIM(ILandroid/telephony/BtSimapOperResponse;)I

    move-result v11

    .line 1328
    .local v11, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1329
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1330
    if-eqz v3, :cond_2e

    .line 1331
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1332
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Landroid/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1337
    :goto_2f
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1335
    :cond_2e
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2f

    .line 1341
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/telephony/BtSimapOperResponse;
    .end local v11           #_result:I
    :sswitch_7d
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1342
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapDisconnectSIM()I

    move-result v11

    .line 1343
    .restart local v11       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1344
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1345
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1349
    .end local v11           #_result:I
    :sswitch_7e
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1353
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1355
    .local v3, _arg1:Ljava/lang/String;
    new-instance v4, Landroid/telephony/BtSimapOperResponse;

    invoke-direct {v4}, Landroid/telephony/BtSimapOperResponse;-><init>()V

    .line 1356
    .local v4, _arg2:Landroid/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapApduRequest(ILjava/lang/String;Landroid/telephony/BtSimapOperResponse;)I

    move-result v11

    .line 1357
    .restart local v11       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1358
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1359
    if-eqz v4, :cond_2f

    .line 1360
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1361
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Landroid/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1366
    :goto_30
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1364
    :cond_2f
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_30

    .line 1370
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Landroid/telephony/BtSimapOperResponse;
    .end local v11           #_result:I
    :sswitch_7f
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1374
    .restart local v2       #_arg0:I
    new-instance v3, Landroid/telephony/BtSimapOperResponse;

    invoke-direct {v3}, Landroid/telephony/BtSimapOperResponse;-><init>()V

    .line 1375
    .local v3, _arg1:Landroid/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapResetSIM(ILandroid/telephony/BtSimapOperResponse;)I

    move-result v11

    .line 1376
    .restart local v11       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1377
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1378
    if-eqz v3, :cond_30

    .line 1379
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1380
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Landroid/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1385
    :goto_31
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1383
    :cond_30
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_31

    .line 1389
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/telephony/BtSimapOperResponse;
    .end local v11           #_result:I
    :sswitch_80
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1393
    .restart local v2       #_arg0:I
    new-instance v3, Landroid/telephony/BtSimapOperResponse;

    invoke-direct {v3}, Landroid/telephony/BtSimapOperResponse;-><init>()V

    .line 1394
    .restart local v3       #_arg1:Landroid/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapPowerOnSIM(ILandroid/telephony/BtSimapOperResponse;)I

    move-result v11

    .line 1395
    .restart local v11       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1396
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1397
    if-eqz v3, :cond_31

    .line 1398
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1399
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Landroid/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1404
    :goto_32
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1402
    :cond_31
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_32

    .line 1408
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/telephony/BtSimapOperResponse;
    .end local v11           #_result:I
    :sswitch_81
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1409
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapPowerOffSIM()I

    move-result v11

    .line 1410
    .restart local v11       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1411
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1412
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1416
    .end local v11           #_result:I
    :sswitch_82
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1417
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimIndicatorState()I

    move-result v11

    .line 1418
    .restart local v11       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1419
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1420
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1424
    .end local v11           #_result:I
    :sswitch_83
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1427
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimIndicatorStateGemini(I)I

    move-result v11

    .line 1428
    .restart local v11       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1429
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1430
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1434
    .end local v2           #_arg0:I
    .end local v11           #_result:I
    :sswitch_84
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1435
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceState()Landroid/os/Bundle;

    move-result-object v11

    .line 1436
    .local v11, _result:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1437
    if-eqz v11, :cond_32

    .line 1438
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1439
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1444
    :goto_33
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1442
    :cond_32
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_33

    .line 1448
    .end local v11           #_result:Landroid/os/Bundle;
    :sswitch_85
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1451
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceStateGemini(I)Landroid/os/Bundle;

    move-result-object v11

    .line 1452
    .restart local v11       #_result:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1453
    if-eqz v11, :cond_33

    .line 1454
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1455
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1460
    :goto_34
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1458
    :cond_33
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_34

    .line 1464
    .end local v2           #_arg0:I
    .end local v11           #_result:Landroid/os/Bundle;
    :sswitch_86
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1465
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isPhbReady()Z

    move-result v11

    .line 1466
    .local v11, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1467
    if-eqz v11, :cond_34

    const/4 v1, 0x1

    :goto_35
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1468
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1467
    :cond_34
    const/4 v1, 0x0

    goto :goto_35

    .line 1472
    .end local v11           #_result:Z
    :sswitch_87
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1475
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isPhbReadyGemini(I)Z

    move-result v11

    .line 1476
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1477
    if-eqz v11, :cond_35

    const/4 v1, 0x1

    :goto_36
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1478
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1477
    :cond_35
    const/4 v1, 0x0

    goto :goto_36

    .line 1482
    .end local v2           #_arg0:I
    .end local v11           #_result:Z
    :sswitch_88
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1485
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getScAddressGemini(I)Ljava/lang/String;

    move-result-object v11

    .line 1486
    .local v11, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1487
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1488
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1492
    .end local v2           #_arg0:I
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_89
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1496
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1497
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setScAddressGemini(Ljava/lang/String;I)V

    .line 1498
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1499
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1503
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    :sswitch_8a
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1504
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSmsDefaultSim()I

    move-result v11

    .line 1505
    .local v11, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1506
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1507
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1511
    .end local v11           #_result:I
    :sswitch_8b
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1512
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->get3GCapabilitySIM()I

    move-result v11

    .line 1513
    .restart local v11       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1514
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1515
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1519
    .end local v11           #_result:I
    :sswitch_8c
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1522
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->set3GCapabilitySIM(I)Z

    move-result v11

    .line 1523
    .local v11, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1524
    if-eqz v11, :cond_36

    const/4 v1, 0x1

    :goto_37
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1525
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1524
    :cond_36
    const/4 v1, 0x0

    goto :goto_37

    .line 1529
    .end local v2           #_arg0:I
    .end local v11           #_result:Z
    :sswitch_8d
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1530
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->aquire3GSwitchLock()I

    move-result v11

    .line 1531
    .local v11, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1532
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1533
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1537
    .end local v11           #_result:I
    :sswitch_8e
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1539
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1540
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->release3GSwitchLock(I)Z

    move-result v11

    .line 1541
    .local v11, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1542
    if-eqz v11, :cond_37

    const/4 v1, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1543
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1542
    :cond_37
    const/4 v1, 0x0

    goto :goto_38

    .line 1547
    .end local v2           #_arg0:I
    .end local v11           #_result:Z
    :sswitch_8f
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1548
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->is3GSwitchLocked()Z

    move-result v11

    .line 1549
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1550
    if-eqz v11, :cond_38

    const/4 v1, 0x1

    :goto_39
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1551
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1550
    :cond_38
    const/4 v1, 0x0

    goto :goto_39

    .line 1555
    .end local v11           #_result:Z
    :sswitch_90
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1556
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->is3GSwitchManualEnabled()Z

    move-result v11

    .line 1557
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1558
    if-eqz v11, :cond_39

    const/4 v1, 0x1

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1559
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1558
    :cond_39
    const/4 v1, 0x0

    goto :goto_3a

    .line 1563
    .end local v11           #_result:Z
    :sswitch_91
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1564
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->is3GSwitchManualChange3GAllowed()Z

    move-result v11

    .line 1565
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1566
    if-eqz v11, :cond_3a

    const/4 v1, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1567
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1566
    :cond_3a
    const/4 v1, 0x0

    goto :goto_3b

    .line 1571
    .end local v11           #_result:Z
    :sswitch_92
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1572
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->get3GSwitchAllowed3GSlots()I

    move-result v11

    .line 1573
    .local v11, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1574
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1575
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1579
    .end local v11           #_result:I
    :sswitch_93
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1581
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1582
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getInterfaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1583
    .local v11, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1584
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1585
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1589
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_94
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1592
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1593
    .restart local v11       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1594
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1595
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1599
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_95
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1602
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getGateway(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1603
    .restart local v11       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1604
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1605
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1609
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_96
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1613
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1614
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getInterfaceNameGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 1615
    .restart local v11       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1616
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1617
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1621
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_97
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1625
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1626
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getIpAddressGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 1627
    .restart local v11       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1628
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1629
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1633
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_98
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1635
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1637
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1638
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getGatewayGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 1639
    .restart local v11       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1640
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1641
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1645
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_99
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1648
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getAdnStorageInfo(I)[I

    move-result-object v11

    .line 1649
    .local v11, _result:[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1650
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1651
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1655
    .end local v2           #_arg0:I
    .end local v11           #_result:[I
    :sswitch_9a
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1659
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1660
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->cleanupApnTypeGemini(Ljava/lang/String;I)I

    move-result v11

    .line 1661
    .local v11, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1662
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1663
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1667
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    .end local v11           #_result:I
    :sswitch_9b
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1671
    .local v2, _arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1672
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForSimModeChange(Landroid/os/IBinder;I)V

    .line 1673
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1674
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1678
    .end local v2           #_arg0:Landroid/os/IBinder;
    .end local v3           #_arg1:I
    :sswitch_9c
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1681
    .restart local v2       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForSimModeChange(Landroid/os/IBinder;)V

    .line 1682
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1683
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1687
    .end local v2           #_arg0:Landroid/os/IBinder;
    :sswitch_9d
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3b

    const/4 v2, 0x1

    .line 1691
    .local v2, _arg0:Z
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1692
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataRoamingEnabledGemini(ZI)V

    .line 1693
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1694
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1689
    .end local v2           #_arg0:Z
    .end local v3           #_arg1:I
    :cond_3b
    const/4 v2, 0x0

    goto :goto_3c

    .line 1698
    :sswitch_9e
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1700
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v2, 0x1

    .line 1702
    .restart local v2       #_arg0:Z
    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3d

    const/4 v3, 0x1

    .line 1703
    .local v3, _arg1:Z
    :goto_3e
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setRoamingIndicatorNeddedProperty(ZZ)V

    .line 1704
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1705
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1700
    .end local v2           #_arg0:Z
    .end local v3           #_arg1:Z
    :cond_3c
    const/4 v2, 0x0

    goto :goto_3d

    .line 1702
    .restart local v2       #_arg0:Z
    :cond_3d
    const/4 v3, 0x0

    goto :goto_3e

    .line 1709
    .end local v2           #_arg0:Z
    :sswitch_9f
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1710
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getMissedCallCount()I

    move-result v11

    .line 1711
    .restart local v11       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1712
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1713
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1717
    .end local v11           #_result:I
    :sswitch_a0
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1719
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1721
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1722
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->adjustModemRadioPower(II)Z

    move-result v11

    .line 1723
    .local v11, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1724
    if-eqz v11, :cond_3e

    const/4 v1, 0x1

    :goto_3f
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1725
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1724
    :cond_3e
    const/4 v1, 0x0

    goto :goto_3f

    .line 1729
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v11           #_result:Z
    :sswitch_a1
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1733
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1735
    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1736
    .local v4, _arg2:I
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->adjustModemRadioPowerByBand(III)Z

    move-result v11

    .line 1737
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1738
    if-eqz v11, :cond_3f

    const/4 v1, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1739
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1738
    :cond_3f
    const/4 v1, 0x0

    goto :goto_40

    .line 1743
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v11           #_result:Z
    :sswitch_a2
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1744
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSpNameInEfSpn()Ljava/lang/String;

    move-result-object v11

    .line 1745
    .local v11, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1746
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1747
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1751
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_a3
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1753
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1754
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSpNameInEfSpnGemini(I)Ljava/lang/String;

    move-result-object v11

    .line 1755
    .restart local v11       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1756
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1757
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1761
    .end local v2           #_arg0:I
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_a4
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1762
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isOperatorMvnoForImsi()Ljava/lang/String;

    move-result-object v11

    .line 1763
    .restart local v11       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1764
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1765
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1769
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_a5
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1771
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1772
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isOperatorMvnoForImsiGemini(I)Ljava/lang/String;

    move-result-object v11

    .line 1773
    .restart local v11       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1774
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1775
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1779
    .end local v2           #_arg0:I
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_a6
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1780
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isOperatorMvnoForEfPnn()Ljava/lang/String;

    move-result-object v11

    .line 1781
    .restart local v11       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1782
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1783
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1787
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_a7
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1789
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1790
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isOperatorMvnoForEfPnnGemini(I)Ljava/lang/String;

    move-result-object v11

    .line 1791
    .restart local v11       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1792
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1793
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1797
    .end local v2           #_arg0:I
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_a8
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1798
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isIccCardProviderAsMvno()Z

    move-result v11

    .line 1799
    .local v11, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1800
    if-eqz v11, :cond_40

    const/4 v1, 0x1

    :goto_41
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1801
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1800
    :cond_40
    const/4 v1, 0x0

    goto :goto_41

    .line 1805
    .end local v11           #_result:Z
    :sswitch_a9
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1807
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1808
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isIccCardProviderAsMvnoGemini(I)Z

    move-result v11

    .line 1809
    .restart local v11       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1810
    if-eqz v11, :cond_41

    const/4 v1, 0x1

    :goto_42
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1811
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1810
    :cond_41
    const/4 v1, 0x0

    goto :goto_42

    .line 1815
    .end local v2           #_arg0:I
    .end local v11           #_result:Z
    :sswitch_aa
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1818
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkOperatorNameGemini(I)Ljava/lang/String;

    move-result-object v11

    .line 1819
    .local v11, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1820
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1821
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1825
    .end local v2           #_arg0:I
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_ab
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1827
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1828
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkOperatorGemini(I)Ljava/lang/String;

    move-result-object v11

    .line 1829
    .restart local v11       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1830
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1831
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1835
    .end local v2           #_arg0:I
    .end local v11           #_result:Ljava/lang/String;
    :sswitch_ac
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1837
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1838
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isNetworkRoamingGemini(I)Z

    move-result v11

    .line 1839
    .local v11, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1840
    if-eqz v11, :cond_42

    const/4 v1, 0x1

    :goto_43
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1841
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1840
    :cond_42
    const/4 v1, 0x0

    goto :goto_43

    .line 1845
    .end local v2           #_arg0:I
    .end local v11           #_result:Z
    :sswitch_ad
    const-string v1, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1847
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1848
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkCountryIsoGemini(I)Ljava/lang/String;

    move-result-object v11

    .line 1849
    .local v11, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1850
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1851
    const/4 v1, 0x1

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
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x89 -> :sswitch_89
        0x8a -> :sswitch_8a
        0x8b -> :sswitch_8b
        0x8c -> :sswitch_8c
        0x8d -> :sswitch_8d
        0x8e -> :sswitch_8e
        0x8f -> :sswitch_8f
        0x90 -> :sswitch_90
        0x91 -> :sswitch_91
        0x92 -> :sswitch_92
        0x93 -> :sswitch_93
        0x94 -> :sswitch_94
        0x95 -> :sswitch_95
        0x96 -> :sswitch_96
        0x97 -> :sswitch_97
        0x98 -> :sswitch_98
        0x99 -> :sswitch_99
        0x9a -> :sswitch_9a
        0x9b -> :sswitch_9b
        0x9c -> :sswitch_9c
        0x9d -> :sswitch_9d
        0x9e -> :sswitch_9e
        0x9f -> :sswitch_9f
        0xa0 -> :sswitch_a0
        0xa1 -> :sswitch_a1
        0xa2 -> :sswitch_a2
        0xa3 -> :sswitch_a3
        0xa4 -> :sswitch_a4
        0xa5 -> :sswitch_a5
        0xa6 -> :sswitch_a6
        0xa7 -> :sswitch_a7
        0xa8 -> :sswitch_a8
        0xa9 -> :sswitch_a9
        0xaa -> :sswitch_aa
        0xab -> :sswitch_ab
        0xac -> :sswitch_ac
        0xad -> :sswitch_ad
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
