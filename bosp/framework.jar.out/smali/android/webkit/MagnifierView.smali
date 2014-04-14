.class Landroid/webkit/MagnifierView;
.super Landroid/view/View;
.source "MagnifierView.java"


# static fields
.field private static final DBG:Z = true


# instance fields
.field mDensity:F

.field private final mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mHeight:I

.field private final mMagnifierBitmap:Landroid/graphics/Bitmap;

.field private final mMask:Landroid/graphics/Bitmap;

.field mPadding:I

.field mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mScale:F

.field private final mTarget:Landroid/view/View;

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .parameter "context"
    .parameter "target"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    const/high16 v0, 0x3fc0

    iput v0, p0, Landroid/webkit/MagnifierView;->mScale:F

    .line 28
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/MagnifierView;->mPadding:I

    .line 29
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/webkit/MagnifierView;->mDensity:F

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/webkit/MagnifierView;->mPaint:Landroid/graphics/Paint;

    .line 46
    iput-object p2, p0, Landroid/webkit/MagnifierView;->mTarget:Landroid/view/View;

    .line 48
    iget-object v0, p0, Landroid/webkit/MagnifierView;->mTarget:Landroid/view/View;

    if-nez v0, :cond_0

    .line 49
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

    .line 52
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/MagnifierView;->mRect:Landroid/graphics/Rect;

    .line 53
    invoke-virtual {p0}, Landroid/webkit/MagnifierView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #drawable@longpress_select_magnifier#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 54
    invoke-virtual {p0}, Landroid/webkit/MagnifierView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #drawable@longpress_select_magnifier_mask#t

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/MagnifierView;->convertToAlphaMask(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/MagnifierView;->mMask:Landroid/graphics/Bitmap;

    .line 55
    iget-object v0, p0, Landroid/webkit/MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/webkit/MagnifierView;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/MagnifierView;->mMagnifierBitmap:Landroid/graphics/Bitmap;

    .line 56
    iget-object v0, p0, Landroid/webkit/MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/webkit/MagnifierView;->mWidth:I

    .line 57
    iget-object v0, p0, Landroid/webkit/MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/webkit/MagnifierView;->mHeight:I

    .line 58
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/MagnifierView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/webkit/MagnifierView;->mDensity:F

    .line 61
    return-void
.end method

.method private static convertToAlphaMask(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "b"

    .prologue
    const/4 v5, 0x0

    .line 174
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    .local v0, a:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 176
    .local v1, c:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 177
    return-object v0
.end method

.method private convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "drawable"

    .prologue
    const/4 v5, 0x0

    .line 64
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 65
    .local v3, width:I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 66
    .local v1, height:I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 67
    .local v2, m:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 68
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {p1, v5, v5, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 69
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 70
    return-object v2
.end method

.method private drawMagnifier(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 182
    iget-object v0, p0, Landroid/webkit/MagnifierView;->mMagnifierBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 183
    iget-object v0, p0, Landroid/webkit/MagnifierView;->mMask:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/webkit/MagnifierView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 184
    return-void
.end method


# virtual methods
.method public getMyHeight()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Landroid/webkit/MagnifierView;->mHeight:I

    return v0
.end method

.method public getMyWidth()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Landroid/webkit/MagnifierView;->mWidth:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .parameter "canvas"

    .prologue
    .line 95
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 102
    :cond_0
    invoke-direct/range {p0 .. p1}, Landroid/webkit/MagnifierView;->drawMagnifier(Landroid/graphics/Canvas;)V

    .line 171
    :goto_0
    return-void

    .line 107
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 108
    .local v8, left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v14, v0, Landroid/graphics/Rect;->top:I

    .line 109
    .local v14, top:I
    if-gez v8, :cond_2

    .line 110
    const/4 v8, 0x0

    .line 112
    :cond_2
    if-gez v14, :cond_3

    .line 113
    const/4 v14, 0x0

    .line 116
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierView;->mTarget:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierView;->mTarget:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 120
    .local v11, source:Landroid/graphics/Bitmap;
    if-eqz v11, :cond_9

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v16

    .line 122
    .local v16, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 123
    .local v7, height:I
    add-int v17, v8, v16

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 124
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    sub-int v16, v17, v8

    .line 126
    :cond_4
    add-int v17, v14, v7

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_5

    .line 127
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    sub-int v7, v17, v14

    .line 130
    :cond_5
    move/from16 v0, v16

    invoke-static {v11, v8, v14, v0, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 131
    .local v3, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    if-gez v17, :cond_6

    .line 132
    sget-object v17, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v7, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 133
    .local v4, bm:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 134
    .local v5, c:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 135
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v5, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 136
    move-object v3, v4

    .line 138
    .end local v4           #bm:Landroid/graphics/Bitmap;
    .end local v5           #c:Landroid/graphics/Canvas;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    if-gez v17, :cond_7

    .line 139
    sget-object v17, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v7, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 140
    .restart local v4       #bm:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 141
    .restart local v5       #c:Landroid/graphics/Canvas;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v5, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 142
    move-object v3, v4

    .line 144
    .end local v4           #bm:Landroid/graphics/Bitmap;
    .end local v5           #c:Landroid/graphics/Canvas;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v0, v7, :cond_8

    .line 145
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/MagnifierView;->mHeight:I

    move/from16 v17, v0

    sget-object v18, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v16 .. v18}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 146
    .restart local v4       #bm:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 147
    .restart local v5       #c:Landroid/graphics/Canvas;
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 148
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v5, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 149
    move-object v3, v4

    .line 158
    .end local v4           #bm:Landroid/graphics/Bitmap;
    .end local v5           #c:Landroid/graphics/Canvas;
    .end local v7           #height:I
    .end local v16           #width:I
    :cond_8
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 159
    .local v15, w:I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 160
    .local v6, h:I
    int-to-double v0, v15

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x3ff8

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v10, v0

    .line 161
    .local v10, sWidth:I
    int-to-double v0, v6

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x3ff8

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v9, v0

    .line 162
    .local v9, sHeight:I
    const/4 v13, 0x0

    .line 163
    .local v13, tempBM:Landroid/graphics/Bitmap;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v3, v10, v9, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 164
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 165
    sub-int v17, v10, v15

    div-int/lit8 v17, v17, 0x2

    sub-int v18, v9, v6

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1, v15, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 167
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 168
    new-instance v12, Landroid/graphics/BitmapShader;

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v12, v3, v0, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 169
    .local v12, targetShader:Landroid/graphics/Shader;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 170
    invoke-direct/range {p0 .. p1}, Landroid/webkit/MagnifierView;->drawMagnifier(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 152
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #h:I
    .end local v9           #sHeight:I
    .end local v10           #sWidth:I
    .end local v12           #targetShader:Landroid/graphics/Shader;
    .end local v13           #tempBM:Landroid/graphics/Bitmap;
    .end local v15           #w:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v18

    sget-object v19, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v17 .. v19}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 153
    .restart local v3       #bitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 154
    .restart local v5       #c:Landroid/graphics/Canvas;
    neg-int v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    neg-int v0, v14

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierView;->mTarget:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 90
    iget v0, p0, Landroid/webkit/MagnifierView;->mWidth:I

    iget v1, p0, Landroid/webkit/MagnifierView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/webkit/MagnifierView;->setMeasuredDimension(II)V

    .line 91
    return-void
.end method

.method public updateMagnifierPosition(II)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 77
    iget v4, p0, Landroid/webkit/MagnifierView;->mWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int v1, p1, v4

    .line 78
    .local v1, left:I
    iget v4, p0, Landroid/webkit/MagnifierView;->mWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int v2, p1, v4

    .line 79
    .local v2, right:I
    iget v4, p0, Landroid/webkit/MagnifierView;->mHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int v3, p2, v4

    .line 80
    .local v3, top:I
    iget v4, p0, Landroid/webkit/MagnifierView;->mHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int v0, p2, v4

    .line 81
    .local v0, bottom:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Landroid/webkit/MagnifierView;->mRect:Landroid/graphics/Rect;

    .line 82
    invoke-virtual {p0}, Landroid/webkit/MagnifierView;->invalidate()V

    .line 83
    return-void
.end method
