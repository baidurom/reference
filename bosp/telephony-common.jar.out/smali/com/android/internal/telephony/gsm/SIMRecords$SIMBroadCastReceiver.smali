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
    .line 2927
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gsm/SIMRecords;Lcom/android/internal/telephony/gsm/SIMRecords$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2927
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;-><init>(Lcom/android/internal/telephony/gsm/SIMRecords;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "content"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 2929
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2930
    .local v0, action:Ljava/lang/String;
    const-string v5, "com.mediatek.dm.LAWMO_WIPE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2931
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #calls: Lcom/android/internal/telephony/gsm/SIMRecords;->wipeAllSIMContacts()V
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$800(Lcom/android/internal/telephony/gsm/SIMRecords;)V

    .line 2988
    :cond_0
    :goto_0
    return-void

    .line 2933
    :cond_1
    const-string v5, "action_pin_dismiss"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2934
    const-string v5, "simslot"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2935
    .local v2, simId:I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$900(Lcom/android/internal/telephony/gsm/SIMRecords;)I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 2936
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIMRecords receive pin dismiss intent for slot "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2937
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v5, v9}, Lcom/android/internal/telephony/gsm/SIMRecords;->setDefaultNameForNewSIM(Ljava/lang/String;)V

    goto :goto_0

    .line 2939
    .end local v2           #simId:I
    :cond_2
    const-string v5, "action_melock_dismiss"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2940
    const-string v5, "simslot"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2941
    .restart local v2       #simId:I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$900(Lcom/android/internal/telephony/gsm/SIMRecords;)I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 2942
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIMRecords receive SIM ME lock dismiss intent for slot "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v5, v9}, Lcom/android/internal/telephony/gsm/SIMRecords;->setDefaultNameForNewSIM(Ljava/lang/String;)V

    goto :goto_0

    .line 2945
    .end local v2           #simId:I
    :cond_3
    const-string v5, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2946
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #calls: Lcom/android/internal/telephony/gsm/SIMRecords;->processShutdownIPO()V
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1000(Lcom/android/internal/telephony/gsm/SIMRecords;)V

    .line 2948
    const-string v5, "gsm.sim.operator.default-name"

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2950
    const-string v5, "gsm.sim.operator.default-name.2"

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2953
    const-string v5, "GSM"

    const-string v6, "wipeAllSIMContacts ACTION_SHUTDOWN_IPO: reset mCspPlmnEnabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 2957
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1100(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/mediatek/common/telephony/ITelephonyExt;

    move-result-object v5

    invoke-interface {v5}, Lcom/mediatek/common/telephony/ITelephonyExt;->isSetLanguageBySIM()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2958
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #setter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mEfRatLoaded:Z
    invoke-static {v5, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1202(Lcom/android/internal/telephony/gsm/SIMRecords;Z)Z

    .line 2959
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #setter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mEfRat:[B
    invoke-static {v5, v9}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1302(Lcom/android/internal/telephony/gsm/SIMRecords;[B)[B

    .line 2962
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1400(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/AdnRecordCache;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 2963
    const-string v5, "GSM"

    const-string v6, "wipeAllSIMContacts ACTION_SHUTDOWN_IPO"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2964
    :cond_5
    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2965
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIMBroadCastReceiver action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    const-string v5, "gsm.sim.locale.waiting"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2968
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #calls: Lcom/android/internal/telephony/gsm/SIMRecords;->setDefaultNameByLocale()V
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1500(Lcom/android/internal/telephony/gsm/SIMRecords;)V

    goto/16 :goto_0

    .line 2969
    :cond_6
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2970
    const-string v5, "reason"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2971
    .local v1, reasonExtra:Ljava/lang/String;
    const-string v5, "simId"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2972
    .local v3, slot:I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM_STATE_CHANGED: slot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",reason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2973
    const-string v5, "PUK"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2974
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$900(Lcom/android/internal/telephony/gsm/SIMRecords;)I

    move-result v5

    if-ne v3, v5, :cond_0

    .line 2975
    const/4 v4, 0x0

    .line 2976
    .local v4, strPuk1Count:Ljava/lang/String;
    sget-object v5, Lcom/android/internal/telephony/gsm/SIMRecords;->SIMRECORD_PROPERTY_RIL_PUK1:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$900(Lcom/android/internal/telephony/gsm/SIMRecords;)I

    move-result v6

    aget-object v5, v5, v6

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2977
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM_STATE_CHANGED: strPuk1Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2978
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2979
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->setPhbReady(Z)V

    .line 2982
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    const-string v6, ""

    #setter for: Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1602(Lcom/android/internal/telephony/gsm/SIMRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 2983
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #calls: Lcom/android/internal/telephony/gsm/SIMRecords;->setNumberToSimInfo()V
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1700(Lcom/android/internal/telephony/gsm/SIMRecords;)V

    goto/16 :goto_0
.end method
