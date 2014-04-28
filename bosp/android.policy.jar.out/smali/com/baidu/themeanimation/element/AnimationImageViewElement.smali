.class public Lcom/baidu/themeanimation/element/AnimationImageViewElement;
.super Lcom/baidu/themeanimation/element/VisibleElement;
.source "AnimationImageViewElement.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimationImageViewElement"


# instance fields
.field private imageview:Landroid/widget/ImageView;

.field private mHasSrcDrawable:Z

.field private mSrcDrawable:Landroid/graphics/Bitmap;

.field private scale:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/VisibleElement;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->mHasSrcDrawable:Z

    .line 27
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->scale:D

    return-void
.end method


# virtual methods
.method public clearAnimations()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/AnimatorParser;->stopAnimations()V

    .line 106
    :cond_0
    return-void
.end method

.method public createElement(Ljava/lang/String;)Lcom/baidu/themeanimation/element/Element;
    .locals 1
    .parameter "tagName"

    .prologue
    .line 36
    new-instance v0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/AnimationImageViewElement;-><init>()V

    return-object v0
.end method

.method public generateView(Landroid/content/Context;Landroid/os/Handler;)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 58
    const-string v1, "AnimationImageViewElement"

    const-string v2, "generateView"

    invoke-static {v1, v2}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->imageview:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->imageview:Landroid/widget/ImageView;

    .line 64
    :cond_0
    iget-boolean v1, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->mHasSrcDrawable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->mSrcDrawable:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->imageview:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->mSrcDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->imageview:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->setView(Landroid/view/View;)V

    .line 69
    iget-object v1, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    if-eqz v1, :cond_2

    .line 70
    iget-object v1, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    iget-object v2, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/baidu/themeanimation/element/AnimatorParser;->generateAnimatorSet(Landroid/view/View;)Landroid/animation/AnimatorSet;

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/AnimatorParser;->getAnimationDrawable()Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 76
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/AnimatorParser;->getAnimationDrawable()Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getIntrinsicWidth()I

    move-result v1

    int-to-double v1, v1

    iget-wide v3, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->scale:D

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iget-object v2, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/AnimatorParser;->getAnimationDrawable()Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->getIntrinsicHeight()I

    move-result v2

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->scale:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 80
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const-string v1, "AnimationImageViewElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "w = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/AnimatorParser;->getAnimationDrawable()Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v1, "AnimationImageViewElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "h = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/AnimatorParser;->getAnimationDrawable()Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    .end local v0           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->updateView()V

    .line 91
    iget-object v1, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->imageview:Landroid/widget/ImageView;

    return-object v1
.end method

.method public matchTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 31
    const-string v0, "AnimationImage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public parseChild(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/Element;
    .locals 3
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, tagName:Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 43
    .local v0, eventType:I
    :goto_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 44
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->getAnimatorParser()Lcom/baidu/themeanimation/element/AnimatorParser;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/baidu/themeanimation/element/AnimatorParser;->inflateAnimatorElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 51
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 46
    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 47
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public setAnimationListener(Lcom/baidu/themeanimation/view/AnimationViewFactory$AnimationListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    invoke-virtual {v0, p1}, Lcom/baidu/themeanimation/element/AnimatorParser;->setAnimationListener(Lcom/baidu/themeanimation/view/AnimationViewFactory$AnimationListener;)V

    .line 128
    return-void
.end method

.method public setScale(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 109
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->scale:D

    .line 110
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 114
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/themeanimation/util/FileUtil;->getElementBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->mSrcDrawable:Landroid/graphics/Bitmap;

    .line 116
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->mSrcDrawable:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->mHasSrcDrawable:Z

    .line 118
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->imageview:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->imageview:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->mSrcDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->mHasSrcDrawable:Z

    .line 124
    :cond_0
    return-void
.end method

.method public startAnimations()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimationImageViewElement;->mAnimatorParser:Lcom/baidu/themeanimation/element/AnimatorParser;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/AnimatorParser;->startAnimations()V

    .line 99
    :cond_0
    return-void
.end method
