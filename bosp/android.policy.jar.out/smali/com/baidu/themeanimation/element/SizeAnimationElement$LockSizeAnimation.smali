.class public Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;
.super Landroid/view/animation/Animation;
.source "SizeAnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/SizeAnimationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LockSizeAnimation"
.end annotation


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mCurrentStage:I

.field private mHeight:I

.field private mPivotX:F

.field private mPivotXValue:F

.field private mPivotY:F

.field private mPivotYValue:F

.field private mWidth:I

.field final synthetic this$0:Lcom/baidu/themeanimation/element/SizeAnimationElement;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/element/SizeAnimationElement;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 147
    iput-object p1, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->this$0:Lcom/baidu/themeanimation/element/SizeAnimationElement;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 148
    iput v0, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mCenterX:I

    .line 149
    iput v0, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mCenterY:I

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mCurrentStage:I

    .line 189
    iput v1, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mPivotXValue:F

    .line 190
    iput v1, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mPivotX:F

    .line 199
    iput v1, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mPivotYValue:F

    .line 200
    iput v1, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mPivotY:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 17
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 208
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->this$0:Lcom/baidu/themeanimation/element/SizeAnimationElement;

    invoke-virtual {v11}, Lcom/baidu/themeanimation/element/SizeAnimationElement;->getEndTime()J

    move-result-wide v11

    long-to-float v11, v11

    mul-float v8, p1, v11

    .line 212
    .local v8, time:F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mCurrentStage:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    .line 213
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mCurrentStage:I

    .line 215
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->this$0:Lcom/baidu/themeanimation/element/SizeAnimationElement;

    iget-object v11, v11, Lcom/baidu/themeanimation/element/SizeAnimationElement;->mKeyFrames:Ljava/util/List;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mCurrentStage:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v11}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v11

    long-to-float v11, v11

    cmpg-float v11, v8, v11

    if-gtz v11, :cond_4

    .line 216
    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mCurrentStage:I

    .local v4, i:I
    :goto_0
    const/4 v11, 0x1

    if-le v4, v11, :cond_1

    .line 217
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->this$0:Lcom/baidu/themeanimation/element/SizeAnimationElement;

    iget-object v11, v11, Lcom/baidu/themeanimation/element/SizeAnimationElement;->mKeyFrames:Ljava/util/List;

    add-int/lit8 v12, v4, -0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v11}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v11

    long-to-float v11, v11

    cmpl-float v11, v8, v11

    if-lez v11, :cond_3

    .line 229
    :cond_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mCurrentStage:I

    if-eq v11, v4, :cond_2

    .line 230
    move-object/from16 v0, p0

    iput v4, v0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mCurrentStage:I

    .line 232
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->this$0:Lcom/baidu/themeanimation/element/SizeAnimationElement;

    iget-object v11, v11, Lcom/baidu/themeanimation/element/SizeAnimationElement;->mKeyFrames:Ljava/util/List;

    add-int/lit8 v12, v4, -0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;

    .line 234
    .local v7, sizeKeyFrame:Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;
    invoke-virtual {v7}, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;->getW()I

    move-result v3

    .line 235
    .local v3, fromW:I
    invoke-virtual {v7}, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;->getH()I

    move-result v2

    .line 237
    .local v2, fromH:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->this$0:Lcom/baidu/themeanimation/element/SizeAnimationElement;

    iget-object v11, v11, Lcom/baidu/themeanimation/element/SizeAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #sizeKeyFrame:Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;
    check-cast v7, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;

    .line 239
    .restart local v7       #sizeKeyFrame:Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->this$0:Lcom/baidu/themeanimation/element/SizeAnimationElement;

    iget-object v11, v11, Lcom/baidu/themeanimation/element/SizeAnimationElement;->mKeyFrames:Ljava/util/List;

    add-int/lit8 v12, v4, -0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v11}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v11

    long-to-float v11, v11

    sub-float v12, v8, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->this$0:Lcom/baidu/themeanimation/element/SizeAnimationElement;

    iget-object v11, v11, Lcom/baidu/themeanimation/element/SizeAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v11}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->this$0:Lcom/baidu/themeanimation/element/SizeAnimationElement;

    iget-object v11, v11, Lcom/baidu/themeanimation/element/SizeAnimationElement;->mKeyFrames:Ljava/util/List;

    add-int/lit8 v15, v4, -0x1

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v11}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v15

    sub-long/2addr v13, v15

    long-to-float v11, v13

    div-float v1, v12, v11

    .line 242
    .local v1, factor:F
    int-to-float v11, v3

    invoke-virtual {v7}, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;->getW()I

    move-result v12

    sub-int/2addr v12, v3

    int-to-float v12, v12

    mul-float/2addr v12, v1

    add-float/2addr v11, v12

    float-to-int v10, v11

    .line 243
    .local v10, toW:I
    int-to-float v11, v2

    invoke-virtual {v7}, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;->getH()I

    move-result v12

    sub-int/2addr v12, v2

    int-to-float v12, v12

    mul-float/2addr v12, v1

    add-float/2addr v11, v12

    float-to-int v9, v11

    .line 245
    .local v9, toH:I
    int-to-float v11, v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mWidth:I

    int-to-float v12, v12

    div-float v6, v11, v12

    .line 246
    .local v6, scaleW:F
    int-to-float v11, v9

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mHeight:I

    int-to-float v12, v12

    div-float v5, v11, v12

    .line 253
    .local v5, scaleH:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mPivotX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mPivotY:F

    invoke-virtual {v11, v6, v5, v12, v13}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 254
    return-void

    .line 216
    .end local v1           #factor:F
    .end local v2           #fromH:I
    .end local v3           #fromW:I
    .end local v5           #scaleH:F
    .end local v6           #scaleW:F
    .end local v7           #sizeKeyFrame:Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;
    .end local v9           #toH:I
    .end local v10           #toW:I
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_0

    .line 222
    .end local v4           #i:I
    :cond_4
    move-object/from16 v0, p0

    iget v11, v0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mCurrentStage:I

    add-int/lit8 v4, v11, 0x1

    .restart local v4       #i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->this$0:Lcom/baidu/themeanimation/element/SizeAnimationElement;

    iget-object v11, v11, Lcom/baidu/themeanimation/element/SizeAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_1

    .line 223
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->this$0:Lcom/baidu/themeanimation/element/SizeAnimationElement;

    iget-object v11, v11, Lcom/baidu/themeanimation/element/SizeAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v11}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v11

    long-to-float v11, v11

    cmpg-float v11, v8, v11

    if-lez v11, :cond_1

    .line 222
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public getCenterX()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mCenterX:I

    return v0
.end method

.method public getCenterY()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mCenterY:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mWidth:I

    return v0
.end method

.method public initialize(IIII)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 258
    int-to-float v0, p1

    iget v1, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mPivotXValue:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mPivotX:F

    .line 259
    int-to-float v0, p2

    iget v1, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mPivotYValue:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mPivotY:F

    .line 260
    return-void
.end method

.method public setCenterX(I)V
    .locals 0
    .parameter "centerX"

    .prologue
    .line 175
    iput p1, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mCenterX:I

    .line 176
    return-void
.end method

.method public setCenterY(I)V
    .locals 0
    .parameter "centerY"

    .prologue
    .line 183
    iput p1, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mCenterY:I

    .line 184
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 167
    iput p1, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mHeight:I

    .line 168
    return-void
.end method

.method public setPivotX(F)V
    .locals 0
    .parameter "pivotX"

    .prologue
    .line 193
    iput p1, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mPivotXValue:F

    .line 194
    return-void
.end method

.method public setPivotY(F)V
    .locals 0
    .parameter "pivotY"

    .prologue
    .line 203
    iput p1, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mPivotYValue:F

    .line 204
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 159
    iput p1, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->mWidth:I

    .line 160
    return-void
.end method
