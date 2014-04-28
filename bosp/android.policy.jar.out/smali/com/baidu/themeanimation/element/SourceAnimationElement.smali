.class public Lcom/baidu/themeanimation/element/SourceAnimationElement;
.super Lcom/baidu/themeanimation/element/AnimationElement;
.source "SourceAnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;,
        Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SourceAnimation"


# instance fields
.field private mLockSourceAnimation:Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/AnimationElement;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mLockSourceAnimation:Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;

    .line 134
    return-void
.end method


# virtual methods
.method public cacheAnimation()V
    .locals 4

    .prologue
    .line 114
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;->getSrc()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, src:Ljava/lang/String;
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/baidu/themeanimation/util/FileUtil;->cacheBitmap(Ljava/lang/String;I)V

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    .end local v1           #src:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public createElement(Ljava/lang/String;)Lcom/baidu/themeanimation/element/Element;
    .locals 1
    .parameter "tagName"

    .prologue
    .line 29
    new-instance v0, Lcom/baidu/themeanimation/element/SourceAnimationElement;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/SourceAnimationElement;-><init>()V

    return-object v0
.end method

.method public generateAnimations(Lcom/baidu/themeanimation/element/VisibleElement;)Landroid/view/animation/Animation;
    .locals 14
    .parameter "element"

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 58
    iget-object v7, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mLockSourceAnimation:Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mLockSourceAnimation:Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;

    invoke-virtual {v7}, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->getElement()Lcom/baidu/themeanimation/element/VisibleElement;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 59
    :cond_0
    iget-object v7, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    .line 60
    .local v0, count:I
    if-lez v0, :cond_5

    if-eqz p1, :cond_5

    .line 63
    iget-object v7, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;

    .line 64
    .local v5, keyFrame:Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;
    invoke-virtual {v5}, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;->getTime()J

    move-result-wide v7

    cmp-long v7, v7, v12

    if-eqz v7, :cond_2

    .line 65
    new-instance v6, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;

    invoke-direct {v6}, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;-><init>()V

    .line 66
    .local v6, sourceKeyFrame:Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;
    invoke-virtual {v6, v12, v13}, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;->setTime(J)V

    .line 67
    invoke-virtual {v5}, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;->getSrc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;->setSrc(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v6}, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;->getX()I

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;->getY()I

    move-result v7

    if-nez v7, :cond_1

    .line 69
    invoke-virtual {v5}, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;->getX()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;->setX(I)V

    .line 70
    invoke-virtual {v5}, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;->getY()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;->setY(I)V

    .line 72
    :cond_1
    iget-object v7, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7, v9, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 75
    .end local v6           #sourceKeyFrame:Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;
    :cond_2
    new-instance v7, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;

    invoke-direct {v7, p0, p1}, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;-><init>(Lcom/baidu/themeanimation/element/SourceAnimationElement;Lcom/baidu/themeanimation/element/VisibleElement;)V

    iput-object v7, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mLockSourceAnimation:Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;

    .line 77
    invoke-virtual {p0, v12, v13}, Lcom/baidu/themeanimation/element/SourceAnimationElement;->setStartTime(J)V

    .line 78
    const-wide/16 v1, 0x0

    .line 79
    .local v1, endTime:J
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 80
    .local v4, isOnceAnimationBoolean:Ljava/lang/Boolean;
    iget-object v7, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_3

    .line 81
    iget-object v7, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v7}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v7

    const-wide/32 v9, 0x186a0

    cmp-long v7, v7, v9

    if-gez v7, :cond_6

    .line 82
    iget-object v7, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v7}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v1

    .line 83
    iget-object v7, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v3, v7, :cond_3

    .line 84
    iget-object v7, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mLockSourceAnimation:Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->setRepeatCount(I)V

    .line 85
    iget-object v7, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mLockSourceAnimation:Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;

    invoke-virtual {v7, v11}, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->setRepeatMode(I)V

    .line 96
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 97
    const-wide/16 v7, 0x1

    add-long/2addr v1, v7

    .line 100
    :cond_4
    invoke-virtual {p0, v1, v2}, Lcom/baidu/themeanimation/element/SourceAnimationElement;->setEndTime(J)V

    .line 105
    iget-object v7, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mLockSourceAnimation:Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/SourceAnimationElement;->getEndTime()J

    move-result-wide v8

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/SourceAnimationElement;->getStartTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->setDuration(J)V

    .line 110
    .end local v0           #count:I
    .end local v1           #endTime:J
    .end local v3           #i:I
    .end local v4           #isOnceAnimationBoolean:Ljava/lang/Boolean;
    .end local v5           #keyFrame:Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;
    :cond_5
    iget-object v7, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mLockSourceAnimation:Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;

    return-object v7

    .line 91
    .restart local v0       #count:I
    .restart local v1       #endTime:J
    .restart local v3       #i:I
    .restart local v4       #isOnceAnimationBoolean:Ljava/lang/Boolean;
    .restart local v5       #keyFrame:Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;
    :cond_6
    iget-object v7, p0, Lcom/baidu/themeanimation/element/SourceAnimationElement;->mLockSourceAnimation:Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;

    invoke-virtual {v7, v11}, Lcom/baidu/themeanimation/element/SourceAnimationElement$LockSourceAnimation;->setFillAfter(Z)V

    .line 92
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 80
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method public matchTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 24
    const-string v0, "SourcesAnimation"

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
    .line 34
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, tagName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 36
    .local v1, sourceKeyFrame:Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 37
    .local v0, eventType:I
    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    .line 38
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 39
    const-string v3, "Source"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    new-instance v1, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;

    .end local v1           #sourceKeyFrame:Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;
    invoke-direct {v1}, Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;-><init>()V

    .line 41
    .restart local v1       #sourceKeyFrame:Lcom/baidu/themeanimation/element/SourceAnimationElement$SourceKeyFrame;
    invoke-static {p1, v1}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    .line 48
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 43
    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 44
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    :cond_2
    return-object v1
.end method
