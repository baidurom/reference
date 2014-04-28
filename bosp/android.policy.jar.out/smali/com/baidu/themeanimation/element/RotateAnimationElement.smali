.class public Lcom/baidu/themeanimation/element/RotateAnimationElement;
.super Lcom/baidu/themeanimation/element/AnimationElement;
.source "RotateAnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;,
        Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RotateAnimation"


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
    .line 23
    new-instance v0, Lcom/baidu/themeanimation/element/RotateAnimationElement;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/RotateAnimationElement;-><init>()V

    return-object v0
.end method

.method public generateAnimations(Lcom/baidu/themeanimation/element/VisibleElement;)Landroid/view/animation/Animation;
    .locals 13
    .parameter "element"

    .prologue
    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    .line 65
    const/4 v6, 0x0

    .line 66
    .local v6, lockRotateAnimation:Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;
    const-string v8, "rotate"

    const-string v9, "Rotate Generate Animation!"

    invoke-static {v8, v9}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v8, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .line 69
    .local v0, count:I
    if-lez v0, :cond_2

    if-eqz p1, :cond_2

    .line 72
    const/4 v4, 0x0

    .line 73
    .local v4, index:I
    iget-object v8, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;

    .line 74
    .local v5, keyFrame:Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;
    invoke-virtual {v5}, Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;->getTime()J

    move-result-wide v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 75
    new-instance v7, Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;

    invoke-direct {v7}, Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;-><init>()V

    .line 76
    .local v7, rotateKeyFrame:Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;
    invoke-virtual {v7, v10, v11}, Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;->setTime(J)V

    .line 77
    invoke-virtual {v7, v12}, Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;->setAngle(I)V

    .line 78
    iget-object v8, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8, v12, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 81
    .end local v7           #rotateKeyFrame:Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;
    :cond_0
    new-instance v6, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;

    .end local v6           #lockRotateAnimation:Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/VisibleElement;->getCenterX()I

    move-result v8

    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/VisibleElement;->getCenterY()I

    move-result v9

    invoke-direct {v6, p0, v8, v9}, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;-><init>(Lcom/baidu/themeanimation/element/RotateAnimationElement;II)V

    .line 84
    .restart local v6       #lockRotateAnimation:Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;
    invoke-virtual {p0, v10, v11}, Lcom/baidu/themeanimation/element/RotateAnimationElement;->setStartTime(J)V

    .line 85
    const-wide/16 v1, 0x0

    .line 86
    .local v1, endTime:J
    iget-object v8, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_1

    .line 87
    iget-object v8, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v8}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v8

    const-wide/32 v10, 0x186a0

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    .line 88
    iget-object v8, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v8}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v1

    .line 89
    iget-object v8, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v3, v8, :cond_1

    .line 90
    const/4 v8, -0x1

    invoke-virtual {v6, v8}, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->setRepeatCount(I)V

    .line 91
    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->setRepeatMode(I)V

    .line 100
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/baidu/themeanimation/element/RotateAnimationElement;->setEndTime(J)V

    .line 102
    const-string v8, "RotateAnimation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  generate rotate animation startTime="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/RotateAnimationElement;->getStartTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", endTime="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/RotateAnimationElement;->getEndTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/RotateAnimationElement;->getEndTime()J

    move-result-wide v8

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/RotateAnimationElement;->getStartTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->setDuration(J)V

    .line 107
    .end local v1           #endTime:J
    .end local v3           #i:I
    .end local v4           #index:I
    .end local v5           #keyFrame:Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;
    :cond_2
    return-object v6

    .line 96
    .restart local v1       #endTime:J
    .restart local v3       #i:I
    .restart local v4       #index:I
    .restart local v5       #keyFrame:Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;
    :cond_3
    const-string v8, "RotateAnimation"

    const-string v9, "This is a once animation!"

    invoke-static {v8, v9}, Lcom/baidu/themeanimation/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/baidu/themeanimation/element/RotateAnimationElement$LockRotateAnimation;->setFillAfter(Z)V

    .line 86
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method public matchTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 18
    const-string v0, "RotationAnimation"

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
    .line 28
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, tagName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 30
    .local v1, rotateKeyFrame:Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 31
    .local v0, eventType:I
    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    .line 32
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 33
    const-string v3, "Rotation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    new-instance v1, Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;

    .end local v1           #rotateKeyFrame:Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;
    invoke-direct {v1}, Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;-><init>()V

    .line 35
    .restart local v1       #rotateKeyFrame:Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;
    invoke-static {p1, v1}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    .line 42
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 37
    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 38
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    :cond_2
    return-object v1
.end method
