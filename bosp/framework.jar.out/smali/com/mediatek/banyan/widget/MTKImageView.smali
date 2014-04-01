.class public Lcom/mediatek/banyan/widget/MTKImageView;
.super Landroid/widget/ImageView;
.source "MTKImageView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;,
        Lcom/mediatek/banyan/widget/MTKImageView$GifThread;,
        Lcom/mediatek/banyan/widget/MTKImageView$Bound;
    }
.end annotation


# static fields
.field private static final MAX_HEIGHT:I = 0x1e0

.field private static final MAX_WIDTH:I = 0x280

.field private static final STORE_PIC_TAG:Ljava/lang/String; = "storePic"


# instance fields
.field volatile mAbort:Z

.field private mAnimationThread:Ljava/lang/Thread;

.field private mContext:Landroid/content/Context;

.field private mCurrGifFrame:I

.field mCurrentRunnable:Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;

.field protected mGifDecoder:Lcom/mediatek/gifDecoder/GifDecoder;

.field protected mGifStream:Ljava/io/InputStream;

.field protected mHandler:Landroid/os/Handler;

.field private mResGif:Z

.field protected mResourceId:I

.field private mSetFromGif:Z

.field protected mUri:Landroid/net/Uri;

.field private mUriGif:Z

.field private self:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 252
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mSetFromGif:Z

    .line 254
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUri:Landroid/net/Uri;

    .line 255
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mResGif:Z

    .line 256
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUriGif:Z

    .line 257
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;

    .line 259
    iput v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrGifFrame:I

    .line 261
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifDecoder:Lcom/mediatek/gifDecoder/GifDecoder;

    .line 263
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAbort:Z

    .line 264
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mHandler:Landroid/os/Handler;

    .line 738
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrentRunnable:Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;

    .line 88
    iput-object p1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->initForGif()V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 252
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mSetFromGif:Z

    .line 254
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUri:Landroid/net/Uri;

    .line 255
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mResGif:Z

    .line 256
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUriGif:Z

    .line 257
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;

    .line 259
    iput v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrGifFrame:I

    .line 261
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifDecoder:Lcom/mediatek/gifDecoder/GifDecoder;

    .line 263
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAbort:Z

    .line 264
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mHandler:Landroid/os/Handler;

    .line 738
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrentRunnable:Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;

    .line 101
    iput-object p1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->initForGif()V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 252
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mSetFromGif:Z

    .line 254
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUri:Landroid/net/Uri;

    .line 255
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mResGif:Z

    .line 256
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUriGif:Z

    .line 257
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;

    .line 259
    iput v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrGifFrame:I

    .line 261
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifDecoder:Lcom/mediatek/gifDecoder/GifDecoder;

    .line 263
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAbort:Z

    .line 264
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mHandler:Landroid/os/Handler;

    .line 738
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrentRunnable:Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;

    .line 115
    iput-object p1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->initForGif()V

    .line 119
    return-void
.end method

.method private abortAnimationThread()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 625
    const-string v1, "MTKImageView"

    const-string v2, "abortAnimationThread()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAnimationThread:Ljava/lang/Thread;

    if-nez v1, :cond_1

    .line 627
    const-string v1, "MTKImageView"

    const-string v2, "abortAnimationThread:thread null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAbort:Z

    .line 634
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAnimationThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 637
    iget-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAnimationThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    :goto_1
    iput-object v4, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAnimationThread:Ljava/lang/Thread;

    .line 643
    iget-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrentRunnable:Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;

    if-eqz v1, :cond_0

    .line 644
    const-string v1, "MTKImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "abortAnimationThread:remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrentRunnable:Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrentRunnable:Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 647
    iput-object v4, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrentRunnable:Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;

    goto :goto_0

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v1, "MTKImageView"

    const-string v2, "abortAnimationThread:join interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/mediatek/banyan/widget/MTKImageView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/banyan/widget/MTKImageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->gifAnimation()V

    return-void
.end method

.method static synthetic access$502(Lcom/mediatek/banyan/widget/MTKImageView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mSetFromGif:Z

    return p1
.end method

.method private closeGifStream()V
    .locals 4

    .prologue
    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 275
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, e:Ljava/io/IOException;
    const-string v1, "MTKImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Close GIF InputStream failed, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private decodeBoundsInfo(Landroid/net/Uri;)Lcom/mediatek/banyan/widget/MTKImageView$Bound;
    .locals 7
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 405
    const/4 v2, 0x0

    .line 406
    .local v2, input:Ljava/io/InputStream;
    new-instance v0, Lcom/mediatek/banyan/widget/MTKImageView$Bound;

    invoke-direct {v0, p0, v4}, Lcom/mediatek/banyan/widget/MTKImageView$Bound;-><init>(Lcom/mediatek/banyan/widget/MTKImageView;Lcom/mediatek/banyan/widget/MTKImageView$1;)V

    .line 408
    .local v0, bound:Lcom/mediatek/banyan/widget/MTKImageView$Bound;
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 409
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 410
    .local v3, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 411
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 413
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #setter for: Lcom/mediatek/banyan/widget/MTKImageView$Bound;->width:I
    invoke-static {v0, v4}, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->access$202(Lcom/mediatek/banyan/widget/MTKImageView$Bound;I)I

    .line 414
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #setter for: Lcom/mediatek/banyan/widget/MTKImageView$Bound;->height:I
    invoke-static {v0, v4}, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->access$302(Lcom/mediatek/banyan/widget/MTKImageView$Bound;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 419
    if-eqz v2, :cond_0

    .line 421
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 429
    .end local v3           #opt:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v0

    .line 422
    .restart local v3       #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 424
    .local v1, e:Ljava/io/IOException;
    const-string v4, "MTKImageView"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 415
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v1

    .line 417
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v4, "MTKImageView"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 419
    if-eqz v2, :cond_0

    .line 421
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 422
    :catch_2
    move-exception v1

    .line 424
    .local v1, e:Ljava/io/IOException;
    const-string v4, "MTKImageView"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 419
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_1

    .line 421
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 425
    :cond_1
    :goto_1
    throw v4

    .line 422
    :catch_3
    move-exception v1

    .line 424
    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "MTKImageView"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private decodeDegreeInfo(Landroid/net/Uri;)I
    .locals 8
    .parameter "uri"

    .prologue
    .line 433
    const/4 v3, 0x0

    .line 434
    .local v3, inputForRotate:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 435
    .local v4, orientation:I
    const/4 v0, 0x0

    .line 437
    .local v0, degree:I
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 438
    if-eqz v3, :cond_0

    .line 439
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, v3}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 440
    .local v2, exif:Landroid/media/ExifInterface;
    if-eqz v2, :cond_0

    .line 441
    const-string v5, "Orientation"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 442
    invoke-direct {p0, v4}, Lcom/mediatek/banyan/widget/MTKImageView;->getExifRotation(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    .line 450
    .end local v2           #exif:Landroid/media/ExifInterface;
    :cond_0
    if-eqz v3, :cond_1

    .line 452
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 458
    :cond_1
    :goto_0
    return v0

    .line 453
    :catch_0
    move-exception v1

    .line 454
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "MTKImageView"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 445
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 446
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v5, "MTKImageView"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 450
    if-eqz v3, :cond_1

    .line 452
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 453
    :catch_2
    move-exception v1

    .line 454
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "MTKImageView"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 447
    .end local v1           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 448
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    const-string v5, "MTKImageView"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 450
    if-eqz v3, :cond_1

    .line 452
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 453
    :catch_4
    move-exception v1

    .line 454
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "MTKImageView"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 450
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_2

    .line 452
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 455
    :cond_2
    :goto_1
    throw v5

    .line 453
    :catch_5
    move-exception v1

    .line 454
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v6, "MTKImageView"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getExifRotation(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, degrees:I
    packed-switch p1, :pswitch_data_0

    .line 379
    :goto_0
    :pswitch_0
    return v0

    .line 367
    :pswitch_1
    const/4 v0, 0x0

    .line 368
    goto :goto_0

    .line 370
    :pswitch_2
    const/16 v0, 0x5a

    .line 371
    goto :goto_0

    .line 373
    :pswitch_3
    const/16 v0, 0xb4

    .line 374
    goto :goto_0

    .line 376
    :pswitch_4
    const/16 v0, 0x10e

    goto :goto_0

    .line 365
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private gifAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 660
    :try_start_0
    const-string v5, "MTKImageView"

    const-string v6, "gifAnimation:call openGifStream()"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->openGifStream()V

    .line 662
    iget-object v5, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;

    if-nez v5, :cond_1

    .line 663
    const-string v5, "MTKImageView"

    const-string v6, "gifAnimation:got null mGifStream"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    iget-object v5, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifDecoder:Lcom/mediatek/gifDecoder/GifDecoder;

    if-eqz v5, :cond_0

    .line 731
    iput-object v8, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifDecoder:Lcom/mediatek/gifDecoder/GifDecoder;

    .line 734
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->closeGifStream()V

    .line 736
    :goto_0
    return-void

    .line 666
    :cond_1
    :try_start_1
    iget-boolean v5, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAbort:Z

    if-eqz v5, :cond_3

    .line 667
    const-string v5, "MTKImageView"

    const-string v6, "gifAnimation:after open stream:thread aborted"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 729
    iget-object v5, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifDecoder:Lcom/mediatek/gifDecoder/GifDecoder;

    if-eqz v5, :cond_2

    .line 731
    iput-object v8, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifDecoder:Lcom/mediatek/gifDecoder/GifDecoder;

    .line 734
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->closeGifStream()V

    goto :goto_0

    .line 670
    :cond_3
    :try_start_2
    new-instance v5, Lcom/mediatek/gifDecoder/GifDecoder;

    iget-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;

    invoke-direct {v5, v6}, Lcom/mediatek/gifDecoder/GifDecoder;-><init>(Ljava/io/InputStream;)V

    iput-object v5, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifDecoder:Lcom/mediatek/gifDecoder/GifDecoder;

    .line 671
    iget-boolean v5, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAbort:Z

    if-eqz v5, :cond_5

    .line 672
    const-string v5, "MTKImageView"

    const-string v6, "gifAnimation:after new GifDecoder:thread aborted"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 729
    iget-object v5, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifDecoder:Lcom/mediatek/gifDecoder/GifDecoder;

    if-eqz v5, :cond_4

    .line 731
    iput-object v8, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifDecoder:Lcom/mediatek/gifDecoder/GifDecoder;

    .line 734
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->closeGifStream()V

    goto :goto_0

    .line 676
    :cond_5
    :try_start_3
    iget-object v5, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifDecoder:Lcom/mediatek/gifDecoder/GifDecoder;

    if-nez v5, :cond_7

    .line 677
    const-string v5, "MTKImageView"

    const-string v6, "Decode GIF resource failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 729
    iget-object v5, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifDecoder:Lcom/mediatek/gifDecoder/GifDecoder;

    if-eqz v5, :cond_6

    .line 731
    iput-object v8, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifDecoder:Lcom/mediatek/gifDecoder/GifDecoder;

    .line 734
    :cond_6
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->closeGifStream()V

    goto :goto_0

    .line 680
    :cond_7
    :try_start_4
    iget-object v5, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifDecoder:Lcom/mediatek/gifDecoder/GifDecoder;

    invoke-virtual {v5}, Lcom/mediatek/gifDecoder/GifDecoder;->getTotalFrameCount()I

    move-result v5

    if-nez v5, :cond_9

    .line 681
    const-string v5, "MTKImageView"

    const-string v6, "gifAnimation:decode gif stream fails"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifDecoder:Lcom/mediatek/gifDecoder/GifDecoder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 729
    iget-object v5, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifDecoder:Lcom/mediatek/gifDecoder/GifDecoder;

    if-eqz v5, :cond_8

    .line 731
    iput-object v8, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifDecoder:Lcom/mediatek/gifDecoder/GifDecoder;

    .line 734
    :cond_8
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->closeGifStream()V

    goto :goto_0

    .line 687
    :cond_9
    const-wide/16 v1, 0x0

    .line 688
    .local v1, frameDuration:J
    :try_start_5
    iget-object v5, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifDecoder:Lcom/mediatek/gifDecoder/GifDecoder;

    invoke-virtual {v5}, Lcom/mediatek/gifDecoder/GifDecoder;->getTotalFrameCount()I

    move-result v4

    .line 689
    .local v4, totalFrameCount:I
    const/4 v5, 0x0

    iput v5, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrGifFrame:I

    .line 693
    :goto_1
    iget-object v5, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifDecoder:Lcom/mediatek/gifDecoder/GifDecoder;

    iget v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrGifFrame:I

    invoke-virtual {v5, v6}, Lcom/mediatek/gifDecoder/GifDecoder;->getFrameBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 695
    .local v3, gifFrame:Landroid/graphics/Bitmap;
    iget-boolean v5, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAbort:Z

    if-eqz v5, :cond_b

    .line 696
    const-string v5, "MTKImageView"

    const-string v6, "gifAnimation:after decode:thread aborted"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 729
    :goto_2
    iget-object v5, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifDecoder:Lcom/mediatek/gifDecoder/GifDecoder;

    if-eqz v5, :cond_a

    .line 731
    iput-object v8, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifDecoder:Lcom/mediatek/gifDecoder/GifDecoder;

    .line 734
    :cond_a
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->closeGifStream()V

    goto/16 :goto_0

    .line 701
    :cond_b
    :try_start_6
    new-instance v5, Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;

    invoke-direct {v5, p0, v3}, Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;-><init>(Lcom/mediatek/banyan/widget/MTKImageView;Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrentRunnable:Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;

    .line 702
    iget-object v5, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrentRunnable:Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 705
    iget-object v5, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifDecoder:Lcom/mediatek/gifDecoder/GifDecoder;

    iget v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrGifFrame:I

    invoke-virtual {v5, v6}, Lcom/mediatek/gifDecoder/GifDecoder;->getFrameDuration(I)I

    move-result v5

    int-to-long v1, v5

    .line 706
    const-string v5, "MTKImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sleep for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms for frame "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrGifFrame:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " //this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/banyan/widget/MTKImageView;->self:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-boolean v5, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAbort:Z

    if-eqz v5, :cond_d

    .line 710
    const-string v5, "MTKImageView"

    const-string v6, "gifAnimation:animating:thread aborted"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 729
    .end local v1           #frameDuration:J
    .end local v3           #gifFrame:Landroid/graphics/Bitmap;
    .end local v4           #totalFrameCount:I
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifDecoder:Lcom/mediatek/gifDecoder/GifDecoder;

    if-eqz v6, :cond_c

    .line 731
    iput-object v8, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifDecoder:Lcom/mediatek/gifDecoder/GifDecoder;

    .line 734
    :cond_c
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->closeGifStream()V

    throw v5

    .line 715
    .restart local v1       #frameDuration:J
    .restart local v3       #gifFrame:Landroid/graphics/Bitmap;
    .restart local v4       #totalFrameCount:I
    :cond_d
    :try_start_7
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    .line 721
    :goto_3
    const/4 v5, 0x1

    if-ne v5, v4, :cond_e

    .line 722
    :try_start_8
    const-string v5, "MTKImageView"

    const-string v6, "gifAnim:single frame, cancel"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v5, "MTKImageView"

    const-string v6, "gifAnimation:sleeping interrupted"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 725
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :cond_e
    iget v5, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrGifFrame:I

    add-int/lit8 v5, v5, 0x1

    rem-int/2addr v5, v4

    iput v5, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrGifFrame:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1
.end method

.method private openGifStream()V
    .locals 4

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->closeGifStream()V

    .line 285
    iget-boolean v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUriGif:Z

    iget-boolean v2, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mResGif:Z

    if-ne v1, v2, :cond_0

    .line 286
    const-string v1, "MTKImageView"

    const-string/jumbo v2, "openGifStream:not correct status!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mResGif:Z

    if-eqz v1, :cond_1

    .line 292
    :try_start_0
    const-string v1, "MTKImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openGifStream:open new gif strem from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mResourceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mResourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v1, "MTKImageView"

    const-string v2, "Open GIF resource as InputStream failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 299
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_1
    :try_start_1
    const-string v1, "MTKImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openGifStream:open new gif strem from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 301
    :catch_1
    move-exception v0

    .line 302
    .local v0, e:Ljava/io/IOException;
    const-string v1, "MTKImageView"

    const-string v2, "Open GIF URI as InputStream failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resizeAndRotateImage(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "uri"

    .prologue
    .line 464
    const/4 v4, 0x0

    .line 466
    .local v4, finalImage:Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lcom/mediatek/banyan/widget/MTKImageView;->decodeBoundsInfo(Landroid/net/Uri;)Lcom/mediatek/banyan/widget/MTKImageView$Bound;

    move-result-object v0

    .line 467
    .local v0, bound:Lcom/mediatek/banyan/widget/MTKImageView$Bound;
    #getter for: Lcom/mediatek/banyan/widget/MTKImageView$Bound;->width:I
    invoke-static {v0}, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->access$200(Lcom/mediatek/banyan/widget/MTKImageView$Bound;)I

    move-result v6

    .line 468
    .local v6, imageWidth:I
    #getter for: Lcom/mediatek/banyan/widget/MTKImageView$Bound;->height:I
    invoke-static {v0}, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->access$300(Lcom/mediatek/banyan/widget/MTKImageView$Bound;)I

    move-result v5

    .line 470
    .local v5, imageHeight:I
    const/4 v9, 0x1

    .line 471
    .local v9, scaleFactor:I
    invoke-direct {p0, p1}, Lcom/mediatek/banyan/widget/MTKImageView;->decodeDegreeInfo(Landroid/net/Uri;)I

    move-result v1

    .line 473
    .local v1, degree:I
    const/16 v10, 0x5a

    if-eq v1, v10, :cond_0

    const/16 v10, 0x10e

    if-ne v1, v10, :cond_1

    .line 474
    :cond_0
    #getter for: Lcom/mediatek/banyan/widget/MTKImageView$Bound;->height:I
    invoke-static {v0}, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->access$300(Lcom/mediatek/banyan/widget/MTKImageView$Bound;)I

    move-result v6

    .line 475
    #getter for: Lcom/mediatek/banyan/widget/MTKImageView$Bound;->width:I
    invoke-static {v0}, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->access$200(Lcom/mediatek/banyan/widget/MTKImageView$Bound;)I

    move-result v5

    .line 478
    :cond_1
    const/16 v10, 0x280

    if-gt v6, v10, :cond_2

    const/16 v10, 0x1e0

    if-le v5, v10, :cond_4

    .line 479
    :cond_2
    const-string v10, "MTKImageView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Image need resize: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_3
    mul-int/lit8 v9, v9, 0x2

    .line 482
    div-int v10, v6, v9

    const/16 v11, 0x280

    if-gt v10, v11, :cond_3

    div-int v10, v5, v9

    const/16 v11, 0x1e0

    if-gt v10, v11, :cond_3

    .line 484
    :cond_4
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 485
    .local v8, options:Landroid/graphics/BitmapFactory$Options;
    iput v9, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 486
    const/4 v7, 0x0

    .line 488
    .local v7, input:Ljava/io/InputStream;
    :try_start_0
    iget-object v10, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v7

    .line 489
    if-eqz v7, :cond_7

    .line 491
    const/4 v10, 0x0

    :try_start_1
    invoke-static {v7, v10, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    .line 496
    if-nez v4, :cond_6

    .line 498
    const/4 v10, 0x0

    .line 511
    if-eqz v7, :cond_5

    .line 513
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 520
    :cond_5
    :goto_0
    return-object v10

    .line 492
    :catch_0
    move-exception v3

    .line 494
    .local v3, ex:Ljava/lang/OutOfMemoryError;
    const/4 v10, 0x0

    .line 511
    if-eqz v7, :cond_5

    .line 513
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 514
    :catch_1
    move-exception v2

    .line 515
    .local v2, e:Ljava/lang/Exception;
    const-string v11, "MTKImageView"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 514
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #ex:Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v2

    .line 515
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v11, "MTKImageView"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 501
    .end local v2           #e:Ljava/lang/Exception;
    :cond_6
    :try_start_4
    div-int v10, v6, v9

    div-int v11, v5, v9

    const/4 v12, 0x0

    invoke-static {v4, v10, v11, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v4

    .line 506
    :goto_1
    :try_start_5
    invoke-static {v4, v1}, Lcom/mediatek/banyan/widget/MTKImageView;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v4

    .line 511
    :cond_7
    if-eqz v7, :cond_8

    .line 513
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_8
    :goto_2
    move-object v10, v4

    .line 520
    goto :goto_0

    .line 514
    :catch_3
    move-exception v2

    .line 515
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v10, "MTKImageView"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 508
    .end local v2           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 509
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_7
    const-string v10, "MTKImageView"

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 511
    if-eqz v7, :cond_8

    .line 513
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_2

    .line 514
    :catch_5
    move-exception v2

    .line 515
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "MTKImageView"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 511
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    if-eqz v7, :cond_9

    .line 513
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 516
    :cond_9
    :goto_3
    throw v10

    .line 514
    :catch_6
    move-exception v2

    .line 515
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v11, "MTKImageView"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 503
    .end local v2           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v10

    goto :goto_1
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "b"
    .parameter "degrees"

    .prologue
    const/high16 v3, 0x4000

    .line 385
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 386
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 387
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 390
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 391
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 393
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_0

    .line 394
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    move-object p0, v7

    .line 401
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 397
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private startAnimationThread()V
    .locals 2

    .prologue
    .line 613
    iget-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAnimationThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 622
    :goto_0
    return-void

    .line 617
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAbort:Z

    .line 618
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/banyan/widget/MTKImageView$GifThread;

    invoke-direct {v1, p0}, Lcom/mediatek/banyan/widget/MTKImageView$GifThread;-><init>(Lcom/mediatek/banyan/widget/MTKImageView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 619
    .local v0, t:Ljava/lang/Thread;
    const-string v1, "gif-animation"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 621
    iput-object v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAnimationThread:Ljava/lang/Thread;

    goto :goto_0
.end method


# virtual methods
.method protected initForGif()V
    .locals 0

    .prologue
    .line 267
    iput-object p0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->self:Landroid/widget/ImageView;

    .line 268
    return-void
.end method

.method public setAnimationRunning(Z)V
    .locals 9
    .parameter "flag"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 173
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_4

    .line 175
    if-eqz v2, :cond_1

    instance-of v7, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v7, :cond_1

    move-object v5, v2

    .line 177
    check-cast v5, Landroid/graphics/drawable/AnimationDrawable;

    .line 178
    .local v5, tempAD:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v7

    if-nez v7, :cond_0

    .line 179
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 248
    .end local v5           #tempAD:Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    const/4 v3, 0x0

    .line 184
    .local v3, iv:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 185
    .local v4, parent:Landroid/view/ViewParent;
    instance-of v7, v4, Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    move-object v6, v4

    .line 187
    check-cast v6, Landroid/view/ViewGroup;

    .line 188
    .local v6, vg:Landroid/view/ViewGroup;
    const-string/jumbo v7, "storePic"

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .end local v3           #iv:Landroid/widget/ImageView;
    check-cast v3, Landroid/widget/ImageView;

    .line 196
    .restart local v3       #iv:Landroid/widget/ImageView;
    if-eqz v3, :cond_3

    instance-of v7, v3, Landroid/widget/ImageView;

    if-eqz v7, :cond_3

    .line 198
    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 199
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v7, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v7, :cond_0

    move-object v0, v1

    .line 201
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 202
    .local v0, ad:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0, v0}, Lcom/mediatek/banyan/widget/MTKImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 192
    .end local v0           #ad:Landroid/graphics/drawable/AnimationDrawable;
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v6           #vg:Landroid/view/ViewGroup;
    :cond_2
    const-string/jumbo v7, "test"

    const-string v8, "ViewParent is not a ViewGroup!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 208
    .restart local v6       #vg:Landroid/view/ViewGroup;
    :cond_3
    const-string v7, "com.mediatek.sns"

    const-string v8, "Iv is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    .end local v3           #iv:Landroid/widget/ImageView;
    .end local v4           #parent:Landroid/view/ViewParent;
    .end local v6           #vg:Landroid/view/ViewGroup;
    :cond_4
    if-eqz v2, :cond_5

    instance-of v7, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v7, :cond_5

    move-object v5, v2

    .line 217
    check-cast v5, Landroid/graphics/drawable/AnimationDrawable;

    .line 218
    .restart local v5       #tempAD:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 219
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 221
    .end local v5           #tempAD:Landroid/graphics/drawable/AnimationDrawable;
    :cond_5
    const/4 v3, 0x0

    .line 222
    .restart local v3       #iv:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 223
    .restart local v4       #parent:Landroid/view/ViewParent;
    instance-of v7, v4, Landroid/view/ViewGroup;

    if-eqz v7, :cond_6

    move-object v6, v4

    .line 225
    check-cast v6, Landroid/view/ViewGroup;

    .line 226
    .restart local v6       #vg:Landroid/view/ViewGroup;
    const-string/jumbo v7, "storePic"

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .end local v3           #iv:Landroid/widget/ImageView;
    check-cast v3, Landroid/widget/ImageView;

    .line 234
    .restart local v3       #iv:Landroid/widget/ImageView;
    if-eqz v3, :cond_7

    instance-of v7, v3, Landroid/widget/ImageView;

    if-eqz v7, :cond_7

    .line 236
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 237
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 239
    invoke-virtual {p0, v1}, Lcom/mediatek/banyan/widget/MTKImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 230
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v6           #vg:Landroid/view/ViewGroup;
    :cond_6
    const-string/jumbo v7, "test"

    const-string v8, "ViewParent is not a ViewGroup!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 244
    .restart local v6       #vg:Landroid/view/ViewGroup;
    :cond_7
    const-string v7, "com.mediatek.sns"

    const-string v8, "Iv is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 164
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bm"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 598
    iget-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mSetFromGif:Z

    if-nez v0, :cond_0

    .line 599
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->abortAnimationThread()V

    .line 601
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 602
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mSetFromGif:Z

    if-nez v0, :cond_0

    .line 607
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->abortAnimationThread()V

    .line 609
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 610
    return-void
.end method

.method public setImageResource(I)V
    .locals 9
    .parameter "resId"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 315
    const-string v4, "MTKImageView"

    const-string/jumbo v5, "setImageResource:abort previous gif animation if any"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->abortAnimationThread()V

    .line 318
    const/4 v2, 0x0

    .line 319
    .local v2, imageStream:Ljava/io/InputStream;
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 320
    .local v0, buffer:[B
    const/4 v3, 0x0

    .line 322
    .local v3, isGifImage:Z
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 323
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-eq v6, v4, :cond_0

    .line 324
    const-string v4, "MTKImageView"

    const-string v5, "can\'t read data from resource inputstream"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v3, 0x0

    .line 332
    :goto_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    const/4 v2, 0x0

    .line 338
    :goto_1
    if-nez v3, :cond_2

    .line 339
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 353
    :goto_2
    return-void

    .line 326
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    aget-byte v4, v0, v4

    const/16 v5, 0x47

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    const/16 v5, 0x49

    if-ne v4, v5, :cond_1

    const/4 v4, 0x2

    aget-byte v4, v0, v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v5, 0x46

    if-ne v4, v5, :cond_1

    .line 327
    const/4 v3, 0x1

    goto :goto_0

    .line 329
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 334
    :catch_0
    move-exception v1

    .line 335
    .local v1, e:Ljava/io/IOException;
    const-string v4, "MTKImageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 343
    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    iput p1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mResourceId:I

    .line 346
    iput-boolean v7, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUriGif:Z

    .line 347
    iput-boolean v8, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mResGif:Z

    .line 352
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->startAnimationThread()V

    goto :goto_2
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 11
    .parameter "uri"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 531
    const-string v5, "MTKImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setImageURI(uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " //this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->abortAnimationThread()V

    .line 534
    if-nez p1, :cond_0

    .line 535
    const-string v5, "MTKImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setImageURI:follow ImageView\'s routin for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 594
    :goto_0
    return-void

    .line 540
    :cond_0
    const/4 v3, 0x0

    .line 541
    .local v3, imageStream:Ljava/io/InputStream;
    const/4 v5, 0x4

    new-array v0, v5, [B

    .line 542
    .local v0, buffer:[B
    const/4 v4, 0x0

    .line 543
    .local v4, isGifImage:Z
    const/4 v2, 0x0

    .line 545
    .local v2, finalImage:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "content"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.resource"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 549
    :cond_1
    iget-object v5, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 550
    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-eq v10, v5, :cond_2

    .line 551
    const-string v5, "MTKImageView"

    const-string v6, "can\'t read data from uri inputstream"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/4 v4, 0x0

    .line 560
    :goto_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    const/4 v3, 0x0

    .line 570
    :goto_2
    const-string v5, "MTKImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setImageURI:isGifImage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " //this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    if-nez v4, :cond_6

    .line 573
    const-string v5, "MTKImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setImageURI:follow ImageView\'s routin for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    if-eqz v2, :cond_5

    .line 575
    invoke-super {p0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 553
    :cond_2
    const/4 v5, 0x0

    :try_start_1
    aget-byte v5, v0, v5

    const/16 v6, 0x47

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    aget-byte v5, v0, v5

    const/16 v6, 0x49

    if-ne v5, v6, :cond_3

    const/4 v5, 0x2

    aget-byte v5, v0, v5

    const/16 v6, 0x46

    if-ne v5, v6, :cond_3

    .line 554
    const/4 v4, 0x1

    goto :goto_1

    .line 556
    :cond_3
    const/4 v4, 0x0

    .line 557
    invoke-direct {p0, p1}, Lcom/mediatek/banyan/widget/MTKImageView;->resizeAndRotateImage(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    .line 563
    :cond_4
    const-string v5, "MTKImageView"

    const-string v6, "Uncoped uri scheme,call ImageView.setImageURI()"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 564
    const/4 v4, 0x0

    goto :goto_2

    .line 566
    :catch_0
    move-exception v1

    .line 567
    .local v1, e:Ljava/io/IOException;
    const-string v5, "MTKImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 577
    .end local v1           #e:Ljava/io/IOException;
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 583
    :cond_6
    const-string v5, "MTKImageView"

    const-string/jumbo v6, "setImageUri:synchroized lock, start gif animation"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iput-object p1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUri:Landroid/net/Uri;

    .line 587
    iput-boolean v9, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUriGif:Z

    .line 588
    iput-boolean v8, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mResGif:Z

    .line 593
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->startAnimationThread()V

    goto/16 :goto_0
.end method

.method public setOnClickIntent(Ljava/lang/String;)V
    .locals 1
    .parameter "action"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lcom/mediatek/banyan/widget/MTKImageView$1;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/banyan/widget/MTKImageView$1;-><init>(Lcom/mediatek/banyan/widget/MTKImageView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/banyan/widget/MTKImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    return-void
.end method
