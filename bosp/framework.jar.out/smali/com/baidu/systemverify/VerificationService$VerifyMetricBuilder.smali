.class Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;
.super Ljava/lang/Object;
.source "VerificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/systemverify/VerificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerifyMetricBuilder"
.end annotation


# static fields
.field private static final BUFFER_BLOCK_SIZE:I = 0x10

.field public static final SIZE_INT:I = 0x4

.field public static final SIZE_SHORT:I = 0x2


# instance fields
.field private mBufferLength:I

.field mByteOrder:Ljava/nio/ByteOrder;

.field private mContentLength:I

.field private mMetricBuffer:Ljava/nio/ByteBuffer;

.field private mMetricId:J

.field final synthetic this$0:Lcom/baidu/systemverify/VerificationService;


# direct methods
.method public constructor <init>(Lcom/baidu/systemverify/VerificationService;)V
    .locals 1
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->this$0:Lcom/baidu/systemverify/VerificationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    .line 178
    invoke-virtual {p0}, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->reset()V

    .line 179
    return-void
.end method

.method private prepareBuffer(I)V
    .locals 5
    .parameter "newAddedByteNumber"

    .prologue
    .line 214
    iget v2, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->mContentLength:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->mBufferLength:I

    if-le v2, v3, :cond_1

    .line 215
    iget v1, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->mBufferLength:I

    .line 216
    .local v1, newLength:I
    :goto_0
    iget v2, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->mContentLength:I

    add-int/2addr v2, p1

    if-ge v1, v2, :cond_0

    .line 217
    add-int/lit8 v1, v1, 0x10

    goto :goto_0

    .line 219
    :cond_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 220
    .local v0, newBuffer:Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 221
    iget-object v2, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->mContentLength:I

    invoke-virtual {v0, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 222
    iput-object v0, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    .line 223
    iput v1, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->mBufferLength:I

    .line 224
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "increase internal buffer size to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->mBufferLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 226
    .end local v0           #newBuffer:Ljava/nio/ByteBuffer;
    .end local v1           #newLength:I
    :cond_1
    return-void
.end method


# virtual methods
.method public appendByteArray([B)V
    .locals 2
    .parameter "value"

    .prologue
    .line 229
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 230
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->appendINT(I)V

    .line 238
    :goto_0
    return-void

    .line 232
    :cond_1
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->appendINT(I)V

    .line 234
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->prepareBuffer(I)V

    .line 235
    iget-object v0, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 236
    iget v0, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->mContentLength:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->mContentLength:I

    goto :goto_0
.end method

.method public appendINT(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 202
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->prepareBuffer(I)V

    .line 203
    iget-object v0, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 204
    iget v0, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->mContentLength:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->mContentLength:I

    .line 205
    return-void
.end method

.method public appendSHORT(S)V
    .locals 1
    .parameter "value"

    .prologue
    .line 208
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->prepareBuffer(I)V

    .line 209
    iget-object v0, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 210
    iget v0, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->mContentLength:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->mContentLength:I

    .line 211
    return-void
.end method

.method public buffer()[B
    .locals 4

    .prologue
    .line 193
    iget v1, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->mContentLength:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 194
    .local v0, b:Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->mContentLength:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public getMetricId()J
    .locals 2

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->mMetricId:J

    return-wide v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 182
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    .line 183
    iget-object v0, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 184
    iput v2, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->mBufferLength:I

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->mContentLength:I

    .line 186
    return-void
.end method

.method public setMetricId(J)V
    .locals 0
    .parameter "metricId"

    .prologue
    .line 198
    iput-wide p1, p0, Lcom/baidu/systemverify/VerificationService$VerifyMetricBuilder;->mMetricId:J

    .line 199
    return-void
.end method
