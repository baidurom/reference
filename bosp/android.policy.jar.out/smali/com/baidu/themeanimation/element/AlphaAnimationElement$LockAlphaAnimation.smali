.class public Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;
.super Landroid/view/animation/Animation;
.source "AlphaAnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/AlphaAnimationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LockAlphaAnimation"
.end annotation


# instance fields
.field private mCurrentStage:I

.field final synthetic this$0:Lcom/baidu/themeanimation/element/AlphaAnimationElement;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/element/AlphaAnimationElement;Lcom/baidu/themeanimation/element/VisibleElement;)V
    .locals 1
    .parameter
    .parameter "element"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;->this$0:Lcom/baidu/themeanimation/element/AlphaAnimationElement;

    .line 112
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;->mCurrentStage:I

    .line 113
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 12
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/4 v8, 0x1

    .line 119
    iget-object v6, p0, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;->this$0:Lcom/baidu/themeanimation/element/AlphaAnimationElement;

    invoke-virtual {v6}, Lcom/baidu/themeanimation/element/AlphaAnimationElement;->getEndTime()J

    move-result-wide v6

    long-to-float v6, v6

    mul-float v4, p1, v6

    .line 122
    .local v4, time:F
    iget v6, p0, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;->mCurrentStage:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 123
    iput v8, p0, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;->mCurrentStage:I

    .line 125
    :cond_0
    iget-object v6, p0, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;->this$0:Lcom/baidu/themeanimation/element/AlphaAnimationElement;

    iget-object v6, v6, Lcom/baidu/themeanimation/element/AlphaAnimationElement;->mKeyFrames:Ljava/util/List;

    iget v7, p0, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;->mCurrentStage:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v6}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v6

    long-to-float v6, v6

    cmpg-float v6, v4, v6

    if-gtz v6, :cond_4

    .line 126
    iget v3, p0, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;->mCurrentStage:I

    .local v3, i:I
    :goto_0
    if-le v3, v8, :cond_1

    .line 127
    iget-object v6, p0, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;->this$0:Lcom/baidu/themeanimation/element/AlphaAnimationElement;

    iget-object v6, v6, Lcom/baidu/themeanimation/element/AlphaAnimationElement;->mKeyFrames:Ljava/util/List;

    add-int/lit8 v7, v3, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v6}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v6

    long-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_3

    .line 139
    :cond_1
    iget v6, p0, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;->mCurrentStage:I

    if-eq v6, v3, :cond_2

    .line 140
    iput v3, p0, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;->mCurrentStage:I

    .line 145
    :cond_2
    iget-object v6, p0, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;->this$0:Lcom/baidu/themeanimation/element/AlphaAnimationElement;

    iget-object v6, v6, Lcom/baidu/themeanimation/element/AlphaAnimationElement;->mKeyFrames:Ljava/util/List;

    add-int/lit8 v7, v3, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;

    .line 146
    .local v0, alphaKeyFrame:Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;->getA()F

    move-result v2

    .line 148
    .local v2, fromAlpha:F
    iget-object v6, p0, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;->this$0:Lcom/baidu/themeanimation/element/AlphaAnimationElement;

    iget-object v6, v6, Lcom/baidu/themeanimation/element/AlphaAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #alphaKeyFrame:Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;
    check-cast v0, Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;

    .line 149
    .restart local v0       #alphaKeyFrame:Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;->getA()F

    move-result v5

    .line 151
    .local v5, toAlpha:F
    iget-object v6, p0, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;->this$0:Lcom/baidu/themeanimation/element/AlphaAnimationElement;

    iget-object v6, v6, Lcom/baidu/themeanimation/element/AlphaAnimationElement;->mKeyFrames:Ljava/util/List;

    add-int/lit8 v7, v3, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v6}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v6

    long-to-float v6, v6

    sub-float v7, v4, v6

    iget-object v6, p0, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;->this$0:Lcom/baidu/themeanimation/element/AlphaAnimationElement;

    iget-object v6, v6, Lcom/baidu/themeanimation/element/AlphaAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v6}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v8

    iget-object v6, p0, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;->this$0:Lcom/baidu/themeanimation/element/AlphaAnimationElement;

    iget-object v6, v6, Lcom/baidu/themeanimation/element/AlphaAnimationElement;->mKeyFrames:Ljava/util/List;

    add-int/lit8 v10, v3, -0x1

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v6}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-float v6, v8

    div-float v1, v7, v6

    .line 154
    .local v1, factor:F
    sub-float v6, v5, v2

    mul-float/2addr v6, v1

    add-float v5, v2, v6

    .line 159
    invoke-virtual {p2, v5}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 160
    return-void

    .line 126
    .end local v0           #alphaKeyFrame:Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;
    .end local v1           #factor:F
    .end local v2           #fromAlpha:F
    .end local v5           #toAlpha:F
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 132
    .end local v3           #i:I
    :cond_4
    iget v6, p0, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;->mCurrentStage:I

    add-int/lit8 v3, v6, 0x1

    .restart local v3       #i:I
    :goto_1
    iget-object v6, p0, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;->this$0:Lcom/baidu/themeanimation/element/AlphaAnimationElement;

    iget-object v6, v6, Lcom/baidu/themeanimation/element/AlphaAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 133
    iget-object v6, p0, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;->this$0:Lcom/baidu/themeanimation/element/AlphaAnimationElement;

    iget-object v6, v6, Lcom/baidu/themeanimation/element/AlphaAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v6}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v6

    long-to-float v6, v6

    cmpg-float v6, v4, v6

    if-lez v6, :cond_1

    .line 132
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
