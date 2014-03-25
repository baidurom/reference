.class Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "CdmaSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 681
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$1;->getResultCode()I

    move-result v8

    .line 685
    .local v8, rc:I
    const/4 v12, -0x1

    if-eq v8, v12, :cond_0

    const/4 v12, 0x1

    if-ne v8, v12, :cond_1

    :cond_0
    const/4 v11, 0x1

    .line 686
    .local v11, success:Z
    :goto_0
    if-nez v11, :cond_2

    .line 687
    const-string v12, "CDMA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SCP results error: result code = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :goto_1
    return-void

    .line 685
    .end local v11           #success:Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 690
    .restart local v11       #success:Z
    :cond_2
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$1;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v7

    .line 691
    .local v7, extras:Landroid/os/Bundle;
    if-nez v7, :cond_3

    .line 692
    const-string v12, "CDMA"

    const-string v13, "SCP results error: missing extras"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 695
    :cond_3
    const-string v12, "sender"

    invoke-virtual {v7, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 696
    .local v10, sender:Ljava/lang/String;
    if-nez v10, :cond_4

    .line 697
    const-string v12, "CDMA"

    const-string v13, "SCP results error: missing sender extra."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 700
    :cond_4
    const-string v12, "results"

    invoke-virtual {v7, v12}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 702
    .local v9, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/cdma/CdmaSmsCbProgramResults;>;"
    if-nez v9, :cond_5

    .line 703
    const-string v12, "CDMA"

    const-string v13, "SCP results error: missing results extra."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 707
    :cond_5
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 708
    .local v0, bData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v12, 0x2

    iput v12, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 709
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v12

    iput v12, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 710
    iput-object v9, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramResults:Ljava/util/ArrayList;

    .line 711
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v6

    .line 713
    .local v6, encodedBearerData:[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v12, 0x64

    invoke-direct {v1, v12}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 714
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 716
    .local v4, dos:Ljava/io/DataOutputStream;
    const/16 v12, 0x1006

    :try_start_0
    invoke-virtual {v4, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 717
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 718
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 720
    invoke-static {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->processPlusCodeForSMSMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 721
    .local v3, destAddress:Ljava/lang/String;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 722
    :cond_6
    const-string v12, "CDMA"

    const-string v13, "got null or empty address after processPlusCodeForSMSMO()!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 750
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 751
    .end local v3           #destAddress:Ljava/lang/String;
    :catch_0
    move-exception v12

    goto :goto_1

    .line 726
    .restart local v3       #destAddress:Ljava/lang/String;
    :cond_7
    :try_start_2
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v2

    .line 727
    .local v2, destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v2, :cond_8

    .line 728
    const-string v12, "CDMA"

    const-string v13, "mScpResultsReceiver onReceive(), CdmaSmsAddress parse error."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 750
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 732
    :cond_8
    :try_start_4
    iget v12, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v4, v12}, Ljava/io/DataOutputStream;->write(I)V

    .line 733
    iget v12, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v4, v12}, Ljava/io/DataOutputStream;->write(I)V

    .line 734
    iget v12, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v4, v12}, Ljava/io/DataOutputStream;->write(I)V

    .line 735
    iget v12, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v4, v12}, Ljava/io/DataOutputStream;->write(I)V

    .line 736
    iget v12, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v4, v12}, Ljava/io/DataOutputStream;->write(I)V

    .line 737
    iget-object v12, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v13, 0x0

    iget-object v14, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v14, v14

    invoke-virtual {v4, v12, v13, v14}, Ljava/io/DataOutputStream;->write([BII)V

    .line 739
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/io/DataOutputStream;->write(I)V

    .line 740
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/io/DataOutputStream;->write(I)V

    .line 741
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/io/DataOutputStream;->write(I)V

    .line 742
    array-length v12, v6

    invoke-virtual {v4, v12}, Ljava/io/DataOutputStream;->write(I)V

    .line 743
    const/4 v12, 0x0

    array-length v13, v6

    invoke-virtual {v4, v6, v12, v13}, Ljava/io/DataOutputStream;->write([BII)V

    .line 745
    iget-object v12, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->access$000(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 750
    :try_start_5
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 746
    .end local v2           #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v3           #destAddress:Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 747
    .local v5, e:Ljava/io/IOException;
    :try_start_6
    const-string v12, "CDMA"

    const-string v13, "exception creating SCP results PDU"

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 750
    :try_start_7
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1

    .line 749
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 750
    :try_start_8
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 749
    :goto_2
    throw v12

    .line 751
    :catch_2
    move-exception v13

    goto :goto_2
.end method
