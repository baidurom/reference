.class public Lcom/android/internal/widget/MagnifierView;
.super Landroid/view/View;
.source "MagnifierView.java"


# static fields
.field private static final DBG:Z = true

.field static final FONT_SIZE_AFTER_MAGNIFIER:F = 27.0f

.field private static final MAGNIFIER_FACTOR:F = 1.5f


# instance fields
.field private mCoordinate:[I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHeight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRangePadding:I

.field private mRect:Landroid/graphics/Rect;

.field private mScale:F

.field private final mTarget:Landroid/widget/TextView;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 4
    .parameter "context"
    .parameter "target"

    .prologue
    const/high16 v3, 0x3fc0

    .line 46
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    iput v3, p0, Lcom/android/internal/widget/MagnifierView;->mScale:F

    .line 36
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/widget/MagnifierView;->mCoordinate:[I

    .line 39
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/MagnifierView;->mPaint:Landroid/graphics/Paint;

    .line 40
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/widget/MagnifierView;->mRangePadding:I

    .line 47
    iput-object p2, p0, Lcom/android/internal/widget/MagnifierView;->mTarget:Landroid/widget/TextView;

    .line 49
    iget-object v1, p0, Lcom/android/internal/widget/MagnifierView;->mTarget:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the mTarget must not be empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    .line 54
    invoke-virtual {p0}, Lcom/android/internal/widget/MagnifierView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #drawable@rice_text_select_magnifier#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 55
    iget-object v1, p0, Lcom/android/internal/widget/MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/MagnifierView;->mWidth:I

    .line 56
    iget-object v1, p0, Lcom/android/internal/widget/MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/MagnifierView;->mHeight:I

    .line 57
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/MagnifierView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 59
    iget-object v1, p0, Lcom/android/internal/widget/MagnifierView;->mTarget:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    .line 60
    .local v0, fontSize:F
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/android/internal/widget/MagnifierView;->mTarget:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41d8

    mul-float/2addr v1, v2

    div-float/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/MagnifierView;->mScale:F

    .line 65
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/MagnifierView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #dimen@yi_magnifier_range_padding#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/widget/MagnifierView;->mRangePadding:I

    .line 66
    return-void

    .line 63
    :cond_1
    iput v3, p0, Lcom/android/internal/widget/MagnifierView;->mScale:F

    goto :goto_0
.end method

.method private drawMagnifier(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 232
    iget v3, p0, Lcom/android/internal/widget/MagnifierView;->mWidth:I

    iget v4, p0, Lcom/android/internal/widget/MagnifierView;->mHeight:I

    iget-object v2, p0, Lcom/android/internal/widget/MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 235
    .local v1, m:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 236
    .local v0, c:Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/android/internal/widget/MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/internal/widget/MagnifierView;->mWidth:I

    iget v4, p0, Lcom/android/internal/widget/MagnifierView;->mHeight:I

    invoke-virtual {v2, v7, v7, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 237
    iget-object v2, p0, Lcom/android/internal/widget/MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 238
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 239
    return-void

    .line 232
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v1           #m:Landroid/graphics/Bitmap;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private getRange(I)Landroid/graphics/Rect;
    .locals 10
    .parameter "offset"

    .prologue
    .line 82
    iget-object v6, p0, Lcom/android/internal/widget/MagnifierView;->mTarget:Landroid/widget/TextView;

    .line 83
    .local v6, tv:Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 84
    .local v0, layout:Landroid/text/Layout;
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 86
    .local v1, line:I
    iget-object v7, p0, Lcom/android/internal/widget/MagnifierView;->mTarget:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/internal/widget/MagnifierView;->mCoordinate:[I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 89
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 92
    .local v2, lineTop:I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v7

    iget v8, p0, Lcom/android/internal/widget/MagnifierView;->mRangePadding:I

    add-int/2addr v7, v8

    sub-int v4, v7, v2

    .line 94
    .local v4, range:I
    iget-object v7, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    if-nez v7, :cond_0

    .line 95
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    .line 97
    :cond_0
    iget-object v7, p0, Lcom/android/internal/widget/MagnifierView;->mTarget:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 98
    new-instance v3, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    invoke-direct {v3, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 100
    .local v3, oldRect:Landroid/graphics/Rect;
    const-string v7, "SYGTC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mTarget mRect = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v7, "SYGTC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " lineTop "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    div-int/lit8 v7, v4, 0x2

    sub-int v7, v2, v7

    iget-object v8, p0, Lcom/android/internal/widget/MagnifierView;->mTarget:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v8

    add-int v5, v7, v8

    .line 107
    .local v5, tmp:I
    iget-object v7, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-lt v5, v7, :cond_1

    .line 108
    iget-object v7, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    iput v5, v7, Landroid/graphics/Rect;->top:I

    .line 112
    :cond_1
    iget-object v7, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v8, v4, 0x2

    add-int v5, v7, v8

    .line 113
    iget-object v7, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-gt v5, v7, :cond_2

    .line 114
    iget-object v7, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    iput v5, v7, Landroid/graphics/Rect;->bottom:I

    .line 118
    :cond_2
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    float-to-int v7, v7

    mul-int/lit8 v8, v4, 0x3

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/widget/MagnifierView;->mTarget:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v8

    add-int v5, v7, v8

    .line 119
    iget-object v7, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-lt v5, v7, :cond_3

    .line 120
    iget-object v7, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    iput v5, v7, Landroid/graphics/Rect;->left:I

    .line 124
    :cond_3
    iget-object v7, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v8, v4, 0x6

    add-int v5, v7, v8

    .line 125
    iget-object v7, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    if-gt v5, v7, :cond_4

    .line 126
    iget-object v7, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    iput v5, v7, Landroid/graphics/Rect;->right:I

    .line 129
    :cond_4
    const-string v7, "SYGTC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Drawable mRect = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v7, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 132
    const/4 v7, 0x0

    .line 151
    :goto_0
    return-object v7

    .line 135
    :cond_5
    iget-object v7, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/android/internal/widget/MagnifierView;->mScale:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    iget v8, p0, Lcom/android/internal/widget/MagnifierView;->mWidth:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-gez v7, :cond_9

    .line 136
    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-ne v7, v8, :cond_7

    iget v7, v3, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    if-le v7, v8, :cond_7

    .line 137
    iget-object v7, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/internal/widget/MagnifierView;->mWidth:I

    add-int/lit8 v8, v8, -0x2

    int-to-float v8, v8

    iget v9, p0, Lcom/android/internal/widget/MagnifierView;->mScale:F

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v5, v7

    .line 138
    iget v7, v3, Landroid/graphics/Rect;->right:I

    if-gt v5, v7, :cond_6

    .line 139
    iget-object v7, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    iput v5, v7, Landroid/graphics/Rect;->right:I

    .line 141
    :cond_6
    iget-object v7, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 142
    :cond_7
    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-ge v7, v8, :cond_9

    iget v7, v3, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    if-ne v7, v8, :cond_9

    .line 143
    iget-object v7, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/internal/widget/MagnifierView;->mWidth:I

    add-int/lit8 v8, v8, -0x2

    int-to-float v8, v8

    iget v9, p0, Lcom/android/internal/widget/MagnifierView;->mScale:F

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    float-to-int v5, v7

    .line 144
    iget v7, v3, Landroid/graphics/Rect;->left:I

    if-lt v5, v7, :cond_8

    .line 145
    iget-object v7, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    iput v5, v7, Landroid/graphics/Rect;->left:I

    .line 147
    :cond_8
    iget-object v7, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 151
    :cond_9
    iget-object v7, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private setRange(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "rect"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    .line 70
    invoke-virtual {p0}, Lcom/android/internal/widget/MagnifierView;->invalidate()V

    .line 71
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 164
    iget-object v10, p0, Lcom/android/internal/widget/MagnifierView;->mPaint:Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 167
    iget-object v10, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 168
    :cond_0
    const-string v10, "SYGTC"

    const-string/jumbo v11, "onDraw(): only Magnifier"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MagnifierView;->drawMagnifier(Landroid/graphics/Canvas;)V

    .line 228
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v10, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/android/internal/widget/MagnifierView;->mTarget:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getScrollX()I

    move-result v11

    sub-int v4, v10, v11

    .line 175
    .local v4, left:I
    iget-object v10, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/android/internal/widget/MagnifierView;->mTarget:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getScrollY()I

    move-result v11

    sub-int v9, v10, v11

    .line 176
    .local v9, top:I
    if-ltz v4, :cond_2

    if-gez v9, :cond_3

    .line 177
    :cond_2
    const-string v10, "SYGTC"

    const-string/jumbo v11, "onDraw(): only Magnifier"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MagnifierView;->drawMagnifier(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 182
    :cond_3
    iget-object v10, p0, Lcom/android/internal/widget/MagnifierView;->mTarget:Landroid/widget/TextView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 183
    iget-object v10, p0, Lcom/android/internal/widget/MagnifierView;->mTarget:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 186
    .local v7, source:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_7

    .line 187
    iget-object v10, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/2addr v10, v4

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    if-gt v10, v11, :cond_4

    iget-object v10, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    add-int/2addr v10, v9

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-le v10, v11, :cond_5

    .line 188
    :cond_4
    const-string v10, "SYGTC"

    const-string/jumbo v11, "onDraw(): only Magnifier"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v10, p0, Lcom/android/internal/widget/MagnifierView;->mTarget:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 190
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MagnifierView;->drawMagnifier(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 193
    :cond_5
    iget-object v10, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-static {v7, v4, v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 202
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :goto_1
    iget-object v10, p0, Lcom/android/internal/widget/MagnifierView;->mTarget:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v8

    .line 203
    .local v8, textColor:I
    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3e99999a

    mul-float/2addr v10, v11

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v11

    int-to-float v11, v11

    const v12, 0x3f19999a

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    int-to-float v11, v11

    const v12, 0x3dcccccd

    mul-float/2addr v11, v12

    add-float v2, v10, v11

    .line 204
    .local v2, brightness:F
    const/4 v0, -0x1

    .line 205
    .local v0, backColor:I
    const-string v10, "SYGTC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "brightness "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/high16 v10, 0x4300

    invoke-static {v2, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-lez v10, :cond_6

    .line 207
    const/high16 v0, -0x100

    .line 210
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 213
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 214
    .local v5, p:Landroid/graphics/Path;
    new-instance v6, Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/internal/widget/MagnifierView;->mWidth:I

    int-to-float v12, v12

    iget v13, p0, Lcom/android/internal/widget/MagnifierView;->mHeight:I

    int-to-float v13, v13

    invoke-direct {v6, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 215
    .local v6, rc:Landroid/graphics/RectF;
    const/high16 v10, 0x4040

    const/high16 v11, 0x4040

    sget-object v12, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v10, v11, v12}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 216
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 219
    iget v10, p0, Lcom/android/internal/widget/MagnifierView;->mWidth:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    iget-object v11, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    iget v12, p0, Lcom/android/internal/widget/MagnifierView;->mScale:F

    mul-float/2addr v11, v12

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/android/internal/widget/MagnifierView;->mHeight:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    iget-object v12, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    iget v13, p0, Lcom/android/internal/widget/MagnifierView;->mScale:F

    mul-float/2addr v12, v13

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 220
    iget v10, p0, Lcom/android/internal/widget/MagnifierView;->mScale:F

    iget v11, p0, Lcom/android/internal/widget/MagnifierView;->mScale:F

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 221
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 222
    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/internal/widget/MagnifierView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 223
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 225
    iget-object v10, p0, Lcom/android/internal/widget/MagnifierView;->mTarget:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 227
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MagnifierView;->drawMagnifier(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 196
    .end local v0           #backColor:I
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #brightness:F
    .end local v5           #p:Landroid/graphics/Path;
    .end local v6           #rc:Landroid/graphics/RectF;
    .end local v8           #textColor:I
    :cond_7
    iget-object v10, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/widget/MagnifierView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 197
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 198
    .local v3, c:Landroid/graphics/Canvas;
    neg-int v10, v4

    int-to-float v10, v10

    neg-int v11, v9

    int-to-float v11, v11

    invoke-virtual {v3, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 199
    iget-object v10, p0, Lcom/android/internal/widget/MagnifierView;->mTarget:Landroid/widget/TextView;

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 157
    iget v0, p0, Lcom/android/internal/widget/MagnifierView;->mWidth:I

    iget v1, p0, Lcom/android/internal/widget/MagnifierView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/MagnifierView;->setMeasuredDimension(II)V

    .line 158
    return-void
.end method

.method public updateMagnifierPosition(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MagnifierView;->getRange(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MagnifierView;->setRange(Landroid/graphics/Rect;)V

    .line 78
    return-void
.end method
