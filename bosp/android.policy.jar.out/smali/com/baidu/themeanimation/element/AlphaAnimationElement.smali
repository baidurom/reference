.class public Lcom/baidu/themeanimation/element/AlphaAnimationElement;
.super Lcom/baidu/themeanimation/element/AnimationElement;
.source "AlphaAnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;,
        Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AlphaAnimationElement"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/AnimationElement;-><init>()V

    .line 110
    return-void
.end method


# virtual methods
.method public createElement(Ljava/lang/String;)Lcom/baidu/themeanimation/element/Element;
    .locals 1
    .parameter "tagName"

    .prologue
    .line 24
    new-instance v0, Lcom/baidu/themeanimation/element/AlphaAnimationElement;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/AlphaAnimationElement;-><init>()V

    return-object v0
.end method

.method public generateAnimations(Lcom/baidu/themeanimation/element/VisibleElement;)Landroid/view/animation/Animation;
    .locals 13
    .parameter "element"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-wide/16 v9, 0x0

    .line 50
    const/4 v6, 0x0

    .line 53
    .local v6, lockAlphaAnimation:Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;
    iget-object v7, p0, Lcom/baidu/themeanimation/element/AlphaAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 54
    .local v1, count:I
    if-lez v1, :cond_2

    if-eqz p1, :cond_2

    .line 57
    iget-object v7, p0, Lcom/baidu/themeanimation/element/AlphaAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;

    .line 58
    .local v5, keyFrame:Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;
    invoke-virtual {v5}, Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;->getTime()J

    move-result-wide v7

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    .line 59
    new-instance v0, Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;-><init>()V

    .line 60
    .local v0, alphaKeyFrame:Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;
    invoke-virtual {v0, v9, v10}, Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;->setTime(J)V

    .line 61
    const/high16 v7, 0x437f

    invoke-virtual {v0, v7}, Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;->setA(F)V

    .line 62
    iget-object v7, p0, Lcom/baidu/themeanimation/element/AlphaAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7, v11, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 65
    .end local v0           #alphaKeyFrame:Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;
    :cond_0
    new-instance v6, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;

    .end local v6           #lockAlphaAnimation:Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;
    invoke-direct {v6, p0, p1}, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;-><init>(Lcom/baidu/themeanimation/element/AlphaAnimationElement;Lcom/baidu/themeanimation/element/VisibleElement;)V

    .line 67
    .restart local v6       #lockAlphaAnimation:Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;
    invoke-virtual {p0, v9, v10}, Lcom/baidu/themeanimation/element/AlphaAnimationElement;->setStartTime(J)V

    .line 68
    const-wide/16 v2, 0x0

    .line 69
    .local v2, endTime:J
    iget-object v7, p0, Lcom/baidu/themeanimation/element/AlphaAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .local v4, i:I
    :goto_0
    if-ltz v4, :cond_1

    .line 70
    iget-object v7, p0, Lcom/baidu/themeanimation/element/AlphaAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v7}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v7

    const-wide/32 v9, 0x186a0

    cmp-long v7, v7, v9

    if-gez v7, :cond_3

    .line 71
    iget-object v7, p0, Lcom/baidu/themeanimation/element/AlphaAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v7}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v2

    .line 72
    iget-object v7, p0, Lcom/baidu/themeanimation/element/AlphaAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_1

    .line 73
    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;->setRepeatCount(I)V

    .line 74
    invoke-virtual {v6, v12}, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;->setRepeatMode(I)V

    .line 83
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/baidu/themeanimation/element/AlphaAnimationElement;->setEndTime(J)V

    .line 88
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/AlphaAnimationElement;->getEndTime()J

    move-result-wide v7

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/AlphaAnimationElement;->getStartTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;->setDuration(J)V

    .line 90
    .end local v2           #endTime:J
    .end local v4           #i:I
    .end local v5           #keyFrame:Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;
    :cond_2
    return-object v6

    .line 80
    .restart local v2       #endTime:J
    .restart local v4       #i:I
    .restart local v5       #keyFrame:Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;
    :cond_3
    invoke-virtual {v6, v12}, Lcom/baidu/themeanimation/element/AlphaAnimationElement$LockAlphaAnimation;->setFillAfter(Z)V

    .line 69
    add-int/lit8 v4, v4, -0x1

    goto :goto_0
.end method

.method public matchTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 19
    const-string v0, "AlphaAnimation"

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
    const/4 v0, 0x0

    .line 31
    .local v0, alphaKeyFrame:Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 32
    .local v1, eventType:I
    :goto_0
    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    .line 33
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 34
    const-string v3, "Alpha"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    new-instance v0, Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;

    .end local v0           #alphaKeyFrame:Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;
    invoke-direct {v0}, Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;-><init>()V

    .line 36
    .restart local v0       #alphaKeyFrame:Lcom/baidu/themeanimation/element/AlphaAnimationElement$AlphaKeyFrame;
    invoke-static {p1, v0}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    .line 43
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 38
    :cond_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 39
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    :cond_2
    return-object v0
.end method
