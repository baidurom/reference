.class public Landroid/graphics/Movie;
.super Ljava/lang/Object;
.source "Movie.java"


# instance fields
.field private final mNativeMovie:I


# direct methods
.method private constructor <init>(I)V
    .locals 2
    .parameter "nativeMovie"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native movie creation failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iput p1, p0, Landroid/graphics/Movie;->mNativeMovie:I

    .line 34
    return-void
.end method

.method public static native decodeByteArray([BII)Landroid/graphics/Movie;
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Movie;
    .locals 3
    .parameter "pathName"

    .prologue
    .line 111
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .local v1, is:Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/Movie;->decodeTempStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v2

    .end local v1           #is:Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static native decodeMarkedStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    .locals 2
    .parameter "is"

    .prologue
    .line 85
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local p0
    .local v0, is:Ljava/io/InputStream;
    move-object p0, v0

    .line 94
    .end local v0           #is:Ljava/io/InputStream;
    .restart local p0
    :cond_0
    const/16 v1, 0x400

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 96
    invoke-static {p0}, Landroid/graphics/Movie;->decodeMarkedStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v1

    return-object v1
.end method

.method private static decodeTempStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    .locals 2
    .parameter "is"

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 131
    .local v0, moov:Landroid/graphics/Movie;
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v0

    .line 132
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-object v0

    .line 134
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static native nativeDestructor(I)V
.end method


# virtual methods
.method public native closeGif()V
.end method

.method public draw(Landroid/graphics/Canvas;FF)V
    .locals 1
    .parameter "canvas"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    .line 78
    return-void
.end method

.method public native draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
.end method

.method public native duration()I
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 122
    :try_start_0
    iget v0, p0, Landroid/graphics/Movie;->mNativeMovie:I

    invoke-static {v0}, Landroid/graphics/Movie;->nativeDestructor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 126
    return-void

    .line 124
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public native gifFrameBitmap(I)Landroid/graphics/Bitmap;
.end method

.method public native gifFrameDuration(I)I
.end method

.method public native gifTotalFrameCount()I
.end method

.method public native height()I
.end method

.method public native isOpaque()Z
.end method

.method public native setTime(I)Z
.end method

.method public native width()I
.end method
