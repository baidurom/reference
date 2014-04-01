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

.field static final TRANSACTION_adjustModemRadioPower:I = 0x82

.field static final TRANSACTION_answerRingingCall:I = 0x6

.field static final TRANSACTION_answerRingingCallGemini:I = 0x36

.field static final TRANSACTION_aquire3GSwitchLock:I = 0x73

.field static final TRANSACTION_btSimapApduRequest:I = 0x61

.field static final TRANSACTION_btSimapConnectSIM:I = 0x5f

.field static final TRANSACTION_btSimapDisconnectSIM:I = 0x60

.field static final TRANSACTION_btSimapPowerOffSIM:I = 0x64

.field static final TRANSACTION_btSimapPowerOnSIM:I = 0x63

.field static final TRANSACTION_btSimapResetSIM:I = 0x62

.field static final TRANSACTION_call:I = 0x2

.field static final TRANSACTION_callGemini:I = 0x32

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0xd

.field static final TRANSACTION_cancelMissedCallsNotificationGemini:I = 0x3c

.field static final TRANSACTION_cleanupApnTypeGemini:I = 0x7d

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_dialGemini:I = 0x31

.field static final TRANSACTION_disableApnType:I = 0x17

.field static final TRANSACTION_disableApnTypeGemini:I = 0x57

.field static final TRANSACTION_disableDataConnectivity:I = 0x19

.field static final TRANSACTION_disableDataConnectivityGemini:I = 0x58

.field static final TRANSACTION_disableLocationUpdates:I = 0x15

.field static final TRANSACTION_disableLocationUpdatesGemini:I = 0x48

.field static final TRANSACTION_enableApnType:I = 0x16

.field static final TRANSACTION_enableApnTypeGemini:I = 0x56

.field static final TRANSACTION_enableDataConnectivity:I = 0x18

.field static final TRANSACTION_enableDataConnectivityGemini:I = 0x55

.field static final TRANSACTION_enableLocationUpdates:I = 0x14

.field static final TRANSACTION_enableLocationUpdatesGemini:I = 0x47

.field static final TRANSACTION_endCall:I = 0x5

.field static final TRANSACTION_endCallGemini:I = 0x35

.field static final TRANSACTION_get3GCapabilitySIM:I = 0x71

.field static final TRANSACTION_getActivePhoneType:I = 0x20

.field static final TRANSACTION_getActivePhoneTypeGemini:I = 0x3e

.field static final TRANSACTION_getAdnStorageInfo:I = 0x7c

.field static final TRANSACTION_getCallState:I = 0x1d

.field static final TRANSACTION_getCallStateGemini:I = 0x3d

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x21

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x22

.field static final TRANSACTION_getCdmaEriText:I = 0x23

.field static final TRANSACTION_getCellLocation:I = 0x1b

.field static final TRANSACTION_getCellLocationGemini:I = 0x49

.field static final TRANSACTION_getDataActivity:I = 0x1e

.field static final TRANSACTION_getDataActivityGemini:I = 0x5b

.field static final TRANSACTION_getDataState:I = 0x1f

.field static final TRANSACTION_getDataStateGemini:I = 0x5a

.field static final TRANSACTION_getGateway:I = 0x78

.field static final TRANSACTION_getGatewayGemini:I = 0x7b

.field static final TRANSACTION_getIccCardType:I = 0x2a

.field static final TRANSACTION_getIccCardTypeGemini:I = 0x43

.field static final TRANSACTION_getInterfaceName:I = 0x76

.field static final TRANSACTION_getInterfaceNameGemini:I = 0x79

.field static final TRANSACTION_getIpAddress:I = 0x77

.field static final TRANSACTION_getIpAddressGemini:I = 0x7a

.field static final TRANSACTION_getLteOnCdmaMode:I = 0x28

.field static final TRANSACTION_getMobileRevisionAndIMEI:I = 0x4f

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x1c

.field static final TRANSACTION_getNeighboringCellInfoGemini:I = 0x4a

.field static final TRANSACTION_getNetworkType:I = 0x26

.field static final TRANSACTION_getNetworkTypeGemini:I = 0x52

.field static final TRANSACTION_getPendingMmiCodesGemini:I = 0x3b

.field static final TRANSACTION_getPreciseCallState:I = 0x2e

.field static final TRANSACTION_getSN:I = 0x50

.field static final TRANSACTION_getScAddressGemini:I = 0x6b

.field static final TRANSACTION_getServiceState:I = 0x67

.field static final TRANSACTION_getServiceStateGemini:I = 0x68

.field static final TRANSACTION_getSimIndicatorState:I = 0x65

.field static final TRANSACTION_getSimIndicatorStateGemini:I = 0x66

.field static final TRANSACTION_getSmsDefaultSim:I = 0x6d

.field static final TRANSACTION_getVoiceMessageCount:I = 0x25

.field static final TRANSACTION_getVoiceMessageCountGemini:I = 0x5c

.field static final TRANSACTION_handlePinMmi:I = 0x10

.field static final TRANSACTION_handlePinMmiGemini:I = 0x42

.field static final TRANSACTION_hasIccCard:I = 0x27

.field static final TRANSACTION_hasIccCardGemini:I = 0x53

.field static final TRANSACTION_is3GSwitchLocked:I = 0x75

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x1a

.field static final TRANSACTION_isDataConnectivityPossibleGemini:I = 0x59

.field static final TRANSACTION_isFDNEnabled:I = 0x30

.field static final TRANSACTION_isFDNEnabledGemini:I = 0x5d

.field static final TRANSACTION_isIdle:I = 0xa

.field static final TRANSACTION_isIdleGemini:I = 0x3a

.field static final TRANSACTION_isOffhook:I = 0x8

.field static final TRANSACTION_isOffhookGemini:I = 0x38

.field static final TRANSACTION_isPhbReady:I = 0x69

.field static final TRANSACTION_isPhbReadyGemini:I = 0x6a

.field static final TRANSACTION_isRadioOn:I = 0xb

.field static final TRANSACTION_isRadioOnGemini:I = 0x3f

.field static final TRANSACTION_isRejectAllSIPCall:I = 0x70

.field static final TRANSACTION_isRejectAllVideoCall:I = 0x6f

.field static final TRANSACTION_isRejectAllVoiceCall:I = 0x6e

.field static final TRANSACTION_isRinging:I = 0x9

.field static final TRANSACTION_isRingingGemini:I = 0x39

.field static final TRANSACTION_isSimInsert:I = 0x4b

.field static final TRANSACTION_isSimPinEnabled:I = 0xc

.field static final TRANSACTION_isTestIccCard:I = 0x2f

.field static final TRANSACTION_isTestIccCardGemini:I = 0x54

.field static final TRANSACTION_isVTIdle:I = 0x5e

.field static final TRANSACTION_isVoiceIdle:I = 0x29

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x24

.field static final TRANSACTION_registerForSimModeChange:I = 0x7e

.field static final TRANSACTION_release3GSwitchLock:I = 0x74

.field static final TRANSACTION_set3GCapabilitySIM:I = 0x72

.field static final TRANSACTION_setDataRoamingEnabledGemini:I = 0x80

.field static final TRANSACTION_setDefaultPhone:I = 0x51

.field static final TRANSACTION_setGprsConnType:I = 0x4c

.field static final TRANSACTION_setGprsTransferType:I = 0x4d

.field static final TRANSACTION_setGprsTransferTypeGemini:I = 0x4e

.field static final TRANSACTION_setRadio:I = 0x12

.field static final TRANSACTION_setRadioOff:I = 0x2d

.field static final TRANSACTION_setRoamingIndicatorNeddedProperty:I = 0x81

.field static final TRANSACTION_setScAddressGemini:I = 0x6c

.field static final TRANSACTION_showCallScreen:I = 0x3

.field static final TRANSACTION_showCallScreenGemini:I = 0x33

.field static final TRANSACTION_showCallScreenWithDialpad:I = 0x4

.field static final TRANSACTION_showCallScreenWithDialpadGemini:I = 0x34

.field static final TRANSACTION_silenceRinger:I = 0x7

.field static final TRANSACTION_silenceRingerGemini:I = 0x37

.field static final TRANSACTION_simAuth:I = 0x2b

.field static final TRANSACTION_simAuthGemini:I = 0x44

.field static final TRANSACTION_supplyPin:I = 0xe

.field static final TRANSACTION_supplyPinGemini:I = 0x40

.field static final TRANSACTION_supplyPuk:I = 0xf

.field static final TRANSACTION_supplyPukGemini:I = 0x41

.field static final TRANSACTION_toggleRadioOnOff:I = 0x11

.field static final TRANSACTION_uSimAuth:I = 0x2c

.field static final TRANSACTION_uSimAuthGemini:I = 0x45

.field static final TRANSACTION_unregisterForSimModeChange:I = 0x7f

.field static final TRANSACTION_updateServiceLocation:I = 0x13

.field static final TRANSACTION_updateServiceLocationGemini:I = 0x46


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

    .line 1344
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
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoiceIdle()Z

    move-result v3

    .line 394
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    if-eqz v3, :cond_14

    move v5, v6

    :cond_14
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 400
    .end local v3           #_result:Z
    :sswitch_2a
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccCardType()Ljava/lang/String;

    move-result-object v3

    .line 402
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 408
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_2b
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 411
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->simAuth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 412
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 418
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_2c
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 422
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 423
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->uSimAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 424
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 430
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_2d
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioOff()Z

    move-result v3

    .line 432
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    if-eqz v3, :cond_15

    move v5, v6

    :cond_15
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 438
    .end local v3           #_result:Z
    :sswitch_2e
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPreciseCallState()I

    move-result v3

    .line 440
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 446
    .end local v3           #_result:I
    :sswitch_2f
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isTestIccCard()Z

    move-result v3

    .line 448
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    if-eqz v3, :cond_16

    move v5, v6

    :cond_16
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 454
    .end local v3           #_result:Z
    :sswitch_30
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isFDNEnabled()Z

    move-result v3

    .line 456
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    if-eqz v3, :cond_17

    move v5, v6

    :cond_17
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 462
    .end local v3           #_result:Z
    :sswitch_31
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 466
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 467
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->dialGemini(Ljava/lang/String;I)V

    .line 468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 473
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    :sswitch_32
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 477
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 478
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->callGemini(Ljava/lang/String;I)V

    .line 479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 484
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    :sswitch_33
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 487
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreenGemini(I)Z

    move-result v3

    .line 488
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    if-eqz v3, :cond_18

    move v5, v6

    :cond_18
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 494
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_34
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1a

    move v0, v6

    .line 498
    .local v0, _arg0:Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 499
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreenWithDialpadGemini(ZI)Z

    move-result v3

    .line 500
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
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

    .line 496
    goto :goto_3

    .line 506
    :sswitch_35
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 509
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCallGemini(I)Z

    move-result v3

    .line 510
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    if-eqz v3, :cond_1b

    move v5, v6

    :cond_1b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 516
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_36
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 519
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCallGemini(I)V

    .line 520
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 525
    .end local v0           #_arg0:I
    :sswitch_37
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 528
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRingerGemini(I)V

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 534
    .end local v0           #_arg0:I
    :sswitch_38
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 537
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhookGemini(I)Z

    move-result v3

    .line 538
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    if-eqz v3, :cond_1c

    move v5, v6

    :cond_1c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 544
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_39
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 547
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRingingGemini(I)Z

    move-result v3

    .line 548
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    if-eqz v3, :cond_1d

    move v5, v6

    :cond_1d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 554
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_3a
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 557
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdleGemini(I)Z

    move-result v3

    .line 558
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    if-eqz v3, :cond_1e

    move v5, v6

    :cond_1e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 564
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_3b
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 567
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPendingMmiCodesGemini(I)I

    move-result v3

    .line 568
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 574
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_3c
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 577
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->cancelMissedCallsNotificationGemini(I)V

    .line 578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 583
    .end local v0           #_arg0:I
    :sswitch_3d
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 586
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallStateGemini(I)I

    move-result v3

    .line 587
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 593
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_3e
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 596
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneTypeGemini(I)I

    move-result v3

    .line 597
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 603
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_3f
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 606
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnGemini(I)Z

    move-result v3

    .line 607
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    if-eqz v3, :cond_1f

    move v5, v6

    :cond_1f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 613
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_40
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 618
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinGemini(Ljava/lang/String;I)Z

    move-result v3

    .line 619
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    if-eqz v3, :cond_20

    move v5, v6

    :cond_20
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 625
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:Z
    :sswitch_41
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 629
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 632
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukGemini(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 633
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    if-eqz v3, :cond_21

    move v5, v6

    :cond_21
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 639
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:I
    .end local v3           #_result:Z
    :sswitch_42
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 643
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 644
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmiGemini(Ljava/lang/String;I)Z

    move-result v3

    .line 645
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    if-eqz v3, :cond_22

    move v5, v6

    :cond_22
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 651
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:Z
    :sswitch_43
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 654
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccCardTypeGemini(I)Ljava/lang/String;

    move-result-object v3

    .line 655
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 661
    .end local v0           #_arg0:I
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_44
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 666
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->simAuthGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 667
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 673
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_45
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 677
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 679
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 680
    .restart local v2       #_arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->uSimAuthGemini(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 681
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 687
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:I
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_46
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 690
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocationGemini(I)V

    .line 691
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 696
    .end local v0           #_arg0:I
    :sswitch_47
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 699
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdatesGemini(I)V

    .line 700
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 705
    .end local v0           #_arg0:I
    :sswitch_48
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 708
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdatesGemini(I)V

    .line 709
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 714
    .end local v0           #_arg0:I
    :sswitch_49
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 717
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocationGemini(I)Landroid/os/Bundle;

    move-result-object v3

    .line 718
    .local v3, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    if-eqz v3, :cond_23

    .line 720
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 721
    invoke-virtual {v3, p3, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 724
    :cond_23
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 730
    .end local v0           #_arg0:I
    .end local v3           #_result:Landroid/os/Bundle;
    :sswitch_4a
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 732
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 733
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfoGemini(I)Ljava/util/List;

    move-result-object v4

    .line 734
    .restart local v4       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 740
    .end local v0           #_arg0:I
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_4b
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 743
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimInsert(I)Z

    move-result v3

    .line 744
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    if-eqz v3, :cond_24

    move v5, v6

    :cond_24
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 750
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_4c
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 754
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 755
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setGprsConnType(II)V

    .line 756
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 761
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_4d
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 763
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 764
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->setGprsTransferType(I)V

    .line 765
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 770
    .end local v0           #_arg0:I
    :sswitch_4e
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 774
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 775
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setGprsTransferTypeGemini(II)V

    .line 776
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 781
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_4f
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 783
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 785
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_25

    .line 786
    sget-object v5, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 791
    .local v1, _arg1:Landroid/os/Message;
    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getMobileRevisionAndIMEI(ILandroid/os/Message;)V

    .line 792
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 789
    .end local v1           #_arg1:Landroid/os/Message;
    :cond_25
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/Message;
    goto :goto_4

    .line 797
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/os/Message;
    :sswitch_50
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 798
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSN()Ljava/lang/String;

    move-result-object v3

    .line 799
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 805
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_51
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 808
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->setDefaultPhone(I)V

    .line 809
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 814
    .end local v0           #_arg0:I
    :sswitch_52
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 817
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkTypeGemini(I)I

    move-result v3

    .line 818
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 819
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 824
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_53
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 826
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 827
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCardGemini(I)Z

    move-result v3

    .line 828
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    if-eqz v3, :cond_26

    move v5, v6

    :cond_26
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 834
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_54
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 837
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->isTestIccCardGemini(I)Z

    move-result v3

    .line 838
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    if-eqz v3, :cond_27

    move v5, v6

    :cond_27
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 844
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_55
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 846
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 847
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivityGemini(I)I

    move-result v3

    .line 848
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 854
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_56
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 856
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 859
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->enableApnTypeGemini(Ljava/lang/String;I)I

    move-result v3

    .line 860
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 866
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:I
    :sswitch_57
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 870
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 871
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->disableApnTypeGemini(Ljava/lang/String;I)I

    move-result v3

    .line 872
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 878
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:I
    :sswitch_58
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 880
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 881
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivityGemini(I)I

    move-result v3

    .line 882
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 883
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 888
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_59
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 891
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossibleGemini(I)Z

    move-result v3

    .line 892
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    if-eqz v3, :cond_28

    move v5, v6

    :cond_28
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 898
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_5a
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 901
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataStateGemini(I)I

    move-result v3

    .line 902
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 903
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 908
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_5b
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 910
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 911
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivityGemini(I)I

    move-result v3

    .line 912
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 913
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 918
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_5c
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 920
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 921
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCountGemini(I)I

    move-result v3

    .line 922
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 923
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 928
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_5d
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 930
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 931
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->isFDNEnabledGemini(I)Z

    move-result v3

    .line 932
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    if-eqz v3, :cond_29

    move v5, v6

    :cond_29
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 938
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_5e
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 939
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVTIdle()Z

    move-result v3

    .line 940
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 941
    if-eqz v3, :cond_2a

    move v5, v6

    :cond_2a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 946
    .end local v3           #_result:Z
    :sswitch_5f
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 948
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 950
    .restart local v0       #_arg0:I
    new-instance v1, Landroid/telephony/BtSimapOperResponse;

    invoke-direct {v1}, Landroid/telephony/BtSimapOperResponse;-><init>()V

    .line 951
    .local v1, _arg1:Landroid/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapConnectSIM(ILandroid/telephony/BtSimapOperResponse;)I

    move-result v3

    .line 952
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 953
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 954
    if-eqz v1, :cond_2b

    .line 955
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 956
    invoke-virtual {v1, p3, v6}, Landroid/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 959
    :cond_2b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 965
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/telephony/BtSimapOperResponse;
    .end local v3           #_result:I
    :sswitch_60
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 966
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapDisconnectSIM()I

    move-result v3

    .line 967
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 973
    .end local v3           #_result:I
    :sswitch_61
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 975
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 977
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 979
    .local v1, _arg1:Ljava/lang/String;
    new-instance v2, Landroid/telephony/BtSimapOperResponse;

    invoke-direct {v2}, Landroid/telephony/BtSimapOperResponse;-><init>()V

    .line 980
    .local v2, _arg2:Landroid/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapApduRequest(ILjava/lang/String;Landroid/telephony/BtSimapOperResponse;)I

    move-result v3

    .line 981
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 983
    if-eqz v2, :cond_2c

    .line 984
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 985
    invoke-virtual {v2, p3, v6}, Landroid/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 988
    :cond_2c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 994
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Landroid/telephony/BtSimapOperResponse;
    .end local v3           #_result:I
    :sswitch_62
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 996
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 998
    .restart local v0       #_arg0:I
    new-instance v1, Landroid/telephony/BtSimapOperResponse;

    invoke-direct {v1}, Landroid/telephony/BtSimapOperResponse;-><init>()V

    .line 999
    .local v1, _arg1:Landroid/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapResetSIM(ILandroid/telephony/BtSimapOperResponse;)I

    move-result v3

    .line 1000
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1002
    if-eqz v1, :cond_2d

    .line 1003
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1004
    invoke-virtual {v1, p3, v6}, Landroid/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 1007
    :cond_2d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1013
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/telephony/BtSimapOperResponse;
    .end local v3           #_result:I
    :sswitch_63
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1017
    .restart local v0       #_arg0:I
    new-instance v1, Landroid/telephony/BtSimapOperResponse;

    invoke-direct {v1}, Landroid/telephony/BtSimapOperResponse;-><init>()V

    .line 1018
    .restart local v1       #_arg1:Landroid/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapPowerOnSIM(ILandroid/telephony/BtSimapOperResponse;)I

    move-result v3

    .line 1019
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1021
    if-eqz v1, :cond_2e

    .line 1022
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1023
    invoke-virtual {v1, p3, v6}, Landroid/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 1026
    :cond_2e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1032
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/telephony/BtSimapOperResponse;
    .end local v3           #_result:I
    :sswitch_64
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapPowerOffSIM()I

    move-result v3

    .line 1034
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1040
    .end local v3           #_result:I
    :sswitch_65
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimIndicatorState()I

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

    .line 1050
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1051
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimIndicatorStateGemini(I)I

    move-result v3

    .line 1052
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1053
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1058
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_67
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1059
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceState()Landroid/os/Bundle;

    move-result-object v3

    .line 1060
    .local v3, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    if-eqz v3, :cond_2f

    .line 1062
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1063
    invoke-virtual {v3, p3, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 1066
    :cond_2f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1072
    .end local v3           #_result:Landroid/os/Bundle;
    :sswitch_68
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1075
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceStateGemini(I)Landroid/os/Bundle;

    move-result-object v3

    .line 1076
    .restart local v3       #_result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1077
    if-eqz v3, :cond_30

    .line 1078
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1079
    invoke-virtual {v3, p3, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 1082
    :cond_30
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1088
    .end local v0           #_arg0:I
    .end local v3           #_result:Landroid/os/Bundle;
    :sswitch_69
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isPhbReady()Z

    move-result v3

    .line 1090
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1091
    if-eqz v3, :cond_31

    move v5, v6

    :cond_31
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1096
    .end local v3           #_result:Z
    :sswitch_6a
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1099
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->isPhbReadyGemini(I)Z

    move-result v3

    .line 1100
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1101
    if-eqz v3, :cond_32

    move v5, v6

    :cond_32
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1106
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_6b
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1109
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getScAddressGemini(I)Ljava/lang/String;

    move-result-object v3

    .line 1110
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1111
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1116
    .end local v0           #_arg0:I
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_6c
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1120
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1121
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setScAddressGemini(Ljava/lang/String;I)V

    .line 1122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1127
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    :sswitch_6d
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1128
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSmsDefaultSim()I

    move-result v3

    .line 1129
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1135
    .end local v3           #_result:I
    :sswitch_6e
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1136
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRejectAllVoiceCall()Z

    move-result v3

    .line 1137
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1138
    if-eqz v3, :cond_33

    move v5, v6

    :cond_33
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1143
    .end local v3           #_result:Z
    :sswitch_6f
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1144
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRejectAllVideoCall()Z

    move-result v3

    .line 1145
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    if-eqz v3, :cond_34

    move v5, v6

    :cond_34
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1151
    .end local v3           #_result:Z
    :sswitch_70
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRejectAllSIPCall()Z

    move-result v3

    .line 1153
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    if-eqz v3, :cond_35

    move v5, v6

    :cond_35
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1159
    .end local v3           #_result:Z
    :sswitch_71
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1160
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->get3GCapabilitySIM()I

    move-result v3

    .line 1161
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1162
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1167
    .end local v3           #_result:I
    :sswitch_72
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1170
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->set3GCapabilitySIM(I)Z

    move-result v3

    .line 1171
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1172
    if-eqz v3, :cond_36

    move v5, v6

    :cond_36
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1177
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_73
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1178
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->aquire3GSwitchLock()I

    move-result v3

    .line 1179
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1185
    .end local v3           #_result:I
    :sswitch_74
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1188
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->release3GSwitchLock(I)Z

    move-result v3

    .line 1189
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1190
    if-eqz v3, :cond_37

    move v5, v6

    :cond_37
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1195
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_75
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->is3GSwitchLocked()Z

    move-result v3

    .line 1197
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1198
    if-eqz v3, :cond_38

    move v5, v6

    :cond_38
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1203
    .end local v3           #_result:Z
    :sswitch_76
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1206
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getInterfaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1207
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1208
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1213
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_77
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1215
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1216
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1217
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1218
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1223
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_78
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1225
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1226
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getGateway(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1227
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1228
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1233
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_79
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1235
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1237
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1238
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getInterfaceNameGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1239
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1240
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1245
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_7a
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1247
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1249
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1250
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getIpAddressGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1251
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1252
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1257
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_7b
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1259
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1261
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1262
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getGatewayGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1263
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1264
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1269
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_7c
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1272
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAdnStorageInfo(I)[I

    move-result-object v3

    .line 1273
    .local v3, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1274
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 1279
    .end local v0           #_arg0:I
    .end local v3           #_result:[I
    :sswitch_7d
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1281
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1283
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1284
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->cleanupApnTypeGemini(Ljava/lang/String;I)I

    move-result v3

    .line 1285
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1286
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1291
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:I
    :sswitch_7e
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1293
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1295
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1296
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForSimModeChange(Landroid/os/IBinder;I)V

    .line 1297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1302
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:I
    :sswitch_7f
    const-string v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1304
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1305
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForSimModeChange(Landroid/os/IBinder;)V

    .line 1306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1311
    .end local v0           #_arg0:Landroid/os/IBinder;
    :sswitch_80
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_39

    move v0, v6

    .line 1315
    .local v0, _arg0:Z
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1316
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataRoamingEnabledGemini(ZI)V

    .line 1317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:I
    :cond_39
    move v0, v5

    .line 1313
    goto :goto_5

    .line 1322
    :sswitch_81
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1324
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3a

    move v0, v6

    .line 1326
    .restart local v0       #_arg0:Z
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3b

    move v1, v6

    .line 1327
    .local v1, _arg1:Z
    :goto_7
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRoamingIndicatorNeddedProperty(ZZ)V

    .line 1328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Z
    :cond_3a
    move v0, v5

    .line 1324
    goto :goto_6

    .restart local v0       #_arg0:Z
    :cond_3b
    move v1, v5

    .line 1326
    goto :goto_7

    .line 1333
    .end local v0           #_arg0:Z
    :sswitch_82
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1335
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1337
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1338
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->adjustModemRadioPower(II)Z

    move-result v3

    .line 1339
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1340
    if-eqz v3, :cond_3c

    move v5, v6

    :cond_3c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
