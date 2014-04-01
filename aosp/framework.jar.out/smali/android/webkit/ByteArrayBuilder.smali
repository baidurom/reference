.class Landroid/webkit/ByteArrayBuilder;
.super Ljava/lang/Object;
.source "ByteArrayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/ByteArrayBuilder$Chunk;
    }
.end annotation


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x2000

.field private static final XLOGTAG:Ljava/lang/String; = "webkit/ByteArrayBuilder"

.field private static final sPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/webkit/ByteArrayBuilder$Chunk;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Landroid/webkit/ByteArrayBuilder$Chunk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mChunks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/webkit/ByteArrayBuilder$Chunk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/webkit/ByteArrayBuilder;->sPool:Ljava/util/LinkedList;

    .line 44
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Landroid/webkit/ByteArrayBuilder;->sQueue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    .line 51
    return-void
.end method

.method static synthetic access$000()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Landroid/webkit/ByteArrayBuilder;->sPool:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Landroid/webkit/ByteArrayBuilder;->sQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method private obtainChunk(I)Landroid/webkit/ByteArrayBuilder$Chunk;
    .locals 3
    .parameter "length"

    .prologue
    .line 136
    const/16 v1, 0x2000

    if-ge p1, v1, :cond_0

    .line 137
    const/16 p1, 0x2000

    .line 139
    :cond_0
    sget-object v2, Landroid/webkit/ByteArrayBuilder;->sPool:Ljava/util/LinkedList;

    monitor-enter v2

    .line 141
    :try_start_0
    invoke-direct {p0}, Landroid/webkit/ByteArrayBuilder;->processPoolLocked()V

    .line 142
    sget-object v1, Landroid/webkit/ByteArrayBuilder;->sPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    sget-object v1, Landroid/webkit/ByteArrayBuilder;->sPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ByteArrayBuilder$Chunk;

    .line 146
    .local v0, c:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-eqz v0, :cond_1

    .line 147
    monitor-exit v2

    .line 150
    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/webkit/ByteArrayBuilder$Chunk;

    invoke-direct {v0, p1}, Landroid/webkit/ByteArrayBuilder$Chunk;-><init>(I)V

    monitor-exit v2

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private processPoolLocked()V
    .locals 2

    .prologue
    .line 126
    :goto_0
    sget-object v1, Landroid/webkit/ByteArrayBuilder;->sQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 127
    .local v0, entry:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/webkit/ByteArrayBuilder$Chunk;>;"
    if-nez v0, :cond_0

    .line 132
    return-void

    .line 130
    :cond_0
    sget-object v1, Landroid/webkit/ByteArrayBuilder;->sPool:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized append([BII)V
    .locals 8
    .parameter "array"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    const-string/jumbo v5, "webkit/ByteArrayBuilder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ByteArrayBuilder append length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :goto_0
    if-lez p3, :cond_2

    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, c:Landroid/webkit/ByteArrayBuilder$Chunk;
    :try_start_1
    iget-object v5, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    invoke-direct {p0, p3}, Landroid/webkit/ByteArrayBuilder;->obtainChunk(I)Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v2

    .line 60
    iget-object v5, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 68
    :cond_0
    :goto_1
    iget-object v5, v2, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    array-length v5, v5

    iget v6, v2, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    sub-int/2addr v5, v6

    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 69
    .local v1, amount:I
    iget-object v5, v2, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    iget v6, v2, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-static {p1, p2, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iget v5, v2, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    add-int/2addr v5, v1

    iput v5, v2, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    .line 71
    sub-int/2addr p3, v1

    .line 72
    add-int/2addr p2, v1

    .line 73
    goto :goto_0

    .line 62
    .end local v1           #amount:I
    :cond_1
    iget-object v5, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/webkit/ByteArrayBuilder$Chunk;

    move-object v2, v0

    .line 63
    iget v5, v2, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    iget-object v6, v2, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    array-length v6, v6

    if-ne v5, v6, :cond_0

    .line 64
    invoke-direct {p0, p3}, Landroid/webkit/ByteArrayBuilder;->obtainChunk(I)Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v2

    .line 65
    iget-object v5, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 74
    :catch_0
    move-exception v3

    .line 75
    .local v3, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string/jumbo v5, "webkit/ByteArrayBuilder"

    const-string v6, "ByteArrayBuilder append exception"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :try_start_3
    const-string v5, "/sdcard/browser.hprof"

    invoke-static {v5}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 83
    :goto_2
    :try_start_4
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 54
    .end local v2           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 79
    .restart local v2       #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    .restart local v3       #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v4

    .line 80
    .local v4, ex:Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v5, "webkit/ByteArrayBuilder"

    const-string v6, "ByteArrayBuilder append dump exception"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 85
    .end local v2           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    .end local v4           #ex:Ljava/lang/Exception;
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized clear()V
    .locals 4

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "webkit/ByteArrayBuilder"

    const-string v2, "ByteArrayBuilder clear()"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .line 116
    .local v0, c:Landroid/webkit/ByteArrayBuilder$Chunk;
    :goto_0
    if-eqz v0, :cond_0

    .line 117
    const-string/jumbo v1, "webkit/ByteArrayBuilder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ByteArrayBuilder clear() chunk release:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {v0}, Landroid/webkit/ByteArrayBuilder$Chunk;->release()V

    .line 119
    invoke-virtual {p0}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_0
    monitor-exit p0

    return-void

    .line 114
    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getByteSize()I
    .locals 6

    .prologue
    .line 103
    monitor-enter p0

    const/4 v2, 0x0

    .line 104
    .local v2, total:I
    :try_start_0
    iget-object v3, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 105
    .local v1, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/webkit/ByteArrayBuilder$Chunk;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ByteArrayBuilder$Chunk;

    .line 107
    .local v0, c:Landroid/webkit/ByteArrayBuilder$Chunk;
    iget v3, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    add-int/2addr v2, v3

    .line 108
    goto :goto_0

    .line 109
    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    :cond_0
    const-string/jumbo v3, "webkit/ByteArrayBuilder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ByteArrayBuilder mChunks.size(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return v2

    .line 103
    .end local v1           #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/webkit/ByteArrayBuilder$Chunk;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;
    .locals 1

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 95
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ByteArrayBuilder$Chunk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
