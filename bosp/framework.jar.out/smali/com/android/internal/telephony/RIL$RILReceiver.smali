.class Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field mySimId:I

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 1
    .parameter

    .prologue
    .line 533
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RIL$RILReceiver;-><init>(Lcom/android/internal/telephony/RIL;I)V

    .line 534
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/RIL;I)V
    .locals 1
    .parameter
    .parameter "simId"

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    .line 538
    iput p2, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    .line 539
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 543
    const/4 v7, 0x0

    .line 544
    .local v7, retryCount:I
    const-string/jumbo v11, "rild"

    .line 546
    .local v11, socketRil:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 547
    const-string/jumbo v11, "rild2"

    .line 552
    :cond_0
    :goto_0
    const/4 v9, 0x0

    .line 555
    .local v9, s:Landroid/net/LocalSocket;
    :try_start_0
    const-string/jumbo v11, "rild"

    .line 556
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 557
    const-string/jumbo v11, "rild2"

    .line 561
    :cond_1
    const-string v14, "gsm.3gswitch"

    const/4 v15, 0x1

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_3

    .line 562
    const-string/jumbo v14, "rild"

    if-ne v11, v14, :cond_2

    .line 563
    const-string/jumbo v11, "rild2"

    .line 566
    :goto_1
    const-string v14, "RILJ"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "3G switched, switch sockets ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->mySimId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v15, 0x1

    #setter for: Lcom/android/internal/telephony/RIL;->mIs3GSwitch:Z
    invoke-static {v14, v15}, Lcom/android/internal/telephony/RIL;->access$402(Lcom/android/internal/telephony/RIL;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    :goto_2
    :try_start_1
    new-instance v10, Landroid/net/LocalSocket;

    invoke-direct {v10}, Landroid/net/LocalSocket;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 576
    .end local v9           #s:Landroid/net/LocalSocket;
    .local v10, s:Landroid/net/LocalSocket;
    :try_start_2
    new-instance v4, Landroid/net/LocalSocketAddress;

    sget-object v14, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v4, v11, v14}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 578
    .local v4, l:Landroid/net/LocalSocketAddress;
    invoke-virtual {v10, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 611
    const/4 v7, 0x0

    .line 613
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iput-object v10, v14, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 614
    const-string v14, "RILJ"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Connected to \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' socket"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 616
    const/4 v5, 0x0

    .line 618
    .local v5, length:I
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v14, v14, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v14}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 623
    .local v3, is:Ljava/io/InputStream;
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    #calls: Lcom/android/internal/telephony/RIL;->readRilMessage(Ljava/io/InputStream;[B)I
    invoke-static {v3, v14}, Lcom/android/internal/telephony/RIL;->access$500(Ljava/io/InputStream;[B)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    move-result v5

    .line 625
    if-gez v5, :cond_7

    .line 647
    .end local v3           #is:Ljava/io/InputStream;
    :goto_4
    :try_start_5
    const-string v14, "RILJ"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Disconnected from \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' socket"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v15, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 653
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v14, v14, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v14}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 657
    :goto_5
    :try_start_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v15, 0x0

    iput-object v15, v14, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 658
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    .line 661
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v15, v14, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v15
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    .line 662
    const/4 v2, 0x0

    .local v2, i:I
    :try_start_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v14, v14, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v12

    .local v12, sz:I
    :goto_6
    if-ge v2, v12, :cond_8

    .line 663
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v14, v14, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/RILRequest;

    .line 664
    .local v8, rr:Lcom/android/internal/telephony/RILRequest;
    const/4 v14, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v8, v14, v0}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 665
    invoke-virtual {v8}, Lcom/android/internal/telephony/RILRequest;->release()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 662
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 565
    .end local v2           #i:I
    .end local v4           #l:Landroid/net/LocalSocketAddress;
    .end local v5           #length:I
    .end local v8           #rr:Lcom/android/internal/telephony/RILRequest;
    .end local v10           #s:Landroid/net/LocalSocket;
    .end local v12           #sz:I
    .restart local v9       #s:Landroid/net/LocalSocket;
    :cond_2
    :try_start_9
    const-string/jumbo v11, "rild"

    goto/16 :goto_1

    .line 569
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v15, 0x0

    #setter for: Lcom/android/internal/telephony/RIL;->mIs3GSwitch:Z
    invoke-static {v14, v15}, Lcom/android/internal/telephony/RIL;->access$402(Lcom/android/internal/telephony/RIL;Z)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_2

    .line 670
    :catch_0
    move-exception v13

    .line 671
    .local v13, tr:Ljava/lang/Throwable;
    :goto_7
    const-string v14, "RILJ"

    const-string v15, "Uncaught exception"

    invoke-static {v14, v15, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 676
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v15, -0x1

    #calls: Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V
    invoke-static {v14, v15}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;I)V

    .line 677
    return-void

    .line 579
    .end local v13           #tr:Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 581
    .local v1, ex:Ljava/io/IOException;
    :goto_8
    if-eqz v9, :cond_4

    .line 582
    :try_start_a
    invoke-virtual {v9}, Landroid/net/LocalSocket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    .line 591
    :cond_4
    :goto_9
    const/16 v14, 0x10

    if-ne v7, v14, :cond_6

    .line 592
    :try_start_b
    const-string v14, "RILJ"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Couldn\'t find \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' socket after "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " times, continuing to retry silently"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    .line 603
    :cond_5
    :goto_a
    const-wide/16 v14, 0xfa0

    :try_start_c
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    .line 607
    :goto_b
    add-int/lit8 v7, v7, 0x1

    .line 608
    goto/16 :goto_0

    .line 596
    :cond_6
    if-lez v7, :cond_5

    const/16 v14, 0x10

    if-ge v7, v14, :cond_5

    .line 597
    :try_start_d
    const-string v14, "RILJ"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Couldn\'t find \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' socket; retrying after timeout"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    goto :goto_a

    .line 630
    .end local v1           #ex:Ljava/io/IOException;
    .end local v9           #s:Landroid/net/LocalSocket;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #l:Landroid/net/LocalSocketAddress;
    .restart local v5       #length:I
    .restart local v10       #s:Landroid/net/LocalSocket;
    :cond_7
    :try_start_e
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 631
    .local v6, p:Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 632
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 636
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #calls: Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V
    invoke-static {v14, v6}, Lcom/android/internal/telephony/RIL;->access$600(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V

    .line 637
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_3

    .line 639
    .end local v3           #is:Ljava/io/InputStream;
    .end local v6           #p:Landroid/os/Parcel;
    :catch_2
    move-exception v1

    .line 640
    .restart local v1       #ex:Ljava/io/IOException;
    :try_start_f
    const-string v14, "RILJ"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' socket closed"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 670
    .end local v1           #ex:Ljava/io/IOException;
    .end local v4           #l:Landroid/net/LocalSocketAddress;
    .end local v5           #length:I
    :catch_3
    move-exception v13

    move-object v9, v10

    .end local v10           #s:Landroid/net/LocalSocket;
    .restart local v9       #s:Landroid/net/LocalSocket;
    goto/16 :goto_7

    .line 642
    .end local v9           #s:Landroid/net/LocalSocket;
    .restart local v4       #l:Landroid/net/LocalSocketAddress;
    .restart local v5       #length:I
    .restart local v10       #s:Landroid/net/LocalSocket;
    :catch_4
    move-exception v13

    .line 643
    .restart local v13       #tr:Ljava/lang/Throwable;
    const-string v14, "RILJ"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Uncaught exception read length="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "Exception:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3

    goto/16 :goto_4

    .line 668
    .end local v13           #tr:Ljava/lang/Throwable;
    .restart local v2       #i:I
    .restart local v12       #sz:I
    :cond_8
    :try_start_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v14, v14, Lcom/android/internal/telephony/RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 669
    monitor-exit v15

    goto/16 :goto_0

    .end local v12           #sz:I
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    throw v14
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_3

    .line 584
    .end local v2           #i:I
    .end local v4           #l:Landroid/net/LocalSocketAddress;
    .end local v5           #length:I
    .end local v10           #s:Landroid/net/LocalSocket;
    .restart local v1       #ex:Ljava/io/IOException;
    .restart local v9       #s:Landroid/net/LocalSocket;
    :catch_5
    move-exception v14

    goto/16 :goto_9

    .line 604
    :catch_6
    move-exception v14

    goto/16 :goto_b

    .line 654
    .end local v1           #ex:Ljava/io/IOException;
    .end local v9           #s:Landroid/net/LocalSocket;
    .restart local v4       #l:Landroid/net/LocalSocketAddress;
    .restart local v5       #length:I
    .restart local v10       #s:Landroid/net/LocalSocket;
    :catch_7
    move-exception v14

    goto/16 :goto_5

    .line 579
    .end local v4           #l:Landroid/net/LocalSocketAddress;
    .end local v5           #length:I
    :catch_8
    move-exception v1

    move-object v9, v10

    .end local v10           #s:Landroid/net/LocalSocket;
    .restart local v9       #s:Landroid/net/LocalSocket;
    goto/16 :goto_8
.end method
