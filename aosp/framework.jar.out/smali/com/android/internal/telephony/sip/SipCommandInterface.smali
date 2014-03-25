.class Lcom/android/internal/telephony/sip/SipCommandInterface;
.super Lcom/android/internal/telephony/BaseCommands;
.source "SipCommandInterface.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method


# virtual methods
.method public ReadPhbEntry(IIILandroid/os/Message;)V
    .locals 0
    .parameter "type"
    .parameter "bIndex"
    .parameter "eIndex"
    .parameter "response"

    .prologue
    .line 457
    return-void
.end method

.method public acceptCall(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 126
    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "success"
    .parameter "ackPdu"
    .parameter "result"

    .prologue
    .line 217
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 0
    .parameter "success"
    .parameter "cause"
    .parameter "result"

    .prologue
    .line 213
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 0
    .parameter "success"
    .parameter "cause"
    .parameter "result"

    .prologue
    .line 209
    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 290
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "result"

    .prologue
    .line 66
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "newCfm"
    .parameter "result"

    .prologue
    .line 515
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 59
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 62
    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "aidPtr"
    .parameter "response"

    .prologue
    .line 422
    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "aidPtr"
    .parameter "response"

    .prologue
    .line 417
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 113
    return-void
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 0
    .parameter "cid"
    .parameter "reason"
    .parameter "result"

    .prologue
    .line 199
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "response"

    .prologue
    .line 185
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "response"

    .prologue
    .line 182
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 81
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    .line 85
    return-void
.end method

.method public emergencyDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    .line 526
    return-void
.end method

.method public enableCdmaRegisterPause(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 595
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 397
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 132
    return-void
.end method

.method public forceReleaseCall(ILandroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "result"

    .prologue
    .line 528
    return-void
.end method

.method public get3GCapabilitySIM(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 534
    return-void
.end method

.method public getAccumulatedCallMeter(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 509
    return-void
.end method

.method public getAccumulatedCallMeterMaximum(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 511
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 250
    return-void
.end method

.method public getAvoidSYSList(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 546
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 264
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 364
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 227
    return-void
.end method

.method public getCOLP(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 481
    return-void
.end method

.method public getCOLR(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 485
    return-void
.end method

.method public getCalibrationData(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 566
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 388
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 348
    return-void
.end method

.method public getCurrentCallMeter(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 507
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 72
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 78
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 157
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 361
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 351
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 94
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 97
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 88
    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 91
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 44
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 135
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 142
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 139
    return-void
.end method

.method public getMobileRevisionAndIMEI(ILandroid/os/Message;)V
    .locals 0
    .parameter "type"
    .parameter "result"

    .prologue
    .line 495
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 148
    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 326
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 247
    return-void
.end method

.method public getNitzTime(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 542
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 160
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .parameter "result"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    return-void
.end method

.method public getPpuAndCurrency(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 513
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 323
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 120
    return-void
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 151
    return-void
.end method

.method public getSmsSimMemoryStatus(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 451
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 332
    return-void
.end method

.method public getUtkLocalInfo(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 579
    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 446
    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 154
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZILandroid/os/Message;)V
    .locals 0
    .parameter "accept"
    .parameter "resCode"
    .parameter "response"

    .prologue
    .line 317
    return-void
.end method

.method public handleCallSetupRequestFromUim(ZLandroid/os/Message;)V
    .locals 0
    .parameter "accept"
    .parameter "response"

    .prologue
    .line 591
    return-void
.end method

.method public hangupAll(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 503
    return-void
.end method

.method public hangupAllEx(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 505
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 0
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    .line 101
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 107
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 104
    return-void
.end method

.method public iccCloseChannel(ILandroid/os/Message;)V
    .locals 0
    .parameter "channel"
    .parameter "response"

    .prologue
    .line 436
    return-void
.end method

.method public iccExchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "response"

    .prologue
    .line 430
    return-void
.end method

.method public iccGetATR(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 439
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 221
    return-void
.end method

.method public iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 224
    return-void
.end method

.method public iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "AID"
    .parameter "response"

    .prologue
    .line 433
    return-void
.end method

.method public iccOpenChannelWithSw(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "AID"
    .parameter "result"

    .prologue
    .line 442
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 0
    .parameter "data"
    .parameter "response"

    .prologue
    .line 296
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "strings"
    .parameter "response"

    .prologue
    .line 299
    return-void
.end method

.method public isGettingAvailableNetworks()Z
    .locals 1

    .prologue
    .line 569
    const/4 v0, 0x0

    return v0
.end method

.method public lookupOperatorName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "numeric"
    .parameter "desireLongName"

    .prologue
    .line 539
    const/4 v0, 0x0

    return-object v0
.end method

.method public profileDownload(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "profile"
    .parameter "response"

    .prologue
    .line 588
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 305
    return-void
.end method

.method public queryCDMANetWorkRegistrationState(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 562
    return-void
.end method

.method public queryCDMANetworkInfo(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 547
    return-void
.end method

.method public queryCDMASmsAndPBStatus(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 561
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 261
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "response"

    .prologue
    .line 258
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 0
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 233
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 370
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 269
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "appId"
    .parameter "response"

    .prologue
    .line 274
    return-void
.end method

.method public queryModemType(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 574
    return-void
.end method

.method public queryNetworkLock(ILandroid/os/Message;)V
    .locals 0
    .parameter "category"
    .parameter "result"

    .prologue
    .line 475
    return-void
.end method

.method public queryPhbStorageInfo(ILandroid/os/Message;)V
    .locals 0
    .parameter "type"
    .parameter "response"

    .prologue
    .line 454
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 379
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 129
    return-void
.end method

.method public replaceVtCall(ILandroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "result"

    .prologue
    .line 532
    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 0
    .parameter "available"
    .parameter "result"

    .prologue
    .line 338
    return-void
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 341
    return-void
.end method

.method public reportUtkServiceIsRunning(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 585
    return-void
.end method

.method public requestAGPSGetMpcIpPort(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 555
    return-void
.end method

.method public requestAGPSSetMpcIpPort(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "ip"
    .parameter "port"
    .parameter "result"

    .prologue
    .line 554
    return-void
.end method

.method public requestAGPSTcpConnected(ILandroid/os/Message;)V
    .locals 0
    .parameter "connected"
    .parameter "result"

    .prologue
    .line 553
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "nonce"
    .parameter "response"

    .prologue
    .line 425
    return-void
.end method

.method public requestSetEtsDev(ILandroid/os/Message;)V
    .locals 0
    .parameter "dev"
    .parameter "result"

    .prologue
    .line 558
    return-void
.end method

.method public requestSwitchHPF(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enableHPF"
    .parameter "response"

    .prologue
    .line 544
    return-void
.end method

.method public requestUtkRefresh(ILandroid/os/Message;)V
    .locals 0
    .parameter "type"
    .parameter "response"

    .prologue
    .line 582
    return-void
.end method

.method public resetAccumulatedCallMeter(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 501
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 293
    return-void
.end method

.method public resumeCdmaRegister(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 596
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "result"

    .prologue
    .line 173
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "FeatureCode"
    .parameter "response"

    .prologue
    .line 385
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 0
    .parameter "pdu"
    .parameter "result"

    .prologue
    .line 179
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 0
    .parameter "c"
    .parameter "result"

    .prologue
    .line 163
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 311
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 314
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "result"

    .prologue
    .line 176
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 308
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "ussdString"
    .parameter "response"

    .prologue
    .line 287
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 0
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    .line 123
    return-void
.end method

.method public set3GCapabilitySIM(ILandroid/os/Message;)V
    .locals 0
    .parameter "simId"
    .parameter "response"

    .prologue
    .line 536
    return-void
.end method

.method public setAccumulatedCallMeterMaximum(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "acmmax"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 499
    return-void
.end method

.method public setAvoidSYS(ZLandroid/os/Message;)V
    .locals 0
    .parameter "avoidSYS"
    .parameter "response"

    .prologue
    .line 545
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 0
    .parameter "bandMode"
    .parameter "response"

    .prologue
    .line 302
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 0
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 230
    return-void
.end method

.method public setCOLP(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "response"

    .prologue
    .line 483
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "action"
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "timeSeconds"
    .parameter "response"

    .prologue
    .line 254
    return-void
.end method

.method public setCallIndication(IIILandroid/os/Message;)V
    .locals 0
    .parameter "mode"
    .parameter "callId"
    .parameter "seqNumber"
    .parameter "result"

    .prologue
    .line 530
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 237
    return-void
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 394
    return-void
.end method

.method public setCdmaBroadcastConfig([ILandroid/os/Message;)V
    .locals 0
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 391
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 0
    .parameter "cdmaRoamingType"
    .parameter "response"

    .prologue
    .line 373
    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 0
    .parameter "cdmaSubscription"
    .parameter "response"

    .prologue
    .line 376
    return-void
.end method

.method public setFDMode(IIILandroid/os/Message;)V
    .locals 0
    .parameter "mode"
    .parameter "parameter1"
    .parameter "parameter2"
    .parameter "response"

    .prologue
    .line 468
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 279
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "appId"
    .parameter "response"

    .prologue
    .line 284
    return-void
.end method

.method public setGprsConnType(ILandroid/os/Message;)V
    .locals 0
    .parameter "mode"
    .parameter "response"

    .prologue
    .line 491
    return-void
.end method

.method public setGprsTransferType(ILandroid/os/Message;)V
    .locals 0
    .parameter "mode"
    .parameter "response"

    .prologue
    .line 493
    return-void
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 357
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .parameter "config"
    .parameter "response"

    .prologue
    .line 354
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "response"

    .prologue
    .line 329
    return-void
.end method

.method public setMeid(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "meid"
    .parameter "response"

    .prologue
    .line 549
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enableMute"
    .parameter "response"

    .prologue
    .line 145
    return-void
.end method

.method public setNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "catagory"
    .parameter "lockop"
    .parameter "password"
    .parameter "data_imsi"
    .parameter "gid1"
    .parameter "gid2"
    .parameter "result"

    .prologue
    .line 479
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 240
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "operatorNumeric"
    .parameter "response"

    .prologue
    .line 244
    return-void
.end method

.method public setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 41
    return-void
.end method

.method public setPhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 367
    return-void
.end method

.method public setPpuAndCurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "currency"
    .parameter "ppu"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 497
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 0
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 320
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 117
    return-void
.end method

.method public setRadioMode(ILandroid/os/Message;)V
    .locals 0
    .parameter "mode"
    .parameter "result"

    .prologue
    .line 489
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 0
    .parameter "on"
    .parameter "result"

    .prologue
    .line 202
    return-void
.end method

.method public setRadioPowerCardSwitch(ILandroid/os/Message;)V
    .locals 0
    .parameter "powerOn"
    .parameter "response"

    .prologue
    .line 599
    return-void
.end method

.method public setRadioPowerOff(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 487
    return-void
.end method

.method public setRegistrationSuspendEnabled(ILandroid/os/Message;)V
    .locals 0
    .parameter "enabled"
    .parameter "response"

    .prologue
    .line 571
    return-void
.end method

.method public setResumeRegistration(ILandroid/os/Message;)V
    .locals 0
    .parameter "sessionId"
    .parameter "response"

    .prologue
    .line 572
    return-void
.end method

.method public setScri(ZLandroid/os/Message;)V
    .locals 0
    .parameter "forceRelease"
    .parameter "response"

    .prologue
    .line 463
    return-void
.end method

.method public setSimInterfaceSwitch(ILandroid/os/Message;)V
    .locals 0
    .parameter "switchMode"
    .parameter "response"

    .prologue
    .line 600
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "result"

    .prologue
    .line 335
    return-void
.end method

.method public setStkEvdlCallByAP(ILandroid/os/Message;)V
    .locals 0
    .parameter "enabled"
    .parameter "response"

    .prologue
    .line 344
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 205
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 0
    .parameter "ttyMode"
    .parameter "response"

    .prologue
    .line 382
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "protocol"
    .parameter "result"

    .prologue
    .line 196
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "protocol"
    .parameter "requestCid"
    .parameter "result"

    .prologue
    .line 472
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 0
    .parameter "c"
    .parameter "result"

    .prologue
    .line 166
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 169
    return-void
.end method

.method public storeModemType(ILandroid/os/Message;)V
    .locals 0
    .parameter "modemType"
    .parameter "response"

    .prologue
    .line 573
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 47
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 53
    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "pin2"
    .parameter "aid"
    .parameter "response"

    .prologue
    .line 409
    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "pin"
    .parameter "aid"
    .parameter "response"

    .prologue
    .line 401
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "puk"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 50
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "puk"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 56
    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "aid"
    .parameter "response"

    .prologue
    .line 413
    return-void
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "puk"
    .parameter "newPin"
    .parameter "aid"
    .parameter "response"

    .prologue
    .line 405
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "netpin"
    .parameter "result"

    .prologue
    .line 69
    return-void
.end method

.method public switchRilSocket(II)V
    .locals 0
    .parameter "preferredNetworkType"
    .parameter "simId"

    .prologue
    .line 601
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 110
    return-void
.end method

.method public voiceAccept(ILandroid/os/Message;)V
    .locals 0
    .parameter "callId"
    .parameter "result"

    .prologue
    .line 522
    return-void
.end method

.method public vtDial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 518
    return-void
.end method

.method public vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    .line 520
    return-void
.end method

.method public writePhbEntry(Lcom/android/internal/telephony/PhbEntry;Landroid/os/Message;)V
    .locals 0
    .parameter "entry"
    .parameter "result"

    .prologue
    .line 460
    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "status"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 191
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "status"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 188
    return-void
.end method
