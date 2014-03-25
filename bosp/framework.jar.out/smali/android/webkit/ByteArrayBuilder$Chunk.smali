.class public Landroid/webkit/ByteArrayBuilder$Chunk;
.super Ljava/lang/Object;
.source "ByteArrayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/ByteArrayBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Chunk"
.end annotation


# instance fields
.field public mArray:[B

.field public mLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "length"

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const-string/jumbo v0, "webkit/ByteArrayBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ByteArrayBuilder Chun New length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-array v0, p1, [B

    iput-object v0, p0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    .line 153
    return-void
.end method


# virtual methods
.method public release()V
    .locals 4

    .prologue
    .line 159
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    .line 160
    invoke-static {}, Landroid/webkit/ByteArrayBuilder;->access$000()Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 164
    :try_start_0
    const-string/jumbo v0, "webkit/ByteArrayBuilder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ByteArrayBuilder Chun Relese this:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {}, Landroid/webkit/ByteArrayBuilder;->access$000()Ljava/util/LinkedList;

    move-result-object v0

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-static {}, Landroid/webkit/ByteArrayBuilder;->access$100()Ljava/lang/ref/ReferenceQueue;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 166
    invoke-static {}, Landroid/webkit/ByteArrayBuilder;->access$000()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 167
    monitor-exit v1

    .line 168
    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
