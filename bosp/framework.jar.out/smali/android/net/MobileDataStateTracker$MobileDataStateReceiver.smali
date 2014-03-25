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
    .line 230
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mTrackerMap:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/MobileDataStateTracker$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 230
    invoke-direct {p0}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public addTracker(Ljava/lang/String;Landroid/net/MobileDataStateTracker;)V
    .locals 3
    .parameter "apnType"
    .parameter "tracker"

    .prologue
    .line 234
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

    .line 235
    iget-object v0, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mTrackerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string v22, "android.intent.action.ANY_DATA_STATE_MOBILE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 241
    const-string v21, "apnType"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 242
    .local v6, apnType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mTrackerMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/MobileDataStateTracker;

    .line 243
    .local v20, tracker:Landroid/net/MobileDataStateTracker;
    if-nez v20, :cond_1

    .line 448
    .end local v6           #apnType:Ljava/lang/String;
    .end local v20           #tracker:Landroid/net/MobileDataStateTracker;
    :cond_0
    :goto_0
    return-void

    .line 247
    .restart local v6       #apnType:Ljava/lang/String;
    .restart local v20       #tracker:Landroid/net/MobileDataStateTracker;
    :cond_1
    const/16 v17, 0x0

    .line 248
    .local v17, slot:I
    const/4 v8, 0x0

    .line 250
    .local v8, curSlot:I
    const-string/jumbo v21, "simId"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 251
    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->getSimId()I

    move-result v8

    .line 254
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v21

    if-nez v21, :cond_3

    #getter for: Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$400(Landroid/net/MobileDataStateTracker;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_2

    #getter for: Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$400(Landroid/net/MobileDataStateTracker;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 257
    :cond_2
    move/from16 v0, v17

    if-eq v0, v8, :cond_3

    .line 258
    const-string v21, "Receive peer SIM data state.ignor!"

    #calls: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->access$100(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_3
    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v15

    .line 268
    .local v15, oldSubtype:I
    const/4 v13, 0x0

    .line 271
    .local v13, newSubType:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v21

    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getSimId()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/TelephonyManager;->getNetworkTypeGemini(I)I

    move-result v13

    .line 272
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v21

    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getSimId()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/TelephonyManager;->getNetworkTypeNameGemini(I)Ljava/lang/String;

    move-result-object v19

    .line 278
    .local v19, subTypeName:Ljava/lang/String;
    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 279
    if-eq v13, v15, :cond_4

    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 280
    #getter for: Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x7

    const/16 v23, 0x0

    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v24

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 282
    .local v12, msg:Landroid/os/Message;
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    .line 285
    .end local v12           #msg:Landroid/os/Message;
    :cond_4
    const-class v21, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string/jumbo v22, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 287
    .local v18, state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string/jumbo v21, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 288
    .local v16, reason:Ljava/lang/String;
    const-string v21, "apn"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 289
    .local v5, apnName:Ljava/lang/String;
    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v21

    const-string/jumbo v22, "networkRoaming"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 291
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$600(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " setting isAvailable to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v21, "networkUnvailable"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    if-nez v21, :cond_6

    const/16 v21, 0x1

    :goto_1
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    #calls: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->access$100(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 294
    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v22

    const-string/jumbo v21, "networkUnvailable"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    if-nez v21, :cond_7

    const/16 v21, 0x1

    :goto_2
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 298
    const/4 v9, 0x0

    .line 299
    .local v9, dataStateChanged:Z
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v21

    if-eqz v21, :cond_b

    .line 300
    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfoDt:[Landroid/net/NetworkInfo;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;)[Landroid/net/NetworkInfo;

    move-result-object v21

    aget-object v14, v21, v17

    .line 301
    .local v14, nwInfo:Landroid/net/NetworkInfo;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeGemini(I)I

    move-result v21

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeNameGemini(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 303
    const-string/jumbo v21, "networkRoaming"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 304
    const-string/jumbo v21, "networkUnvailable"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    if-nez v21, :cond_8

    const/16 v21, 0x1

    :goto_3
    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 305
    #getter for: Landroid/net/MobileDataStateTracker;->mMobileDataStateDt:[Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$800(Landroid/net/MobileDataStateTracker;)[Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v21

    aget-object v21, v21, v17

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_9

    const/4 v9, 0x1

    .line 307
    :goto_4
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[DT]Received state="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", old[slot:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    #getter for: Landroid/net/MobileDataStateTracker;->mMobileDataStateDt:[Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$800(Landroid/net/MobileDataStateTracker;)[Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v22

    aget-object v22, v22, v17

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", reason="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    if-nez v16, :cond_a

    const-string v21, "(unspecified)"

    :goto_5
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    #calls: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->access$100(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 319
    .end local v14           #nwInfo:Landroid/net/NetworkInfo;
    :goto_6
    if-eqz v9, :cond_11

    .line 320
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v21

    if-eqz v21, :cond_e

    .line 321
    #getter for: Landroid/net/MobileDataStateTracker;->mMobileDataStateDt:[Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$800(Landroid/net/MobileDataStateTracker;)[Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v21

    aput-object v18, v21, v17

    .line 326
    :goto_7
    sget-object v21, Landroid/net/MobileDataStateTracker$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_0

    goto/16 :goto_0

    .line 328
    :pswitch_0
    invoke-virtual/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->isTeardownRequested()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 329
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 332
    :cond_5
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/net/MobileDataStateTracker;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 291
    .end local v9           #dataStateChanged:Z
    :cond_6
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 294
    :cond_7
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 304
    .restart local v9       #dataStateChanged:Z
    .restart local v14       #nwInfo:Landroid/net/NetworkInfo;
    :cond_8
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 305
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_a
    move-object/from16 v21, v16

    .line 307
    goto :goto_5

    .line 311
    .end local v14           #nwInfo:Landroid/net/NetworkInfo;
    :cond_b
    #getter for: Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$400(Landroid/net/MobileDataStateTracker;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_c

    const/4 v9, 0x1

    .line 313
    :goto_8
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Received state="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", old="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    #getter for: Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$400(Landroid/net/MobileDataStateTracker;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", reason="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    if-nez v16, :cond_d

    const-string v21, "(unspecified)"

    :goto_9
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    #calls: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->access$100(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 311
    :cond_c
    const/4 v9, 0x0

    goto :goto_8

    :cond_d
    move-object/from16 v21, v16

    .line 313
    goto :goto_9

    .line 323
    :cond_e
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    #setter for: Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {v0, v1}, Landroid/net/MobileDataStateTracker;->access$402(Landroid/net/MobileDataStateTracker;Lcom/android/internal/telephony/PhoneConstants$DataState;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_7

    .line 345
    :pswitch_1
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/net/MobileDataStateTracker;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 352
    :pswitch_2
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/net/MobileDataStateTracker;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 358
    :pswitch_3
    const-string/jumbo v21, "linkProperties"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    check-cast v21, Landroid/net/LinkProperties;

    #setter for: Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->access$902(Landroid/net/MobileDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 360
    #getter for: Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$900(Landroid/net/MobileDataStateTracker;)Landroid/net/LinkProperties;

    move-result-object v21

    if-nez v21, :cond_f

    .line 361
    const-string v21, "CONNECTED event did not supply link properties."

    #calls: Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->access$1000(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 362
    new-instance v21, Landroid/net/LinkProperties;

    invoke-direct/range {v21 .. v21}, Landroid/net/LinkProperties;-><init>()V

    #setter for: Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->access$902(Landroid/net/MobileDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 364
    :cond_f
    const-string/jumbo v21, "linkCapabilities"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    check-cast v21, Landroid/net/LinkCapabilities;

    #setter for: Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->access$1102(Landroid/net/MobileDataStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 366
    #getter for: Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$1100(Landroid/net/MobileDataStateTracker;)Landroid/net/LinkCapabilities;

    move-result-object v21

    if-nez v21, :cond_10

    .line 367
    const-string v21, "CONNECTED event did not supply link capabilities."

    #calls: Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->access$1000(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 368
    new-instance v21, Landroid/net/LinkCapabilities;

    invoke-direct/range {v21 .. v21}, Landroid/net/LinkCapabilities;-><init>()V

    #setter for: Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->access$1102(Landroid/net/MobileDataStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 371
    :cond_10
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/net/MobileDataStateTracker;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 380
    :cond_11
    const-string/jumbo v21, "linkPropertiesChanged"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 381
    const-string/jumbo v21, "linkProperties"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    check-cast v21, Landroid/net/LinkProperties;

    #setter for: Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->access$902(Landroid/net/MobileDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 382
    #getter for: Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$900(Landroid/net/MobileDataStateTracker;)Landroid/net/LinkProperties;

    move-result-object v21

    if-nez v21, :cond_12

    .line 383
    const-string v21, "No link property in LINK_PROPERTIES change event."

    #calls: Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->access$1000(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 384
    new-instance v21, Landroid/net/LinkProperties;

    invoke-direct/range {v21 .. v21}, Landroid/net/LinkProperties;-><init>()V

    #setter for: Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->access$902(Landroid/net/MobileDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 387
    :cond_12
    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v21

    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v22

    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    #getter for: Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x3

    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 391
    .restart local v12       #msg:Landroid/os/Message;
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    .line 394
    .end local v12           #msg:Landroid/os/Message;
    :cond_13
    if-eqz v16, :cond_0

    const-string v21, "apnFailed"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_14

    const-string/jumbo v21, "noSuchPdp"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    :cond_14
    if-eqz v6, :cond_0

    const-string v21, "default"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 399
    const-string v21, "Handle PhoneConstants.REASON_APN_FAILED OR  PhoneConstants.REASON_NO_SUCH_PDP from GeminiDataSubUtil"

    #calls: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->access$100(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 400
    sget-object v21, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 401
    invoke-virtual/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->isTeardownRequested()Z

    move-result v21

    if-eqz v21, :cond_15

    .line 402
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 405
    :cond_15
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/net/MobileDataStateTracker;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 412
    .end local v5           #apnName:Ljava/lang/String;
    .end local v6           #apnType:Ljava/lang/String;
    .end local v8           #curSlot:I
    .end local v9           #dataStateChanged:Z
    .end local v13           #newSubType:I
    .end local v15           #oldSubtype:I
    .end local v16           #reason:Ljava/lang/String;
    .end local v17           #slot:I
    .end local v18           #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    .end local v19           #subTypeName:Ljava/lang/String;
    .end local v20           #tracker:Landroid/net/MobileDataStateTracker;
    :cond_16
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string v22, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 413
    const-string v21, "apnType"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 414
    .restart local v6       #apnType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mTrackerMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/MobileDataStateTracker;

    .line 415
    .restart local v20       #tracker:Landroid/net/MobileDataStateTracker;
    if-eqz v20, :cond_0

    .line 419
    const-string v21, "MobileDataStateTracker"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MobileDataStateReceiver received: ACTION_ANY_DATA_CONNECTION_FAILED ignore ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/16 v17, 0x0

    .line 422
    .restart local v17       #slot:I
    const-string/jumbo v21, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 423
    .restart local v16       #reason:Ljava/lang/String;
    const-string v21, "apn"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 425
    .restart local v5       #apnName:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Received "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " broadcast"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_17

    const-string v21, ""

    :goto_a
    #calls: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Landroid/net/MobileDataStateTracker;->access$100(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 429
    const-string/jumbo v21, "simId"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 430
    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/net/MobileDataStateTracker;->setDetailedStateGemini(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 425
    :cond_17
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto :goto_a

    .line 434
    .end local v5           #apnName:Ljava/lang/String;
    .end local v6           #apnType:Ljava/lang/String;
    .end local v16           #reason:Ljava/lang/String;
    .end local v17           #slot:I
    .end local v20           #tracker:Landroid/net/MobileDataStateTracker;
    :cond_18
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/DctConstants;->ACTION_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_19

    .line 435
    const-string v21, "MobileDataStateTracker"

    const-string v22, "MobileDataStateReceiver received: ACTION_DATA_CONNECTION_TRACKER_MESSENGER"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    sget-object v21, Lcom/android/internal/telephony/DctConstants;->EXTRA_MESSENGER:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/os/Messenger;

    .line 437
    .local v11, messenger:Landroid/os/Messenger;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mTrackerMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    .line 438
    .local v7, collection:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/MobileDataStateTracker;>;"
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 439
    .local v10, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/MobileDataStateTracker;>;"
    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 440
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/MobileDataStateTracker;

    .line 441
    .restart local v20       #tracker:Landroid/net/MobileDataStateTracker;
    move-object/from16 v0, v20

    #setter for: Landroid/net/MobileDataStateTracker;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0, v11}, Landroid/net/MobileDataStateTracker;->access$1202(Landroid/net/MobileDataStateTracker;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 442
    new-instance v4, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v4}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 443
    .local v4, ac:Lcom/android/internal/util/AsyncChannel;
    #getter for: Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$1300(Landroid/net/MobileDataStateTracker;)Landroid/content/Context;

    move-result-object v21

    #getter for: Landroid/net/MobileDataStateTracker;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$1400(Landroid/net/MobileDataStateTracker;)Landroid/os/Handler;

    move-result-object v22

    #getter for: Landroid/net/MobileDataStateTracker;->mMessenger:Landroid/os/Messenger;
    invoke-static/range {v20 .. v20}, Landroid/net/MobileDataStateTracker;->access$1200(Landroid/net/MobileDataStateTracker;)Landroid/os/Messenger;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto :goto_b

    .line 446
    .end local v4           #ac:Lcom/android/internal/util/AsyncChannel;
    .end local v7           #collection:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/MobileDataStateTracker;>;"
    .end local v10           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/MobileDataStateTracker;>;"
    .end local v11           #messenger:Landroid/os/Messenger;
    .end local v20           #tracker:Landroid/net/MobileDataStateTracker;
    :cond_19
    const-string v21, "MobileDataStateTracker"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MobileDataStateReceiver received: ignore "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
