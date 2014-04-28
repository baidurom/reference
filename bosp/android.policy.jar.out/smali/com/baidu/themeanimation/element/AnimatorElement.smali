.class public Lcom/baidu/themeanimation/element/AnimatorElement;
.super Ljava/lang/Object;
.source "AnimatorElement.java"


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mCurrentPvhCount:I

.field private mDuration:J

.field mPvhs:[Landroid/animation/PropertyValuesHolder;

.field private mRepateCount:I

.field private mRepateMode:I

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mRepateMode:I

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mRepateCount:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mCurrentPvhCount:I

    .line 27
    return-void
.end method


# virtual methods
.method public addKeyframes(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "propertyName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Keyframe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, keyframes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 86
    iget-object v1, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mPvhs:[Landroid/animation/PropertyValuesHolder;

    if-nez v1, :cond_0

    .line 87
    iget v1, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mType:I

    if-ne v1, v2, :cond_1

    .line 88
    new-array v1, v2, [Landroid/animation/PropertyValuesHolder;

    iput-object v1, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mPvhs:[Landroid/animation/PropertyValuesHolder;

    .line 93
    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Lcom/baidu/themeanimation/element/AnimatorElement;->formatKeyframeTime(Ljava/util/ArrayList;)V

    .line 94
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Landroid/animation/Keyframe;

    .line 95
    .local v0, ks:[Landroid/animation/Keyframe;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 96
    iget-object v1, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mPvhs:[Landroid/animation/PropertyValuesHolder;

    iget v2, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mCurrentPvhCount:I

    invoke-static {p1, v0}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v1, v2

    .line 97
    iget v1, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mCurrentPvhCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mCurrentPvhCount:I

    .line 98
    return-void

    .line 89
    .end local v0           #ks:[Landroid/animation/Keyframe;
    :cond_1
    iget v1, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mType:I

    if-ne v1, v3, :cond_0

    .line 90
    new-array v1, v3, [Landroid/animation/PropertyValuesHolder;

    iput-object v1, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mPvhs:[Landroid/animation/PropertyValuesHolder;

    goto :goto_0
.end method

.method public final formatKeyframeTime(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Keyframe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, keyframes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Keyframe;

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v1

    .line 114
    .local v1, total_time:F
    float-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lcom/baidu/themeanimation/element/AnimatorElement;->setDuration(J)V

    .line 115
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 116
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 117
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Keyframe;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe;

    invoke-virtual {v3}, Landroid/animation/Keyframe;->getFraction()F

    move-result v3

    div-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    .end local v0           #i:I
    .end local v1           #total_time:F
    :cond_0
    return-void
.end method

.method public generateAnimator(Ljava/lang/Object;)Landroid/animation/Animator;
    .locals 3
    .parameter "target"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mPvhs:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mPvhs:[Landroid/animation/PropertyValuesHolder;

    invoke-static {p1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mAnimator:Landroid/animation/ValueAnimator;

    .line 103
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mAnimator:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 104
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mRepateCount:I

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 105
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mRepateMode:I

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 106
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mAnimator:Landroid/animation/ValueAnimator;

    .line 108
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPvhCount()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mCurrentPvhCount:I

    return v0
.end method

.method public initType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 30
    iput p1, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mType:I

    .line 31
    return-void
.end method

.method public setDuration(J)V
    .locals 3
    .parameter "duration"

    .prologue
    const-wide/32 v1, 0xf4240

    .line 49
    cmp-long v0, p1, v1

    if-lez v0, :cond_1

    .line 50
    iput-wide v1, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mDuration:J

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mRepateMode:I

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mRepateCount:I

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mAnimator:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 59
    :cond_0
    return-void

    .line 54
    :cond_1
    iput-wide p1, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mDuration:J

    goto :goto_0
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 2
    .parameter "duration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/themeanimation/element/AnimatorElement;->setDuration(J)V

    .line 63
    return-void
.end method

.method public setInterpolator(I)V
    .locals 0
    .parameter "interpolator"

    .prologue
    .line 79
    return-void
.end method

.method public setInterpolator(Ljava/lang/String;)V
    .locals 0
    .parameter "interpolator"

    .prologue
    .line 83
    return-void
.end method

.method public setRepateCount(I)V
    .locals 1
    .parameter "repateCount"

    .prologue
    .line 38
    iput p1, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mRepateCount:I

    .line 39
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 42
    :cond_0
    return-void
.end method

.method public setRepateCount(Ljava/lang/String;)V
    .locals 1
    .parameter "repateCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/AnimatorElement;->setRepateCount(I)V

    .line 46
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter "repateMode"

    .prologue
    .line 67
    iput p1, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mRepateMode:I

    .line 68
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorElement;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 71
    :cond_0
    return-void
.end method

.method public setRepeatMode(Ljava/lang/String;)V
    .locals 1
    .parameter "repateMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/AnimatorElement;->setRepeatMode(I)V

    .line 75
    return-void
.end method
