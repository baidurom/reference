.class Lcom/mediatek/agps/MtkAgpsManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "MtkAgpsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/agps/MtkAgpsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/agps/MtkAgpsManagerService;


# direct methods
.method constructor <init>(Lcom/mediatek/agps/MtkAgpsManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 659
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 662
    const/4 v5, 0x0

    .line 664
    .local v5, niData:[B
    iget-object v12, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;
    invoke-static {v12}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1700(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/agps/MtkAgpsConfig;

    move-result-object v12

    iget v12, v12, Lcom/mediatek/agps/MtkAgpsConfig;->niEnable:I

    if-nez v12, :cond_0

    .line 665
    iget-object v12, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v13, "WARNING: NI request(WapPush message) is rejected, because Network_Initiate is set to as disable !!"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$800(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 719
    :goto_0
    return-void

    .line 669
    :cond_0
    const-string v12, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 670
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 671
    .local v11, uri:Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/net/Uri;->getPort()I

    move-result v8

    .line 672
    .local v8, port:I
    iget-object v12, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "received sms on port number:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", while profile port:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/agps/MtkAgpsProfile;
    invoke-static {v14}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1800(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/agps/MtkAgpsProfile;

    move-result-object v14

    iget v14, v14, Lcom/mediatek/agps/MtkAgpsProfile;->port:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 673
    const/4 v12, -0x1

    if-ne v8, v12, :cond_1

    .line 674
    iget-object v12, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v13, "ERR: Received SMS port number is undefined"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0

    .line 676
    :cond_1
    const/16 v12, 0x1c6b

    if-eq v8, v12, :cond_2

    iget-object v12, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/agps/MtkAgpsProfile;
    invoke-static {v12}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1800(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/agps/MtkAgpsProfile;

    move-result-object v12

    iget v12, v12, Lcom/mediatek/agps/MtkAgpsProfile;->port:I

    if-ne v8, v12, :cond_8

    .line 678
    :cond_2
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 679
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_5

    .line 681
    const-string/jumbo v12, "pdus"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/Object;

    move-object v0, v12

    check-cast v0, [Ljava/lang/Object;

    move-object v7, v0

    .line 682
    .local v7, pdu_messages:[Ljava/lang/Object;
    if-eqz v7, :cond_4

    .line 683
    array-length v12, v7

    new-array v9, v12, [Landroid/telephony/SmsMessage;

    .line 684
    .local v9, smsMessage:[Landroid/telephony/SmsMessage;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v12, 0x100

    invoke-direct {v6, v12}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 686
    .local v6, output_buffer:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .local v4, n:I
    :goto_1
    array-length v12, v7

    if-ge v4, v12, :cond_3

    .line 687
    aget-object v12, v7, v4

    check-cast v12, [B

    check-cast v12, [B

    invoke-static {v12}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v12

    aput-object v12, v9, v4

    .line 688
    aget-object v12, v9, v4

    invoke-virtual {v12}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v10

    .line 689
    .local v10, temp_data:[B
    const/4 v12, 0x0

    array-length v13, v10

    invoke-virtual {v6, v10, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 686
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 691
    .end local v10           #temp_data:[B
    :cond_3
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 699
    .end local v4           #n:I
    .end local v6           #output_buffer:Ljava/io/ByteArrayOutputStream;
    .end local v7           #pdu_messages:[Ljava/lang/Object;
    .end local v9           #smsMessage:[Landroid/telephony/SmsMessage;
    :goto_2
    if-eqz v5, :cond_7

    .line 700
    iget-object v12, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string/jumbo v13, "received SMS message data"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 701
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    array-length v12, v5

    if-ge v3, v12, :cond_6

    .line 702
    iget-object v12, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-byte v14, v5, v3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 701
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 693
    .end local v3           #i:I
    .restart local v7       #pdu_messages:[Ljava/lang/Object;
    :cond_4
    iget-object v12, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v13, "ERR: Retrieved null pdus from bundle of NI request intent!"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 710
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v7           #pdu_messages:[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 711
    .local v2, e:Ljava/lang/Exception;
    iget-object v12, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ERR: Received error data in NI SMS message:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$800(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 696
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #bundle:Landroid/os/Bundle;
    :cond_5
    :try_start_1
    iget-object v12, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v13, "ERR: Retrieved null bundle from SMS message intent of NI request!"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_2

    .line 704
    .restart local v3       #i:I
    :cond_6
    iget-object v12, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->niRequest([B)I
    invoke-static {v12, v5}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1900(Lcom/mediatek/agps/MtkAgpsManagerService;[B)I

    goto/16 :goto_0

    .line 707
    .end local v3           #i:I
    :cond_7
    iget-object v12, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v13, "ERR: Received null data in SMS message"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 714
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_8
    iget-object v12, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ERR: Received sms on unexpected port:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 717
    .end local v8           #port:I
    .end local v11           #uri:Landroid/net/Uri;
    :cond_9
    iget-object v12, p0, Lcom/mediatek/agps/MtkAgpsManagerService$5;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ERR: Received SMS with unexpected intent action:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
