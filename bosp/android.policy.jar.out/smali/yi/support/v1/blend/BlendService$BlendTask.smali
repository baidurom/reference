.class abstract Lyi/support/v1/blend/BlendService$BlendTask;
.super Ljava/lang/Object;
.source "BlendService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/blend/BlendService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BlendTask"
.end annotation


# instance fields
.field private mInterrupted:Z

.field private final mObserver:Lyi/support/v1/blend/BlendService$Observer;

.field protected mSrcBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Lyi/support/v1/blend/BlendService$Observer;)V
    .locals 1
    .parameter "bitmap"
    .parameter "observer"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lyi/support/v1/blend/BlendService$BlendTask;->mInterrupted:Z

    .line 58
    iput-object p1, p0, Lyi/support/v1/blend/BlendService$BlendTask;->mSrcBitmap:Landroid/graphics/Bitmap;

    .line 59
    iput-object p2, p0, Lyi/support/v1/blend/BlendService$BlendTask;->mObserver:Lyi/support/v1/blend/BlendService$Observer;

    .line 60
    return-void
.end method

.method static synthetic access$100(Lyi/support/v1/blend/BlendService$BlendTask;)Lyi/support/v1/blend/BlendService$Observer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lyi/support/v1/blend/BlendService$BlendTask;->mObserver:Lyi/support/v1/blend/BlendService$Observer;

    return-object v0
.end method

.method private scaleSrcBmp()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lyi/support/v1/blend/BlendService$BlendTask;->mObserver:Lyi/support/v1/blend/BlendService$Observer;

    invoke-virtual {v0}, Lyi/support/v1/blend/BlendService$Observer;->getScaleFactor()F

    move-result v7

    .line 86
    .local v7, scaleFactor:F
    const/high16 v0, 0x3f80

    cmpl-float v0, v7, v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lyi/support/v1/blend/BlendService$BlendTask;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 88
    .local v3, w:I
    iget-object v0, p0, Lyi/support/v1/blend/BlendService$BlendTask;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 89
    .local v4, h:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 90
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 91
    iget-object v0, p0, Lyi/support/v1/blend/BlendService$BlendTask;->mSrcBitmap:Landroid/graphics/Bitmap;

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 92
    .local v8, thumbnail:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lyi/support/v1/blend/BlendService$BlendTask;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 93
    iput-object v8, p0, Lyi/support/v1/blend/BlendService$BlendTask;->mSrcBitmap:Landroid/graphics/Bitmap;

    .line 95
    .end local v3           #w:I
    .end local v4           #h:I
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v8           #thumbnail:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract blend()Z
.end method

.method public interrupt()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyi/support/v1/blend/BlendService$BlendTask;->mInterrupted:Z

    .line 101
    return-void
.end method

.method protected isInterrupted()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lyi/support/v1/blend/BlendService$BlendTask;->mInterrupted:Z

    return v0
.end method

.method protected notifyObserver(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bmp"

    .prologue
    .line 108
    invoke-static {}, Lyi/support/v1/blend/BlendService;->access$000()Lyi/support/v1/blend/BlendService$BlendTask;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lyi/support/v1/blend/BlendService;->access$000()Lyi/support/v1/blend/BlendService$BlendTask;

    move-result-object v0

    if-eq v0, p0, :cond_0

    invoke-static {}, Lyi/support/v1/blend/BlendService;->access$000()Lyi/support/v1/blend/BlendService$BlendTask;

    move-result-object v0

    iget-object v0, v0, Lyi/support/v1/blend/BlendService$BlendTask;->mObserver:Lyi/support/v1/blend/BlendService$Observer;

    iget-object v1, p0, Lyi/support/v1/blend/BlendService$BlendTask;->mObserver:Lyi/support/v1/blend/BlendService$Observer;

    if-eq v0, v1, :cond_1

    .line 111
    :cond_0
    iget-object v0, p0, Lyi/support/v1/blend/BlendService$BlendTask;->mObserver:Lyi/support/v1/blend/BlendService$Observer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyi/support/v1/blend/BlendService$BlendTask;->mObserver:Lyi/support/v1/blend/BlendService$Observer;

    iget-object v0, v0, Lyi/support/v1/blend/BlendService$Observer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lyi/support/v1/blend/BlendService$BlendTask;->mObserver:Lyi/support/v1/blend/BlendService$Observer;

    iget-object v0, v0, Lyi/support/v1/blend/BlendService$Observer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lyi/support/v1/blend/BlendService$BlendTask$1;

    invoke-direct {v1, p0, p1}, Lyi/support/v1/blend/BlendService$BlendTask$1;-><init>(Lyi/support/v1/blend/BlendService$BlendTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    :cond_1
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 64
    const/4 v4, 0x0

    .line 66
    .local v4, result:Z
    :try_start_0
    iget-object v5, p0, Lyi/support/v1/blend/BlendService$BlendTask;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-static {v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 68
    .local v2, origin:Landroid/graphics/Bitmap;
    invoke-direct {p0}, Lyi/support/v1/blend/BlendService$BlendTask;->scaleSrcBmp()V

    .line 69
    invoke-virtual {p0}, Lyi/support/v1/blend/BlendService$BlendTask;->blend()Z

    move-result v4

    .line 71
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 72
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 73
    .local v3, paint:Landroid/graphics/Paint;
    const/16 v5, 0xc8

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 74
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 75
    .local v1, matrix:Landroid/graphics/Matrix;
    const/high16 v5, 0x4000

    const/high16 v6, 0x4000

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 76
    iget-object v5, p0, Lyi/support/v1/blend/BlendService$BlendTask;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 78
    iget-object v5, p0, Lyi/support/v1/blend/BlendService$BlendTask;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 79
    iput-object v2, p0, Lyi/support/v1/blend/BlendService$BlendTask;->mSrcBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #matrix:Landroid/graphics/Matrix;
    .end local v2           #origin:Landroid/graphics/Bitmap;
    .end local v3           #paint:Landroid/graphics/Paint;
    :goto_0
    if-eqz v4, :cond_0

    iget-object v5, p0, Lyi/support/v1/blend/BlendService$BlendTask;->mSrcBitmap:Landroid/graphics/Bitmap;

    :goto_1
    invoke-virtual {p0, v5}, Lyi/support/v1/blend/BlendService$BlendTask;->notifyObserver(Landroid/graphics/Bitmap;)V

    .line 82
    return-void

    .line 81
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 80
    :catch_0
    move-exception v5

    goto :goto_0
.end method
