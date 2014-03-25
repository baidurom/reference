.class public Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;
.super Landroid/view/animation/Animation;
.source "PositionAnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/PositionAnimationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LockTranslateAnimation"
.end annotation


# instance fields
.field private mCurrentStage:I

.field final synthetic this$0:Lcom/baidu/themeanimation/element/PositionAnimationElement;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/element/PositionAnimationElement;)V
    .locals 1
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;->this$0:Lcom/baidu/themeanimation/element/PositionAnimationElement;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;->mCurrentStage:I

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 14
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 161
    iget-object v8, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;->this$0:Lcom/baidu/themeanimation/element/PositionAnimationElement;

    invoke-virtual {v8}, Lcom/baidu/themeanimation/element/PositionAnimationElement;->getEndTime()J

    move-result-wide v8

    long-to-float v8, v8

    mul-float v5, p1, v8

    .line 164
    .local v5, time:F
    iget v8, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;->mCurrentStage:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 165
    const/4 v8, 0x1

    iput v8, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;->mCurrentStage:I

    .line 168
    :cond_0
    iget-object v8, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;->this$0:Lcom/baidu/themeanimation/element/PositionAnimationElement;

    iget-object v8, v8, Lcom/baidu/themeanimation/element/PositionAnimationElement;->mKeyFrames:Ljava/util/List;

    iget v9, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;->mCurrentStage:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v8}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v8

    long-to-float v8, v8

    cmpg-float v8, v5, v8

    if-gtz v8, :cond_7

    .line 169
    iget v3, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;->mCurrentStage:I

    .local v3, i:I
    :goto_0
    const/4 v8, 0x1

    if-le v3, v8, :cond_1

    .line 170
    iget-object v8, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;->this$0:Lcom/baidu/themeanimation/element/PositionAnimationElement;

    iget-object v8, v8, Lcom/baidu/themeanimation/element/PositionAnimationElement;->mKeyFrames:Ljava/util/List;

    add-int/lit8 v9, v3, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v8}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v8

    long-to-float v8, v8

    cmpl-float v8, v5, v8

    if-lez v8, :cond_6

    .line 182
    :cond_1
    iget v8, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;->mCurrentStage:I

    if-eq v8, v3, :cond_2

    .line 183
    iput v3, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;->mCurrentStage:I

    .line 185
    :cond_2
    iget-object v8, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;->this$0:Lcom/baidu/themeanimation/element/PositionAnimationElement;

    iget-object v8, v8, Lcom/baidu/themeanimation/element/PositionAnimationElement;->mKeyFrames:Ljava/util/List;

    add-int/lit8 v9, v3, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;

    .line 187
    .local v4, positionKeyFrame:Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;
    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;->getX()I

    move-result v1

    .line 188
    .local v1, fromXDelta:I
    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;->getY()I

    move-result v2

    .line 190
    .local v2, fromYDelta:I
    iget-object v8, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;->this$0:Lcom/baidu/themeanimation/element/PositionAnimationElement;

    iget-object v8, v8, Lcom/baidu/themeanimation/element/PositionAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #positionKeyFrame:Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;
    check-cast v4, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;

    .line 192
    .restart local v4       #positionKeyFrame:Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;
    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;->getX()I

    move-result v6

    .line 193
    .local v6, toXDelta:I
    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;->getY()I

    move-result v7

    .line 195
    .local v7, toYDelta:I
    iget-object v8, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;->this$0:Lcom/baidu/themeanimation/element/PositionAnimationElement;

    iget-object v8, v8, Lcom/baidu/themeanimation/element/PositionAnimationElement;->mKeyFrames:Ljava/util/List;

    add-int/lit8 v9, v3, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v8}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v8

    long-to-float v8, v8

    sub-float v9, v5, v8

    iget-object v8, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;->this$0:Lcom/baidu/themeanimation/element/PositionAnimationElement;

    iget-object v8, v8, Lcom/baidu/themeanimation/element/PositionAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v8}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v10

    iget-object v8, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;->this$0:Lcom/baidu/themeanimation/element/PositionAnimationElement;

    iget-object v8, v8, Lcom/baidu/themeanimation/element/PositionAnimationElement;->mKeyFrames:Ljava/util/List;

    add-int/lit8 v12, v3, -0x1

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v8}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    long-to-float v8, v10

    div-float v0, v9, v8

    .line 198
    .local v0, factor:F
    if-eq v1, v6, :cond_3

    .line 199
    int-to-float v8, v1

    sub-int v9, v6, v1

    int-to-float v9, v9

    mul-float/2addr v9, v0

    add-float/2addr v8, v9

    float-to-int v1, v8

    .line 201
    :cond_3
    if-eq v2, v7, :cond_4

    .line 202
    int-to-float v8, v2

    sub-int v9, v7, v2

    int-to-float v9, v9

    mul-float/2addr v9, v0

    add-float/2addr v8, v9

    float-to-int v2, v8

    .line 205
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    int-to-float v9, v1

    int-to-float v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 213
    iget-object v8, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;->this$0:Lcom/baidu/themeanimation/element/PositionAnimationElement;

    #getter for: Lcom/baidu/themeanimation/element/PositionAnimationElement;->mListener:Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimationListener;
    invoke-static {v8}, Lcom/baidu/themeanimation/element/PositionAnimationElement;->access$000(Lcom/baidu/themeanimation/element/PositionAnimationElement;)Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimationListener;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 214
    iget-object v8, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;->this$0:Lcom/baidu/themeanimation/element/PositionAnimationElement;

    #getter for: Lcom/baidu/themeanimation/element/PositionAnimationElement;->mListener:Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimationListener;
    invoke-static {v8}, Lcom/baidu/themeanimation/element/PositionAnimationElement;->access$000(Lcom/baidu/themeanimation/element/PositionAnimationElement;)Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimationListener;

    move-result-object v8

    invoke-interface {v8, v1, v2}, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimationListener;->translateAnimationStage(II)V

    .line 216
    :cond_5
    return-void

    .line 169
    .end local v0           #factor:F
    .end local v1           #fromXDelta:I
    .end local v2           #fromYDelta:I
    .end local v4           #positionKeyFrame:Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;
    .end local v6           #toXDelta:I
    .end local v7           #toYDelta:I
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .line 175
    .end local v3           #i:I
    :cond_7
    iget v8, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;->mCurrentStage:I

    add-int/lit8 v3, v8, 0x1

    .restart local v3       #i:I
    :goto_1
    iget-object v8, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;->this$0:Lcom/baidu/themeanimation/element/PositionAnimationElement;

    iget-object v8, v8, Lcom/baidu/themeanimation/element/PositionAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 176
    iget-object v8, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;->this$0:Lcom/baidu/themeanimation/element/PositionAnimationElement;

    iget-object v8, v8, Lcom/baidu/themeanimation/element/PositionAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v8}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v8

    long-to-float v8, v8

    cmpg-float v8, v5, v8

    if-lez v8, :cond_1

    .line 175
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
