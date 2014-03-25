.class public Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;
.super Landroid/view/animation/Animation;
.source "SourceAnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/SourceAnimationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LockSourceAnimation"
.end annotation


# instance fields
.field private mBitmapNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentStage:I

.field private mElement:Lcom/baidu/themeanimation/element/VisibleElement;

.field final synthetic this$0:Lcom/baidu/themeanimation/element/SourceAnimationElement;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/element/SourceAnimationElement;Lcom/baidu/themeanimation/element/VisibleElement;)V
    .locals 4
    .parameter
    .parameter "element"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->this$0:Lcom/baidu/themeanimation/element/SourceAnimationElement;

    .line 140
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 136
    const/4 v2, -0x1

    iput v2, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mCurrentStage:I

    .line 141
    iput-object p2, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mElement:Lcom/baidu/themeanimation/element/VisibleElement;

    .line 142
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mBitmapNames:Ljava/util/List;

    .line 145
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p1, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 146
    iget-object v2, p1, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;->getSrc()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, src:Ljava/lang/String;
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/baidu/themeanimation/util/FileUtil;->cacheBitmap(Ljava/lang/String;I)V

    .line 148
    iget-object v2, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mBitmapNames:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    .end local v1           #src:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 158
    iget-object v4, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mElement:Lcom/baidu/themeanimation/element/VisibleElement;

    if-eqz v4, :cond_2

    .line 159
    iget-object v4, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mElement:Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/VisibleElement;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    .line 160
    .local v3, view:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;
    if-eqz v3, :cond_2

    .line 161
    iget-object v4, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->this$0:Lcom/baidu/themeanimation/element/SourceAnimationElement;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/SourceAnimationElement;->getEndTime()J

    move-result-wide v4

    long-to-float v4, v4

    mul-float v2, p1, v4

    .line 166
    .local v2, time:F
    iget v4, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mCurrentStage:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 167
    const/4 v4, 0x1

    iput v4, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mCurrentStage:I

    .line 169
    :cond_0
    iget-object v4, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->this$0:Lcom/baidu/themeanimation/element/SourceAnimationElement;

    iget-object v4, v4, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mKeyFrames:Ljava/util/List;

    iget v5, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mCurrentStage:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v4

    long-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_4

    .line 170
    iget v1, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mCurrentStage:I

    .local v1, i:I
    :goto_0
    if-lez v1, :cond_1

    .line 171
    iget-object v4, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->this$0:Lcom/baidu/themeanimation/element/SourceAnimationElement;

    iget-object v4, v4, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mKeyFrames:Ljava/util/List;

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v4

    long-to-float v4, v4

    cmpl-float v4, v2, v4

    if-lez v4, :cond_3

    .line 183
    :cond_1
    iget v4, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mCurrentStage:I

    if-eq v4, v1, :cond_2

    .line 184
    iput v1, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mCurrentStage:I

    .line 186
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v5

    iget-object v4, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mBitmapNames:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/baidu/themeanimation/util/FileUtil;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 187
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 188
    invoke-virtual {v3, v0}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->setImage(Landroid/graphics/Bitmap;)V

    .line 191
    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 192
    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 193
    iget-object v4, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mElement:Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/VisibleElement;->getX()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mElement:Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/VisibleElement;->getY()I

    move-result v4

    if-nez v4, :cond_2

    .line 194
    iget-object v5, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mElement:Lcom/baidu/themeanimation/element/VisibleElement;

    iget-object v4, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->this$0:Lcom/baidu/themeanimation/element/SourceAnimationElement;

    iget-object v4, v4, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getX()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/baidu/themeanimation/element/VisibleElement;->setX(I)V

    .line 195
    iget-object v5, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mElement:Lcom/baidu/themeanimation/element/VisibleElement;

    iget-object v4, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->this$0:Lcom/baidu/themeanimation/element/SourceAnimationElement;

    iget-object v4, v4, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getY()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/baidu/themeanimation/element/VisibleElement;->setY(I)V

    .line 213
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #i:I
    .end local v2           #time:F
    .end local v3           #view:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;
    :cond_2
    return-void

    .line 170
    .restart local v1       #i:I
    .restart local v2       #time:F
    .restart local v3       #view:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 176
    .end local v1           #i:I
    :cond_4
    iget v4, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mCurrentStage:I

    add-int/lit8 v1, v4, 0x1

    .restart local v1       #i:I
    :goto_1
    iget-object v4, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->this$0:Lcom/baidu/themeanimation/element/SourceAnimationElement;

    iget-object v4, v4, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 177
    iget-object v4, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->this$0:Lcom/baidu/themeanimation/element/SourceAnimationElement;

    iget-object v4, v4, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v4

    long-to-float v4, v4

    cmpg-float v4, v2, v4

    if-lez v4, :cond_1

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getElement()Lcom/baidu/themeanimation/element/VisibleElement;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->mElement:Lcom/baidu/themeanimation/element/VisibleElement;

    return-object v0
.end method
