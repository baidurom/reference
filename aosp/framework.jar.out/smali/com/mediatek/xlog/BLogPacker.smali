.class public Lcom/mediatek/xlog/BLogPacker;
.super Ljava/lang/Object;
.source "BLogPacker.java"


# instance fields
.field private binBuf:J

.field private index:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcom/mediatek/xlog/BLogPacker;->initBinaryBuffer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/xlog/BLogPacker;->binBuf:J

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/xlog/BLogPacker;->index:I

    .line 49
    return-void
.end method

.method private static native initBinaryBuffer()J
.end method

.method private static native writeBoolean(JIZ)I
.end method

.method private static native writeChar(JIC)I
.end method

.method private static native writeDouble(JID)I
.end method

.method private static native writeInt(JII)I
.end method

.method private static native writeLong(JIJ)I
.end method

.method private static native writeString(JILjava/lang/String;)I
.end method


# virtual methods
.method public append(C)Lcom/mediatek/xlog/BLogPacker;
    .locals 3
    .parameter "cValue"

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/mediatek/xlog/BLogPacker;->binBuf:J

    iget v2, p0, Lcom/mediatek/xlog/BLogPacker;->index:I

    invoke-static {v0, v1, v2, p1}, Lcom/mediatek/xlog/BLogPacker;->writeChar(JIC)I

    move-result v0

    iput v0, p0, Lcom/mediatek/xlog/BLogPacker;->index:I

    .line 58
    return-object p0
.end method

.method public append(D)Lcom/mediatek/xlog/BLogPacker;
    .locals 3
    .parameter "dValue"

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/mediatek/xlog/BLogPacker;->binBuf:J

    iget v2, p0, Lcom/mediatek/xlog/BLogPacker;->index:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/mediatek/xlog/BLogPacker;->writeDouble(JID)I

    move-result v0

    iput v0, p0, Lcom/mediatek/xlog/BLogPacker;->index:I

    .line 63
    return-object p0
.end method

.method public append(F)Lcom/mediatek/xlog/BLogPacker;
    .locals 5
    .parameter "fValue"

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/mediatek/xlog/BLogPacker;->binBuf:J

    iget v2, p0, Lcom/mediatek/xlog/BLogPacker;->index:I

    float-to-double v3, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mediatek/xlog/BLogPacker;->writeDouble(JID)I

    move-result v0

    iput v0, p0, Lcom/mediatek/xlog/BLogPacker;->index:I

    .line 68
    return-object p0
.end method

.method public append(I)Lcom/mediatek/xlog/BLogPacker;
    .locals 3
    .parameter "intValue"

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/mediatek/xlog/BLogPacker;->binBuf:J

    iget v2, p0, Lcom/mediatek/xlog/BLogPacker;->index:I

    invoke-static {v0, v1, v2, p1}, Lcom/mediatek/xlog/BLogPacker;->writeInt(JII)I

    move-result v0

    iput v0, p0, Lcom/mediatek/xlog/BLogPacker;->index:I

    .line 73
    return-object p0
.end method

.method public append(J)Lcom/mediatek/xlog/BLogPacker;
    .locals 3
    .parameter "lng"

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/mediatek/xlog/BLogPacker;->binBuf:J

    iget v2, p0, Lcom/mediatek/xlog/BLogPacker;->index:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/mediatek/xlog/BLogPacker;->writeLong(JIJ)I

    move-result v0

    iput v0, p0, Lcom/mediatek/xlog/BLogPacker;->index:I

    .line 78
    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lcom/mediatek/xlog/BLogPacker;
    .locals 4
    .parameter "o"

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    iget-wide v0, p0, Lcom/mediatek/xlog/BLogPacker;->binBuf:J

    iget v2, p0, Lcom/mediatek/xlog/BLogPacker;->index:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/xlog/BLogPacker;->writeString(JILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/xlog/BLogPacker;->index:I

    .line 93
    :goto_0
    return-object p0

    .line 91
    :cond_0
    iget-wide v0, p0, Lcom/mediatek/xlog/BLogPacker;->binBuf:J

    iget v2, p0, Lcom/mediatek/xlog/BLogPacker;->index:I

    const-string/jumbo v3, "null"

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/xlog/BLogPacker;->writeString(JILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/xlog/BLogPacker;->index:I

    goto :goto_0
.end method

.method public append(Ljava/lang/String;)Lcom/mediatek/xlog/BLogPacker;
    .locals 3
    .parameter "s"

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/mediatek/xlog/BLogPacker;->binBuf:J

    iget v2, p0, Lcom/mediatek/xlog/BLogPacker;->index:I

    invoke-static {v0, v1, v2, p1}, Lcom/mediatek/xlog/BLogPacker;->writeString(JILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/xlog/BLogPacker;->index:I

    .line 83
    return-object p0
.end method

.method public append(Z)Lcom/mediatek/xlog/BLogPacker;
    .locals 3
    .parameter "b"

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/mediatek/xlog/BLogPacker;->binBuf:J

    iget v2, p0, Lcom/mediatek/xlog/BLogPacker;->index:I

    invoke-static {v0, v1, v2, p1}, Lcom/mediatek/xlog/BLogPacker;->writeBoolean(JIZ)I

    move-result v0

    iput v0, p0, Lcom/mediatek/xlog/BLogPacker;->index:I

    .line 53
    return-object p0
.end method

.method protected native finalize()V
.end method
