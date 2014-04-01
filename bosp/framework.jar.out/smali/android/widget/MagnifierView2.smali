.class Landroid/widget/MagnifierView2;
.super Landroid/view/View;
.source "MagnifierView2.java"


# static fields
.field public static CUT_HEIGHT:I = 0x0

.field public static CUT_WIDTH:I = 0x0

.field private static final DBG:Z = true


# instance fields
.field private final mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mHeight:I

.field private final mMagnifierBitmap:Landroid/graphics/Bitmap;

.field private final mMask:Landroid/graphics/Bitmap;

.field mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private final mTarget:Landroid/view/View;

.field private mTempDist:Landroid/graphics/Rect;

.field private mTempSrc:Landroid/graphics/Rect;

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .parameter "context"
    .parameter "target"

    .prologue
    const/4 v2, 0x1

    .line 46
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/MagnifierView2;->mPaint:Landroid/graphics/Paint;

    .line 47
    iput-object p2, p0, Landroid/widget/MagnifierView2;->mTarget:Landroid/view/View;

    .line 49
    iget-object v0, p0, Landroid/widget/MagnifierView2;->mTarget:Landroid/view/View;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the mTarget must not be empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/MagnifierView2;->mRect:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/MagnifierView2;->mTempDist:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/MagnifierView2;->mTempSrc:Landroid/graphics/Rect;

    .line 56
    iget-object v0, p0, Landroid/widget/MagnifierView2;->mTempDist:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 57
    iget-object v0, p0, Landroid/widget/MagnifierView2;->mTempDist:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 58
    invoke-virtual {p0}, Landroid/widget/MagnifierView2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #drawable@longpress_select_magnifier#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MagnifierView2;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 59
    invoke-virtual {p0}, Landroid/widget/MagnifierView2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #drawable@longpress_select_magnifier_mask#t

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/MagnifierView2;->convertToAlphaMask(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MagnifierView2;->mMask:Landroid/graphics/Bitmap;

    .line 61
    iget-object v0, p0, Landroid/widget/MagnifierView2;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/widget/MagnifierView2;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MagnifierView2;->mMagnifierBitmap:Landroid/graphics/Bitmap;

    .line 62
    iget-object v0, p0, Landroid/widget/MagnifierView2;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/MagnifierView2;->mWidth:I

    .line 63
    iget-object v0, p0, Landroid/widget/MagnifierView2;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/MagnifierView2;->mHeight:I

    .line 64
    iget v0, p0, Landroid/widget/MagnifierView2;->mWidth:I

    sput v0, Landroid/widget/MagnifierView2;->CUT_WIDTH:I

    .line 65
    iget v0, p0, Landroid/widget/MagnifierView2;->mHeight:I

    sput v0, Landroid/widget/MagnifierView2;->CUT_HEIGHT:I

    .line 66
    iget-object v0, p0, Landroid/widget/MagnifierView2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget-object v0, p0, Landroid/widget/MagnifierView2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/widget/MagnifierView2;->setLayerType(ILandroid/graphics/Paint;)V

    .line 69
    return-void
.end method

.method private static convertToAlphaMask(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "b"

    .prologue
    const/4 v5, 0x0

    .line 182
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 183
    .local v0, a:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 184
    .local v1, c:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 185
    return-object v0
.end method

.method private convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "drawable"

    .prologue
    const/4 v5, 0x0

    .line 72
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 73
    .local v3, width:I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 74
    .local v1, height:I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 75
    .local v2, m:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 76
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {p1, v5, v5, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 77
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 78
    return-object v2
.end method

.method private drawMagnifier(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 190
    iget-object v0, p0, Landroid/widget/MagnifierView2;->mMagnifierBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/widget/MagnifierView2;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/MagnifierView2;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/widget/MagnifierView2;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 191
    iget-object v0, p0, Landroid/widget/MagnifierView2;->mMask:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/widget/MagnifierView2;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/MagnifierView2;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/widget/MagnifierView2;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/MagnifierView2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 193
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .parameter "canvas"

    .prologue
    .line 95
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView2;->mRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView2;->mRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 98
    :cond_0
    invoke-direct/range {p0 .. p1}, Landroid/widget/MagnifierView2;->drawMagnifier(Landroid/graphics/Canvas;)V

    .line 179
    :goto_0
    return-void

    .line 103
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView2;->mRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 104
    .local v9, left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView2;->mRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 105
    .local v16, top:I
    if-gez v9, :cond_2

    .line 106
    const/4 v9, 0x0

    .line 108
    :cond_2
    if-gez v16, :cond_3

    .line 109
    const/16 v16, 0x0

    .line 112
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView2;->mTarget:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView2;->mTarget:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 116
    .local v13, source:Landroid/graphics/Bitmap;
    if-eqz v13, :cond_9

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView2;->mRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v18

    .line 118
    .local v18, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView2;->mRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 119
    .local v8, height:I
    add-int v19, v9, v18

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_4

    .line 120
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    sub-int v18, v19, v9

    .line 122
    :cond_4
    add-int v19, v16, v8

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_8

    const/4 v10, 0x1

    .line 123
    .local v10, onBottom:Z
    :goto_1
    if-eqz v10, :cond_5

    .line 124
    mul-int/lit8 v19, v8, 0x5

    div-int/lit8 v6, v19, 0x6

    .line 125
    .local v6, diff:I
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    sub-int v8, v19, v16

    .line 126
    if-ge v8, v6, :cond_5

    .line 127
    move v8, v6

    .line 128
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    sub-int v16, v19, v6

    .line 132
    .end local v6           #diff:I
    :cond_5
    move/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v13, v9, v0, v1, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 133
    .local v3, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView2;->mRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    if-gez v19, :cond_6

    .line 134
    sget-object v19, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v8, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 135
    .local v4, bm:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 136
    .local v5, c:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView2;->mRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 137
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v5, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 138
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 139
    move-object v3, v4

    .line 141
    .end local v4           #bm:Landroid/graphics/Bitmap;
    .end local v5           #c:Landroid/graphics/Canvas;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView2;->mRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    div-int/lit8 v20, v8, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    .line 142
    sget-object v19, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v8, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 143
    .restart local v4       #bm:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 144
    .restart local v5       #c:Landroid/graphics/Canvas;
    const/16 v19, 0x0

    div-int/lit8 v20, v8, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView2;->mRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v5, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 145
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 146
    move-object v3, v4

    .line 154
    .end local v4           #bm:Landroid/graphics/Bitmap;
    .end local v5           #c:Landroid/graphics/Canvas;
    .end local v8           #height:I
    .end local v10           #onBottom:Z
    .end local v18           #width:I
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView2;->mTarget:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 155
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 156
    .local v17, w:I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 157
    .local v7, h:I
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x3ff8

    mul-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-int v12, v0

    .line 158
    .local v12, sWidth:I
    int-to-double v0, v7

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x3ff8

    mul-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-int v11, v0

    .line 159
    .local v11, sHeight:I
    const/4 v15, 0x0

    .line 160
    .local v15, tempBM:Landroid/graphics/Bitmap;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v3, v12, v11, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 161
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 163
    add-int/lit8 v19, v17, 0x2

    add-int/lit8 v20, v7, 0x2

    sget-object v21, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 164
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 165
    .restart local v5       #c:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView2;->mTempDist:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    add-int/lit8 v20, v7, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView2;->mTempDist:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    add-int/lit8 v20, v17, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView2;->mTempSrc:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    sub-int v20, v12, v17

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView2;->mTempSrc:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    sub-int v20, v11, v7

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView2;->mTempSrc:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    add-int v20, v12, v7

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView2;->mTempSrc:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    add-int v20, v12, v17

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView2;->mTempSrc:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView2;->mTempDist:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v5, v15, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 175
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 176
    new-instance v14, Landroid/graphics/BitmapShader;

    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v14, v3, v0, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 177
    .local v14, targetShader:Landroid/graphics/Shader;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView2;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 178
    invoke-direct/range {p0 .. p1}, Landroid/widget/MagnifierView2;->drawMagnifier(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 122
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #c:Landroid/graphics/Canvas;
    .end local v7           #h:I
    .end local v11           #sHeight:I
    .end local v12           #sWidth:I
    .end local v14           #targetShader:Landroid/graphics/Shader;
    .end local v15           #tempBM:Landroid/graphics/Bitmap;
    .end local v17           #w:I
    .restart local v8       #height:I
    .restart local v18       #width:I
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 149
    .end local v8           #height:I
    .end local v18           #width:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView2;->mRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView2;->mRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v20

    sget-object v21, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 150
    .restart local v3       #bitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 151
    .restart local v5       #c:Landroid/graphics/Canvas;
    neg-int v0, v9

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MagnifierView2;->mTarget:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2
.end method

.method public updateMagnifierPosition(II)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 85
    sget v4, Landroid/widget/MagnifierView2;->CUT_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    sub-int v1, p1, v4

    .line 86
    .local v1, left:I
    sget v4, Landroid/widget/MagnifierView2;->CUT_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    add-int v2, p1, v4

    .line 87
    .local v2, right:I
    sget v4, Landroid/widget/MagnifierView2;->CUT_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    sub-int v3, p2, v4

    .line 88
    .local v3, top:I
    sget v4, Landroid/widget/MagnifierView2;->CUT_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    add-int v0, p2, v4

    .line 89
    .local v0, bottom:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Landroid/widget/MagnifierView2;->mRect:Landroid/graphics/Rect;

    .line 90
    invoke-virtual {p0}, Landroid/widget/MagnifierView2;->invalidate()V

    .line 91
    return-void
.end method
