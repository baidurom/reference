.class public Landroid/widget/BounceCoverFlow;
.super Landroid/widget/BounceGallery;
.source "BounceCoverFlow.java"


# static fields
.field private static final DBG:Z = false

.field private static DEFAULT_MAX_ROTATION:I = 0x0

.field private static DEFAULT_MAX_ZOOM:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "BounceCoverFlow"


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private mMaxRotationAngle:I

.field private mMaxZoom:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/16 v0, 0x3c

    sput v0, Landroid/widget/BounceCoverFlow;->DEFAULT_MAX_ROTATION:I

    .line 61
    const/high16 v0, 0x43c8

    sput v0, Landroid/widget/BounceCoverFlow;->DEFAULT_MAX_ZOOM:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/BounceCoverFlow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/BounceCoverFlow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/BounceGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    sget v0, Landroid/widget/BounceCoverFlow;->DEFAULT_MAX_ROTATION:I

    iput v0, p0, Landroid/widget/BounceCoverFlow;->mMaxRotationAngle:I

    .line 64
    sget v0, Landroid/widget/BounceCoverFlow;->DEFAULT_MAX_ZOOM:F

    iput v0, p0, Landroid/widget/BounceCoverFlow;->mMaxZoom:F

    .line 66
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Landroid/widget/BounceCoverFlow;->mCamera:Landroid/graphics/Camera;

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/BounceCoverFlow;->setStaticTransformationsEnabled(Z)V

    .line 79
    return-void
.end method

.method private getCenterOfCoverflow()I
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/widget/BounceCoverFlow;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/BounceCoverFlow;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/BounceCoverFlow;->mPaddingRight:I

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/widget/BounceCoverFlow;->mPaddingLeft:I

    add-int/2addr v0, v1

    return v0
.end method

.method private transformImageBitmap(Landroid/view/View;Landroid/view/animation/Transformation;I)V
    .locals 8
    .parameter "child"
    .parameter "t"
    .parameter "rotationAngle"

    .prologue
    const/4 v7, 0x0

    .line 149
    iget-object v4, p0, Landroid/widget/BounceCoverFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v4}, Landroid/graphics/Camera;->save()V

    .line 151
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 152
    .local v1, imageMatrix:Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 153
    .local v0, imageHeight:I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 155
    .local v2, imageWidth:I
    int-to-float v4, p3

    iget v5, p0, Landroid/widget/BounceCoverFlow;->mMaxZoom:F

    iget v6, p0, Landroid/widget/BounceCoverFlow;->mMaxRotationAngle:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float v3, v4, v5

    .line 161
    .local v3, zoomAmount:F
    iget-object v4, p0, Landroid/widget/BounceCoverFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v4, v7, v7, v3}, Landroid/graphics/Camera;->translate(FFF)V

    .line 162
    iget-object v4, p0, Landroid/widget/BounceCoverFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v4, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 164
    div-int/lit8 v4, v2, 0x2

    neg-int v4, v4

    int-to-float v4, v4

    div-int/lit8 v5, v0, 0x2

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 165
    div-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 167
    iget-object v4, p0, Landroid/widget/BounceCoverFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v4}, Landroid/graphics/Camera;->restore()V

    .line 168
    return-void
.end method


# virtual methods
.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 6
    .parameter "child"
    .parameter "t"

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Landroid/widget/BounceCoverFlow;->getCenterOfChildWithScroll(Landroid/view/View;)I

    move-result v0

    .line 111
    .local v0, childCenter:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 112
    .local v1, childWidth:I
    const/4 v3, 0x0

    .line 114
    .local v3, rotationAngle:I
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 115
    sget v4, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    invoke-virtual {p2, v4}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 117
    invoke-direct {p0}, Landroid/widget/BounceCoverFlow;->getCenterOfCoverflow()I

    move-result v4

    if-ne v0, v4, :cond_0

    .line 118
    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, v4}, Landroid/widget/BounceCoverFlow;->transformImageBitmap(Landroid/view/View;Landroid/view/animation/Transformation;I)V

    .line 134
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 120
    :cond_0
    invoke-direct {p0}, Landroid/widget/BounceCoverFlow;->getCenterOfCoverflow()I

    move-result v4

    sub-int v2, v4, v0

    .line 121
    .local v2, distToCenter:I
    int-to-float v4, v2

    int-to-float v5, v1

    div-float/2addr v4, v5

    iget v5, p0, Landroid/widget/BounceCoverFlow;->mMaxRotationAngle:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v3, v4

    .line 128
    iget v4, p0, Landroid/widget/BounceCoverFlow;->mMaxRotationAngle:I

    if-le v3, v4, :cond_1

    .line 129
    iget v3, p0, Landroid/widget/BounceCoverFlow;->mMaxRotationAngle:I

    .line 131
    :cond_1
    invoke-direct {p0, p1, p2, v3}, Landroid/widget/BounceCoverFlow;->transformImageBitmap(Landroid/view/View;Landroid/view/animation/Transformation;I)V

    goto :goto_0
.end method

.method public setMaxRotationAngle(I)V
    .locals 0
    .parameter "maxAngle"

    .prologue
    .line 105
    iput p1, p0, Landroid/widget/BounceCoverFlow;->mMaxRotationAngle:I

    .line 106
    return-void
.end method

.method public setMaxZoomOut(F)V
    .locals 0
    .parameter "maxZoom"

    .prologue
    .line 96
    iput p1, p0, Landroid/widget/BounceCoverFlow;->mMaxZoom:F

    .line 97
    return-void
.end method
