.class Lcom/android/internal/telephony/cat/UdpChannel;
.super Lcom/android/internal/telephony/cat/Channel;
.source "Channel.java"


# static fields
.field private static final SOCKET_TIMEOUT:I = 0xbb8


# instance fields
.field mSocket:Ljava/net/DatagramSocket;

.field rt:Ljava/lang/Thread;


# direct methods
.method constructor <init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;)V
    .locals 1
    .parameter "cid"
    .parameter "linkMode"
    .parameter "protocolType"
    .parameter "address"
    .parameter "port"
    .parameter "bufferSize"
    .parameter "handler"

    .prologue
    .line 492
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/cat/Channel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;)V

    .line 487
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    .line 493
    return-void
.end method


# virtual methods
.method public closeChannel()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 524
    const/4 v0, 0x0

    .line 526
    .local v0, ret:I
    const-string v1, "[BIP]"

    const-string v2, "closeChannel enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v1, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_0

    .line 530
    const-string v1, "[BIP]"

    const-string v2, "closeSocket enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v1, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 533
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mChannelStatus:I

    .line 535
    iput-object v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    .line 536
    iput-object v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    .line 537
    iput-object v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    .line 540
    :cond_0
    return v0
.end method

.method public getTxAvailBufferSize()I
    .locals 4

    .prologue
    .line 634
    iget-object v1, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    sub-int v0, v1, v2

    .line 635
    .local v0, txRemaining:I
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "available tx buffer size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    return v0
.end method

.method public openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I
    .locals 5
    .parameter "cmdMsg"

    .prologue
    .line 496
    const/4 v1, 0x0

    .line 498
    .local v1, ret:I
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UDP link mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mLinkMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mLinkMode:I

    if-nez v2, :cond_1

    .line 502
    :try_start_0
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    .line 503
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mChannelStatus:I

    .line 504
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;

    iget-object v4, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;-><init>(Lcom/android/internal/telephony/cat/Channel;Ljava/net/DatagramSocket;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->rt:Ljava/lang/Thread;

    .line 505
    iget-object v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->rt:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 506
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UdpChannel: sock status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mChannelStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/UdpChannel;->checkBufferSize()I

    move-result v1

    .line 512
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 513
    const-string v2, "[BIP]"

    const-string v3, "UdpChannel-openChannel: buffer size is modified"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mBufferSize:I

    iput v2, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    .line 516
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mBufferSize:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    .line 517
    iget v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mBufferSize:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    .line 520
    :cond_1
    return v1

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public receiveData(ILcom/android/internal/telephony/cat/ReceiveDataResult;)I
    .locals 15
    .parameter "requestSize"
    .parameter "rdr"

    .prologue
    .line 640
    const-string v11, "[BIP]"

    const-string/jumbo v12, "new receiveData method"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const/4 v9, 0x0

    .line 643
    .local v9, ret:I
    if-nez p2, :cond_0

    .line 644
    const-string v11, "[BIP]"

    const-string/jumbo v12, "rdr is null"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const/4 v11, 0x5

    .line 733
    :goto_0
    return v11

    .line 648
    :cond_0
    const-string v11, "[BIP]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "receiveData "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    move/from16 v0, p1

    new-array v11, v0, [B

    move-object/from16 v0, p2

    iput-object v11, v0, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 651
    iget v11, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    move/from16 v0, p1

    if-lt v11, v0, :cond_2

    .line 652
    const-string v11, "[BIP]"

    const-string/jumbo v12, "rx buffer has enough data"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    :try_start_0
    iget-object v11, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    iget v12, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-static {v11, v12, v13, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 655
    iget v11, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    add-int v11, v11, p1

    iput v11, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 656
    iget v11, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    sub-int v11, v11, p1

    iput v11, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    .line 657
    iget v11, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    move-object/from16 v0, p2

    iput v11, v0, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move v11, v9

    .line 733
    goto :goto_0

    .line 658
    :catch_0
    move-exception v3

    .line 659
    .local v3, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v11, "[BIP]"

    const-string v12, "fail copy rx buffer out 1"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const/4 v11, 0x5

    goto :goto_0

    .line 663
    .end local v3           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    const-string v11, "[BIP]"

    const-string/jumbo v12, "rx buffer is insufficient"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    move/from16 v7, p1

    .line 665
    .local v7, needCopy:I
    iget v1, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    .line 666
    .local v1, canCopy:I
    const/4 v6, 0x0

    .line 667
    .local v6, hasCopied:I
    const/4 v2, 0x0

    .line 669
    .local v2, canExit:Z
    :goto_2
    const/4 v11, 0x1

    if-eq v2, v11, :cond_1

    .line 670
    const-string v11, "[BIP]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hasCopied/needCopy: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    if-le v7, v1, :cond_3

    .line 672
    const-string v11, "[BIP]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "canCopy="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    :try_start_1
    iget-object v11, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    iget v12, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v11, v12, v13, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 675
    add-int/2addr v6, v1

    .line 676
    sub-int/2addr v7, v1

    .line 677
    iget v11, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    add-int/2addr v11, v1

    iput v11, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 678
    iget v11, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    sub-int/2addr v11, v1

    iput v11, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 697
    :goto_3
    if-gtz v7, :cond_4

    .line 698
    const-string v11, "[BIP]"

    const-string v12, "can exit the loop"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iget v11, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    move-object/from16 v0, p2

    iput v11, v0, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I

    .line 700
    const/4 v2, 0x1

    goto :goto_2

    .line 679
    :catch_1
    move-exception v3

    .line 680
    .restart local v3       #e:Ljava/lang/IndexOutOfBoundsException;
    const-string v11, "[BIP]"

    const-string v12, "fail copy rx buffer out 2"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const/4 v11, 0x5

    goto/16 :goto_0

    .line 684
    .end local v3           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    const-string v11, "[BIP]"

    const-string v12, "copy will complete"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    :try_start_2
    iget-object v11, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    iget v12, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v11, v12, v13, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 687
    add-int/2addr v6, v1

    .line 688
    const/4 v7, 0x0

    .line 689
    iget v11, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    add-int/2addr v11, v1

    iput v11, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 690
    iget v11, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    sub-int/2addr v11, v1

    iput v11, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 691
    :catch_2
    move-exception v3

    .line 692
    .restart local v3       #e:Ljava/lang/IndexOutOfBoundsException;
    const-string v11, "[BIP]"

    const-string v12, "fail copy rx buffer out 3"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const/4 v11, 0x5

    goto/16 :goto_0

    .line 703
    .end local v3           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_4
    :try_start_3
    iget-object v11, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    const/16 v12, 0xbb8

    invoke-virtual {v11, v12}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 704
    new-instance v8, Ljava/net/DatagramPacket;

    iget-object v11, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    iget-object v12, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    array-length v12, v12

    invoke-direct {v8, v11, v12}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 705
    .local v8, p:Ljava/net/DatagramPacket;
    iget-object v11, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v11, v8}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 706
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 707
    invoke-virtual {v8}, Ljava/net/DatagramPacket;->getLength()I

    move-result v11

    iput v11, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_2

    .line 708
    .end local v8           #p:Ljava/net/DatagramPacket;
    :catch_3
    move-exception v3

    .line 709
    .local v3, e:Ljava/io/InterruptedIOException;
    const-string v11, "[BIP]"

    const-string/jumbo v12, "receive timeout"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const/4 v11, 0x0

    move-object/from16 v0, p2

    iput v11, v0, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I

    .line 711
    new-array v10, v6, [B

    .line 713
    .local v10, temp:[B
    :try_start_4
    const-string v11, "[BIP]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "just copy "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v11, v12, v10, v13, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_4

    .line 721
    move-object/from16 v0, p2

    iput-object v10, v0, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 722
    const/16 v9, 0x9

    .line 723
    goto/16 :goto_1

    .line 715
    :catch_4
    move-exception v4

    .line 716
    .local v4, e2:Ljava/lang/IndexOutOfBoundsException;
    const-string v11, "[BIP]"

    const-string v12, "fail to process hasCopied data"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const/4 v11, 0x0

    move-object/from16 v0, p2

    iput v11, v0, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I

    .line 718
    const/4 v9, 0x5

    .line 719
    goto/16 :goto_1

    .line 724
    .end local v3           #e:Ljava/io/InterruptedIOException;
    .end local v4           #e2:Ljava/lang/IndexOutOfBoundsException;
    .end local v10           #temp:[B
    :catch_5
    move-exception v5

    .line 725
    .local v5, ex:Ljava/lang/Exception;
    const/4 v11, 0x0

    move-object/from16 v0, p2

    iput v11, v0, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I

    .line 726
    const/4 v9, 0x5

    .line 727
    goto/16 :goto_1
.end method

.method public receiveData(I)Lcom/android/internal/telephony/cat/ReceiveDataResult;
    .locals 11
    .parameter "requestCount"

    .prologue
    .line 544
    new-instance v6, Lcom/android/internal/telephony/cat/ReceiveDataResult;

    invoke-direct {v6}, Lcom/android/internal/telephony/cat/ReceiveDataResult;-><init>()V

    .line 545
    .local v6, ret:Lcom/android/internal/telephony/cat/ReceiveDataResult;
    new-array v7, p1, [B

    iput-object v7, v6, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 547
    const-string v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "receiveData "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget v7, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    if-lt v7, p1, :cond_1

    .line 551
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    iget v8, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    iget-object v9, v6, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 552
    iget v7, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    add-int/2addr v7, p1

    iput v7, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 553
    iget v7, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    sub-int/2addr v7, p1

    iput v7, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    .line 554
    iget v7, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    iput v7, v6, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    .line 597
    :cond_0
    :goto_0
    return-object v6

    .line 557
    :cond_1
    move v4, p1

    .line 558
    .local v4, needCopy:I
    iget v0, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    .line 559
    .local v0, canCopy:I
    const/4 v2, 0x0

    .line 560
    .local v2, countCopied:I
    const/4 v1, 0x0

    .line 562
    .local v1, canExitLoop:Z
    :goto_1
    if-nez v1, :cond_0

    .line 563
    if-le v4, v0, :cond_2

    .line 565
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    iget v8, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    iget-object v9, v6, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v7, v8, v9, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 566
    add-int/2addr v2, v0

    .line 567
    sub-int/2addr v4, v0

    .line 568
    iget v7, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    add-int/2addr v7, v0

    iput v7, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 569
    iget v7, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    sub-int/2addr v7, v0

    iput v7, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 581
    :goto_2
    if-nez v4, :cond_3

    .line 582
    const/4 v1, 0x1

    goto :goto_1

    .line 573
    :cond_2
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    iget v8, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    iget-object v9, v6, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v7, v8, v9, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 574
    iget v7, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 575
    iget v7, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    sub-int/2addr v7, v4

    iput v7, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 576
    add-int/2addr v2, v4

    .line 577
    const/4 v4, 0x0

    goto :goto_2

    .line 585
    :cond_3
    :try_start_3
    iget-object v7, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    const/16 v8, 0xbb8

    invoke-virtual {v7, v8}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 586
    new-instance v5, Ljava/net/DatagramPacket;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    iget-object v8, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    array-length v8, v8

    invoke-direct {v5, v7, v8}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 587
    .local v5, packet:Ljava/net/DatagramPacket;
    iget-object v7, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v7, v5}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 588
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 589
    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getLength()I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 590
    .end local v5           #packet:Ljava/net/DatagramPacket;
    :catch_0
    move-exception v3

    .line 591
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 578
    .end local v3           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v7

    goto :goto_2

    .line 570
    :catch_2
    move-exception v7

    goto :goto_2

    .line 555
    .end local v0           #canCopy:I
    .end local v1           #canExitLoop:Z
    .end local v2           #countCopied:I
    .end local v4           #needCopy:I
    :catch_3
    move-exception v7

    goto :goto_0
.end method

.method public sendData([BI)I
    .locals 9
    .parameter "data"
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 601
    const/4 v7, 0x0

    .line 602
    .local v7, ret:I
    iget-object v1, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    array-length v1, v1

    iget v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    sub-int v8, v1, v3

    .line 604
    .local v8, txRemaining:I
    const-string v1, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendData: size of data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v1, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendData: size of buffer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    array-length v1, p1

    if-lt v8, v1, :cond_1

    .line 609
    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    iget v4, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    array-length v5, p1

    invoke-static {p1, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 610
    iget v1, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    array-length v3, p1

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBufferCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 616
    :goto_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 617
    const-string v1, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send UDP data("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mAddress:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    iget v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    iget-object v4, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mAddress:Ljava/net/InetAddress;

    iget v5, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mPort:I

    invoke-direct/range {v0 .. v5}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 620
    .local v0, packet:Ljava/net/DatagramPacket;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_0

    .line 622
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 623
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBufferCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 630
    .end local v0           #packet:Ljava/net/DatagramPacket;
    :cond_0
    :goto_1
    return v7

    .line 613
    :cond_1
    const-string v1, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendData - tx buffer is not enough:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 624
    .restart local v0       #packet:Ljava/net/DatagramPacket;
    :catch_0
    move-exception v6

    .line 625
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 611
    .end local v0           #packet:Ljava/net/DatagramPacket;
    .end local v6           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method
