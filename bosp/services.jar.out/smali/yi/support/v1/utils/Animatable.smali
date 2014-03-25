.class public Lyi/support/v1/utils/Animatable;
.super Ljava/lang/Object;
.source "Animatable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/support/v1/utils/Animatable$Alpha;,
        Lyi/support/v1/utils/Animatable$Vertical;,
        Lyi/support/v1/utils/Animatable$Horizontal;,
        Lyi/support/v1/utils/Animatable$Translate;,
        Lyi/support/v1/utils/Animatable$Current;,
        Lyi/support/v1/utils/Animatable$INTERPOLATER;,
        Lyi/support/v1/utils/Animatable$DURATION;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    return-void
.end method

.method public static getCurrent(Landroid/view/View;F)F
    .locals 2
    .parameter "view"
    .parameter "defValue"

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 199
    .local v0, animation:Landroid/view/animation/Animation;
    instance-of v1, v0, Lyi/support/v1/utils/Animatable$Current;

    if-eqz v1, :cond_0

    .line 200
    check-cast v0, Lyi/support/v1/utils/Animatable$Current;

    .end local v0           #animation:Landroid/view/animation/Animation;
    invoke-interface {v0}, Lyi/support/v1/utils/Animatable$Current;->getCurrent()F

    move-result p1

    .line 202
    .end local p1
    :cond_0
    return p1
.end method

.method public static getRemainingDuration(FFFJ)J
    .locals 2
    .parameter "from"
    .parameter "to"
    .parameter "current"
    .parameter "duration"

    .prologue
    .line 193
    long-to-float v0, p3

    sub-float v1, p1, p2

    mul-float/2addr v0, v1

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    float-to-long p3, v0

    .line 194
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method
