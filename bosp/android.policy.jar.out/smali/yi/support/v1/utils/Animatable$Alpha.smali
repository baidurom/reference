.class public Lyi/support/v1/utils/Animatable$Alpha;
.super Landroid/view/animation/AlphaAnimation;
.source "Animatable.java"

# interfaces
.implements Lyi/support/v1/utils/Animatable$Current;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/utils/Animatable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Alpha"
.end annotation


# instance fields
.field private mCurrent:F


# direct methods
.method public constructor <init>(FFFJ)V
    .locals 8
    .parameter "fromAlpha"
    .parameter "toAlpha"
    .parameter "currentAlpha"
    .parameter "duration"

    .prologue
    .line 153
    const-wide/16 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lyi/support/v1/utils/Animatable$Alpha;-><init>(FFFJJ)V

    .line 154
    return-void
.end method

.method public constructor <init>(FFFJJ)V
    .locals 2
    .parameter "fromAlpha"
    .parameter "toAlpha"
    .parameter "currentAlpha"
    .parameter "duration"
    .parameter "startOffset"

    .prologue
    .line 157
    invoke-direct {p0, p3, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 158
    iput p3, p0, Lyi/support/v1/utils/Animatable$Alpha;->mCurrent:F

    .line 159
    invoke-static {p1, p2, p3, p4, p5}, Lyi/support/v1/utils/Animatable;->getRemainingDuration(FFFJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lyi/support/v1/utils/Animatable$Alpha;->setDuration(J)V

    .line 160
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lyi/support/v1/utils/Animatable$Alpha;->setFillAfter(Z)V

    .line 161
    invoke-virtual {p0, p6, p7}, Lyi/support/v1/utils/Animatable$Alpha;->setStartOffset(J)V

    .line 162
    new-instance v0, Lyi/support/v1/utils/Animatable$Alpha$1;

    invoke-direct {v0, p0}, Lyi/support/v1/utils/Animatable$Alpha$1;-><init>(Lyi/support/v1/utils/Animatable$Alpha;)V

    invoke-virtual {p0, v0}, Lyi/support/v1/utils/Animatable$Alpha;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 174
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 178
    invoke-super {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 179
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v0

    iput v0, p0, Lyi/support/v1/utils/Animatable$Alpha;->mCurrent:F

    .line 180
    return-void
.end method

.method public getCurrent()F
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lyi/support/v1/utils/Animatable$Alpha;->mCurrent:F

    return v0
.end method

.method protected onEnd()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method
