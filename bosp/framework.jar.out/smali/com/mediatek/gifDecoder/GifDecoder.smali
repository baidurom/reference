.class public Lcom/mediatek/gifDecoder/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# static fields
.field public static final INVALID_VALUE:I = 0x0

.field private static final MINIMAL_DURATION:I = 0x64


# instance fields
.field private mMovie:Landroid/graphics/Movie;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "is"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    if-nez p1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-static {p1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gifDecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "pathName"

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    if-nez p1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-static {p1}, Landroid/graphics/Movie;->decodeFile(Ljava/lang/String;)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gifDecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;

    goto :goto_0
.end method

.method public constructor <init>([BII)V
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    if-nez p1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/graphics/Movie;->decodeByteArray([BII)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gifDecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/gifDecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 134
    :goto_0
    monitor-exit p0

    return-void

    .line 132
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/gifDecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->closeGif()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/gifDecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFrameBitmap(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "frameIndex"

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/gifDecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 214
    const/4 v0, 0x0

    .line 215
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/gifDecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0, p1}, Landroid/graphics/Movie;->gifFrameBitmap(I)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFrameDuration(I)I
    .locals 2
    .parameter "frameIndex"

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/gifDecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 198
    const/4 v0, 0x0

    .line 202
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 199
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/gifDecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v1, p1}, Landroid/graphics/Movie;->gifFrameDuration(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 200
    .local v0, duration:I
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 201
    const/16 v0, 0x64

    goto :goto_0

    .line 197
    .end local v0           #duration:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getHeight()I
    .locals 1

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/gifDecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 158
    const/4 v0, 0x0

    .line 159
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/gifDecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTotalDuration()I
    .locals 1

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/gifDecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 172
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/gifDecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTotalFrameCount()I
    .locals 1

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/gifDecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 184
    const/4 v0, 0x0

    .line 185
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/gifDecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->gifTotalFrameCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWidth()I
    .locals 1

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/gifDecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 146
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/gifDecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
