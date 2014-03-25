.class public Lyi/support/v1/utils/Animatable$Horizontal;
.super Lyi/support/v1/utils/Animatable$Translate;
.source "Animatable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/utils/Animatable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Horizontal"
.end annotation


# direct methods
.method public constructor <init>(FFFJ)V
    .locals 7
    .parameter "fromDelta"
    .parameter "toDelta"
    .parameter "currentDelta"
    .parameter "duration"

    .prologue
    .line 106
    const/high16 v6, 0x3f80

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lyi/support/v1/utils/Animatable$Horizontal;-><init>(FFFJF)V

    .line 107
    return-void
.end method

.method public constructor <init>(FFFJF)V
    .locals 6
    .parameter "fromDelta"
    .parameter "toDelta"
    .parameter "currentDelta"
    .parameter "duration"
    .parameter "factor"

    .prologue
    const/4 v3, 0x0

    .line 110
    move-object v0, p0

    move v1, p3

    move v2, p2

    move v4, v3

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lyi/support/v1/utils/Animatable$Translate;-><init>(FFFFF)V

    .line 111
    iput p3, p0, Lyi/support/v1/utils/Animatable$Horizontal;->mCurrent:F

    .line 112
    invoke-static {p1, p2, p3, p4, p5}, Lyi/support/v1/utils/Animatable;->getRemainingDuration(FFFJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lyi/support/v1/utils/Animatable$Horizontal;->setDuration(J)V

    .line 113
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 117
    invoke-super {p0, p1, p2}, Lyi/support/v1/utils/Animatable$Translate;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 119
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 120
    .local v0, values:[F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 121
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lyi/support/v1/utils/Animatable$Horizontal;->mCurrent:F

    .line 122
    return-void
.end method

.method public bridge synthetic getCurrent()F
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lyi/support/v1/utils/Animatable$Translate;->getCurrent()F

    move-result v0

    return v0
.end method
