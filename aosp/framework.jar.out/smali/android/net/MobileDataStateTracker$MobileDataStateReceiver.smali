.class Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MobileDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MobileDataStateReceiver"
.end annotation


# instance fields
.field private mTrackerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/MobileDataStateTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mTrackerMap:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/MobileDataStateTracker$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 190
    invoke-direct {p0}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public addTracker(Ljava/lang/String;Landroid/net/MobileDataStateTracker;)V
    .locals 3
    .parameter "apnType"
    .parameter "tracker"

    .prologue
    .line 194
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MobileDataStateReceiver add target tracker ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mTrackerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "android.intent.action.ANY_DATA_STATE_MOBILE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 201
    const-string v13, "apnType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, apnType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mTrackerMap:Ljava/util/HashMap;

    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/MobileDataStateTracker;

    .line 203
    .local v12, tracker:Landroid/net/MobileDataStateTracker;
    if-nez v12, :cond_1

    .line 367
    .end local v3           #apnType:Ljava/lang/String;
    .end local v12           #tracker:Landroid/net/MobileDataStateTracker;
    :cond_0
    :goto_0
    return-void

    .line 208
    .restart local v3       #apnType:Ljava/lang/String;
    .restart local v12       #tracker:Landroid/net/MobileDataStateTracker;
    :cond_1
    const-string v13, "MobileDataStateTracker"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MobileDataStateReceiver received: ACTION_ANY_DATA_CONNECTION_STATE_CHANGED_MOBILE ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v10, 0x0

    .line 211
    .local v10, slot:I
    const/4 v5, 0x0

    .line 213
    .local v5, curSlot:I
    const-string/jumbo v13, "simId"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 214
    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v12}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getSimId()I

    move-result v5

    .line 216
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Intent from SIM "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", current SIM "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", current DataState "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    #getter for: Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;
    invoke-static {v12}, Landroid/net/MobileDataStateTracker;->access$400(Landroid/net/MobileDataStateTracker;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/MobileDataStateTracker;->access$100(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 217
    #getter for: Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;
    invoke-static {v12}, Landroid/net/MobileDataStateTracker;->access$400(Landroid/net/MobileDataStateTracker;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v13, v14, :cond_2

    .line 218
    if-eq v10, v5, :cond_2

    .line 219
    const-string v13, "Receive peer SIM data state.ignor!"

    #calls: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/MobileDataStateTracker;->access$100(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_2
    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v12}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v13

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v14

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 225
    const-class v13, Lcom/android/internal/telephony/Phone$DataState;

    const-string/jumbo v14, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/Phone$DataState;

    .line 227
    .local v11, state:Lcom/android/internal/telephony/Phone$DataState;
    const-string/jumbo v13, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 228
    .local v9, reason:Ljava/lang/String;
    const-string v13, "apn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, apnName:Ljava/lang/String;
    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v12}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v13

    const-string/jumbo v14, "networkRoaming"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    invoke-virtual {v13, v14}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 231
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v12}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " setting isAvailable to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v13, "networkUnvailable"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x1

    :goto_1
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/MobileDataStateTracker;->access$100(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 234
    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v12}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v14

    const-string/jumbo v13, "networkUnvailable"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_5

    const/4 v13, 0x1

    :goto_2
    invoke-virtual {v14, v13}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 237
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Received state="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", old="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    #getter for: Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;
    invoke-static {v12}, Landroid/net/MobileDataStateTracker;->access$400(Landroid/net/MobileDataStateTracker;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", reason="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-nez v9, :cond_6

    const-string v13, "(unspecified)"

    :goto_3
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/MobileDataStateTracker;->access$100(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 240
    #getter for: Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;
    invoke-static {v12}, Landroid/net/MobileDataStateTracker;->access$400(Landroid/net/MobileDataStateTracker;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v13

    if-eq v13, v11, :cond_9

    .line 241
    #setter for: Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;
    invoke-static {v12, v11}, Landroid/net/MobileDataStateTracker;->access$402(Landroid/net/MobileDataStateTracker;Lcom/android/internal/telephony/Phone$DataState;)Lcom/android/internal/telephony/Phone$DataState;

    .line 242
    sget-object v13, Landroid/net/MobileDataStateTracker$1;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    goto/16 :goto_0

    .line 244
    :pswitch_0
    invoke-virtual {v12}, Landroid/net/MobileDataStateTracker;->isTeardownRequested()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 245
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 248
    :cond_3
    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v12, v13, v9, v2, v10}, Landroid/net/MobileDataStateTracker;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 231
    :cond_4
    const/4 v13, 0x0

    goto :goto_1

    .line 234
    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    :cond_6
    move-object v13, v9

    .line 237
    goto :goto_3

    .line 261
    :pswitch_1
    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v12, v13, v9, v2, v10}, Landroid/net/MobileDataStateTracker;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 268
    :pswitch_2
    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v12, v13, v9, v2, v10}, Landroid/net/MobileDataStateTracker;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 274
    :pswitch_3
    const-string v13, "linkProperties"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/LinkProperties;

    #setter for: Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v12, v13}, Landroid/net/MobileDataStateTracker;->access$602(Landroid/net/MobileDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 276
    #getter for: Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v12}, Landroid/net/MobileDataStateTracker;->access$600(Landroid/net/MobileDataStateTracker;)Landroid/net/LinkProperties;

    move-result-object v13

    if-nez v13, :cond_7

    .line 277
    const-string v13, "CONNECTED event did not supply link properties."

    #calls: Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 278
    new-instance v13, Landroid/net/LinkProperties;

    invoke-direct {v13}, Landroid/net/LinkProperties;-><init>()V

    #setter for: Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v12, v13}, Landroid/net/MobileDataStateTracker;->access$602(Landroid/net/MobileDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 280
    :cond_7
    const-string v13, "linkCapabilities"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/LinkCapabilities;

    #setter for: Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v12, v13}, Landroid/net/MobileDataStateTracker;->access$802(Landroid/net/MobileDataStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 282
    #getter for: Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v12}, Landroid/net/MobileDataStateTracker;->access$800(Landroid/net/MobileDataStateTracker;)Landroid/net/LinkCapabilities;

    move-result-object v13

    if-nez v13, :cond_8

    .line 283
    const-string v13, "CONNECTED event did not supply link capabilities."

    #calls: Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 284
    new-instance v13, Landroid/net/LinkCapabilities;

    invoke-direct {v13}, Landroid/net/LinkCapabilities;-><init>()V

    #setter for: Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v12, v13}, Landroid/net/MobileDataStateTracker;->access$802(Landroid/net/MobileDataStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 287
    :cond_8
    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v12, v13, v9, v2, v10}, Landroid/net/MobileDataStateTracker;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    .line 293
    invoke-virtual {v12}, Landroid/net/MobileDataStateTracker;->setInterfaceMTU()Z

    goto/16 :goto_0

    .line 299
    :cond_9
    const-string v13, "linkPropertiesChanged"

    invoke-static {v9, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 300
    const-string v13, "linkProperties"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/LinkProperties;

    #setter for: Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v12, v13}, Landroid/net/MobileDataStateTracker;->access$602(Landroid/net/MobileDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 301
    #getter for: Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v12}, Landroid/net/MobileDataStateTracker;->access$600(Landroid/net/MobileDataStateTracker;)Landroid/net/LinkProperties;

    move-result-object v13

    if-nez v13, :cond_a

    .line 302
    const-string v13, "No link property in LINK_PROPERTIES change event."

    #calls: Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 303
    new-instance v13, Landroid/net/LinkProperties;

    invoke-direct {v13}, Landroid/net/LinkProperties;-><init>()V

    #setter for: Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v12, v13}, Landroid/net/MobileDataStateTracker;->access$602(Landroid/net/MobileDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 306
    :cond_a
    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v12}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v13

    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v12}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v12}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v9, v15}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    #getter for: Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;
    invoke-static {v12}, Landroid/net/MobileDataStateTracker;->access$900(Landroid/net/MobileDataStateTracker;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x3

    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v12}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 310
    .local v8, msg:Landroid/os/Message;
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 313
    .end local v8           #msg:Landroid/os/Message;
    :cond_b
    if-eqz v9, :cond_0

    const-string v13, "apnFailed"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    const-string/jumbo v13, "noSuchPdp"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    :cond_c
    if-eqz v3, :cond_0

    const-string v13, "default"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 318
    const-string v13, "Handle Phone.REASON_APN_FAILED OR  Phone.REASON_NO_SUCH_PDP from GeminiDataSubUtil"

    #calls: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/MobileDataStateTracker;->access$100(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 319
    sget-object v13, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v11, v13, :cond_0

    .line 320
    invoke-virtual {v12}, Landroid/net/MobileDataStateTracker;->isTeardownRequested()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 321
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 324
    :cond_d
    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v12, v13, v9, v2, v10}, Landroid/net/MobileDataStateTracker;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 331
    .end local v2           #apnName:Ljava/lang/String;
    .end local v3           #apnType:Ljava/lang/String;
    .end local v5           #curSlot:I
    .end local v9           #reason:Ljava/lang/String;
    .end local v10           #slot:I
    .end local v11           #state:Lcom/android/internal/telephony/Phone$DataState;
    .end local v12           #tracker:Landroid/net/MobileDataStateTracker;
    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 332
    const-string v13, "apnType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 333
    .restart local v3       #apnType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mTrackerMap:Ljava/util/HashMap;

    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/MobileDataStateTracker;

    .line 334
    .restart local v12       #tracker:Landroid/net/MobileDataStateTracker;
    if-eqz v12, :cond_0

    .line 338
    const-string v13, "MobileDataStateTracker"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MobileDataStateReceiver received: ACTION_ANY_DATA_CONNECTION_FAILED ignore ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v10, 0x0

    .line 341
    .restart local v10       #slot:I
    const-string/jumbo v13, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 342
    .restart local v9       #reason:Ljava/lang/String;
    const-string v13, "apn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 344
    .restart local v2       #apnName:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Received "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " broadcast"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_f

    const-string v13, ""

    :goto_4
    #calls: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/MobileDataStateTracker;->access$100(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 348
    const-string/jumbo v13, "simId"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 349
    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v12, v13, v9, v2, v10}, Landroid/net/MobileDataStateTracker;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 344
    :cond_f
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    .line 353
    .end local v2           #apnName:Ljava/lang/String;
    .end local v3           #apnType:Ljava/lang/String;
    .end local v9           #reason:Ljava/lang/String;
    .end local v10           #slot:I
    .end local v12           #tracker:Landroid/net/MobileDataStateTracker;
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/DataConnectionTracker;->ACTION_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 354
    const-string v13, "MobileDataStateTracker"

    const-string v14, "MobileDataStateReceiver received: ACTION_DATA_CONNECTION_TRACKER_MESSENGER"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    sget-object v13, Lcom/android/internal/telephony/DataConnectionTracker;->EXTRA_MESSENGER:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/os/Messenger;

    .line 356
    .local v7, messenger:Landroid/os/Messenger;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mTrackerMap:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 357
    .local v4, collection:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/MobileDataStateTracker;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 358
    .local v6, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/MobileDataStateTracker;>;"
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 359
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/MobileDataStateTracker;

    .line 360
    .restart local v12       #tracker:Landroid/net/MobileDataStateTracker;
    #setter for: Landroid/net/MobileDataStateTracker;->mMessenger:Landroid/os/Messenger;
    invoke-static {v12, v7}, Landroid/net/MobileDataStateTracker;->access$1002(Landroid/net/MobileDataStateTracker;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 361
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 362
    .local v1, ac:Lcom/android/internal/util/AsyncChannel;
    #getter for: Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;
    invoke-static {v12}, Landroid/net/MobileDataStateTracker;->access$1100(Landroid/net/MobileDataStateTracker;)Landroid/content/Context;

    move-result-object v13

    #getter for: Landroid/net/MobileDataStateTracker;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Landroid/net/MobileDataStateTracker;->access$1200(Landroid/net/MobileDataStateTracker;)Landroid/os/Handler;

    move-result-object v14

    #getter for: Landroid/net/MobileDataStateTracker;->mMessenger:Landroid/os/Messenger;
    invoke-static {v12}, Landroid/net/MobileDataStateTracker;->access$1000(Landroid/net/MobileDataStateTracker;)Landroid/os/Messenger;

    move-result-object v15

    invoke-virtual {v1, v13, v14, v15}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto :goto_5

    .line 365
    .end local v1           #ac:Lcom/android/internal/util/AsyncChannel;
    .end local v4           #collection:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/MobileDataStateTracker;>;"
    .end local v6           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/MobileDataStateTracker;>;"
    .end local v7           #messenger:Landroid/os/Messenger;
    .end local v12           #tracker:Landroid/net/MobileDataStateTracker;
    :cond_11
    const-string v13, "MobileDataStateTracker"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MobileDataStateReceiver received: ignore "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
