.class public Lcom/baidu/themeanimation/element/AnimatorDrawableElement;
.super Ljava/lang/Object;
.source "AnimatorDrawableElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;,
        Lcom/baidu/themeanimation/element/AnimatorDrawableElement$AnimatorDrawableKeyframe;
    }
.end annotation


# instance fields
.field private mAniDrawable:Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;

.field private mCurrentPvhCount:I

.field private mKeyframes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/themeanimation/element/AnimatorDrawableElement$AnimatorDrawableKeyframe;",
            ">;"
        }
    .end annotation
.end field

.field private oneShot:Z

.field private timeType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->mCurrentPvhCount:I

    .line 42
    iput-boolean v0, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->oneShot:Z

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->timeType:I

    .line 44
    return-void
.end method


# virtual methods
.method public addKeyframes(Ljava/lang/String;I)V
    .locals 2
    .parameter "src"
    .parameter "Fraction"

    .prologue
    .line 59
    iget-object v1, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->mKeyframes:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->mKeyframes:Ljava/util/ArrayList;

    .line 62
    :cond_0
    new-instance v0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$AnimatorDrawableKeyframe;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$AnimatorDrawableKeyframe;-><init>(Lcom/baidu/themeanimation/element/AnimatorDrawableElement;Ljava/lang/String;I)V

    .line 63
    .local v0, keyframe:Lcom/baidu/themeanimation/element/AnimatorDrawableElement$AnimatorDrawableKeyframe;
    iget-object v1, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget v1, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->mCurrentPvhCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->mCurrentPvhCount:I

    .line 65
    return-void
.end method

.method public final formatKeyframeTime(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/themeanimation/element/AnimatorDrawableElement$AnimatorDrawableKeyframe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, keyframes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/themeanimation/element/AnimatorDrawableElement$AnimatorDrawableKeyframe;>;"
    const/4 v3, 0x1

    .line 90
    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$AnimatorDrawableKeyframe;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$AnimatorDrawableKeyframe;->getFraction()I

    move-result v1

    .line 92
    .local v1, total_time:I
    const v2, 0xf4240

    if-le v1, v2, :cond_0

    .line 93
    iput-boolean v3, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->oneShot:Z

    .line 95
    :cond_0
    iget v2, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->timeType:I

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_1

    .line 96
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 97
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$AnimatorDrawableKeyframe;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$AnimatorDrawableKeyframe;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$AnimatorDrawableKeyframe;->getFraction()I

    move-result v4

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$AnimatorDrawableKeyframe;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$AnimatorDrawableKeyframe;->getFraction()I

    move-result v3

    sub-int v3, v4, v3

    invoke-virtual {v2, v3}, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$AnimatorDrawableKeyframe;->setFraction(I)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v0           #i:I
    .end local v1           #total_time:I
    :cond_1
    return-void
.end method

.method public generateAnimatorDrawable(Landroid/view/View;)Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;
    .locals 6
    .parameter "target"

    .prologue
    .line 68
    iget-object v4, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->mKeyframes:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 69
    new-instance v4, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;

    invoke-direct {v4, p0}, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;-><init>(Lcom/baidu/themeanimation/element/AnimatorDrawableElement;)V

    iput-object v4, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->mAniDrawable:Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;

    .line 72
    iget-object v4, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->formatKeyframeTime(Ljava/util/ArrayList;)V

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 74
    .local v3, res:Landroid/content/res/Resources;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 75
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v5

    iget-object v4, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$AnimatorDrawableKeyframe;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$AnimatorDrawableKeyframe;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/baidu/themeanimation/util/FileUtil;->getElementBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 78
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 79
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->mAniDrawable:Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;

    iget-object v4, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$AnimatorDrawableKeyframe;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$AnimatorDrawableKeyframe;->getFraction()I

    move-result v4

    invoke-virtual {v5, v1, v4}, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 80
    const/4 v0, 0x0

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v3, 0x0

    .line 83
    iget-object v4, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->mAniDrawable:Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;

    iget-boolean v5, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->oneShot:Z

    invoke-virtual {v4, v5}, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;->setOneShot(Z)V

    .line 84
    iget-object v4, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->mAniDrawable:Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;

    .line 86
    .end local v2           #i:I
    .end local v3           #res:Landroid/content/res/Resources;
    :goto_1
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getAnimationDrawable()Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->mAniDrawable:Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;

    return-object v0
.end method

.method public getAnimationStatus()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->mAniDrawable:Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->mAniDrawable:Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const/4 v0, 0x1

    .line 176
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public isOneShot()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->oneShot:Z

    return v0
.end method

.method public setAnimatorListener(Lcom/baidu/themeanimation/view/AnimationViewFactory$AnimationListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->mAniDrawable:Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->mAniDrawable:Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;

    invoke-virtual {v0, p1}, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;->setAnimatorListener(Lcom/baidu/themeanimation/view/AnimationViewFactory$AnimationListener;)V

    .line 183
    :cond_0
    return-void
.end method

.method public setOneShot(Ljava/lang/String;)V
    .locals 1
    .parameter "_oneshot"

    .prologue
    .line 33
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->oneShot:Z

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->oneShot:Z

    goto :goto_0
.end method

.method public setOneShot(Z)V
    .locals 0
    .parameter "_oneshot"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->oneShot:Z

    .line 30
    return-void
.end method

.method public setTimeType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 51
    iput p1, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->timeType:I

    .line 52
    return-void
.end method

.method public setTimeType(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->setTimeType(I)V

    .line 48
    return-void
.end method

.method public startAnimations()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->mAniDrawable:Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->mAniDrawable:Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;->start()V

    .line 108
    :cond_0
    return-void
.end method

.method public stopAnimations()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->mAniDrawable:Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->mAniDrawable:Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;->stop()V

    .line 114
    :cond_0
    return-void
.end method
