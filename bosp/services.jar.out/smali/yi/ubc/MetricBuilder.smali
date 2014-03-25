.class public Lyi/ubc/MetricBuilder;
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
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/16 v0, 0x10

    iput v0, p0, Lyi/ubc/MetricBuilder;->BUFFER_BLOCK_SIZE:I

    .line 43
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Lyi/ubc/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    .line 44
    invoke-virtual {p0}, Lyi/ubc/MetricBuilder;->reset()V

    .line 45
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .parameter "metricId"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/16 v0, 0x10

    iput v0, p0, Lyi/ubc/MetricBuilder;->BUFFER_BLOCK_SIZE:I

    .line 106
    iput-wide p1, p0, Lyi/ubc/MetricBuilder;->mMetricId:J

    .line 107
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Lyi/ubc/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    .line 108
    invoke-virtual {p0}, Lyi/ubc/MetricBuilder;->reset()V

    .line 109
    return-void
.end method

.method public constructor <init>(JIBBS)V
    .locals 1
    .parameter "metricId"
    .parameter "time"
    .parameter "target"
    .parameter "status"
    .parameter "count"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lyi/ubc/MetricBuilder;-><init>(J)V

    .line 71
    invoke-virtual {p0, p3}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lyi/ubc/MetricBuilder;->appendCHAR(B)Lyi/ubc/MetricBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Lyi/ubc/MetricBuilder;->appendCHAR(B)Lyi/ubc/MetricBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Lyi/ubc/MetricBuilder;->appendSHORT(S)Lyi/ubc/MetricBuilder;

    .line 72
    return-void
.end method

.method public constructor <init>(JIBS)V
    .locals 1
    .parameter "metricId"
    .parameter "time"
    .parameter "status"
    .parameter "count"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lyi/ubc/MetricBuilder;-><init>(J)V

    .line 57
    invoke-virtual {p0, p3}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lyi/ubc/MetricBuilder;->appendCHAR(B)Lyi/ubc/MetricBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Lyi/ubc/MetricBuilder;->appendSHORT(S)Lyi/ubc/MetricBuilder;

    .line 58
    return-void
.end method

.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;S)V
    .locals 1
    .parameter "metricId"
    .parameter "time"
    .parameter "target"
    .parameter "status"
    .parameter "count"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lyi/ubc/MetricBuilder;-><init>(J)V

    .line 85
    invoke-virtual {p0, p3}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lyi/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Lyi/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Lyi/ubc/MetricBuilder;->appendSHORT(S)Lyi/ubc/MetricBuilder;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1
    .parameter "byteOrder"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/16 v0, 0x10

    iput v0, p0, Lyi/ubc/MetricBuilder;->BUFFER_BLOCK_SIZE:I

    .line 95
    iput-object p1, p0, Lyi/ubc/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    .line 96
    invoke-virtual {p0}, Lyi/ubc/MetricBuilder;->reset()V

    .line 97
    return-void
.end method

.method private prepareBuffer(I)V
    .locals 5
    .parameter "newAddedByteNumber"

    .prologue
    .line 349
    iget v2, p0, Lyi/ubc/MetricBuilder;->mContentLength:I

    add-int/2addr v2, p1

    iget v3, p0, Lyi/ubc/MetricBuilder;->mBufferLength:I

    if-le v2, v3, :cond_1

    .line 350
    iget v1, p0, Lyi/ubc/MetricBuilder;->mBufferLength:I

    .line 351
    .local v1, newLength:I
    :goto_0
    iget v2, p0, Lyi/ubc/MetricBuilder;->mContentLength:I

    add-int/2addr v2, p1

    if-ge v1, v2, :cond_0

    .line 352
    add-int/lit8 v1, v1, 0x10

    goto :goto_0

    .line 354
    :cond_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 355
    .local v0, newBuffer:Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lyi/ubc/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 356
    iget-object v2, p0, Lyi/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    iget v4, p0, Lyi/ubc/MetricBuilder;->mContentLength:I

    invoke-virtual {v0, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 357
    iput-object v0, p0, Lyi/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    .line 358
    iput v1, p0, Lyi/ubc/MetricBuilder;->mBufferLength:I

    .line 360
    .end local v0           #newBuffer:Ljava/nio/ByteBuffer;
    .end local v1           #newLength:I
    :cond_1
    return-void
.end method

.method private reverse([BII)[B
    .locals 4
    .parameter "orig"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 363
    new-array v0, p3, [B

    .line 364
    .local v0, data:[B
    add-int v3, p2, p3

    add-int/lit8 v1, v3, -0x1

    .line 365
    .local v1, endOffset:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 366
    sub-int v3, v1, v2

    aget-byte v3, p1, v3

    aput-byte v3, v0, v2

    .line 365
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 368
    :cond_0
    return-object v0
.end method


# virtual methods
.method public appendByteArray([B)Lyi/ubc/MetricBuilder;
    .locals 2
    .parameter "value"

    .prologue
    .line 286
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 287
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 295
    :goto_0
    return-object p0

    .line 289
    :cond_1
    array-length v0, p1

    invoke-virtual {p0, v0}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 291
    array-length v0, p1

    invoke-direct {p0, v0}, Lyi/ubc/MetricBuilder;->prepareBuffer(I)V

    .line 292
    iget-object v0, p0, Lyi/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 293
    iget v0, p0, Lyi/ubc/MetricBuilder;->mContentLength:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lyi/ubc/MetricBuilder;->mContentLength:I

    goto :goto_0
.end method

.method public appendCHAR(B)Lyi/ubc/MetricBuilder;
    .locals 1
    .parameter "value"

    .prologue
    .line 180
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lyi/ubc/MetricBuilder;->prepareBuffer(I)V

    .line 181
    iget-object v0, p0, Lyi/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 182
    iget v0, p0, Lyi/ubc/MetricBuilder;->mContentLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lyi/ubc/MetricBuilder;->mContentLength:I

    .line 183
    return-object p0
.end method

.method public appendDOUBLE(D)Lyi/ubc/MetricBuilder;
    .locals 1
    .parameter "value"

    .prologue
    .line 256
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lyi/ubc/MetricBuilder;->prepareBuffer(I)V

    .line 257
    iget-object v0, p0, Lyi/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 258
    iget v0, p0, Lyi/ubc/MetricBuilder;->mContentLength:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lyi/ubc/MetricBuilder;->mContentLength:I

    .line 259
    return-object p0
.end method

.method public appendFLOAT(F)Lyi/ubc/MetricBuilder;
    .locals 1
    .parameter "value"

    .prologue
    .line 271
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lyi/ubc/MetricBuilder;->prepareBuffer(I)V

    .line 272
    iget-object v0, p0, Lyi/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 273
    iget v0, p0, Lyi/ubc/MetricBuilder;->mContentLength:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lyi/ubc/MetricBuilder;->mContentLength:I

    .line 274
    return-object p0
.end method

.method public appendINT(I)Lyi/ubc/MetricBuilder;
    .locals 1
    .parameter "value"

    .prologue
    .line 138
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lyi/ubc/MetricBuilder;->prepareBuffer(I)V

    .line 139
    iget-object v0, p0, Lyi/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 140
    iget v0, p0, Lyi/ubc/MetricBuilder;->mContentLength:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lyi/ubc/MetricBuilder;->mContentLength:I

    .line 141
    return-object p0
.end method

.method public appendSHORT(S)Lyi/ubc/MetricBuilder;
    .locals 1
    .parameter "value"

    .prologue
    .line 219
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lyi/ubc/MetricBuilder;->prepareBuffer(I)V

    .line 220
    iget-object v0, p0, Lyi/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 221
    iget v0, p0, Lyi/ubc/MetricBuilder;->mContentLength:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lyi/ubc/MetricBuilder;->mContentLength:I

    .line 222
    return-object p0
.end method

.method public appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;
    .locals 4
    .parameter "value"

    .prologue
    .line 307
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 308
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 320
    :goto_0
    return-object p0

    .line 311
    :cond_1
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 312
    .local v0, b:[B
    array-length v2, v0

    invoke-virtual {p0, v2}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 313
    array-length v2, v0

    invoke-direct {p0, v2}, Lyi/ubc/MetricBuilder;->prepareBuffer(I)V

    .line 314
    iget-object v2, p0, Lyi/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 315
    iget v2, p0, Lyi/ubc/MetricBuilder;->mContentLength:I

    array-length v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Lyi/ubc/MetricBuilder;->mContentLength:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    .end local v0           #b:[B
    :catch_0
    move-exception v1

    .line 317
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public appendUCHAR(C)Lyi/ubc/MetricBuilder;
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    .line 195
    invoke-direct {p0, v4}, Lyi/ubc/MetricBuilder;->prepareBuffer(I)V

    .line 198
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 199
    .local v0, cache:Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lyi/ubc/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 200
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 201
    iget-object v1, p0, Lyi/ubc/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_0

    .line 202
    iget-object v1, p0, Lyi/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 206
    :goto_0
    iget v1, p0, Lyi/ubc/MetricBuilder;->mContentLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lyi/ubc/MetricBuilder;->mContentLength:I

    .line 207
    return-object p0

    .line 204
    :cond_0
    iget-object v1, p0, Lyi/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public appendUINT(J)Lyi/ubc/MetricBuilder;
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x4

    .line 156
    invoke-direct {p0, v4}, Lyi/ubc/MetricBuilder;->prepareBuffer(I)V

    .line 159
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 160
    .local v0, cache:Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lyi/ubc/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 161
    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 162
    iget-object v1, p0, Lyi/ubc/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_0

    .line 163
    iget-object v1, p0, Lyi/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 167
    :goto_0
    iget v1, p0, Lyi/ubc/MetricBuilder;->mContentLength:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lyi/ubc/MetricBuilder;->mContentLength:I

    .line 168
    return-object p0

    .line 165
    :cond_0
    iget-object v1, p0, Lyi/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {p0, v2, v4, v4}, Lyi/ubc/MetricBuilder;->reverse([BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public appendUSHORT(I)Lyi/ubc/MetricBuilder;
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x2

    .line 234
    invoke-direct {p0, v4}, Lyi/ubc/MetricBuilder;->prepareBuffer(I)V

    .line 235
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 236
    .local v0, cache:Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lyi/ubc/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 237
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 238
    iget-object v1, p0, Lyi/ubc/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_0

    .line 239
    iget-object v1, p0, Lyi/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 243
    :goto_0
    iget v1, p0, Lyi/ubc/MetricBuilder;->mContentLength:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lyi/ubc/MetricBuilder;->mContentLength:I

    .line 244
    return-object p0

    .line 241
    :cond_0
    iget-object v1, p0, Lyi/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {p0, v2, v4, v4}, Lyi/ubc/MetricBuilder;->reverse([BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public buffer()[B
    .locals 4

    .prologue
    .line 329
    iget v1, p0, Lyi/ubc/MetricBuilder;->mContentLength:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 330
    .local v0, b:Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lyi/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lyi/ubc/MetricBuilder;->mContentLength:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public getMetricId()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lyi/ubc/MetricBuilder;->mMetricId:J

    return-wide v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lyi/ubc/MetricBuilder;->mContentLength:I

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 115
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lyi/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    .line 116
    iget-object v0, p0, Lyi/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lyi/ubc/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 117
    iput v2, p0, Lyi/ubc/MetricBuilder;->mBufferLength:I

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lyi/ubc/MetricBuilder;->mContentLength:I

    .line 119
    return-void
.end method

.method public setMetricId(J)V
    .locals 0
    .parameter "metricId"

    .prologue
    .line 122
    iput-wide p1, p0, Lyi/ubc/MetricBuilder;->mMetricId:J

    .line 123
    return-void
.end method
