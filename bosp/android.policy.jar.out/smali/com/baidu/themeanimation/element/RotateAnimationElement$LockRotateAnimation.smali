.class public Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;
.super Landroid/view/animation/Animation;
.source "RotateAnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/RotateAnimationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LockRotateAnimation"
.end annotation


# instance fields
.field private mCurrentStage:I

.field private mPivotX:I

.field private mPivotXValue:I

.field private mPivotY:I

.field private mPivotYValue:I

.field final synthetic this$0:Lcom/baidu/themeanimation/element/RotateAnimationElement;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/element/RotateAnimationElement;II)V
    .locals 1
    .parameter
    .parameter "pivotX"
    .parameter "pivotY"

    .prologue
    const/4 v0, 0x0

    .line 119
    iput-object p1, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->this$0:Lcom/baidu/themeanimation/element/RotateAnimationElement;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 111
    iput v0, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->mPivotX:I

    .line 112
    iput v0, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->mPivotY:I

    .line 114
    iput v0, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->mPivotXValue:I

    .line 115
    iput v0, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->mPivotYValue:I

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->mCurrentStage:I

    .line 120
    iput p2, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->mPivotX:I

    .line 121
    iput p3, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->mPivotY:I

    .line 122
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 12
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/4 v8, 0x1

    .line 136
    iget-object v6, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->this$0:Lcom/baidu/themeanimation/element/RotateAnimationElement;

    invoke-virtual {v6}, Lcom/baidu/themeanimation/element/RotateAnimationElement;->getEndTime()J

    move-result-wide v6

    long-to-float v6, v6

    mul-float v4, p1, v6

    .line 139
    .local v4, time:F
    iget v6, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->mCurrentStage:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 140
    iput v8, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->mCurrentStage:I

    .line 142
    :cond_0
    iget-object v6, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->this$0:Lcom/baidu/themeanimation/element/RotateAnimationElement;

    iget-object v6, v6, Lcom/baidu/themeanimation/element/RotateAnimationElement;->mKeyFrames:Ljava/util/List;

    iget v7, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->mCurrentStage:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v6}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v6

    long-to-float v6, v6

    cmpg-float v6, v4, v6

    if-gtz v6, :cond_4

    .line 143
    iget v2, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->mCurrentStage:I

    .local v2, i:I
    :goto_0
    if-le v2, v8, :cond_1

    .line 144
    iget-object v6, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->this$0:Lcom/baidu/themeanimation/element/RotateAnimationElement;

    iget-object v6, v6, Lcom/baidu/themeanimation/element/RotateAnimationElement;->mKeyFrames:Ljava/util/List;

    add-int/lit8 v7, v2, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v6}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v6

    long-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_3

    .line 156
    :cond_1
    iget v6, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->mCurrentStage:I

    if-eq v6, v2, :cond_2

    .line 157
    iput v2, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->mCurrentStage:I

    .line 159
    :cond_2
    iget-object v6, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->this$0:Lcom/baidu/themeanimation/element/RotateAnimationElement;

    iget-object v6, v6, Lcom/baidu/themeanimation/element/RotateAnimationElement;->mKeyFrames:Ljava/util/List;

    add-int/lit8 v7, v2, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;

    .line 160
    .local v3, rotateKeyFrame:Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;
    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;->getAngle()I

    move-result v1

    .line 162
    .local v1, fromDegrees:I
    iget-object v6, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->this$0:Lcom/baidu/themeanimation/element/RotateAnimationElement;

    iget-object v6, v6, Lcom/baidu/themeanimation/element/RotateAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #rotateKeyFrame:Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;
    check-cast v3, Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;

    .line 163
    .restart local v3       #rotateKeyFrame:Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;
    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;->getAngle()I

    move-result v5

    .line 165
    .local v5, toDegrees:I
    iget-object v6, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->this$0:Lcom/baidu/themeanimation/element/RotateAnimationElement;

    iget-object v6, v6, Lcom/baidu/themeanimation/element/RotateAnimationElement;->mKeyFrames:Ljava/util/List;

    add-int/lit8 v7, v2, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v6}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v6

    long-to-float v6, v6

    sub-float v7, v4, v6

    iget-object v6, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->this$0:Lcom/baidu/themeanimation/element/RotateAnimationElement;

    iget-object v6, v6, Lcom/baidu/themeanimation/element/RotateAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v6}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v8

    iget-object v6, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->this$0:Lcom/baidu/themeanimation/element/RotateAnimationElement;

    iget-object v6, v6, Lcom/baidu/themeanimation/element/RotateAnimationElement;->mKeyFrames:Ljava/util/List;

    add-int/lit8 v10, v2, -0x1

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v6}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-float v6, v8

    div-float v0, v7, v6

    .line 168
    .local v0, factor:F
    int-to-float v6, v1

    sub-int v7, v5, v1

    int-to-float v7, v7

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    float-to-int v1, v6

    .line 174
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    int-to-float v7, v1

    iget v8, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->mPivotXValue:I

    int-to-float v8, v8

    iget v9, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->mPivotYValue:I

    int-to-float v9, v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 175
    return-void

    .line 143
    .end local v0           #factor:F
    .end local v1           #fromDegrees:I
    .end local v3           #rotateKeyFrame:Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;
    .end local v5           #toDegrees:I
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 149
    .end local v2           #i:I
    :cond_4
    iget v6, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->mCurrentStage:I

    add-int/lit8 v2, v6, 0x1

    .restart local v2       #i:I
    :goto_1
    iget-object v6, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->this$0:Lcom/baidu/themeanimation/element/RotateAnimationElement;

    iget-object v6, v6, Lcom/baidu/themeanimation/element/RotateAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 150
    iget-object v6, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->this$0:Lcom/baidu/themeanimation/element/RotateAnimationElement;

    iget-object v6, v6, Lcom/baidu/themeanimation/element/RotateAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v6}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v6

    long-to-float v6, v6

    cmpg-float v6, v4, v6

    if-lez v6, :cond_1

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public initialize(IIII)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 180
    iget v0, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->mPivotX:I

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0, p1, p3}, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->resolveSize(IFII)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->mPivotXValue:I

    .line 181
    iget v0, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->mPivotY:I

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0, p2, p4}, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->resolveSize(IFII)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->mPivotYValue:I

    .line 182
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method
