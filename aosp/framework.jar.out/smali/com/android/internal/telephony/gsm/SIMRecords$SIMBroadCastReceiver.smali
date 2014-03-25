.class Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIMBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SIMRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gsm/SIMRecords;)V
    .locals 0
    .parameter

    .prologue
    .line 2928
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gsm/SIMRecords;Lcom/android/internal/telephony/gsm/SIMRecords$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2928
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;-><init>(Lcom/android/internal/telephony/gsm/SIMRecords;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "content"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 2930
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2931
    .local v1, action:Ljava/lang/String;
    const-string v6, "com.mediatek.dm.LAWMO_WIPE"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2932
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #calls: Lcom/android/internal/telephony/gsm/SIMRecords;->wipeAllSIMContacts()V
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$800(Lcom/android/internal/telephony/gsm/SIMRecords;)V

    .line 2995
    :cond_0
    :goto_0
    return-void

    .line 2934
    :cond_1
    const-string v6, "action_pin_dismiss"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2935
    const-string/jumbo v6, "simslot"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2936
    .local v3, simId:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$900(Lcom/android/internal/telephony/gsm/SIMRecords;)I

    move-result v6

    if-ne v3, v6, :cond_0

    .line 2937
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIMRecords receive pin dismiss intent for slot "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2938
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/gsm/SIMRecords;->setDefaultNameForNewSIM(Ljava/lang/String;)V

    goto :goto_0

    .line 2940
    .end local v3           #simId:I
    :cond_2
    const-string v6, "action_melock_dismiss"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2941
    const-string/jumbo v6, "simslot"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2942
    .restart local v3       #simId:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$900(Lcom/android/internal/telephony/gsm/SIMRecords;)I

    move-result v6

    if-ne v3, v6, :cond_0

    .line 2943
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIMRecords receive SIM ME lock dismiss intent for slot "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/gsm/SIMRecords;->setDefaultNameForNewSIM(Ljava/lang/String;)V

    goto :goto_0

    .line 2946
    .end local v3           #simId:I
    :cond_3
    const-string v6, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2947
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #calls: Lcom/android/internal/telephony/gsm/SIMRecords;->processShutdownIPO()V
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1000(Lcom/android/internal/telephony/gsm/SIMRecords;)V

    .line 2949
    const-string v6, "gsm.sim.operator.default-name"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2951
    const-string v6, "gsm.sim.operator.default-name.2"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2954
    const-string v6, "GSM"

    const-string/jumbo v7, "wipeAllSIMContacts ACTION_SHUTDOWN_IPO: reset mCspPlmnEnabled"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2955
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    iput-boolean v8, v6, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 2958
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1100(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/mediatek/common/telephony/ITelephonyExt;

    move-result-object v6

    invoke-interface {v6}, Lcom/mediatek/common/telephony/ITelephonyExt;->isSetLanguageBySIM()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2959
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #setter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mEfRatLoaded:Z
    invoke-static {v6, v10}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1202(Lcom/android/internal/telephony/gsm/SIMRecords;Z)Z

    .line 2960
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #setter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mEfRat:[B
    invoke-static {v6, v9}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1302(Lcom/android/internal/telephony/gsm/SIMRecords;[B)[B

    .line 2963
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1400(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/AdnRecordCache;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 2964
    const-string v6, "GSM"

    const-string/jumbo v7, "wipeAllSIMContacts ACTION_SHUTDOWN_IPO"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2965
    :cond_5
    const-string v6, "android.intent.action.sim.ACTION_RESET_MODEM"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2966
    const-string v6, "gsm.3gswitch"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 2967
    .local v0, SimIdFor3G:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$900(Lcom/android/internal/telephony/gsm/SIMRecords;)I

    move-result v6

    if-ne v0, v6, :cond_0

    .line 2968
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "phone "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " will reset modem"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2969
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1500(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v6

    invoke-interface {v6, v9}, Lcom/android/internal/telephony/CommandsInterface;->resetRadio(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2971
    .end local v0           #SimIdFor3G:I
    :cond_6
    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2972
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIMBroadCastReceiver action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    const-string v6, "gsm.sim.locale.waiting"

    const-string v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2975
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #calls: Lcom/android/internal/telephony/gsm/SIMRecords;->setDefaultNameByLocale()V
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1600(Lcom/android/internal/telephony/gsm/SIMRecords;)V

    goto/16 :goto_0

    .line 2976
    :cond_7
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2977
    const-string/jumbo v6, "reason"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2978
    .local v2, reasonExtra:Ljava/lang/String;
    const-string/jumbo v6, "simId"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 2979
    .local v4, slot:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM_STATE_CHANGED: slot = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",reason = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2980
    const-string v6, "PUK"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2981
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$900(Lcom/android/internal/telephony/gsm/SIMRecords;)I

    move-result v6

    if-ne v4, v6, :cond_0

    .line 2982
    const/4 v5, 0x0

    .line 2983
    .local v5, strPuk1Count:Ljava/lang/String;
    sget-object v6, Lcom/android/internal/telephony/gsm/SIMRecords;->SIMRECORD_PROPERTY_RIL_PUK1:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$900(Lcom/android/internal/telephony/gsm/SIMRecords;)I

    move-result v7

    aget-object v6, v6, v7

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2984
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM_STATE_CHANGED: strPuk1Count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2985
    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2986
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v6, v10}, Lcom/android/internal/telephony/gsm/SIMRecords;->setPhbReady(Z)V

    .line 2989
    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    const-string v7, ""

    #setter for: Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1702(Lcom/android/internal/telephony/gsm/SIMRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 2990
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #calls: Lcom/android/internal/telephony/gsm/SIMRecords;->setNumberToSimInfo()V
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1800(Lcom/android/internal/telephony/gsm/SIMRecords;)V

    goto/16 :goto_0
.end method
