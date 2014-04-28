.class public Lcom/baidu/themeanimation/element/VariableAnimationElement$LockVarAnimation;
.super Landroid/view/animation/Animation;
.source "VariableAnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/VariableAnimationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LockVarAnimation"
.end annotation


# instance fields
.field private mCurrentStage:I

.field mElement:Lcom/baidu/themeanimation/element/VarElement;

.field final synthetic this$0:Lcom/baidu/themeanimation/element/VariableAnimationElement;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/element/VariableAnimationElement;Lcom/baidu/themeanimation/element/VisibleElement;)V
    .locals 1
    .parameter
    .parameter "element"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/baidu/themeanimation/element/VariableAnimationElement$LockVarAnimation;->this$0:Lcom/baidu/themeanimation/element/VariableAnimationElement;

    .line 116
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/themeanimation/element/VariableAnimationElement$LockVarAnimation;->mCurrentStage:I

    .line 117
    check-cast p2, Lcom/baidu/themeanimation/element/VarElement;

    .end local p2
    iput-object p2, p0, Lcom/baidu/themeanimation/element/VariableAnimationElement$LockVarAnimation;->mElement:Lcom/baidu/themeanimation/element/VarElement;

    .line 118
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/4 v5, 0x1

    .line 124
    iget-object v3, p0, Lcom/baidu/themeanimation/element/VariableAnimationElement$LockVarAnimation;->this$0:Lcom/baidu/themeanimation/element/VariableAnimationElement;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/VariableAnimationElement;->getEndTime()J

    move-result-wide v3

    long-to-float v3, v3

    mul-float v1, p1, v3

    .line 127
    .local v1, time:F
    iget v3, p0, Lcom/baidu/themeanimation/element/VariableAnimationElement$LockVarAnimation;->mCurrentStage:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 128
    iput v5, p0, Lcom/baidu/themeanimation/element/VariableAnimationElement$LockVarAnimation;->mCurrentStage:I

    .line 130
    :cond_0
    iget-object v3, p0, Lcom/baidu/themeanimation/element/VariableAnimationElement$LockVarAnimation;->this$0:Lcom/baidu/themeanimation/element/VariableAnimationElement;

    iget-object v3, v3, Lcom/baidu/themeanimation/element/VariableAnimationElement;->mKeyFrames:Ljava/util/List;

    iget v4, p0, Lcom/baidu/themeanimation/element/VariableAnimationElement$LockVarAnimation;->mCurrentStage:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v3

    long-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_4

    .line 131
    iget v0, p0, Lcom/baidu/themeanimation/element/VariableAnimationElement$LockVarAnimation;->mCurrentStage:I

    .local v0, i:I
    :goto_0
    if-le v0, v5, :cond_1

    .line 132
    iget-object v3, p0, Lcom/baidu/themeanimation/element/VariableAnimationElement$LockVarAnimation;->this$0:Lcom/baidu/themeanimation/element/VariableAnimationElement;

    iget-object v3, v3, Lcom/baidu/themeanimation/element/VariableAnimationElement;->mKeyFrames:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v3

    long-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_3

    .line 144
    :cond_1
    iget v3, p0, Lcom/baidu/themeanimation/element/VariableAnimationElement$LockVarAnimation;->mCurrentStage:I

    if-eq v3, v0, :cond_2

    .line 145
    iput v0, p0, Lcom/baidu/themeanimation/element/VariableAnimationElement$LockVarAnimation;->mCurrentStage:I

    .line 148
    :cond_2
    iget-object v3, p0, Lcom/baidu/themeanimation/element/VariableAnimationElement$LockVarAnimation;->this$0:Lcom/baidu/themeanimation/element/VariableAnimationElement;

    iget-object v3, v3, Lcom/baidu/themeanimation/element/VariableAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/VariableAnimationElement$VarAniFrame;

    .line 149
    .local v2, varKeyFrame:Lcom/baidu/themeanimation/element/VariableAnimationElement$VarAniFrame;
    iget-object v3, p0, Lcom/baidu/themeanimation/element/VariableAnimationElement$LockVarAnimation;->mElement:Lcom/baidu/themeanimation/element/VarElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/VariableAnimationElement$VarAniFrame;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/themeanimation/element/VarElement;->update(Ljava/lang/String;)V

    .line 150
    return-void

    .line 131
    .end local v2           #varKeyFrame:Lcom/baidu/themeanimation/element/VariableAnimationElement$VarAniFrame;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 137
    .end local v0           #i:I
    :cond_4
    iget v3, p0, Lcom/baidu/themeanimation/element/VariableAnimationElement$LockVarAnimation;->mCurrentStage:I

    add-int/lit8 v0, v3, 0x1

    .restart local v0       #i:I
    :goto_1
    iget-object v3, p0, Lcom/baidu/themeanimation/element/VariableAnimationElement$LockVarAnimation;->this$0:Lcom/baidu/themeanimation/element/VariableAnimationElement;

    iget-object v3, v3, Lcom/baidu/themeanimation/element/VariableAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 138
    iget-object v3, p0, Lcom/baidu/themeanimation/element/VariableAnimationElement$LockVarAnimation;->this$0:Lcom/baidu/themeanimation/element/VariableAnimationElement;

    iget-object v3, v3, Lcom/baidu/themeanimation/element/VariableAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v3

    long-to-float v3, v3

    cmpg-float v3, v1, v3

    if-lez v3, :cond_1

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
