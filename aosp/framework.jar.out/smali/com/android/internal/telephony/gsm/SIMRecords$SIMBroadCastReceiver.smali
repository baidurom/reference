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
    .line 2496
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gsm/SIMRecords;Lcom/android/internal/telephony/gsm/SIMRecords$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2496
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;-><init>(Lcom/android/internal/telephony/gsm/SIMRecords;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "content"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 2498
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2501
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.mediatek.dm.LAWMO_WIPE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2502
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #calls: Lcom/android/internal/telephony/gsm/SIMRecords;->wipeAllSIMContacts()V
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$100(Lcom/android/internal/telephony/gsm/SIMRecords;)V

    .line 2522
    :cond_0
    :goto_0
    return-void

    .line 2506
    :cond_1
    const-string v2, "action_pin_dismiss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2507
    const-string/jumbo v2, "simslot"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2508
    .local v1, simId:I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$200(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2509
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIMRecords receive pin dismiss intent for slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->setDefaultNameForNewSIM(Ljava/lang/String;)V

    goto :goto_0

    .line 2512
    .end local v1           #simId:I
    :cond_2
    const-string v2, "action_melock_dismiss"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2513
    const-string/jumbo v2, "simslot"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2514
    .restart local v1       #simId:I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$300(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2515
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIMRecords receive SIM ME lock dismiss intent for slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->setDefaultNameForNewSIM(Ljava/lang/String;)V

    goto :goto_0

    .line 2518
    .end local v1           #simId:I
    :cond_3
    const-string v2, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2519
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$400(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/AdnRecordCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 2520
    const-string v2, "GSM"

    const-string/jumbo v3, "wipeAllSIMContacts ACTION_SHUTDOWN_IPO"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
