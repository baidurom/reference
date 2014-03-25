.class final Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "CdmaSMSDispatcher.java"


# static fields
.field private static final EVENT_CDMA_SMS_DISPATCHER_BASE:I = 0x7d0

.field private static final EVENT_ICC_CHANGED:I = 0x7d1

.field private static final EVENT_QUERY_CDMA_MODEM_SMS_INIT_STATE:I = 0x7d5

.field private static final EVENT_QUERY_CDMA_MODEM_SMS_INIT_STATE_DONE:I = 0x7d6

.field private static final EVENT_QUERY_CDMA_NETWORK_REGISTER_STATE:I = 0x7d3

.field private static final EVENT_QUERY_CDMA_NETWORK_REGISTER_STATE_DONE:I = 0x7d4

.field private static final EVENT_RUIM_READY:I = 0x7d2

.field private static final QUERY_SMS_REGISTER_FEASIBILITY_DELAY_MILLISECONDS:I = 0x2710

.field private static final QUERY_SMS_REGISTER_FEASIBILITY_MAX_RETRY_TIMES:I = 0x64

.field private static final TAG:Ljava/lang/String; = "CDMA"


# instance fields
.field private mCdmaModemSmsInitDone:Z

.field private mCdmaNetworkRegistered:Z

.field private final mCheckForDuplicatePortsInOmadmWapPush:Z

.field private mLastAcknowledgedSmsFingerprint:[B

.field private mLastDispatchedSmsFingerprint:[B

.field private mQueryCDMASmsRegisterFeasibilityTimes:I

.field private final mScpResultsReceiver:Landroid/content/BroadcastReceiver;

.field private mSmsRegisterFeasibilityQuerying:Z

.field private mUiccApplcation:Lcom/android/internal/telephony/UiccCardApplication;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 3
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 101
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 102
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/UiccCardApplication;

    .line 116
    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 117
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    .line 119
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaNetworkRegistered:Z

    .line 120
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaModemSmsInitDone:Z

    .line 126
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #bool@config_duplicate_port_omadm_wappush#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCheckForDuplicatePortsInOmadmWapPush:Z

    .line 681
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$1;-><init>(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mScpResultsReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 134
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSimId:I

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(I)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v1, 0x7d1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 137
    const-string v0, "CDMA"

    const-string v1, "viacode, mUiccController != null, register for icc change successly"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_0
    return-void

    .line 139
    :cond_0
    const-string v0, "CDMA"

    const-string v1, "viacode, mUiccController = null, cant register for icc change"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method private static checkDuplicatePortOmadmWappush([BI)Z
    .locals 6
    .parameter "origPdu"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 652
    add-int/lit8 p1, p1, 0x4

    .line 653
    array-length v5, p0

    sub-int/2addr v5, p1

    new-array v1, v5, [B

    .line 654
    .local v1, omaPdu:[B
    array-length v5, v1

    invoke-static {p0, p1, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 656
    new-instance v2, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 657
    .local v2, pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    const/4 v3, 0x2

    .line 660
    .local v3, wspIndex:I
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 675
    :cond_0
    :goto_0
    return v4

    .line 664
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int/2addr v3, v5

    .line 667
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 671
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, mimeType:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v5, "application/vnd.syncml.notification"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 673
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 7
    .parameter "sms"

    .prologue
    .line 308
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 309
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 310
    .local v4, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v5, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    iget v6, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->messageRef:I

    if-ne v5, v6, :cond_1

    .line 312
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 313
    iget-object v3, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 314
    .local v3, intent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 315
    .local v1, fillIn:Landroid/content/Intent;
    const-string v5, "pdu"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 316
    const-string v5, "format"

    const-string v6, "3gpp2"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v1           #fillIn:Landroid/content/Intent;
    .end local v3           #intent:Landroid/app/PendingIntent;
    .end local v4           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    :goto_1
    return-void

    .line 308
    .restart local v4       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 319
    .restart local v1       #fillIn:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private handleServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 4
    .parameter "sms"

    .prologue
    .line 332
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSmsCbProgramData()Ljava/util/ArrayList;

    move-result-object v1

    .line 333
    .local v1, programDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/cdma/CdmaSmsCbProgramData;>;"
    if-nez v1, :cond_0

    .line 334
    const-string v2, "CDMA"

    const-string v3, "handleServiceCategoryProgramData: program data list is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :goto_0
    return-void

    .line 338
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "sender"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v2, "program_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 341
    const-string v2, "android.permission.RECEIVE_SMS"

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mScpResultsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method private notifyCdmaSmsAutoRegisterBeFeasible()V
    .locals 4

    .prologue
    .line 146
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaNetworkRegistered:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaModemSmsInitDone:Z

    if-nez v1, :cond_1

    .line 147
    :cond_0
    const-string v1, "CDMA"

    const-string v2, "viacode, notifyCdmaSmsAutoRegisterBeFeasible failed for not both true"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "viacode, mCdmaNetworkRegistered = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaNetworkRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , mCdmaModemSmsInitDone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaModemSmsInitDone:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    return-void

    .line 152
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.CDMA_AUTO_SMS_REGISTER_FEASIBLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.permission.SEND_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 154
    const-string v1, "CDMA"

    const-string v2, "viacode, app can do auto sms register work now"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    goto :goto_0
.end method

.method private onUpdateIccAvailability()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 160
    const-string v1, "CDMA"

    const-string v2, "viacode, CdmaSMSDispatcher received EVENT_ICC_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v1, :cond_1

    .line 162
    const-string v1, "CDMA"

    const-string v2, "viacode, but mUiccController == null, cant do nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 169
    .local v0, newUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/UiccCardApplication;

    if-eq v1, v0, :cond_0

    .line 170
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_2

    .line 171
    const-string v1, "CDMA"

    const-string v2, "viacode, Removing stale icc objects, mUiccApplcation have changed!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 173
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/UiccCardApplication;

    .line 175
    :cond_2
    if-eqz v0, :cond_0

    .line 176
    const-string v1, "CDMA"

    const-string v2, "viacode, New card found!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/UiccCardApplication;

    .line 178
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/UiccCardApplication;

    const/16 v2, 0x7d2

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 179
    const-string v1, "CDMA"

    const-string v2, "viacode, register for EVENT_RUIM_READY successly"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static resultToCause(I)I
    .locals 1
    .parameter "rc"

    .prologue
    .line 625
    packed-switch p0, :pswitch_data_0

    .line 636
    :pswitch_0
    const/16 v0, 0x60

    :goto_0
    return v0

    .line 629
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 631
    :pswitch_2
    const/16 v0, 0x23

    goto :goto_0

    .line 633
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 625
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 4
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 610
    const-string v2, "ril.cdma.inecmmode"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 611
    .local v1, inEcm:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 622
    :goto_0
    return-void

    .line 615
    :cond_0
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->resultToCause(I)I

    move-result v0

    .line 616
    .local v0, causeCode:I
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v0, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V

    .line 618
    if-nez v0, :cond_1

    .line 619
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    .line 621
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    goto :goto_0
.end method

.method protected activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 2
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 881
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaBroadcastActivation(ZLandroid/os/Message;)V

    .line 882
    return-void

    .line 881
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 550
    invoke-static {p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    .locals 8
    .parameter "scAddress"
    .parameter "address"
    .parameter
    .parameter "status"
    .parameter "timestamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ)I"
        }
    .end annotation

    .prologue
    .local p3, text:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 896
    const-string v4, "CDMA"

    const-string v6, "CDMASMSDispatcher: copy text message to icc card"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSuccess:Z

    .line 907
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    .line 911
    .local v2, msgCount:I
    const-string v4, "CDMA"

    const-string v6, "[copyText storage available"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    if-eq p4, v5, :cond_0

    const/4 v4, 0x3

    if-ne p4, v4, :cond_1

    .line 918
    :cond_0
    const-string v4, "CDMA"

    const-string v6, "[copyText to encode deliver pdu"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :goto_0
    const-string v4, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[copyText msgCount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    if-le v2, v5, :cond_4

    .line 928
    const-string v4, "CDMA"

    const-string v6, "[copyText multi-part message"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_8

    .line 937
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSuccess:Z

    if-nez v4, :cond_6

    .line 938
    const-string v4, "CDMA"

    const-string v6, "[copyText Exception happened when copy message"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 970
    .end local v1           #i:I
    :goto_3
    return v4

    .line 919
    :cond_1
    const/4 v4, 0x5

    if-eq p4, v4, :cond_2

    const/4 v4, 0x7

    if-ne p4, v4, :cond_3

    .line 920
    :cond_2
    const-string v4, "CDMA"

    const-string v6, "[copyText to encode submit pdu"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 922
    :cond_3
    const-string v4, "CDMA"

    const-string v6, "[copyText invalid status, default is deliver pdu"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 923
    goto :goto_3

    .line 929
    :cond_4
    if-ne v2, v5, :cond_5

    .line 930
    const-string v4, "CDMA"

    const-string v6, "[copyText single-part message"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 932
    :cond_5
    const-string v4, "CDMA"

    const-string v6, "[copyText invalid message count"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 933
    goto :goto_3

    .line 942
    .restart local v1       #i:I
    :cond_6
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p2, v4, p5, p6}, Lcom/android/internal/telephony/cdma/SmsMessage;->createEfPdu(Ljava/lang/String;Ljava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    .line 944
    .local v3, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v3, :cond_7

    .line 945
    const-string v4, "CDMA"

    const-string v6, "[copyText write submit pdu into UIM"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, v3, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x6e

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v4, p4, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V

    .line 952
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 954
    :try_start_0
    const-string v4, "CDMA"

    const-string v7, "[copyText wait until the message be wrote in UIM"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 961
    const-string v4, "CDMA"

    const-string v6, "[copyText thread is waked up"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    move v4, v5

    .line 949
    goto :goto_3

    .line 956
    :catch_0
    move-exception v0

    .line 957
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "CDMA"

    const-string v7, "[copyText interrupted while trying to copy text message into UIM"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    monitor-exit v6

    move v4, v5

    goto :goto_3

    .line 960
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 964
    .end local v3           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_8
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSuccess:Z

    if-ne v4, v5, :cond_9

    .line 965
    const-string v4, "CDMA"

    const-string v5, "[copyText all messages have been copied into UIM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 969
    :cond_9
    const-string v4, "CDMA"

    const-string v6, "[copyText copy failed"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 970
    goto/16 :goto_3
.end method

.method protected createMessageFromSubmitPdu([B[B)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "smsc"
    .parameter "tpdu"

    .prologue
    .line 1305
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaces;->convertSubmitpduToPdu([B)[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    return-object v0
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 20
    .parameter "smsb"

    .prologue
    .line 349
    if-nez p1, :cond_0

    .line 350
    const-string v17, "CDMA"

    const-string v18, "dispatchMessage: message is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/16 v17, 0x2

    .line 468
    :goto_0
    return v17

    .line 354
    :cond_0
    const-string v17, "ril.cdma.inecmmode"

    const-string v18, "false"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 355
    .local v7, inEcm:Ljava/lang/String;
    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 356
    const/16 v17, -0x1

    goto :goto_0

    .line 359
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsReceiveDisabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 361
    const-string v17, "CDMA"

    const-string v18, "Received short message on device which doesn\'t support receiving SMS. Ignored."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/16 v17, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v12, p1

    .line 366
    check-cast v12, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 369
    .local v12, sms:Lcom/android/internal/telephony/cdma/SmsMessage;
    const/16 v17, 0x1

    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 370
    const-string v17, "CDMA"

    const-string v18, "Broadcast type message"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseBroadcastSms()Landroid/telephony/SmsCbMessage;

    move-result-object v11

    .line 372
    .local v11, message:Landroid/telephony/SmsCbMessage;
    if-eqz v11, :cond_3

    .line 373
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchBroadcastMessage(Landroid/telephony/SmsCbMessage;)V

    .line 375
    :cond_3
    const/16 v17, 0x1

    goto :goto_0

    .line 379
    .end local v11           #message:Landroid/telephony/SmsCbMessage;
    :cond_4
    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 382
    const/16 v17, 0x1

    goto :goto_0

    .line 385
    :cond_5
    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 386
    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v14

    .line 387
    .local v14, teleService:I
    const/4 v5, 0x0

    .line 389
    .local v5, handled:Z
    const/16 v17, 0x1003

    move/from16 v0, v17

    if-eq v0, v14, :cond_6

    const/high16 v17, 0x4

    move/from16 v0, v17

    if-ne v0, v14, :cond_8

    .line 392
    :cond_6
    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v16

    .line 393
    .local v16, voicemailCount:I
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Voicemail count="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 397
    .local v13, sp:Landroid/content/SharedPreferences;
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 398
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v17, "vm_count_key_cdma"

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 399
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setVoiceMessageWaiting(II)V

    .line 401
    const/4 v5, 0x1

    .line 426
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v13           #sp:Landroid/content/SharedPreferences;
    .end local v16           #voicemailCount:I
    :cond_7
    :goto_1
    if-eqz v5, :cond_d

    .line 427
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 402
    :cond_8
    const/16 v17, 0x1002

    move/from16 v0, v17

    if-eq v0, v14, :cond_9

    const/16 v17, 0x1005

    move/from16 v0, v17

    if-ne v0, v14, :cond_a

    :cond_9
    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 405
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 406
    const/4 v5, 0x1

    goto :goto_1

    .line 407
    :cond_a
    const/16 v17, 0x1006

    move/from16 v0, v17

    if-ne v0, v14, :cond_b

    .line 408
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->handleServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 409
    const/4 v5, 0x1

    goto :goto_1

    .line 410
    :cond_b
    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v17

    if-nez v17, :cond_c

    .line 414
    const/4 v5, 0x1

    goto :goto_1

    .line 415
    :cond_c
    const v17, 0xfded

    move/from16 v0, v17

    if-ne v0, v14, :cond_7

    .line 416
    const-string v17, "CDMA"

    const-string v18, "send cdma reg message"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    new-instance v9, Landroid/content/Intent;

    const-string v17, "android.telephony.sms.CDMA_REG_SMS_ACTION"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 418
    .local v9, intent:Landroid/content/Intent;
    const-string v17, "pdu"

    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 419
    const-string v17, "format"

    const-string v18, "3gpp2"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const-string v17, "simId"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSimId:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 423
    const/4 v5, 0x1

    goto :goto_1

    .line 430
    .end local v9           #intent:Landroid/content/Intent;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v17

    if-nez v17, :cond_e

    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_e

    .line 435
    const/16 v17, 0x3

    goto/16 :goto_0

    .line 439
    :cond_e
    const/16 v17, 0x1004

    move/from16 v0, v17

    if-eq v0, v14, :cond_f

    const v17, 0xfdea

    move/from16 v0, v17

    if-ne v0, v14, :cond_11

    .line 441
    :cond_f
    const/4 v15, 0x0

    .line 443
    .local v15, userData:[B
    :try_start_0
    new-instance v8, Lcom/android/internal/util/BitwiseInputStream;

    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 444
    .local v8, inStream:Lcom/android/internal/util/BitwiseInputStream;
    const/16 v17, 0x45

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 446
    invoke-virtual {v8}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v17

    div-int/lit8 v10, v17, 0x8

    .line 447
    .local v10, len:I
    new-array v15, v10, [B

    .line 448
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    if-ge v6, v10, :cond_10

    .line 449
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v17

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v15, v6
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 451
    .end local v6           #i:I
    .end local v8           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .end local v10           #len:I
    :catch_0
    move-exception v4

    .line 452
    .local v4, ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string v17, "CDMA"

    const-string v18, "process wap pdu fail"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    .end local v4           #ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :cond_10
    iget v0, v12, Lcom/android/internal/telephony/cdma/SmsMessage;->messageRef:I

    move/from16 v17, v0

    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->processCdmaWapPdu([BILjava/lang/String;)I

    move-result v17

    goto/16 :goto_0

    .line 462
    .end local v15           #userData:[B
    :cond_11
    const/16 v17, 0x1002

    move/from16 v0, v17

    if-eq v0, v14, :cond_12

    const/16 v17, 0x1005

    move/from16 v0, v17

    if-eq v0, v14, :cond_12

    const/16 v17, 0x1

    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_12

    .line 465
    const/16 v17, 0x4

    goto/16 :goto_0

    .line 468
    :cond_12
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v17

    goto/16 :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewCdmaSms(Landroid/os/Handler;)V

    .line 289
    const-string v0, "CDMA"

    const-string v1, "CdmaSMSDispatcher dispose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/16 v0, 0x7d3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->removeMessages(I)V

    .line 291
    const/16 v0, 0x7d5

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->removeMessages(I)V

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 300
    :cond_1
    return-void
.end method

.method protected getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 886
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCdmaBroadcastConfig(Landroid/os/Message;)V

    .line 887
    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    const-string v0, "3gpp2"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/16 v11, 0x64

    const/16 v10, 0x7d5

    const-wide/16 v8, 0x2710

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 186
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 280
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    .line 282
    :goto_0
    return-void

    .line 188
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->onUpdateIccAvailability()V

    goto :goto_0

    .line 191
    :pswitch_1
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    if-nez v4, :cond_0

    .line 192
    const-string v4, "CDMA"

    const-string v5, "viacode, received EVENT_RUIM_READY in CDMASmsDispather"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    .line 194
    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 195
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 196
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x7d4

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->queryCDMANetWorkRegistrationState(Landroid/os/Message;)V

    goto :goto_0

    .line 198
    :cond_0
    const-string v4, "CDMA"

    const-string v5, "viacode, received EVENT_RUIM_READY, but query processing, dont need query multi."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    :pswitch_2
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 203
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "viacode, do network register state query again, retry times = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    if-le v4, v11, :cond_1

    .line 205
    const-string v4, "CDMA"

    const-string v5, "over retry limits(100), query cdma sms register feasibility failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    goto :goto_0

    .line 210
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x7d4

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->queryCDMANetWorkRegistrationState(Landroid/os/Message;)V

    goto :goto_0

    .line 215
    :pswitch_3
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    if-eqz v4, :cond_4

    .line 216
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 217
    .local v0, aresult:Landroid/os/AsyncResult;
    if-eqz v0, :cond_3

    .line 218
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v3, v4

    check-cast v3, [I

    .line 219
    .local v3, res:[I
    if-eqz v3, :cond_2

    array-length v4, v3

    if-ne v4, v6, :cond_2

    aget v4, v3, v7

    if-ne v4, v6, :cond_2

    .line 222
    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 223
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaNetworkRegistered:Z

    .line 224
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 227
    :cond_2
    const/16 v4, 0x7d3

    invoke-virtual {p0, v4, v8, v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 231
    .end local v3           #res:[I
    :cond_3
    const/16 v4, 0x7d3

    invoke-virtual {p0, v4, v8, v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 234
    .end local v0           #aresult:Landroid/os/AsyncResult;
    :cond_4
    const-string v4, "CDMA"

    const-string v5, "viacode, received EVENT_QUERY_CDMA_NETWORK_REGISTER_STATE_DONE but is not querying"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v4, "CDMA"

    const-string v5, "viacode, must make sure is retrying in the same instance, drop this done EVENT if is not retry querying."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 241
    :pswitch_4
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 242
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "viacode, do sms init state query again, retry times = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    if-le v4, v11, :cond_5

    .line 244
    const-string v4, "CDMA"

    const-string v5, "over retry limits(100), query cdma modem sms init state failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    goto/16 :goto_0

    .line 249
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x7d6

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->queryCDMASmsAndPBStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 254
    :pswitch_5
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    if-eqz v4, :cond_8

    .line 255
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 256
    .local v1, asyncresult:Landroid/os/AsyncResult;
    if-eqz v1, :cond_7

    .line 257
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v2, v4

    check-cast v2, [I

    .line 258
    .local v2, queryres:[I
    if-eqz v2, :cond_6

    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    aget v4, v2, v7

    if-ne v4, v6, :cond_6

    .line 261
    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 262
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaModemSmsInitDone:Z

    .line 263
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->notifyCdmaSmsAutoRegisterBeFeasible()V

    goto/16 :goto_0

    .line 266
    :cond_6
    invoke-virtual {p0, v10, v8, v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 270
    .end local v2           #queryres:[I
    :cond_7
    invoke-virtual {p0, v10, v8, v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 273
    .end local v1           #asyncresult:Landroid/os/AsyncResult;
    :cond_8
    const-string v4, "CDMA"

    const-string v5, "viacode, received EVENT_QUERY_CDMA_MODEM_SMS_INIT_STATE_DONE but is not querying"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v4, "CDMA"

    const-string v5, "viacode, must make sure is retrying in the same instance, drop this done EVENT if is not retry querying."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected processCdmaWapPdu([BILjava/lang/String;)I
    .locals 15
    .parameter "pdu"
    .parameter "referenceNumber"
    .parameter "address"

    .prologue
    .line 482
    const/4 v11, 0x0

    .line 484
    .local v11, index:I
    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .local v12, index:I
    aget-byte v1, p1, v11

    and-int/lit16 v13, v1, 0xff

    .line 485
    .local v13, msgType:I
    if-eqz v13, :cond_0

    .line 486
    const-string v1, "CDMA"

    const-string v3, "Received a WAP SMS which is not WDP. Discard."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/4 v1, 0x1

    move v11, v12

    .line 524
    .end local v12           #index:I
    .restart local v11       #index:I
    :goto_0
    return v1

    .line 489
    .end local v11           #index:I
    .restart local v12       #index:I
    :cond_0
    add-int/lit8 v11, v12, 0x1

    .end local v12           #index:I
    .restart local v11       #index:I
    aget-byte v1, p1, v12

    and-int/lit16 v6, v1, 0xff

    .line 490
    .local v6, totalSegments:I
    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .restart local v12       #index:I
    aget-byte v1, p1, v11

    and-int/lit16 v5, v1, 0xff

    .line 492
    .local v5, segment:I
    if-lt v5, v6, :cond_1

    .line 493
    const-string v1, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WDP bad segment #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expecting 0-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v6, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/4 v1, 0x1

    move v11, v12

    .end local v12           #index:I
    .restart local v11       #index:I
    goto :goto_0

    .line 498
    .end local v11           #index:I
    .restart local v12       #index:I
    :cond_1
    const/4 v14, 0x0

    .line 499
    .local v14, sourcePort:I
    const/4 v9, 0x0

    .line 500
    .local v9, destinationPort:I
    if-nez v5, :cond_2

    .line 502
    add-int/lit8 v11, v12, 0x1

    .end local v12           #index:I
    .restart local v11       #index:I
    aget-byte v1, p1, v12

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v14, v1, 0x8

    .line 503
    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .restart local v12       #index:I
    aget-byte v1, p1, v11

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v14, v1

    .line 504
    add-int/lit8 v11, v12, 0x1

    .end local v12           #index:I
    .restart local v11       #index:I
    aget-byte v1, p1, v12

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v9, v1, 0x8

    .line 505
    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .restart local v12       #index:I
    aget-byte v1, p1, v11

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v9, v1

    .line 508
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCheckForDuplicatePortsInOmadmWapPush:Z

    if-eqz v1, :cond_2

    .line 509
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->checkDuplicatePortOmadmWappush([BI)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 510
    add-int/lit8 v11, v12, 0x4

    .line 516
    .end local v12           #index:I
    .restart local v11       #index:I
    :goto_1
    const-string v1, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received WAP PDU. Type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", originator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", src-port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dst-port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", segment# = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    move-object/from16 v0, p1

    array-length v1, v0

    sub-int/2addr v1, v11

    new-array v2, v1, [B

    .line 522
    .local v2, userData:[B
    const/4 v1, 0x0

    move-object/from16 v0, p1

    array-length v3, v0

    sub-int/2addr v3, v11

    move-object/from16 v0, p1

    invoke-static {v0, v11, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 524
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    move-object v1, p0

    move-object/from16 v3, p3

    move/from16 v4, p2

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->processMessagePart([BLjava/lang/String;IIIJIZ)I

    move-result v1

    goto/16 :goto_0

    .end local v2           #userData:[B
    .end local v11           #index:I
    .restart local v12       #index:I
    :cond_2
    move v11, v12

    .end local v12           #index:I
    .restart local v11       #index:I
    goto :goto_1
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "originalPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 762
    const-string v0, "CDMA"

    const-string v1, "viacode: CdmaSMSDispatcher, implemented by VIA for interfaces needed. sendData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    if-eqz p7, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object v0, p2

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v6

    .line 765
    .local v6, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-nez v6, :cond_1

    .line 766
    const-string v0, "CDMA"

    const-string v1, "via sendData error: invalid paramters, pdu == null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :goto_1
    return-void

    .line 763
    .end local v6           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 769
    .restart local v6       #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_1
    iget-object v1, v6, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v2, v6, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v0, p0

    move-object v3, p6

    move-object v4, p7

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 532
    if-eqz p6, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {p2, p1, p3, p4, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 534
    .local v0, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, v0, p5, p6, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 535
    return-void

    .line 532
    .end local v0           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 778
    .local p4, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsRawData;>;"
    .local p5, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "CDMA"

    const-string v1, "Error! The functionality sendMultipartData is not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 20
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter "destPort"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 793
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v17, "CDMA"

    const-string v18, "viacode: CdmaSMSDispatcher, implemented by VIA for interfaces needed. sendMultipartText"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v17

    move/from16 v0, v17

    and-int/lit16 v12, v0, 0xff

    .line 796
    .local v12, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 797
    .local v10, msgCount:I
    const/4 v6, 0x0

    .line 799
    .local v6, encoding:I
    new-array v7, v10, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 800
    .local v7, encodingForParts:[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-nez v6, :cond_2

    .line 801
    const-string v17, "CDMA"

    const-string v18, "viacode: unkown encoding, to find one best."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v10, :cond_2

    .line 803
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/CharSequence;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v5

    .line 804
    .local v5, details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v0, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v6, v0, :cond_1

    if-eqz v6, :cond_0

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_1

    .line 807
    :cond_0
    iget v6, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 809
    :cond_1
    aput-object v5, v7, v9

    .line 802
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 813
    .end local v5           #details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v9           #i:I
    :cond_2
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRemainingMessages:I

    .line 815
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_1
    if-ge v9, v10, :cond_b

    .line 816
    new-instance v3, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 817
    .local v3, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v12, v3, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 818
    add-int/lit8 v17, v9, 0x1

    move/from16 v0, v17

    iput v0, v3, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 819
    iput v10, v3, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 820
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v3, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 822
    new-instance v14, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v14}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 823
    .local v14, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v3, v14, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 825
    if-ltz p4, :cond_3

    .line 826
    new-instance v11, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v11}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 827
    .local v11, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    move/from16 v0, p4

    iput v0, v11, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 828
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v11, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 829
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v11, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 831
    iput-object v11, v14, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 834
    .end local v11           #portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :cond_3
    const/4 v13, 0x0

    .line 835
    .local v13, sentIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v9, :cond_4

    .line 836
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #sentIntent:Landroid/app/PendingIntent;
    check-cast v13, Landroid/app/PendingIntent;

    .line 839
    .restart local v13       #sentIntent:Landroid/app/PendingIntent;
    :cond_4
    const/4 v4, 0x0

    .line 840
    .local v4, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p6, :cond_5

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v9, :cond_5

    .line 841
    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v4, Landroid/app/PendingIntent;

    .line 844
    .restart local v4       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_5
    new-instance v16, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 845
    .local v16, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 846
    move-object/from16 v0, v16

    iput-object v14, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 847
    aget-object v17, v7, v9

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 848
    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 854
    :goto_2
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 856
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "viacode: to use the encoding type ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] to send the "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " part"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    if-eqz v4, :cond_9

    add-int/lit8 v17, v10, -0x1

    move/from16 v0, v17

    if-ne v9, v0, :cond_9

    const/16 v17, 0x1

    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v15

    .line 864
    .local v15, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v15, :cond_a

    .line 865
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v13, v4, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 815
    :cond_6
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 849
    .end local v15           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_7
    aget-object v17, v7, v9

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 850
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_2

    .line 852
    :cond_8
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_2

    .line 861
    :cond_9
    const/16 v17, 0x0

    goto :goto_3

    .line 867
    .restart local v15       #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_a
    const-string v17, "CDMA"

    const-string v18, "viacode: sendMultipartTextWithEncodingType: submitPdu is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    if-eqz v13, :cond_6

    .line 870
    const/16 v17, 0x3

    :try_start_0
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 871
    :catch_0
    move-exception v8

    .line 872
    .local v8, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v17, "CDMA"

    const-string v18, "viacode: failed to send back RESULT_ERROR_NULL_PDU"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 877
    .end local v3           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v4           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v8           #ex:Landroid/app/PendingIntent$CanceledException;
    .end local v13           #sentIntent:Landroid/app/PendingIntent;
    .end local v14           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v15           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v16           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_b
    return-void
.end method

.method protected sendMultipartTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 18
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter "encodingType"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1048
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v15, "CDMA"

    const-string v16, "viacode: CdmaSMSDispatcher, implemented by VIA for interfaces needed. sendMultipartTextWithEncodingType"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v15

    and-int/lit16 v10, v15, 0xff

    .line 1050
    .local v10, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1051
    .local v9, msgCount:I
    move/from16 v5, p4

    .line 1052
    .local v5, encoding:I
    const-string v15, "CDMA"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "viacode: want to use encoding = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    if-ltz v5, :cond_0

    const/16 v15, 0xa

    if-le v5, v15, :cond_1

    .line 1056
    :cond_0
    const-string v15, "CDMA"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "viacode: unavalid encoding = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const-string v15, "CDMA"

    const-string v16, "viacode: to use the unkown default."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    const/4 v5, 0x0

    .line 1061
    :cond_1
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRemainingMessages:I

    .line 1063
    new-array v6, v9, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 1064
    .local v6, encodingForParts:[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-nez v5, :cond_4

    .line 1065
    const-string v15, "CDMA"

    const-string v16, "viacode: unkown encoding, to find one best."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v9, :cond_5

    .line 1067
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v4

    .line 1068
    .local v4, details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v15, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v5, v15, :cond_3

    if-eqz v5, :cond_2

    const/4 v15, 0x1

    if-ne v5, v15, :cond_3

    .line 1071
    :cond_2
    iget v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1073
    :cond_3
    aput-object v4, v6, v8

    .line 1066
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1076
    .end local v4           #details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v8           #i:I
    :cond_4
    const-string v15, "CDMA"

    const-string v16, "viacode: APP want use specified encoding type."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_1
    if-ge v8, v9, :cond_5

    .line 1078
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v15, v0, v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v4

    .line 1079
    .restart local v4       #details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iput v5, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1080
    aput-object v4, v6, v8

    .line 1077
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1084
    .end local v4           #details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_5
    const-string v15, "CDMA"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "viacode: now to send one by one, msgCount = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_d

    .line 1086
    new-instance v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 1087
    .local v2, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v10, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 1088
    add-int/lit8 v15, v8, 0x1

    iput v15, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 1089
    iput v9, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 1096
    const/4 v15, 0x1

    iput-boolean v15, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 1097
    new-instance v12, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v12}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1098
    .local v12, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v2, v12, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 1100
    const/4 v11, 0x0

    .line 1101
    .local v11, sentIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-le v15, v8, :cond_6

    .line 1102
    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #sentIntent:Landroid/app/PendingIntent;
    check-cast v11, Landroid/app/PendingIntent;

    .line 1105
    .restart local v11       #sentIntent:Landroid/app/PendingIntent;
    :cond_6
    const/4 v3, 0x0

    .line 1106
    .local v3, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p6, :cond_7

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-le v15, v8, :cond_7

    .line 1107
    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v3, Landroid/app/PendingIntent;

    .line 1110
    .restart local v3       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_7
    new-instance v14, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v14}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1111
    .local v14, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    iput-object v15, v14, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1112
    iput-object v12, v14, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1113
    aget-object v15, v6, v8

    iget v15, v15, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 1114
    const/4 v15, 0x2

    iput v15, v14, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1120
    :goto_3
    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 1122
    const-string v15, "CDMA"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "viacode: to use the encoding type ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v14, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "] to send the "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " part"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    if-eqz v3, :cond_b

    add-int/lit8 v15, v9, -0x1

    if-ne v8, v15, :cond_b

    const/4 v15, 0x1

    :goto_4
    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v13

    .line 1130
    .local v13, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v13, :cond_c

    .line 1131
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v13, v11, v3, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 1085
    :cond_8
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 1115
    .end local v13           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_9
    aget-object v15, v6, v8

    iget v15, v15, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 1116
    const/4 v15, 0x0

    iput v15, v14, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_3

    .line 1118
    :cond_a
    const/4 v15, 0x4

    iput v15, v14, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_3

    .line 1127
    :cond_b
    const/4 v15, 0x0

    goto :goto_4

    .line 1133
    .restart local v13       #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_c
    const-string v15, "CDMA"

    const-string v16, "viacode: sendMultipartTextWithEncodingType: submitPdu is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    if-eqz v11, :cond_8

    .line 1136
    const/4 v15, 0x3

    :try_start_0
    invoke-virtual {v11, v15}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 1137
    :catch_0
    move-exception v7

    .line 1138
    .local v7, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v15, "CDMA"

    const-string v16, "viacode: failed to send back RESULT_ERROR_NULL_PDU"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1143
    .end local v2           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v3           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v7           #ex:Landroid/app/PendingIntent$CanceledException;
    .end local v11           #sentIntent:Landroid/app/PendingIntent;
    .end local v12           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v13           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v14           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_d
    return-void
.end method

.method public sendMultipartTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 21
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter "extraParams"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1216
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v4, "CDMA"

    const-string v5, "viacode: CdmaSMSDispatcher, implemented by VIA for interfaces needed. sendMultipartTextWithExtraParams"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    if-nez p4, :cond_4

    .line 1221
    const-string v4, "CDMA"

    const-string v5, "viacode: extraParams == null, will encoding with no extra feature."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    const/4 v10, -0x1

    .line 1223
    .local v10, validityPeriod:I
    const/4 v9, 0x0

    .line 1229
    .local v9, encoding:I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v18, v0

    .line 1230
    .local v18, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 1233
    .local v17, msgCount:I
    if-ltz v9, :cond_0

    const/16 v4, 0xa

    if-le v9, v4, :cond_1

    .line 1234
    :cond_0
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "viacode: unavalid encoding = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    const-string v4, "CDMA"

    const-string v5, "viacode: to use the unkown default."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    const/4 v9, 0x0

    .line 1239
    :cond_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mRemainingMessages:I

    .line 1241
    move/from16 v0, v17

    new-array v14, v0, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 1242
    .local v14, encodingForParts:[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-nez v9, :cond_5

    .line 1243
    const-string v4, "CDMA"

    const-string v5, "viacode: unkown encoding, to find one best."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 1245
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v13

    .line 1246
    .local v13, details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v4, v13, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v9, v4, :cond_3

    if-eqz v9, :cond_2

    const/4 v4, 0x1

    if-ne v9, v4, :cond_3

    .line 1249
    :cond_2
    iget v9, v13, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1251
    :cond_3
    aput-object v13, v14, v16

    .line 1244
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1225
    .end local v9           #encoding:I
    .end local v10           #validityPeriod:I
    .end local v13           #details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v14           #encodingForParts:[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v16           #i:I
    .end local v17           #msgCount:I
    .end local v18           #refNumber:I
    :cond_4
    const-string v4, "validity_period"

    const/4 v5, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 1226
    .restart local v10       #validityPeriod:I
    const-string v4, "encoding_type"

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .restart local v9       #encoding:I
    goto :goto_0

    .line 1254
    .restart local v14       #encodingForParts:[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v17       #msgCount:I
    .restart local v18       #refNumber:I
    :cond_5
    const-string v4, "CDMA"

    const-string v5, "viacode: APP want use specified encoding type."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 1256
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-static {v4, v5, v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v13

    .line 1257
    .restart local v13       #details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iput v9, v13, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1258
    aput-object v13, v14, v16

    .line 1255
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 1262
    .end local v13           #details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_6
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "viacode: now to send one by one, msgCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_c

    .line 1264
    new-instance v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v11}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 1265
    .local v11, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v18

    iput v0, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 1266
    add-int/lit8 v4, v16, 0x1

    iput v4, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 1267
    move/from16 v0, v17

    iput v0, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 1274
    const/4 v4, 0x1

    iput-boolean v4, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 1275
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1276
    .local v8, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v11, v8, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 1278
    const/16 v19, 0x0

    .line 1279
    .local v19, sentIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_7

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v16

    if-le v4, v0, :cond_7

    .line 1280
    move-object/from16 v0, p5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19           #sentIntent:Landroid/app/PendingIntent;
    check-cast v19, Landroid/app/PendingIntent;

    .line 1283
    .restart local v19       #sentIntent:Landroid/app/PendingIntent;
    :cond_7
    const/4 v12, 0x0

    .line 1284
    .local v12, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p6, :cond_8

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v16

    if-le v4, v0, :cond_8

    .line 1285
    move-object/from16 v0, p6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v12, Landroid/app/PendingIntent;

    .line 1288
    .restart local v12       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_8
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v12, :cond_a

    const/4 v7, 0x1

    :goto_4
    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-static/range {v4 .. v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v20

    .line 1290
    .local v20, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v20, :cond_b

    .line 1291
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v12, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 1263
    :cond_9
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 1288
    .end local v20           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_a
    const/4 v7, 0x0

    goto :goto_4

    .line 1293
    .restart local v20       #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_b
    const-string v4, "CDMA"

    const-string v5, "viacode: sendMultipartTextWithEncodingType: submitPdu is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    if-eqz v19, :cond_9

    .line 1296
    const/4 v4, 0x3

    :try_start_0
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 1297
    :catch_0
    move-exception v15

    .line 1298
    .local v15, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v4, "CDMA"

    const-string v5, "viacode: failed to send back RESULT_ERROR_NULL_PDU"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1303
    .end local v8           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v11           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v12           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v15           #ex:Landroid/app/PendingIntent$CanceledException;
    .end local v19           #sentIntent:Landroid/app/PendingIntent;
    .end local v20           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_c
    return-void
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 4
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "message"
    .parameter "smsHeader"
    .parameter "encoding"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "lastPart"

    .prologue
    const/4 v2, 0x1

    .line 558
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 559
    .local v1, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p3, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 560
    iput-object p4, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 561
    if-ne p5, v2, :cond_0

    .line 563
    const/4 v3, 0x2

    iput v3, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 567
    :goto_0
    iput-boolean v2, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 573
    if-eqz p7, :cond_1

    if-eqz p8, :cond_1

    :goto_1
    invoke-static {p1, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 576
    .local v0, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, v0, p6, p7, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 577
    return-void

    .line 565
    .end local v0           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v3, 0x4

    iput v3, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 573
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 4
    .parameter "tracker"

    .prologue
    .line 598
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 601
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "pdu"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v1, v3

    check-cast v1, [B

    .line 603
    .local v1, pdu:[B
    const/4 v3, 0x2

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 604
    .local v2, reply:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    .line 605
    return-void
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 6
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "destAddr"

    .prologue
    .line 581
    const-string v0, "ril.cdma.inecmmode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    if-eqz p2, :cond_0

    .line 584
    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_0

    .line 585
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "destPort"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 785
    const-string v0, "CDMA"

    const-string v1, "Error! The functionality sendText with port is not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 541
    if-eqz p5, :cond_0

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x0

    invoke-static {p2, p1, p3, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 543
    .local v0, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, v0, p4, p5, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 544
    return-void

    .line 541
    .end local v0           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected sendTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "encodingType"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 984
    const-string v5, "CDMA"

    const-string v6, "viacode: CdmaSMSDispatcher, implemented by VIA for interfaces needed. sendTextWithEncodingType"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    move v1, p4

    .line 988
    .local v1, encoding:I
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "viacode: want to use encoding = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    if-ltz v1, :cond_0

    const/16 v5, 0xa

    if-le v1, v5, :cond_1

    .line 992
    :cond_0
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "viacode: unavalid encoding = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const-string v5, "CDMA"

    const-string v6, "viacode: to use the unkown default."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const/4 v1, 0x0

    .line 997
    :cond_1
    if-nez v1, :cond_3

    .line 998
    const-string v5, "CDMA"

    const-string v6, "viacode: unkown encoding, to find one best."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const/4 v5, 0x0

    invoke-virtual {p0, p3, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    .line 1000
    .local v0, details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v1, v5, :cond_3

    if-eqz v1, :cond_2

    const/4 v5, 0x1

    if-ne v1, v5, :cond_3

    .line 1003
    :cond_2
    iget v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1007
    .end local v0           #details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_3
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1008
    .local v4, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p3, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1009
    const/4 v5, 0x1

    if-ne v1, v5, :cond_5

    .line 1010
    const/4 v5, 0x2

    iput v5, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1016
    :goto_0
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 1022
    if-eqz p6, :cond_7

    const/4 v5, 0x1

    :goto_1
    invoke-static {p1, v4, v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    .line 1025
    .local v3, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v3, :cond_8

    .line 1026
    invoke-virtual {p0, v3, p5, p6, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 1037
    :cond_4
    :goto_2
    return-void

    .line 1011
    .end local v3           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_5
    const/4 v5, 0x2

    if-ne v1, v5, :cond_6

    .line 1012
    const/4 v5, 0x0

    iput v5, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 1014
    :cond_6
    const/4 v5, 0x4

    iput v5, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 1022
    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    .line 1028
    .restart local v3       #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_8
    const-string v5, "CDMA"

    const-string v6, "viacode : sendTextWithEncodingType: submitPdu is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    if-eqz p5, :cond_4

    .line 1031
    const/4 v5, 0x3

    :try_start_0
    invoke-virtual {p5, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1032
    :catch_0
    move-exception v2

    .line 1033
    .local v2, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v5, "CDMA"

    const-string v6, "viacode: failed to send back RESULT_ERROR_NULL_PDU"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public sendTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 12
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "extraParams"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 1156
    const-string v2, "CDMA"

    const-string v3, "viacode: CdmaSMSDispatcher, implemented by VIA for interfaces needed. sendTextWithExtraParams"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    if-nez p4, :cond_5

    .line 1162
    const-string v2, "CDMA"

    const-string v3, "viacode: extraParams == null, will encoding with no extra feature."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    const/4 v8, -0x1

    .line 1164
    .local v8, validityPeriod:I
    const/4 v7, 0x0

    .line 1170
    .local v7, encoding:I
    :goto_0
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "viacode: validityPeriod is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "viacode: want to use encoding = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    if-ltz v7, :cond_0

    const/16 v2, 0xa

    if-le v7, v2, :cond_1

    .line 1175
    :cond_0
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "viacode: unavalid encoding = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    const-string v2, "CDMA"

    const-string v3, "viacode: to use the unkown default."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const/4 v7, 0x0

    .line 1180
    :cond_1
    if-nez v7, :cond_3

    .line 1181
    const-string v2, "CDMA"

    const-string v3, "viacode: unkown encoding, to find one best."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    const/4 v2, 0x0

    invoke-virtual {p0, p3, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v9

    .line 1183
    .local v9, details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v2, v9, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v7, v2, :cond_3

    if-eqz v7, :cond_2

    const/4 v2, 0x1

    if-ne v7, v2, :cond_3

    .line 1186
    :cond_2
    iget v7, v9, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1190
    .end local v9           #details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_3
    if-eqz p6, :cond_6

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-static/range {v2 .. v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v11

    .line 1193
    .local v11, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v11, :cond_7

    .line 1194
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {p0, v11, v0, v1, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 1205
    :cond_4
    :goto_2
    return-void

    .line 1166
    .end local v7           #encoding:I
    .end local v8           #validityPeriod:I
    .end local v11           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_5
    const-string v2, "validity_period"

    const/4 v3, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1167
    .restart local v8       #validityPeriod:I
    const-string v2, "encoding_type"

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .restart local v7       #encoding:I
    goto/16 :goto_0

    .line 1190
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 1196
    .restart local v11       #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_7
    const-string v2, "CDMA"

    const-string v3, "viacode : sendTextWithExtraParams: submitPdu is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    if-eqz p5, :cond_4

    .line 1199
    const/4 v2, 0x3

    :try_start_0
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1200
    :catch_0
    move-exception v10

    .line 1201
    .local v10, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v2, "CDMA"

    const-string v3, "viacode: failed to send back RESULT_ERROR_NULL_PDU"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected setCellBroadcastConfig([ILandroid/os/Message;)V
    .locals 1
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaBroadcastConfig([ILandroid/os/Message;)V

    .line 892
    return-void
.end method
