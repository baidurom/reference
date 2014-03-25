.class public Lcom/baidu/themeanimation/element/SizeAnimationElement;
.super Lcom/baidu/themeanimation/element/AnimationElement;
.source "SizeAnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;,
        Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SizeAnimation"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/AnimationElement;-><init>()V

    .line 147
    return-void
.end method


# virtual methods
.method public createElement(Ljava/lang/String;)Lcom/baidu/themeanimation/element/Element;
    .locals 1
    .parameter "tagName"

    .prologue
    .line 24
    new-instance v0, Lcom/baidu/themeanimation/element/SizeAnimationElement;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/SizeAnimationElement;-><init>()V

    return-object v0
.end method

.method public generateAnimations(Lcom/baidu/themeanimation/element/VisibleElement;)Landroid/view/animation/Animation;
    .locals 12
    .parameter "element"

    .prologue
    .line 50
    const/4 v6, 0x0

    .line 53
    .local v6, lockSizeAnimation:Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;
    iget-object v8, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .line 54
    .local v0, count:I
    if-lez v0, :cond_3

    if-eqz p1, :cond_3

    .line 57
    const/4 v4, 0x0

    .line 58
    .local v4, index:I
    iget-object v8, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;

    .line 59
    .local v5, keyFrame:Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;
    invoke-virtual {v5}, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 60
    new-instance v7, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;

    invoke-direct {v7}, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;-><init>()V

    .line 61
    .local v7, sizeKeyFrame:Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;
    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;->setTime(J)V

    .line 64
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/VisibleElement;->getW()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;->setW(I)V

    .line 65
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/VisibleElement;->getH()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;->setH(I)V

    .line 66
    iget-object v8, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement;->mKeyFrames:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 69
    .end local v7           #sizeKeyFrame:Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;
    :cond_0
    new-instance v6, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;

    .end local v6           #lockSizeAnimation:Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;
    invoke-direct {v6, p0}, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;-><init>(Lcom/baidu/themeanimation/element/SizeAnimationElement;)V

    .line 70
    .restart local v6       #lockSizeAnimation:Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/VisibleElement;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v6, v8}, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->setWidth(I)V

    .line 71
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/VisibleElement;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v6, v8}, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->setHeight(I)V

    .line 73
    const-wide/16 v8, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/baidu/themeanimation/element/SizeAnimationElement;->setStartTime(J)V

    .line 74
    const-wide/16 v1, 0x0

    .line 75
    .local v1, endTime:J
    iget-object v8, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_1

    .line 76
    iget-object v8, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v8}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v8

    const-wide/32 v10, 0x186a0

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    .line 77
    iget-object v8, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v8}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v1

    .line 78
    iget-object v8, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v3, v8, :cond_1

    .line 79
    const/4 v8, -0x1

    invoke-virtual {v6, v8}, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->setRepeatCount(I)V

    .line 80
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->setRepeatMode(I)V

    .line 89
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/baidu/themeanimation/element/SizeAnimationElement;->setEndTime(J)V

    .line 94
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/SizeAnimationElement;->getEndTime()J

    move-result-wide v8

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/SizeAnimationElement;->getStartTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->setDuration(J)V

    .line 96
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/VisibleElement;->getAlign()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 97
    const/high16 v8, 0x3f00

    invoke-virtual {v6, v8}, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->setPivotX(F)V

    .line 102
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/VisibleElement;->getAlignV()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 103
    const/high16 v8, 0x3f00

    invoke-virtual {v6, v8}, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->setPivotY(F)V

    .line 109
    .end local v1           #endTime:J
    .end local v3           #i:I
    .end local v4           #index:I
    .end local v5           #keyFrame:Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;
    :cond_3
    :goto_2
    return-object v6

    .line 86
    .restart local v1       #endTime:J
    .restart local v3       #i:I
    .restart local v4       #index:I
    .restart local v5       #keyFrame:Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;
    :cond_4
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->setFillAfter(Z)V

    .line 75
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 98
    :cond_5
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/VisibleElement;->getAlign()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 99
    const/high16 v8, 0x3f80

    invoke-virtual {v6, v8}, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->setPivotX(F)V

    goto :goto_1

    .line 104
    :cond_6
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/VisibleElement;->getAlignV()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    .line 105
    const/high16 v8, 0x3f80

    invoke-virtual {v6, v8}, Lcom/baidu/themeanimation/element/SizeAnimationElement$LockSizeAnimation;->setPivotY(F)V

    goto :goto_2
.end method

.method public matchTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 19
    const-string v0, "SizeAnimation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public parseChild(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/Element;
    .locals 4
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, tagName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 31
    .local v1, sizeKeyFrame:Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 32
    .local v0, eventType:I
    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    .line 33
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 34
    const-string v3, "Size"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    new-instance v1, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;

    .end local v1           #sizeKeyFrame:Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;
    invoke-direct {v1}, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;-><init>()V

    .line 36
    .restart local v1       #sizeKeyFrame:Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;
    invoke-static {p1, v1}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    .line 43
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 38
    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 39
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    :cond_2
    return-object v1
.end method
