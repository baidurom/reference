.class Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable$DrawableWithAlpha;
.super Landroid/graphics/drawable/Drawable;
.source "SmartTargetDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawableWithAlpha"
.end annotation


# instance fields
.field private mAlpha:F

.field private mRealDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "realDrawable"

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 30
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable$DrawableWithAlpha;->mAlpha:F

    .line 33
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable$DrawableWithAlpha;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    .line 34
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable$DrawableWithAlpha;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable$DrawableWithAlpha;->mAlpha:F

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 43
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable$DrawableWithAlpha;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 44
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable$DrawableWithAlpha;->mAlpha:F

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable$DrawableWithAlpha;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public setAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 36
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable$DrawableWithAlpha;->mAlpha:F

    .line 37
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable$DrawableWithAlpha;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 48
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable$DrawableWithAlpha;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 52
    return-void
.end method
