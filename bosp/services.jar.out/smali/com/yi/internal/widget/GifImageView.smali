.class public Lcom/yi/internal/widget/GifImageView;
.super Landroid/widget/ImageView;
.source "GifImageView.java"

# interfaces
.implements Lcom/yi/internal/widget/GifAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yi/internal/widget/GifImageView$2;,
        Lcom/yi/internal/widget/GifImageView$DrawThread;,
        Lcom/yi/internal/widget/GifImageView$GifImageType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GifImageView"


# instance fields
.field private animationType:Lcom/yi/internal/widget/GifImageView$GifImageType;

.field private currentImage:Landroid/graphics/Bitmap;

.field private drawThread:Lcom/yi/internal/widget/GifImageView$DrawThread;

.field private gifDecoder:Lcom/yi/internal/widget/GifDecoder;

.field private volatile isRun:Z

.field private mContext:Landroid/content/Context;

.field private mIfAdjustViewBounds:Z

.field private mImgHeight:I

.field private mImgWidth:I

.field private mIs:Ljava/io/InputStream;

.field private mUri:Landroid/net/Uri;

.field private pause:Z

.field private redrawHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object v1, p0, Lcom/yi/internal/widget/GifImageView;->gifDecoder:Lcom/yi/internal/widget/GifDecoder;

    .line 28
    iput-object v1, p0, Lcom/yi/internal/widget/GifImageView;->mContext:Landroid/content/Context;

    .line 30
    iput-object v1, p0, Lcom/yi/internal/widget/GifImageView;->drawThread:Lcom/yi/internal/widget/GifImageView$DrawThread;

    .line 32
    iput-object v1, p0, Lcom/yi/internal/widget/GifImageView;->currentImage:Landroid/graphics/Bitmap;

    .line 34
    sget-object v0, Lcom/yi/internal/widget/GifImageView$GifImageType;->WAIT_FINISH:Lcom/yi/internal/widget/GifImageView$GifImageType;

    iput-object v0, p0, Lcom/yi/internal/widget/GifImageView;->animationType:Lcom/yi/internal/widget/GifImageView$GifImageType;

    .line 36
    iput-object v1, p0, Lcom/yi/internal/widget/GifImageView;->mIs:Ljava/io/InputStream;

    .line 38
    iput-object v1, p0, Lcom/yi/internal/widget/GifImageView;->mUri:Landroid/net/Uri;

    .line 40
    iput-boolean v2, p0, Lcom/yi/internal/widget/GifImageView;->isRun:Z

    .line 42
    iput-boolean v2, p0, Lcom/yi/internal/widget/GifImageView;->pause:Z

    .line 44
    iput v2, p0, Lcom/yi/internal/widget/GifImageView;->mImgWidth:I

    .line 46
    iput v2, p0, Lcom/yi/internal/widget/GifImageView;->mImgHeight:I

    .line 557
    new-instance v0, Lcom/yi/internal/widget/GifImageView$1;

    invoke-direct {v0, p0}, Lcom/yi/internal/widget/GifImageView$1;-><init>(Lcom/yi/internal/widget/GifImageView;)V

    iput-object v0, p0, Lcom/yi/internal/widget/GifImageView;->redrawHandler:Landroid/os/Handler;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yi/internal/widget/GifImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput-object v1, p0, Lcom/yi/internal/widget/GifImageView;->gifDecoder:Lcom/yi/internal/widget/GifDecoder;

    .line 28
    iput-object v1, p0, Lcom/yi/internal/widget/GifImageView;->mContext:Landroid/content/Context;

    .line 30
    iput-object v1, p0, Lcom/yi/internal/widget/GifImageView;->drawThread:Lcom/yi/internal/widget/GifImageView$DrawThread;

    .line 32
    iput-object v1, p0, Lcom/yi/internal/widget/GifImageView;->currentImage:Landroid/graphics/Bitmap;

    .line 34
    sget-object v0, Lcom/yi/internal/widget/GifImageView$GifImageType;->WAIT_FINISH:Lcom/yi/internal/widget/GifImageView$GifImageType;

    iput-object v0, p0, Lcom/yi/internal/widget/GifImageView;->animationType:Lcom/yi/internal/widget/GifImageView$GifImageType;

    .line 36
    iput-object v1, p0, Lcom/yi/internal/widget/GifImageView;->mIs:Ljava/io/InputStream;

    .line 38
    iput-object v1, p0, Lcom/yi/internal/widget/GifImageView;->mUri:Landroid/net/Uri;

    .line 40
    iput-boolean v2, p0, Lcom/yi/internal/widget/GifImageView;->isRun:Z

    .line 42
    iput-boolean v2, p0, Lcom/yi/internal/widget/GifImageView;->pause:Z

    .line 44
    iput v2, p0, Lcom/yi/internal/widget/GifImageView;->mImgWidth:I

    .line 46
    iput v2, p0, Lcom/yi/internal/widget/GifImageView;->mImgHeight:I

    .line 557
    new-instance v0, Lcom/yi/internal/widget/GifImageView$1;

    invoke-direct {v0, p0}, Lcom/yi/internal/widget/GifImageView$1;-><init>(Lcom/yi/internal/widget/GifImageView;)V

    iput-object v0, p0, Lcom/yi/internal/widget/GifImageView;->redrawHandler:Landroid/os/Handler;

    .line 79
    return-void
.end method

.method static synthetic access$100(Lcom/yi/internal/widget/GifImageView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->currentImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/yi/internal/widget/GifImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/yi/internal/widget/GifImageView;->currentImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/yi/internal/widget/GifImageView;)Lcom/yi/internal/widget/GifDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->gifDecoder:Lcom/yi/internal/widget/GifDecoder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/yi/internal/widget/GifImageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/yi/internal/widget/GifImageView;->isRun:Z

    return v0
.end method

.method static synthetic access$302(Lcom/yi/internal/widget/GifImageView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/yi/internal/widget/GifImageView;->isRun:Z

    return p1
.end method

.method static synthetic access$400(Lcom/yi/internal/widget/GifImageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/yi/internal/widget/GifImageView;->pause:Z

    return v0
.end method

.method static synthetic access$500(Lcom/yi/internal/widget/GifImageView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->redrawHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkAndParseImageDimention(Landroid/net/Uri;)Z
    .locals 4
    .parameter "uri"

    .prologue
    .line 151
    const/4 v1, 0x0

    .line 152
    .local v1, is:Ljava/io/InputStream;
    const/4 v2, 0x1

    .line 154
    .local v2, result:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/yi/internal/widget/GifImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 155
    invoke-direct {p0, v1}, Lcom/yi/internal/widget/GifImageView;->checkAndParseImageDimention(Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 161
    :goto_0
    return v2

    .line 157
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private checkAndParseImageDimention(Ljava/io/InputStream;)Z
    .locals 5
    .parameter "in"

    .prologue
    const/4 v2, 0x1

    .line 174
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 175
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 177
    invoke-direct {p0, p1}, Lcom/yi/internal/widget/GifImageView;->resetStream(Ljava/io/InputStream;)V

    .line 179
    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Ljava/io/InputStream;->mark(I)V

    .line 180
    const/4 v3, 0x0

    invoke-static {p1, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 181
    .local v0, gifBmp:Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lcom/yi/internal/widget/GifImageView;->resetStream(Ljava/io/InputStream;)V

    .line 183
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/yi/internal/widget/GifImageView;->mImgWidth:I

    .line 184
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/yi/internal/widget/GifImageView;->mImgHeight:I

    .line 185
    iput-object p1, p0, Lcom/yi/internal/widget/GifImageView;->mIs:Ljava/io/InputStream;

    .line 187
    iget v3, p0, Lcom/yi/internal/widget/GifImageView;->mImgWidth:I

    iget v4, p0, Lcom/yi/internal/widget/GifImageView;->mImgHeight:I

    mul-int/2addr v3, v4

    const v4, 0xf4240

    if-le v3, v4, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private reDraw()V
    .locals 2

    .prologue
    .line 551
    iget-object v1, p0, Lcom/yi/internal/widget/GifImageView;->redrawHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 552
    iget-object v1, p0, Lcom/yi/internal/widget/GifImageView;->redrawHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 553
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/yi/internal/widget/GifImageView;->redrawHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 555
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private resetStream(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 166
    if-eqz p1, :cond_0

    .line 167
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private resolveAdjustedSize(III)I
    .locals 4
    .parameter "desiredSize"
    .parameter "maxSize"
    .parameter "measureSpec"

    .prologue
    .line 356
    move v0, p1

    .line 357
    .local v0, result:I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 358
    .local v1, specMode:I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 359
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 378
    :goto_0
    return v0

    .line 365
    :sswitch_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 366
    goto :goto_0

    .line 371
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 372
    goto :goto_0

    .line 375
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 359
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private setGifDecoderImage(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 2
    .parameter "uri"
    .parameter "context"

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/yi/internal/widget/GifImageView;->clear()V

    .line 105
    iput-object p1, p0, Lcom/yi/internal/widget/GifImageView;->mUri:Landroid/net/Uri;

    .line 106
    invoke-direct {p0, p1}, Lcom/yi/internal/widget/GifImageView;->checkAndParseImageDimention(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    sget-object v0, Lcom/yi/internal/widget/GifImageView$GifImageType;->COVER:Lcom/yi/internal/widget/GifImageView$GifImageType;

    iput-object v0, p0, Lcom/yi/internal/widget/GifImageView;->animationType:Lcom/yi/internal/widget/GifImageView$GifImageType;

    .line 108
    invoke-direct {p0}, Lcom/yi/internal/widget/GifImageView;->showStatic()V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->animationType:Lcom/yi/internal/widget/GifImageView$GifImageType;

    sget-object v1, Lcom/yi/internal/widget/GifImageView$GifImageType;->COVER:Lcom/yi/internal/widget/GifImageView$GifImageType;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/yi/internal/widget/GifImageView$GifImageType;->WAIT_FINISH:Lcom/yi/internal/widget/GifImageView$GifImageType;

    :goto_1
    iput-object v0, p0, Lcom/yi/internal/widget/GifImageView;->animationType:Lcom/yi/internal/widget/GifImageView$GifImageType;

    .line 112
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->gifDecoder:Lcom/yi/internal/widget/GifDecoder;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/yi/internal/widget/GifDecoder;

    invoke-direct {v0, p1, p0, p2}, Lcom/yi/internal/widget/GifDecoder;-><init>(Landroid/net/Uri;Lcom/yi/internal/widget/GifAction;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yi/internal/widget/GifImageView;->gifDecoder:Lcom/yi/internal/widget/GifDecoder;

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yi/internal/widget/GifImageView;->pause:Z

    .line 115
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->gifDecoder:Lcom/yi/internal/widget/GifDecoder;

    invoke-virtual {v0}, Lcom/yi/internal/widget/GifDecoder;->start()V

    goto :goto_0

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->animationType:Lcom/yi/internal/widget/GifImageView$GifImageType;

    goto :goto_1
.end method

.method private setGifDecoderImage(Ljava/io/InputStream;Landroid/content/Context;)V
    .locals 2
    .parameter "is"
    .parameter "context"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/yi/internal/widget/GifImageView;->clear()V

    .line 89
    invoke-direct {p0, p1}, Lcom/yi/internal/widget/GifImageView;->checkAndParseImageDimention(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    sget-object v0, Lcom/yi/internal/widget/GifImageView$GifImageType;->COVER:Lcom/yi/internal/widget/GifImageView$GifImageType;

    iput-object v0, p0, Lcom/yi/internal/widget/GifImageView;->animationType:Lcom/yi/internal/widget/GifImageView$GifImageType;

    .line 91
    invoke-direct {p0}, Lcom/yi/internal/widget/GifImageView;->showStatic()V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->animationType:Lcom/yi/internal/widget/GifImageView$GifImageType;

    sget-object v1, Lcom/yi/internal/widget/GifImageView$GifImageType;->COVER:Lcom/yi/internal/widget/GifImageView$GifImageType;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/yi/internal/widget/GifImageView$GifImageType;->WAIT_FINISH:Lcom/yi/internal/widget/GifImageView$GifImageType;

    :goto_1
    iput-object v0, p0, Lcom/yi/internal/widget/GifImageView;->animationType:Lcom/yi/internal/widget/GifImageView$GifImageType;

    .line 95
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->gifDecoder:Lcom/yi/internal/widget/GifDecoder;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/yi/internal/widget/GifDecoder;

    invoke-direct {v0, p1, p0, p2}, Lcom/yi/internal/widget/GifDecoder;-><init>(Ljava/io/InputStream;Lcom/yi/internal/widget/GifAction;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yi/internal/widget/GifImageView;->gifDecoder:Lcom/yi/internal/widget/GifDecoder;

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yi/internal/widget/GifImageView;->pause:Z

    .line 98
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->gifDecoder:Lcom/yi/internal/widget/GifDecoder;

    invoke-virtual {v0}, Lcom/yi/internal/widget/GifDecoder;->start()V

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->animationType:Lcom/yi/internal/widget/GifImageView$GifImageType;

    goto :goto_1
.end method

.method private showStatic()V
    .locals 19

    .prologue
    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/yi/internal/widget/GifImageView;->getWidth()I

    move-result v15

    .line 122
    .local v15, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/yi/internal/widget/GifImageView;->getHeight()I

    move-result v7

    .line 123
    .local v7, height:I
    if-lez v15, :cond_0

    if-gtz v7, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/yi/internal/widget/GifImageView;->mImgWidth:I

    move/from16 v17, v0

    div-int v17, v17, v15

    move/from16 v0, v17

    int-to-double v12, v0

    .line 127
    .local v12, paraWidth:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/yi/internal/widget/GifImageView;->mImgHeight:I

    move/from16 v17, v0

    div-int v17, v17, v7

    move/from16 v0, v17

    int-to-double v10, v0

    .line 128
    .local v10, paraHeight:D
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    .line 129
    .local v4, DoubleWidthRatio:D
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    .line 130
    .local v2, DoubleHeightRatio:D
    double-to-int v0, v4

    move/from16 v16, v0

    .line 131
    .local v16, widthRatio:I
    double-to-int v8, v2

    .line 132
    .local v8, heightRatio:I
    move/from16 v0, v16

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 133
    .local v14, ratio:I
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 134
    .local v9, opts:Landroid/graphics/BitmapFactory$Options;
    iput v14, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 135
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 137
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yi/internal/widget/GifImageView;->currentImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yi/internal/widget/GifImageView;->currentImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_2

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yi/internal/widget/GifImageView;->currentImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 139
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yi/internal/widget/GifImageView;->mIs:Ljava/io/InputStream;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yi/internal/widget/GifImageView;->mIs:Ljava/io/InputStream;

    move-object/from16 v17, v0

    const v18, 0x7fffffff

    invoke-virtual/range {v17 .. v18}, Ljava/io/InputStream;->mark(I)V

    .line 141
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yi/internal/widget/GifImageView;->mIs:Ljava/io/InputStream;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/yi/internal/widget/GifImageView;->currentImage:Landroid/graphics/Bitmap;

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yi/internal/widget/GifImageView;->mIs:Ljava/io/InputStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->reset()V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yi/internal/widget/GifImageView;->currentImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/yi/internal/widget/GifImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 145
    :catch_0
    move-exception v6

    .line 146
    .local v6, eMem:Ljava/lang/Exception;
    const-string v17, "GifImageView"

    const-string v18, "current image decodeFile out of memory"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 429
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->drawThread:Lcom/yi/internal/widget/GifImageView$DrawThread;

    if-eqz v0, :cond_0

    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yi/internal/widget/GifImageView;->isRun:Z

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->drawThread:Lcom/yi/internal/widget/GifImageView$DrawThread;

    invoke-virtual {v0}, Lcom/yi/internal/widget/GifImageView$DrawThread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    .line 437
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->drawThread:Lcom/yi/internal/widget/GifImageView$DrawThread;

    invoke-virtual {v0}, Lcom/yi/internal/widget/GifImageView$DrawThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 441
    :goto_1
    iput-object v1, p0, Lcom/yi/internal/widget/GifImageView;->drawThread:Lcom/yi/internal/widget/GifImageView$DrawThread;

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->gifDecoder:Lcom/yi/internal/widget/GifDecoder;

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->gifDecoder:Lcom/yi/internal/widget/GifDecoder;

    invoke-virtual {v0}, Lcom/yi/internal/widget/GifDecoder;->stopGifDecoder()V

    .line 446
    :try_start_2
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->gifDecoder:Lcom/yi/internal/widget/GifDecoder;

    invoke-virtual {v0}, Lcom/yi/internal/widget/GifDecoder;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 450
    :goto_2
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->gifDecoder:Lcom/yi/internal/widget/GifDecoder;

    invoke-virtual {v0}, Lcom/yi/internal/widget/GifDecoder;->free()V

    .line 451
    iput-object v1, p0, Lcom/yi/internal/widget/GifImageView;->gifDecoder:Lcom/yi/internal/widget/GifDecoder;

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->currentImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->currentImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->currentImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 456
    :cond_2
    iput-object v1, p0, Lcom/yi/internal/widget/GifImageView;->currentImage:Landroid/graphics/Bitmap;

    .line 457
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->mIs:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    .line 459
    :try_start_3
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->mIs:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 464
    :cond_3
    :goto_3
    iput-object v1, p0, Lcom/yi/internal/widget/GifImageView;->mUri:Landroid/net/Uri;

    .line 465
    iput-object v1, p0, Lcom/yi/internal/widget/GifImageView;->mIs:Ljava/io/InputStream;

    .line 466
    invoke-virtual {p0, v1}, Lcom/yi/internal/widget/GifImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 467
    return-void

    .line 460
    :catch_0
    move-exception v0

    goto :goto_3

    .line 447
    :catch_1
    move-exception v0

    goto :goto_2

    .line 438
    :catch_2
    move-exception v0

    goto :goto_1

    .line 433
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 349
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 350
    invoke-virtual {p0}, Lcom/yi/internal/widget/GifImageView;->recycle()V

    .line 351
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 235
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 236
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->animationType:Lcom/yi/internal/widget/GifImageView$GifImageType;

    sget-object v1, Lcom/yi/internal/widget/GifImageView$GifImageType;->COVER:Lcom/yi/internal/widget/GifImageView$GifImageType;

    if-ne v0, v1, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/yi/internal/widget/GifImageView;->showStatic()V

    .line 239
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 25
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 248
    const/4 v5, 0x0

    .line 251
    .local v5, desiredAspect:F
    const/16 v17, 0x0

    .line 254
    .local v17, resizeWidth:Z
    const/16 v16, 0x0

    .line 256
    .local v16, resizeHeight:Z
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 257
    .local v20, widthSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 259
    .local v9, heightSpecMode:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/yi/internal/widget/GifImageView;->mImgWidth:I

    move/from16 v18, v0

    .line 260
    .local v18, w:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/yi/internal/widget/GifImageView;->mImgHeight:I

    .line 261
    .local v7, h:I
    if-gtz v18, :cond_0

    .line 262
    const/16 v18, 0x1

    .line 263
    :cond_0
    if-gtz v7, :cond_1

    .line 264
    const/4 v7, 0x1

    .line 268
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/yi/internal/widget/GifImageView;->mIfAdjustViewBounds:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 269
    const/high16 v21, 0x4000

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    const/16 v17, 0x1

    .line 270
    :goto_0
    const/high16 v21, 0x4000

    move/from16 v0, v21

    if-eq v9, v0, :cond_7

    const/16 v16, 0x1

    .line 272
    :goto_1
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v7

    move/from16 v22, v0

    div-float v5, v21, v22

    .line 275
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/yi/internal/widget/GifImageView;->getPaddingLeft()I

    move-result v13

    .line 276
    .local v13, pleft:I
    invoke-virtual/range {p0 .. p0}, Lcom/yi/internal/widget/GifImageView;->getPaddingRight()I

    move-result v14

    .line 277
    .local v14, pright:I
    invoke-virtual/range {p0 .. p0}, Lcom/yi/internal/widget/GifImageView;->getPaddingTop()I

    move-result v15

    .line 278
    .local v15, ptop:I
    invoke-virtual/range {p0 .. p0}, Lcom/yi/internal/widget/GifImageView;->getPaddingBottom()I

    move-result v12

    .line 283
    .local v12, pbottom:I
    if-nez v17, :cond_3

    if-eqz v16, :cond_8

    .line 291
    :cond_3
    add-int v21, v18, v13

    add-int v21, v21, v14

    const/16 v22, 0x7d0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/yi/internal/widget/GifImageView;->resolveAdjustedSize(III)I

    move-result v19

    .line 295
    .local v19, widthSize:I
    add-int v21, v7, v15

    add-int v21, v21, v12

    const/16 v22, 0x7d0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/yi/internal/widget/GifImageView;->resolveAdjustedSize(III)I

    move-result v8

    .line 298
    .local v8, heightSize:I
    const/16 v21, 0x0

    cmpl-float v21, v5, v21

    if-eqz v21, :cond_5

    .line 300
    sub-int v21, v19, v13

    sub-int v21, v21, v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-int v22, v8, v15

    sub-int v22, v22, v12

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v4, v21, v22

    .line 303
    .local v4, actualAspect:F
    sub-float v21, v4, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide v23, 0x3e7ad7f29abcaf48L

    cmpl-double v21, v21, v23

    if-lez v21, :cond_5

    .line 305
    const/4 v6, 0x0

    .line 308
    .local v6, done:Z
    if-eqz v17, :cond_4

    .line 309
    sub-int v21, v8, v15

    sub-int v21, v21, v12

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v5

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v21, v21, v13

    add-int v11, v21, v14

    .line 312
    .local v11, newWidth:I
    move/from16 v0, v19

    if-gt v11, v0, :cond_4

    .line 313
    move/from16 v19, v11

    .line 314
    const/4 v6, 0x1

    .line 319
    .end local v11           #newWidth:I
    :cond_4
    if-nez v6, :cond_5

    if-eqz v16, :cond_5

    .line 320
    sub-int v21, v19, v13

    sub-int v21, v21, v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, v5

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v21, v21, v15

    add-int v10, v21, v12

    .line 322
    .local v10, newHeight:I
    if-gt v10, v8, :cond_5

    .line 323
    move v8, v10

    .line 344
    .end local v4           #actualAspect:F
    .end local v6           #done:Z
    .end local v10           #newHeight:I
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Lcom/yi/internal/widget/GifImageView;->setMeasuredDimension(II)V

    .line 345
    return-void

    .line 269
    .end local v8           #heightSize:I
    .end local v12           #pbottom:I
    .end local v13           #pleft:I
    .end local v14           #pright:I
    .end local v15           #ptop:I
    .end local v19           #widthSize:I
    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 270
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 334
    .restart local v12       #pbottom:I
    .restart local v13       #pleft:I
    .restart local v14       #pright:I
    .restart local v15       #ptop:I
    :cond_8
    add-int v21, v13, v14

    add-int v18, v18, v21

    .line 335
    add-int v21, v15, v12

    add-int v7, v7, v21

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/yi/internal/widget/GifImageView;->getSuggestedMinimumWidth()I

    move-result v21

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/yi/internal/widget/GifImageView;->getSuggestedMinimumHeight()I

    move-result v21

    move/from16 v0, v21

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 340
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, p1

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/yi/internal/widget/GifImageView;->resolveSizeAndState(III)I

    move-result v19

    .line 341
    .restart local v19       #widthSize:I
    const/16 v21, 0x0

    move/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v7, v0, v1}, Lcom/yi/internal/widget/GifImageView;->resolveSizeAndState(III)I

    move-result v8

    .restart local v8       #heightSize:I
    goto :goto_2
.end method

.method public parseOk(ZI)V
    .locals 5
    .parameter "parseStatus"
    .parameter "frameIndex"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 483
    if-eqz p1, :cond_0

    .line 484
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->gifDecoder:Lcom/yi/internal/widget/GifDecoder;

    if-eqz v0, :cond_a

    .line 485
    sget-object v0, Lcom/yi/internal/widget/GifImageView$2;->$SwitchMap$com$yi$internal$widget$GifImageView$GifImageType:[I

    iget-object v1, p0, Lcom/yi/internal/widget/GifImageView;->animationType:Lcom/yi/internal/widget/GifImageView$GifImageType;

    invoke-virtual {v1}, Lcom/yi/internal/widget/GifImageView$GifImageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 487
    :pswitch_0
    if-ne p2, v2, :cond_1

    .line 488
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->gifDecoder:Lcom/yi/internal/widget/GifDecoder;

    invoke-virtual {v0}, Lcom/yi/internal/widget/GifDecoder;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yi/internal/widget/GifImageView;->currentImage:Landroid/graphics/Bitmap;

    .line 489
    invoke-direct {p0}, Lcom/yi/internal/widget/GifImageView;->reDraw()V

    .line 491
    :cond_1
    const/4 v0, 0x2

    if-gt p2, v0, :cond_2

    if-ne p2, v3, :cond_0

    .line 492
    :cond_2
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->gifDecoder:Lcom/yi/internal/widget/GifDecoder;

    invoke-virtual {v0}, Lcom/yi/internal/widget/GifDecoder;->getFrameCount()I

    move-result v0

    if-le v0, v2, :cond_3

    .line 497
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->drawThread:Lcom/yi/internal/widget/GifImageView$DrawThread;

    if-nez v0, :cond_0

    .line 498
    new-instance v0, Lcom/yi/internal/widget/GifImageView$DrawThread;

    invoke-direct {v0, p0, v4}, Lcom/yi/internal/widget/GifImageView$DrawThread;-><init>(Lcom/yi/internal/widget/GifImageView;Lcom/yi/internal/widget/GifImageView$1;)V

    iput-object v0, p0, Lcom/yi/internal/widget/GifImageView;->drawThread:Lcom/yi/internal/widget/GifImageView$DrawThread;

    .line 499
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->drawThread:Lcom/yi/internal/widget/GifImageView$DrawThread;

    invoke-virtual {v0}, Lcom/yi/internal/widget/GifImageView$DrawThread;->start()V

    goto :goto_0

    .line 501
    :cond_3
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->gifDecoder:Lcom/yi/internal/widget/GifDecoder;

    invoke-virtual {v0}, Lcom/yi/internal/widget/GifDecoder;->getFrameCount()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 502
    iput-boolean v2, p0, Lcom/yi/internal/widget/GifImageView;->isRun:Z

    .line 503
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->gifDecoder:Lcom/yi/internal/widget/GifDecoder;

    invoke-virtual {v0}, Lcom/yi/internal/widget/GifDecoder;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yi/internal/widget/GifImageView;->currentImage:Landroid/graphics/Bitmap;

    .line 504
    invoke-direct {p0}, Lcom/yi/internal/widget/GifImageView;->reDraw()V

    goto :goto_0

    .line 506
    :cond_4
    invoke-direct {p0}, Lcom/yi/internal/widget/GifImageView;->reDraw()V

    goto :goto_0

    .line 511
    :pswitch_1
    if-ne p2, v2, :cond_5

    .line 512
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->gifDecoder:Lcom/yi/internal/widget/GifDecoder;

    invoke-virtual {v0}, Lcom/yi/internal/widget/GifDecoder;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yi/internal/widget/GifImageView;->currentImage:Landroid/graphics/Bitmap;

    .line 513
    invoke-direct {p0}, Lcom/yi/internal/widget/GifImageView;->reDraw()V

    goto :goto_0

    .line 514
    :cond_5
    if-ne p2, v3, :cond_0

    .line 515
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->gifDecoder:Lcom/yi/internal/widget/GifDecoder;

    invoke-virtual {v0}, Lcom/yi/internal/widget/GifDecoder;->getFrameCount()I

    move-result v0

    if-le v0, v2, :cond_6

    .line 516
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->drawThread:Lcom/yi/internal/widget/GifImageView$DrawThread;

    if-nez v0, :cond_0

    .line 517
    new-instance v0, Lcom/yi/internal/widget/GifImageView$DrawThread;

    invoke-direct {v0, p0, v4}, Lcom/yi/internal/widget/GifImageView$DrawThread;-><init>(Lcom/yi/internal/widget/GifImageView;Lcom/yi/internal/widget/GifImageView$1;)V

    iput-object v0, p0, Lcom/yi/internal/widget/GifImageView;->drawThread:Lcom/yi/internal/widget/GifImageView$DrawThread;

    .line 518
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->drawThread:Lcom/yi/internal/widget/GifImageView$DrawThread;

    invoke-virtual {v0}, Lcom/yi/internal/widget/GifImageView$DrawThread;->start()V

    goto :goto_0

    .line 521
    :cond_6
    invoke-direct {p0}, Lcom/yi/internal/widget/GifImageView;->reDraw()V

    goto :goto_0

    .line 526
    :pswitch_2
    if-ne p2, v2, :cond_7

    .line 527
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->gifDecoder:Lcom/yi/internal/widget/GifDecoder;

    invoke-virtual {v0}, Lcom/yi/internal/widget/GifDecoder;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yi/internal/widget/GifImageView;->currentImage:Landroid/graphics/Bitmap;

    .line 528
    iput-boolean v2, p0, Lcom/yi/internal/widget/GifImageView;->isRun:Z

    .line 529
    invoke-direct {p0}, Lcom/yi/internal/widget/GifImageView;->reDraw()V

    goto/16 :goto_0

    .line 530
    :cond_7
    if-ne p2, v3, :cond_9

    .line 531
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->gifDecoder:Lcom/yi/internal/widget/GifDecoder;

    invoke-virtual {v0}, Lcom/yi/internal/widget/GifDecoder;->getFrameCount()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 532
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->gifDecoder:Lcom/yi/internal/widget/GifDecoder;

    invoke-virtual {v0}, Lcom/yi/internal/widget/GifDecoder;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yi/internal/widget/GifImageView;->currentImage:Landroid/graphics/Bitmap;

    .line 534
    :cond_8
    invoke-direct {p0}, Lcom/yi/internal/widget/GifImageView;->reDraw()V

    goto/16 :goto_0

    .line 536
    :cond_9
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->drawThread:Lcom/yi/internal/widget/GifImageView$DrawThread;

    if-nez v0, :cond_0

    .line 537
    new-instance v0, Lcom/yi/internal/widget/GifImageView$DrawThread;

    invoke-direct {v0, p0, v4}, Lcom/yi/internal/widget/GifImageView$DrawThread;-><init>(Lcom/yi/internal/widget/GifImageView;Lcom/yi/internal/widget/GifImageView$1;)V

    iput-object v0, p0, Lcom/yi/internal/widget/GifImageView;->drawThread:Lcom/yi/internal/widget/GifImageView$DrawThread;

    .line 538
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->drawThread:Lcom/yi/internal/widget/GifImageView$DrawThread;

    invoke-virtual {v0}, Lcom/yi/internal/widget/GifImageView$DrawThread;->start()V

    goto/16 :goto_0

    .line 544
    :cond_a
    const-string v0, "GifImageView"

    const-string v1, "Gif Image: parse error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 485
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pauseGifAnimation()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->drawThread:Lcom/yi/internal/widget/GifImageView$DrawThread;

    if-eqz v0, :cond_0

    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yi/internal/widget/GifImageView;->pause:Z

    .line 412
    :cond_0
    return-void
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->mIs:Ljava/io/InputStream;

    .line 471
    .local v0, in:Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/yi/internal/widget/GifImageView;->clear()V

    .line 472
    if-eqz v0, :cond_0

    .line 474
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 475
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setAdjustViewBounds(Z)V
    .locals 0
    .parameter "adjustViewBounds"

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/yi/internal/widget/GifImageView;->mIfAdjustViewBounds:Z

    .line 230
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 231
    return-void
.end method

.method public setGifImage(ILandroid/content/Context;)V
    .locals 2
    .parameter "resId"
    .parameter "context"

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/yi/internal/widget/GifImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 208
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 209
    .local v0, is:Ljava/io/InputStream;
    invoke-direct {p0, v0, p2}, Lcom/yi/internal/widget/GifImageView;->setGifDecoderImage(Ljava/io/InputStream;Landroid/content/Context;)V

    .line 210
    return-void
.end method

.method public setGifImage(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 0
    .parameter "uri"
    .parameter "context"

    .prologue
    .line 219
    invoke-direct {p0, p1, p2}, Lcom/yi/internal/widget/GifImageView;->setGifDecoderImage(Landroid/net/Uri;Landroid/content/Context;)V

    .line 226
    return-void
.end method

.method public setGifImage(Ljava/io/InputStream;Landroid/content/Context;)V
    .locals 0
    .parameter "is"
    .parameter "context"

    .prologue
    .line 197
    invoke-direct {p0, p1, p2}, Lcom/yi/internal/widget/GifImageView;->setGifDecoderImage(Ljava/io/InputStream;Landroid/content/Context;)V

    .line 198
    return-void
.end method

.method public showCover()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->gifDecoder:Lcom/yi/internal/widget/GifDecoder;

    if-nez v0, :cond_0

    .line 393
    :goto_0
    return-void

    .line 389
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yi/internal/widget/GifImageView;->pause:Z

    .line 390
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->gifDecoder:Lcom/yi/internal/widget/GifDecoder;

    invoke-virtual {v0}, Lcom/yi/internal/widget/GifDecoder;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yi/internal/widget/GifImageView;->currentImage:Landroid/graphics/Bitmap;

    .line 391
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->currentImage:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/yi/internal/widget/GifImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 392
    invoke-virtual {p0}, Lcom/yi/internal/widget/GifImageView;->invalidate()V

    goto :goto_0
.end method

.method public startGifAnimation()V
    .locals 1

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/yi/internal/widget/GifImageView;->pause:Z

    if-eqz v0, :cond_0

    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yi/internal/widget/GifImageView;->pause:Z

    .line 404
    :cond_0
    return-void
.end method

.method public stopGifAnimation()V
    .locals 3

    .prologue
    .line 415
    iget-object v1, p0, Lcom/yi/internal/widget/GifImageView;->mUri:Landroid/net/Uri;

    .line 416
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView;->mIs:Ljava/io/InputStream;

    .line 417
    .local v0, in:Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/yi/internal/widget/GifImageView;->clear()V

    .line 418
    if-eqz v1, :cond_1

    .line 419
    invoke-virtual {p0}, Lcom/yi/internal/widget/GifImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/yi/internal/widget/GifImageView;->setGifDecoderImage(Landroid/net/Uri;Landroid/content/Context;)V

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/yi/internal/widget/GifImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/yi/internal/widget/GifImageView;->setGifDecoderImage(Ljava/io/InputStream;Landroid/content/Context;)V

    goto :goto_0
.end method
