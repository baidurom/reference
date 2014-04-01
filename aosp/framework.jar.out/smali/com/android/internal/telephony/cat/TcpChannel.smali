.class Lcom/android/internal/telephony/cat/TcpChannel;
.super Lcom/android/internal/telephony/cat/Channel;
.source "Channel.java"


# instance fields
.field mInput:Ljava/io/DataInputStream;

.field mOutput:Ljava/io/BufferedOutputStream;

.field mSocket:Ljava/net/Socket;

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
    const/4 v0, 0x0

    .line 219
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/cat/Channel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;)V

    .line 213
    iput-object v0, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 214
    iput-object v0, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    .line 215
    iput-object v0, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    .line 220
    return-void
.end method


# virtual methods
.method public closeChannel()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 270
    const/4 v0, 0x0

    .line 273
    .local v0, ret:I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 274
    iget-object v1, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 275
    iget-object v1, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    iput-object v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 279
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 280
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    .line 281
    iput v3, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    .line 284
    :goto_0
    return v0

    .line 276
    :catch_0
    move-exception v1

    .line 278
    iput-object v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 279
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 280
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    .line 281
    iput v3, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    goto :goto_0

    .line 278
    :catchall_0
    move-exception v1

    iput-object v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 279
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 280
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    .line 281
    iput v3, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    throw v1
.end method

.method public getTxAvailBufferSize()I
    .locals 4

    .prologue
    .line 378
    iget-object v1, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    sub-int v0, v1, v2

    .line 379
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

    .line 380
    return v0
.end method

.method public openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I
    .locals 8
    .parameter "cmdMsg"

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x5

    .line 223
    const/4 v2, 0x0

    .line 225
    .local v2, ret:I
    iget v4, p0, Lcom/android/internal/telephony/cat/Channel;->mLinkMode:I

    if-nez v4, :cond_1

    .line 227
    :try_start_0
    new-instance v4, Ljava/net/Socket;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/Channel;->mAddress:Ljava/net/InetAddress;

    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mPort:I

    invoke-direct {v4, v5, v6}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 228
    iget-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 229
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 241
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    if-ne v4, v7, :cond_3

    .line 243
    :try_start_1
    const-string v4, "[BIP]"

    const-string v5, "TCP stream is open"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance v4, Ljava/io/DataInputStream;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    .line 245
    new-instance v4, Ljava/io/BufferedOutputStream;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    .line 246
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/internal/telephony/cat/Channel$ReceiverTcpThread;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    invoke-direct {v5, p0, v6}, Lcom/android/internal/telephony/cat/Channel$ReceiverTcpThread;-><init>(Lcom/android/internal/telephony/cat/Channel;Ljava/io/DataInputStream;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->rt:Ljava/lang/Thread;

    .line 247
    iget-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->rt:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/TcpChannel;->checkBufferSize()I

    move-result v2

    .line 258
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 259
    const-string v3, "[BIP]"

    const-string v4, "TcpChannel-openChannel: buffer size is modified"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    iput v3, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    .line 262
    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 263
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    :cond_1
    move v3, v2

    .line 266
    :goto_1
    return v3

    .line 231
    :cond_2
    const/4 v4, 0x7

    :try_start_2
    iput v4, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, e:Ljava/io/IOException;
    const-string v4, "[BIP]"

    const-string v5, "Fail to create tcp socket"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 236
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 237
    .local v1, e2:Ljava/lang/Exception;
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to create tcp socket "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 248
    .end local v1           #e2:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 249
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "[BIP]"

    const-string v5, "Fail to create data stream"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 253
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    const-string v4, "[BIP]"

    const-string/jumbo v5, "tcp socket is not open"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public receiveData(I)Lcom/android/internal/telephony/cat/ReceiveDataResult;
    .locals 10
    .parameter "requestCount"

    .prologue
    .line 289
    new-instance v5, Lcom/android/internal/telephony/cat/ReceiveDataResult;

    invoke-direct {v5}, Lcom/android/internal/telephony/cat/ReceiveDataResult;-><init>()V

    .line 292
    .local v5, ret:Lcom/android/internal/telephony/cat/ReceiveDataResult;
    new-array v6, p1, [B

    iput-object v6, v5, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 293
    const-string v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "receiveData "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-lt v6, p1, :cond_1

    .line 297
    :try_start_0
    const-string v6, "[BIP]"

    const-string v7, "Start to copy data from buffer"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v8, v5, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v6, p1

    iput v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 301
    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    add-int/2addr v6, p1

    iput v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 302
    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    iput v6, v5, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    .line 340
    :cond_0
    :goto_0
    return-object v5

    .line 305
    :cond_1
    move v4, p1

    .line 306
    .local v4, needCopy:I
    iget v0, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 307
    .local v0, canCopy:I
    const/4 v3, 0x0

    .line 308
    .local v3, countCopied:I
    const/4 v1, 0x0

    .line 310
    .local v1, canExitLoop:Z
    :goto_1
    if-nez v1, :cond_0

    .line 311
    if-le v4, v0, :cond_2

    .line 313
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v8, v5, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v6, v7, v8, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    add-int/2addr v6, v0

    iput v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 315
    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v6, v0

    iput v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 316
    add-int/2addr v3, v0

    .line 317
    sub-int/2addr v4, v0

    .line 328
    :goto_2
    if-nez v4, :cond_3

    .line 329
    const/4 v1, 0x1

    goto :goto_1

    .line 321
    :cond_2
    :try_start_2
    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v8, v5, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v6, v7, v8, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 323
    add-int/2addr v3, v4

    .line 324
    const/4 v4, 0x0

    goto :goto_2

    .line 332
    :cond_3
    :try_start_3
    iget-object v6, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    array-length v9, v9

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/DataInputStream;->read([BII)I

    move-result v2

    .line 333
    .local v2, count:I
    iput v2, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 334
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 335
    .end local v2           #count:I
    :catch_0
    move-exception v6

    goto :goto_1

    .line 325
    :catch_1
    move-exception v6

    goto :goto_2

    .line 318
    :catch_2
    move-exception v6

    goto :goto_2

    .line 303
    .end local v0           #canCopy:I
    .end local v1           #canExitLoop:Z
    .end local v3           #countCopied:I
    .end local v4           #needCopy:I
    :catch_3
    move-exception v6

    goto :goto_0
.end method

.method public sendData([BI)I
    .locals 8
    .parameter "data"
    .parameter "mode"

    .prologue
    const/4 v3, 0x5

    .line 344
    const/4 v1, 0x0

    .line 345
    .local v1, ret:I
    iget-object v4, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    array-length v4, v4

    iget v5, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    sub-int v2, v4, v5

    .line 348
    .local v2, txRemaining:I
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendData: size of buffer:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendData: size of buffer:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :try_start_0
    array-length v4, p1

    if-lt v2, v4, :cond_1

    .line 353
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    array-length v7, p1

    invoke-static {p1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    iget v4, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    array-length v5, p1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_0
    const/4 v4, 0x1

    if-ne p2, v4, :cond_0

    iget v4, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 364
    :try_start_1
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SEND_DATA_MODE_IMMEDIATE:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 366
    iget-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 367
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 374
    .end local v1           #ret:I
    :cond_0
    :goto_1
    return v1

    .line 356
    .restart local v1       #ret:I
    :cond_1
    :try_start_2
    const-string v4, "[BIP]"

    const-string/jumbo v5, "sendData - tx buffer is not enough"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    move v1, v3

    .line 359
    goto :goto_1

    .line 368
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 369
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v1, v3

    .line 370
    goto :goto_1
.end method
