.class public Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;
.super Landroid/graphics/drawable/AnimationDrawable;
.source "AnimatorDrawableElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/AnimatorDrawableElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SourceAnimation"
.end annotation


# instance fields
.field mAnimatorListener:Lcom/baidu/themeanimation/view/AnimationViewFactory$AnimationListener;

.field mIsFinish:Z

.field mSelectNums:I

.field final synthetic this$0:Lcom/baidu/themeanimation/element/AnimatorDrawableElement;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/element/AnimatorDrawableElement;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 142
    iput-object p1, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;->this$0:Lcom/baidu/themeanimation/element/AnimatorDrawableElement;

    invoke-direct {p0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 145
    iput-boolean v0, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;->mIsFinish:Z

    .line 146
    iput v0, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;->mSelectNums:I

    return-void
.end method


# virtual methods
.method public selectDrawable(I)Z
    .locals 3
    .parameter "idx"

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    move-result v0

    .line 156
    .local v0, ret:Z
    iget-object v1, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;->mAnimatorListener:Lcom/baidu/themeanimation/view/AnimationViewFactory$AnimationListener;

    if-eqz v1, :cond_1

    .line 157
    iget v1, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;->mSelectNums:I

    if-nez v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;->mAnimatorListener:Lcom/baidu/themeanimation/view/AnimationViewFactory$AnimationListener;

    invoke-interface {v1}, Lcom/baidu/themeanimation/view/AnimationViewFactory$AnimationListener;->onAnimationStart()V

    .line 162
    :cond_0
    :goto_0
    iget v1, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;->mSelectNums:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;->mSelectNums:I

    .line 163
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;->getNumberOfFrames()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    .line 164
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;->mIsFinish:Z

    .line 165
    iget-object v1, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;->mAnimatorListener:Lcom/baidu/themeanimation/view/AnimationViewFactory$AnimationListener;

    invoke-interface {v1}, Lcom/baidu/themeanimation/view/AnimationViewFactory$AnimationListener;->onAnimationEnd()V

    .line 168
    :cond_1
    return v0

    .line 159
    :cond_2
    iget v1, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;->mSelectNums:I

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;->getNumberOfFrames()I

    move-result v2

    rem-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;->mAnimatorListener:Lcom/baidu/themeanimation/view/AnimationViewFactory$AnimationListener;

    invoke-interface {v1}, Lcom/baidu/themeanimation/view/AnimationViewFactory$AnimationListener;->onAnimationRepeat()V

    goto :goto_0
.end method

.method public setAnimatorListener(Lcom/baidu/themeanimation/view/AnimationViewFactory$AnimationListener;)V
    .locals 0
    .parameter "animatorListener"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;->mAnimatorListener:Lcom/baidu/themeanimation/view/AnimationViewFactory$AnimationListener;

    .line 150
    return-void
.end method
