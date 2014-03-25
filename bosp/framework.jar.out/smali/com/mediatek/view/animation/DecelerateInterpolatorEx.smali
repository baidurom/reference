.class public Lcom/mediatek/view/animation/DecelerateInterpolatorEx;
.super Ljava/lang/Object;
.source "DecelerateInterpolatorEx.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mFactor:F

.field private mScale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f80

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v0, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mFactor:F

    .line 57
    iput v0, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mScale:F

    .line 14
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .parameter "factor"

    .prologue
    const/high16 v0, 0x3f80

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v0, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mFactor:F

    .line 57
    iput v0, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mScale:F

    .line 17
    iput p1, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mFactor:F

    .line 18
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .parameter "factor"
    .parameter "scale"

    .prologue
    const/high16 v0, 0x3f80

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v0, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mFactor:F

    .line 57
    iput v0, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mScale:F

    .line 21
    iput p1, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mFactor:F

    .line 22
    iput p2, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mScale:F

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v2, 0x3f80

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v2, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mFactor:F

    .line 57
    iput v2, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mScale:F

    .line 26
    sget-object v1, Lcom/mediatek/internal/R$styleable;->DecelerateInterpolatorEx:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 30
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mFactor:F

    .line 31
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mScale:F

    .line 33
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 9
    .parameter "input"

    .prologue
    const/high16 v8, 0x3f80

    .line 37
    iget v2, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mScale:F

    cmpl-float v2, v2, v8

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mScale:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 38
    .local v0, needScale:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 39
    iget v2, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mScale:F

    mul-float/2addr p1, v2

    .line 43
    :cond_0
    iget v2, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mFactor:F

    cmpl-float v2, v2, v8

    if-nez v2, :cond_3

    .line 44
    sub-float v2, v8, p1

    sub-float v3, v8, p1

    mul-float/2addr v2, v3

    sub-float v1, v8, v2

    .line 49
    .local v1, result:F
    :goto_1
    if-eqz v0, :cond_1

    cmpl-float v2, p1, v8

    if-ltz v2, :cond_1

    .line 50
    const/high16 v1, 0x3f80

    .line 53
    :cond_1
    return v1

    .line 37
    .end local v0           #needScale:Z
    .end local v1           #result:F
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 46
    .restart local v0       #needScale:Z
    :cond_3
    const-wide/high16 v2, 0x3ff0

    sub-float v4, v8, p1

    float-to-double v4, v4

    const/high16 v6, 0x4000

    iget v7, p0, Lcom/mediatek/view/animation/DecelerateInterpolatorEx;->mFactor:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v1, v2

    .restart local v1       #result:F
    goto :goto_1
.end method
