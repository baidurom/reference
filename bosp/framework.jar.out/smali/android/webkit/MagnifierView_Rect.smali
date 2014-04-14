.class Landroid/webkit/MagnifierView_Rect;
.super Landroid/view/View;
.source "MagnifierView_Rect.java"


# static fields
.field public static final CUT_HEIGHT:F = 26.666666f

.field private static final DBG:Z = true

.field static final FONT_SIZE_AFTER_MAGNIFIER:F = 27.0f

.field private static final MAGNIFIER_FACTOR:F = 1.5f

.field public static MAX_HEIGHT_RATIO:F


# instance fields
.field private mCoordinate:[I

.field private mCutHeight:I

.field private mDensity:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHeight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mScale:F

.field private final mTarget:Landroid/webkit/WebView;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const v0, 0x3f99999a

    sput v0, Landroid/webkit/MagnifierView_Rect;->MAX_HEIGHT_RATIO:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 3
    .parameter "context"
    .parameter "target"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    const/high16 v0, 0x3fc0

    iput v0, p0, Landroid/webkit/MagnifierView_Rect;->mScale:F

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/webkit/MagnifierView_Rect;->mCoordinate:[I

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/webkit/MagnifierView_Rect;->mPaint:Landroid/graphics/Paint;

    .line 52
    iput-object p2, p0, Landroid/webkit/MagnifierView_Rect;->mTarget:Landroid/webkit/WebView;

    .line 54
    iget-object v0, p0, Landroid/webkit/MagnifierView_Rect;->mTarget:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 55
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

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/webkit/MagnifierView_Rect;->mDensity:F

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/MagnifierView_Rect;->mRect:Landroid/graphics/Rect;

    .line 61
    invoke-virtual {p0}, Landroid/webkit/MagnifierView_Rect;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #drawable@rice_text_select_magnifier#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/MagnifierView_Rect;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 62
    iget-object v0, p0, Landroid/webkit/MagnifierView_Rect;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/webkit/MagnifierView_Rect;->mWidth:I

    .line 63
    iget-object v0, p0, Landroid/webkit/MagnifierView_Rect;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/webkit/MagnifierView_Rect;->mHeight:I

    .line 64
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/MagnifierView_Rect;->setLayerType(ILandroid/graphics/Paint;)V

    .line 65
    return-void
.end method

.method private drawMagnifier(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 186
    iget v3, p0, Landroid/webkit/MagnifierView_Rect;->mWidth:I

    iget v4, p0, Landroid/webkit/MagnifierView_Rect;->mHeight:I

    iget-object v2, p0, Landroid/webkit/MagnifierView_Rect;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 190
    .local v1, m:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 191
    .local v0, c:Landroid/graphics/Canvas;
    iget-object v2, p0, Landroid/webkit/MagnifierView_Rect;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/webkit/MagnifierView_Rect;->mWidth:I

    iget v4, p0, Landroid/webkit/MagnifierView_Rect;->mHeight:I

    invoke-virtual {v2, v7, v7, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 192
    iget-object v2, p0, Landroid/webkit/MagnifierView_Rect;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 193
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 194
    return-void

    .line 186
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v1           #m:Landroid/graphics/Bitmap;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 113
    iget-object v9, p0, Landroid/webkit/MagnifierView_Rect;->mPaint:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 116
    iget-object v9, p0, Landroid/webkit/MagnifierView_Rect;->mRect:Landroid/graphics/Rect;

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/webkit/MagnifierView_Rect;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 118
    :cond_0
    const-string v9, "SYGTC"

    const-string/jumbo v10, "onDraw(): only Magnifier"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-direct {p0, p1}, Landroid/webkit/MagnifierView_Rect;->drawMagnifier(Landroid/graphics/Canvas;)V

    .line 182
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v9, p0, Landroid/webkit/MagnifierView_Rect;->mRect:Landroid/graphics/Rect;

    iget v3, v9, Landroid/graphics/Rect;->left:I

    .line 125
    .local v3, left:I
    iget-object v9, p0, Landroid/webkit/MagnifierView_Rect;->mRect:Landroid/graphics/Rect;

    iget v7, v9, Landroid/graphics/Rect;->top:I

    .line 126
    .local v7, top:I
    if-gez v3, :cond_2

    .line 127
    const/4 v3, 0x0

    .line 129
    :cond_2
    if-gez v7, :cond_3

    .line 130
    const/4 v7, 0x0

    .line 133
    :cond_3
    iget-object v9, p0, Landroid/webkit/MagnifierView_Rect;->mTarget:Landroid/webkit/WebView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    .line 134
    iget-object v9, p0, Landroid/webkit/MagnifierView_Rect;->mTarget:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 137
    .local v6, source:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_6

    .line 138
    iget-object v9, p0, Landroid/webkit/MagnifierView_Rect;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 139
    .local v8, width:I
    iget-object v9, p0, Landroid/webkit/MagnifierView_Rect;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 140
    .local v2, height:I
    add-int v9, v3, v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-le v9, v10, :cond_4

    .line 141
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int v8, v9, v3

    .line 143
    :cond_4
    add-int v9, v7, v2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-le v9, v10, :cond_5

    .line 144
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int v2, v9, v7

    .line 147
    :cond_5
    invoke-static {v6, v3, v7, v8, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 163
    .end local v2           #height:I
    .end local v8           #width:I
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 166
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 167
    .local v4, p:Landroid/graphics/Path;
    new-instance v5, Landroid/graphics/RectF;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Landroid/webkit/MagnifierView_Rect;->mWidth:I

    int-to-float v11, v11

    iget v12, p0, Landroid/webkit/MagnifierView_Rect;->mHeight:I

    int-to-float v12, v12

    invoke-direct {v5, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 168
    .local v5, rc:Landroid/graphics/RectF;
    const/high16 v9, 0x4040

    const/high16 v10, 0x4040

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v9, v10, v11}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 169
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 172
    iget v9, p0, Landroid/webkit/MagnifierView_Rect;->mWidth:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    iget-object v10, p0, Landroid/webkit/MagnifierView_Rect;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, Landroid/webkit/MagnifierView_Rect;->mScale:F

    mul-float/2addr v10, v11

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    iget v10, p0, Landroid/webkit/MagnifierView_Rect;->mHeight:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    iget-object v11, p0, Landroid/webkit/MagnifierView_Rect;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    iget v12, p0, Landroid/webkit/MagnifierView_Rect;->mScale:F

    mul-float/2addr v11, v12

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 174
    iget v9, p0, Landroid/webkit/MagnifierView_Rect;->mScale:F

    iget v10, p0, Landroid/webkit/MagnifierView_Rect;->mScale:F

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 175
    const/4 v9, -0x1

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 176
    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Landroid/webkit/MagnifierView_Rect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 177
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 179
    iget-object v9, p0, Landroid/webkit/MagnifierView_Rect;->mTarget:Landroid/webkit/WebView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    .line 181
    invoke-direct {p0, p1}, Landroid/webkit/MagnifierView_Rect;->drawMagnifier(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 151
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #p:Landroid/graphics/Path;
    .end local v5           #rc:Landroid/graphics/RectF;
    :cond_6
    iget-object v9, p0, Landroid/webkit/MagnifierView_Rect;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v10, p0, Landroid/webkit/MagnifierView_Rect;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 152
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 153
    .local v1, c:Landroid/graphics/Canvas;
    neg-int v9, v3

    int-to-float v9, v9

    neg-int v10, v7

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 155
    iget-object v9, p0, Landroid/webkit/MagnifierView_Rect;->mTarget:Landroid/webkit/WebView;

    invoke-virtual {v9, v1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 106
    iget v0, p0, Landroid/webkit/MagnifierView_Rect;->mWidth:I

    iget v1, p0, Landroid/webkit/MagnifierView_Rect;->mHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/webkit/MagnifierView_Rect;->setMeasuredDimension(II)V

    .line 107
    return-void
.end method

.method public updateMagnifierPosition(I[IZ)V
    .locals 10
    .parameter "centerX"
    .parameter "handles"
    .parameter "hitStartHandle"

    .prologue
    const v9, 0x41d55555

    .line 72
    const/4 v6, 0x0

    aget v4, p2, v6

    .line 73
    .local v4, start_x:I
    const/4 v6, 0x1

    aget v5, p2, v6

    .line 74
    .local v5, start_y:I
    const/4 v6, 0x2

    aget v0, p2, v6

    .line 75
    .local v0, end_x:I
    const/4 v6, 0x3

    aget v1, p2, v6

    .line 77
    .local v1, end_y:I
    const/4 v6, 0x4

    aget v3, p2, v6

    .line 79
    .local v3, start_h:I
    iget-object v6, p0, Landroid/webkit/MagnifierView_Rect;->mRect:Landroid/graphics/Rect;

    if-nez v6, :cond_0

    .line 80
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/webkit/MagnifierView_Rect;->mRect:Landroid/graphics/Rect;

    .line 83
    :cond_0
    move v2, v3

    .line 84
    .local v2, selectionHeight:I
    int-to-float v6, v2

    iget v7, p0, Landroid/webkit/MagnifierView_Rect;->mDensity:F

    mul-float/2addr v7, v9

    sget v8, Landroid/webkit/MagnifierView_Rect;->MAX_HEIGHT_RATIO:F

    mul-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 86
    iput v2, p0, Landroid/webkit/MagnifierView_Rect;->mCutHeight:I

    .line 87
    iget v6, p0, Landroid/webkit/MagnifierView_Rect;->mDensity:F

    mul-float/2addr v6, v9

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p0, Landroid/webkit/MagnifierView_Rect;->mScale:F

    .line 95
    :goto_0
    iget-object v6, p0, Landroid/webkit/MagnifierView_Rect;->mRect:Landroid/graphics/Rect;

    iget v7, p0, Landroid/webkit/MagnifierView_Rect;->mWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int v7, p1, v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 97
    iget-object v6, p0, Landroid/webkit/MagnifierView_Rect;->mRect:Landroid/graphics/Rect;

    if-eqz p3, :cond_1

    add-int v1, v5, v3

    .end local v1           #end_y:I
    :cond_1
    iget v7, p0, Landroid/webkit/MagnifierView_Rect;->mCutHeight:I

    sub-int v7, v1, v7

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 98
    iget-object v6, p0, Landroid/webkit/MagnifierView_Rect;->mRect:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/webkit/MagnifierView_Rect;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, p0, Landroid/webkit/MagnifierView_Rect;->mWidth:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 99
    iget-object v6, p0, Landroid/webkit/MagnifierView_Rect;->mRect:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/webkit/MagnifierView_Rect;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, p0, Landroid/webkit/MagnifierView_Rect;->mCutHeight:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 101
    invoke-virtual {p0}, Landroid/webkit/MagnifierView_Rect;->invalidate()V

    .line 102
    return-void

    .line 91
    .restart local v1       #end_y:I
    :cond_2
    iget v6, p0, Landroid/webkit/MagnifierView_Rect;->mDensity:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, p0, Landroid/webkit/MagnifierView_Rect;->mCutHeight:I

    .line 92
    const/high16 v6, 0x3fc0

    iput v6, p0, Landroid/webkit/MagnifierView_Rect;->mScale:F

    goto :goto_0
.end method
