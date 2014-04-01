.class public Lcom/android/internal/telephony/cat/Channel$ReceiverTcpThread;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ReceiverTcpThread"
.end annotation


# instance fields
.field di:Ljava/io/DataInputStream;

.field final synthetic this$0:Lcom/android/internal/telephony/cat/Channel;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/Channel;Ljava/io/DataInputStream;)V
    .locals 0
    .parameter
    .parameter "s"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/internal/telephony/cat/Channel$ReceiverTcpThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p2, p0, Lcom/android/internal/telephony/cat/Channel$ReceiverTcpThread;->di:Ljava/io/DataInputStream;

    .line 183
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 187
    const/16 v3, 0x578

    new-array v1, v3, [B

    .line 189
    .local v1, localBuffer:[B
    const-string v3, "[BIP]"

    const-string v4, "ReceiverTcpThread run"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :goto_0
    :try_start_0
    const-string v3, "[BIP]"

    const-string v4, "Before ReceiverThread: Receive data from network"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v3, p0, Lcom/android/internal/telephony/cat/Channel$ReceiverTcpThread;->di:Ljava/io/DataInputStream;

    invoke-virtual {v3, v1}, Ljava/io/DataInputStream;->read([B)I

    move-result v2

    .line 195
    .local v2, recvLen:I
    const-string v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReceiverThread: Receive data from network:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    if-ltz v2, :cond_0

    .line 197
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/cat/Channel$ReceiverTcpThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    iget-object v3, p0, Lcom/android/internal/telephony/cat/Channel$ReceiverTcpThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iput v2, v3, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 199
    iget-object v3, p0, Lcom/android/internal/telephony/cat/Channel$ReceiverTcpThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 200
    iget-object v3, p0, Lcom/android/internal/telephony/cat/Channel$ReceiverTcpThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v4, p0, Lcom/android/internal/telephony/cat/Channel$ReceiverTcpThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v4, v4, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/Channel;->dataAvailable(I)V

    .line 202
    :cond_0
    const-string v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReceiverThread: buffer data:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cat/Channel$ReceiverTcpThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v5, v5, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    .end local v2           #recvLen:I
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    return-void
.end method
