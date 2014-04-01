.class public Lcom/baidu/server/dp/MetricBuilder;
.super Ljava/lang/Object;
.source "MetricBuilder.java"


# static fields
.field public static final SIZE_CHAR:I = 0x1

.field public static final SIZE_DOUBLE:I = 0x8

.field public static final SIZE_FLOAT:I = 0x4

.field public static final SIZE_INT:I = 0x4

.field public static final SIZE_SHORT:I = 0x2

.field public static final SIZE_UCHAR:I = 0x1

.field public static final SIZE_UINT:I = 0x4

.field public static final SIZE_USHORT:I = 0x2


# instance fields
.field private final BUFFER_BLOCK_SIZE:I

.field private mBufferLength:I

.field mByteOrder:Ljava/nio/ByteOrder;

.field private mContentLength:I

.field private mMetricBuffer:Ljava/nio/ByteBuffer;

.field private mMetricId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x10

    iput v0, p0, Lcom/baidu/server/dp/MetricBuilder;->BUFFER_BLOCK_SIZE:I

    .line 48
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/server/dp/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    .line 49
    invoke-virtual {p0}, Lcom/baidu/server/dp/MetricBuilder;->reset()V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1
    .parameter "byteOrder"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x10

    iput v0, p0, Lcom/baidu/server/dp/MetricBuilder;->BUFFER_BLOCK_SIZE:I

    .line 57
    iput-object p1, p0, Lcom/baidu/server/dp/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    .line 58
    invoke-virtual {p0}, Lcom/baidu/server/dp/MetricBuilder;->reset()V

    .line 59
    return-void
.end method

.method private prepareBuffer(I)V
    .locals 5
    .parameter "newAddedByteNumber"

    .prologue
    .line 293
    iget v2, p0, Lcom/baidu/server/dp/MetricBuilder;->mContentLength:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/baidu/server/dp/MetricBuilder;->mBufferLength:I

    if-le v2, v3, :cond_1

    .line 294
    iget v1, p0, Lcom/baidu/server/dp/MetricBuilder;->mBufferLength:I

    .line 295
    .local v1, newLength:I
    :goto_0
    iget v2, p0, Lcom/baidu/server/dp/MetricBuilder;->mContentLength:I

    add-int/2addr v2, p1

    if-ge v1, v2, :cond_0

    .line 296
    add-int/lit8 v1, v1, 0x10

    goto :goto_0

    .line 298
    :cond_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 299
    .local v0, newBuffer:Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/baidu/server/dp/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 300
    iget-object v2, p0, Lcom/baidu/server/dp/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/baidu/server/dp/MetricBuilder;->mContentLength:I

    invoke-virtual {v0, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 301
    iput-object v0, p0, Lcom/baidu/server/dp/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    .line 302
    iput v1, p0, Lcom/baidu/server/dp/MetricBuilder;->mBufferLength:I

    .line 303
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "increase internal buffer size to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/baidu/server/dp/MetricBuilder;->mBufferLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 305
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
    .line 238
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 239
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/server/dp/MetricBuilder;->appendINT(I)V

    .line 247
    :goto_0
    return-void

    .line 241
    :cond_1
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/baidu/server/dp/MetricBuilder;->appendINT(I)V

    .line 243
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/baidu/server/dp/MetricBuilder;->prepareBuffer(I)V

    .line 244
    iget-object v0, p0, Lcom/baidu/server/dp/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 245
    iget v0, p0, Lcom/baidu/server/dp/MetricBuilder;->mContentLength:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/server/dp/MetricBuilder;->mContentLength:I

    goto :goto_0
.end method

.method public appendCHAR(B)V
    .locals 1
    .parameter "value"

    .prologue
    .line 119
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/server/dp/MetricBuilder;->prepareBuffer(I)V

    .line 120
    iget-object v0, p0, Lcom/baidu/server/dp/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 121
    iget v0, p0, Lcom/baidu/server/dp/MetricBuilder;->mContentLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/server/dp/MetricBuilder;->mContentLength:I

    .line 122
    return-void
.end method

.method public appendDOUBLE(D)V
    .locals 1
    .parameter "value"

    .prologue
    .line 214
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/baidu/server/dp/MetricBuilder;->prepareBuffer(I)V

    .line 215
    iget-object v0, p0, Lcom/baidu/server/dp/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 216
    iget v0, p0, Lcom/baidu/server/dp/MetricBuilder;->mContentLength:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/baidu/server/dp/MetricBuilder;->mContentLength:I

    .line 217
    return-void
.end method

.method public appendFLOAT(F)V
    .locals 1
    .parameter "value"

    .prologue
    .line 226
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/baidu/server/dp/MetricBuilder;->prepareBuffer(I)V

    .line 227
    iget-object v0, p0, Lcom/baidu/server/dp/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 228
    iget v0, p0, Lcom/baidu/server/dp/MetricBuilder;->mContentLength:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/baidu/server/dp/MetricBuilder;->mContentLength:I

    .line 229
    return-void
.end method

.method public appendINT(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 86
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/baidu/server/dp/MetricBuilder;->prepareBuffer(I)V

    .line 87
    iget-object v0, p0, Lcom/baidu/server/dp/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 88
    iget v0, p0, Lcom/baidu/server/dp/MetricBuilder;->mContentLength:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/baidu/server/dp/MetricBuilder;->mContentLength:I

    .line 90
    return-void
.end method

.method public appendSHORT(S)V
    .locals 1
    .parameter "value"

    .prologue
    .line 152
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/baidu/server/dp/MetricBuilder;->prepareBuffer(I)V

    .line 153
    iget-object v0, p0, Lcom/baidu/server/dp/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 154
    iget v0, p0, Lcom/baidu/server/dp/MetricBuilder;->mContentLength:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/server/dp/MetricBuilder;->mContentLength:I

    .line 155
    return-void
.end method

.method public appendStringZ(Ljava/lang/String;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 256
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/baidu/server/dp/MetricBuilder;->appendINT(I)V

    .line 269
    :goto_0
    return-void

    .line 260
    :cond_1
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 261
    .local v0, b:[B
    array-length v2, v0

    invoke-virtual {p0, v2}, Lcom/baidu/server/dp/MetricBuilder;->appendINT(I)V

    .line 262
    array-length v2, v0

    invoke-direct {p0, v2}, Lcom/baidu/server/dp/MetricBuilder;->prepareBuffer(I)V

    .line 263
    iget-object v2, p0, Lcom/baidu/server/dp/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 264
    iget v2, p0, Lcom/baidu/server/dp/MetricBuilder;->mContentLength:I

    array-length v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Lcom/baidu/server/dp/MetricBuilder;->mContentLength:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    .end local v0           #b:[B
    :catch_0
    move-exception v1

    .line 266
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public appendUCHAR(C)V
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    .line 131
    invoke-direct {p0, v4}, Lcom/baidu/server/dp/MetricBuilder;->prepareBuffer(I)V

    .line 134
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 135
    .local v0, cache:Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/baidu/server/dp/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 136
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 137
    iget-object v1, p0, Lcom/baidu/server/dp/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_0

    .line 138
    iget-object v1, p0, Lcom/baidu/server/dp/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 142
    :goto_0
    iget v1, p0, Lcom/baidu/server/dp/MetricBuilder;->mContentLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/server/dp/MetricBuilder;->mContentLength:I

    .line 143
    return-void

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/baidu/server/dp/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public appendUINT(J)V
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x4

    .line 99
    invoke-direct {p0, v4}, Lcom/baidu/server/dp/MetricBuilder;->prepareBuffer(I)V

    .line 102
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 103
    .local v0, cache:Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/baidu/server/dp/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 104
    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 105
    iget-object v1, p0, Lcom/baidu/server/dp/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_0

    .line 106
    iget-object v1, p0, Lcom/baidu/server/dp/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 110
    :goto_0
    iget v1, p0, Lcom/baidu/server/dp/MetricBuilder;->mContentLength:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/baidu/server/dp/MetricBuilder;->mContentLength:I

    .line 111
    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/baidu/server/dp/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public appendUSHORT(I)V
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x2

    .line 164
    invoke-direct {p0, v4}, Lcom/baidu/server/dp/MetricBuilder;->prepareBuffer(I)V

    .line 165
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 166
    .local v0, cache:Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/baidu/server/dp/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 167
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 168
    iget-object v1, p0, Lcom/baidu/server/dp/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_0

    .line 169
    iget-object v1, p0, Lcom/baidu/server/dp/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 173
    :goto_0
    iget v1, p0, Lcom/baidu/server/dp/MetricBuilder;->mContentLength:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/baidu/server/dp/MetricBuilder;->mContentLength:I

    .line 174
    return-void

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/baidu/server/dp/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public buffer()[B
    .locals 4

    .prologue
    .line 276
    iget v1, p0, Lcom/baidu/server/dp/MetricBuilder;->mContentLength:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 277
    .local v0, b:Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/baidu/server/dp/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/baidu/server/dp/MetricBuilder;->mContentLength:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public getMetricId()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/baidu/server/dp/MetricBuilder;->mMetricId:J

    return-wide v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/baidu/server/dp/MetricBuilder;->mContentLength:I

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 65
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/server/dp/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    .line 66
    iget-object v0, p0, Lcom/baidu/server/dp/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/baidu/server/dp/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 67
    iput v2, p0, Lcom/baidu/server/dp/MetricBuilder;->mBufferLength:I

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/server/dp/MetricBuilder;->mContentLength:I

    .line 69
    return-void
.end method

.method public setMetricId(J)V
    .locals 0
    .parameter "metricId"

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/baidu/server/dp/MetricBuilder;->mMetricId:J

    .line 74
    return-void
.end method
