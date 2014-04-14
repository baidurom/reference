.class Lyi/support/v1/utils/Animatable$Translate;
.super Landroid/view/animation/TranslateAnimation;
.source "Animatable.java"

# interfaces
.implements Lyi/support/v1/utils/Animatable$Current;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/utils/Animatable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Translate"
.end annotation


# instance fields
.field protected mCurrent:F


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 1
    .parameter "fromXDelta"
    .parameter "toXDelta"
    .parameter "fromYDelta"
    .parameter "toYDelt"
    .parameter "factor"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 77
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, p5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Lyi/support/v1/utils/Animatable$Translate;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lyi/support/v1/utils/Animatable$Translate;->setFillAfter(Z)V

    .line 79
    new-instance v0, Lyi/support/v1/utils/Animatable$Translate$1;

    invoke-direct {v0, p0}, Lyi/support/v1/utils/Animatable$Translate$1;-><init>(Lyi/support/v1/utils/Animatable$Translate;)V

    invoke-virtual {p0, v0}, Lyi/support/v1/utils/Animatable$Translate;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 91
    return-void
.end method


# virtual methods
.method public getCurrent()F
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lyi/support/v1/utils/Animatable$Translate;->mCurrent:F

    return v0
.end method

.method protected onEnd()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method
