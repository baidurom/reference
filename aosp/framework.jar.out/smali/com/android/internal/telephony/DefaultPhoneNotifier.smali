.class public Lcom/android/internal/telephony/DefaultPhoneNotifier;
.super Ljava/lang/Object;
.source "DefaultPhoneNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/PhoneNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DefaultPhoneNotifier$1;,
        Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final TAG:Ljava/lang/String; = "DefaultPhoneNotifier"


# instance fields
.field private mDataStateChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

.field private mSimId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mDataStateChangedCallbacks:Ljava/util/ArrayList;

    .line 52
    const-string/jumbo v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "simId"

    .prologue
    .line 302
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mDataStateChangedCallbacks:Ljava/util/ArrayList;

    .line 303
    iput p1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mSimId:I

    .line 304
    if-nez p1, :cond_0

    .line 305
    const-string/jumbo v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 311
    :goto_0
    return-void

    .line 308
    :cond_0
    const-string/jumbo v0, "telephony.registry2"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    goto :goto_0
.end method

.method public static convertCallState(Lcom/android/internal/telephony/Phone$State;)I
    .locals 2
    .parameter "state"

    .prologue
    .line 204
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 210
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 206
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 208
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static convertCallState(I)Lcom/android/internal/telephony/Phone$State;
    .locals 1
    .parameter "state"

    .prologue
    .line 219
    packed-switch p0, :pswitch_data_0

    .line 225
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    :goto_0
    return-object v0

    .line 221
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 223
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I
    .locals 2
    .parameter "state"

    .prologue
    .line 268
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$Phone$DataActivityState:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone$DataActivityState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 278
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 270
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 272
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 274
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 276
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static convertDataActivityState(I)Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1
    .parameter "state"

    .prologue
    .line 287
    packed-switch p0, :pswitch_data_0

    .line 297
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    :goto_0
    return-object v0

    .line 289
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 291
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 293
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 295
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DORMANT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static convertDataState(Lcom/android/internal/telephony/Phone$DataState;)I
    .locals 2
    .parameter "state"

    .prologue
    .line 234
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$1;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 242
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 236
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 238
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 240
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static convertDataState(I)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "state"

    .prologue
    .line 251
    packed-switch p0, :pswitch_data_0

    .line 259
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    :goto_0
    return-object v0

    .line 253
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 255
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 257
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private doNotifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V
    .locals 14
    .parameter "sender"
    .parameter "reason"
    .parameter "apnType"
    .parameter "state"

    .prologue
    .line 127
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v13

    .line 128
    .local v13, telephony:Landroid/telephony/TelephonyManager;
    const/4 v11, 0x0

    .line 129
    .local v11, linkProperties:Landroid/net/LinkProperties;
    const/4 v8, 0x0

    .line 130
    .local v8, linkCapabilities:Landroid/net/LinkCapabilities;
    const/4 v10, 0x0

    .line 132
    .local v10, roaming:Z
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    move-object/from16 v0, p4

    if-ne v0, v1, :cond_0

    .line 133
    move-object/from16 v0, p3

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v11

    .line 134
    move-object/from16 v0, p3

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;

    move-result-object v8

    .line 136
    :cond_0
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v12

    .line 137
    .local v12, ss:Landroid/telephony/ServiceState;
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v10

    .line 139
    :cond_1
    const/4 v9, 0x0

    .line 143
    .local v9, networkType:I
    if-eqz v13, :cond_2

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeGemini(I)I

    move-result v9

    .line 145
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doNotifyDataConnection apnType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",networkType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v6

    iget v7, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mSimId:I

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->notifyDataStateChangeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/Phone$DataState;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object v7, v11

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_1
    return-void

    .line 143
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 196
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneNotifier] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method

.method private networkStringToType(Ljava/lang/String;)I
    .locals 3
    .parameter "networkType"

    .prologue
    .line 364
    const/4 v0, 0x0

    .line 366
    .local v0, ret:I
    const-string v1, "GPRS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    const/4 v0, 0x1

    .line 380
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "networkStringToType(): networkType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->log(Ljava/lang/String;)V

    .line 381
    return v0

    .line 368
    :cond_1
    const-string v1, "EDGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 369
    const/4 v0, 0x2

    goto :goto_0

    .line 370
    :cond_2
    const-string v1, "UMTS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 371
    const/4 v0, 0x3

    goto :goto_0

    .line 372
    :cond_3
    const-string v1, "HSDPA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 373
    const/16 v0, 0x8

    goto :goto_0

    .line 374
    :cond_4
    const-string v1, "HSUPA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 375
    const/16 v0, 0x9

    goto :goto_0

    .line 376
    :cond_5
    const-string v1, "HSPA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    const/16 v0, 0xa

    goto :goto_0
.end method

.method private notifyDataStateChangeCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 8
    .parameter "state"
    .parameter "reason"
    .parameter "apnName"
    .parameter "apnType"
    .parameter "unavailable"
    .parameter "simId"

    .prologue
    .line 394
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mDataStateChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 395
    .local v7, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;>;"
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

    .local v0, callback:Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 397
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;->onDataStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 399
    .end local v0           #callback:Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;
    :cond_0
    return-void
.end method


# virtual methods
.method public notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallForwardingChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyCellLocation(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 178
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 179
    .local v0, data:Landroid/os/Bundle;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCellLocation(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public notifyDataActivity(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataActivity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V
    .locals 0
    .parameter "sender"
    .parameter "reason"
    .parameter "apnType"
    .parameter "state"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->doNotifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    .line 119
    return-void
.end method

.method public notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .parameter "sender"
    .parameter "reason"
    .parameter "apnType"
    .parameter "disconnectPdpFlag"

    .prologue
    .line 316
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    .line 331
    .local v11, telephony:Landroid/telephony/TelephonyManager;
    :try_start_0
    const-string v0, "DefaultPhoneNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "apnType is "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-interface {p1, p3}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/Phone$DataState;)I

    move-result v1

    .line 333
    .local v1, state:I
    invoke-interface {p1, p3}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v2

    .line 334
    .local v2, isEnable:Z
    invoke-interface {p1, p3}, Lcom/android/internal/telephony/Phone;->getApnForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 336
    .local v4, activeApnString:Ljava/lang/String;
    if-nez p3, :cond_0

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    .line 337
    .local v5, activeApnTypes:[Ljava/lang/String;
    :goto_0
    invoke-interface {p1, p3}, Lcom/android/internal/telephony/Phone;->getInterfaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 343
    .local v6, interfaceName:Ljava/lang/String;
    if-eqz v11, :cond_1

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeGemini(I)I

    move-result v7

    .line 348
    .local v7, networkType:I
    :goto_1
    invoke-interface {p1, p3}, Lcom/android/internal/telephony/Phone;->getGateway(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 350
    .local v9, gateway:Ljava/lang/String;
    const-string v0, "DefaultPhoneNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "convertDataState(sender.getDataConnectionState(apnType) is "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v0, "DefaultPhoneNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sender.isDataConnectivityPossible(apnType) is "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v0, "DefaultPhoneNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "reason is "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string v0, "DefaultPhoneNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sender.getActiveApn() is "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-string v3, "DefaultPhoneNotifier"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sender.getActiveApnTypes() is "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez p3, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const-string v0, "DefaultPhoneNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sender.getInterfaceName(apnType) is "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string v0, "DefaultPhoneNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "((telephony!=null) ? telephony.getNetworkType() : TelephonyManager.NETWORK_TYPE_UNKNOWN) is "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    move-object v3, p2

    move/from16 v8, p4

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyAllDataConnection(IZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    .line 361
    .end local v1           #state:I
    .end local v2           #isEnable:Z
    .end local v4           #activeApnString:Ljava/lang/String;
    .end local v5           #activeApnTypes:[Ljava/lang/String;
    .end local v6           #interfaceName:Ljava/lang/String;
    .end local v7           #networkType:I
    .end local v9           #gateway:Ljava/lang/String;
    :goto_3
    return-void

    .line 336
    .restart local v1       #state:I
    .restart local v2       #isEnable:Z
    .restart local v4       #activeApnString:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v5, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 358
    .end local v1           #state:I
    .end local v2           #isEnable:Z
    .end local v4           #activeApnString:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 359
    .local v10, ex:Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 343
    .end local v10           #ex:Landroid/os/RemoteException;
    .restart local v1       #state:I
    .restart local v2       #isEnable:Z
    .restart local v4       #activeApnString:Ljava/lang/String;
    .restart local v5       #activeApnTypes:[Ljava/lang/String;
    .restart local v6       #interfaceName:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 354
    .restart local v7       #networkType:I
    .restart local v9       #gateway:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    aget-object v0, v5, v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sender"
    .parameter "reason"
    .parameter "apnType"

    .prologue
    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyMessageWaitingChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyOtaspChanged(Lcom/android/internal/telephony/Phone;I)V
    .locals 1
    .parameter "sender"
    .parameter "otaspMode"

    .prologue
    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyOtaspChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public notifyPhoneState(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "sender"

    .prologue
    .line 57
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 58
    .local v1, ringingCall:Lcom/android/internal/telephony/Call;
    const-string v0, ""

    .line 59
    .local v0, incomingNumber:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(Lcom/android/internal/telephony/Phone$State;)I

    move-result v3

    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallState(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public notifyServiceState(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 70
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 71
    .local v0, ss:Landroid/telephony/ServiceState;
    if-nez v0, :cond_0

    .line 72
    new-instance v0, Landroid/telephony/ServiceState;

    .end local v0           #ss:Landroid/telephony/ServiceState;
    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    .line 73
    .restart local v0       #ss:Landroid/telephony/ServiceState;
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 76
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyServiceState(Landroid/telephony/ServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public notifySignalStrength(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public registerDataStateChangeCallback(Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mDataStateChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    return-void
.end method

.method public unregisterDataStateChangeCallback(Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mDataStateChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 407
    return-void
.end method
