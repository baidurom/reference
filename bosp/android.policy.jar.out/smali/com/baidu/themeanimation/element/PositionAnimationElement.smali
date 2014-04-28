.class public Lcom/baidu/themeanimation/element/PositionAnimationElement;
.super Lcom/baidu/themeanimation/element/AnimationElement;
.source "PositionAnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;,
        Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimationListener;,
        Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PositionAnimation"


# instance fields
.field isOnceAnimationBoolean:Ljava/lang/Boolean;

.field private mListener:Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimationListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/AnimationElement;-><init>()V

    .line 48
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement;->isOnceAnimationBoolean:Ljava/lang/Boolean;

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement;->mListener:Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimationListener;

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/themeanimation/element/PositionAnimationElement;)Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement;->mListener:Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimationListener;

    return-object v0
.end method


# virtual methods
.method public createElement(Ljava/lang/String;)Lcom/baidu/themeanimation/element/Element;
    .locals 1
    .parameter "tagName"

    .prologue
    .line 24
    new-instance v0, Lcom/baidu/themeanimation/element/PositionAnimationElement;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/PositionAnimationElement;-><init>()V

    return-object v0
.end method

.method public generateAnimations(Lcom/baidu/themeanimation/element/VisibleElement;)Landroid/view/animation/Animation;
    .locals 12
    .parameter "element"

    .prologue
    .line 62
    const/4 v7, 0x0

    .line 64
    .local v7, translateAnimation:Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/element/PositionAnimationElement;->setListener(Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimationListener;)V

    .line 66
    iget-object v8, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .line 67
    .local v0, count:I
    if-lez v0, :cond_3

    if-eqz p1, :cond_3

    .line 70
    const/4 v4, 0x0

    .line 71
    .local v4, index:I
    iget-object v8, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;

    .line 72
    .local v5, keyFrame:Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;
    invoke-virtual {v5}, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 73
    new-instance v6, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;

    invoke-direct {v6}, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;-><init>()V

    .line 74
    .local v6, positionKeyFrame:Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;
    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;->setTime(J)V

    .line 75
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;->setX(I)V

    .line 76
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;->setY(I)V

    .line 77
    iget-object v8, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement;->mKeyFrames:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 80
    .end local v6           #positionKeyFrame:Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;
    :cond_0
    new-instance v7, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;

    .end local v7           #translateAnimation:Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;
    invoke-direct {v7, p0}, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;-><init>(Lcom/baidu/themeanimation/element/PositionAnimationElement;)V

    .line 82
    .restart local v7       #translateAnimation:Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;
    const-wide/16 v8, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/baidu/themeanimation/element/PositionAnimationElement;->setStartTime(J)V

    .line 83
    const-wide/16 v1, 0x0

    .line 84
    .local v1, endTime:J
    iget-object v8, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_1

    .line 85
    iget-object v8, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v8}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    .line 86
    iget-object v8, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v8}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v1

    .line 87
    iget-object v8, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v3, v8, :cond_1

    .line 88
    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;->setRepeatCount(I)V

    .line 89
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;->setRepeatMode(I)V

    .line 100
    :cond_1
    iget-object v8, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement;->isOnceAnimationBoolean:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 101
    const-wide/16 v8, 0x1

    add-long/2addr v1, v8

    .line 103
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/baidu/themeanimation/element/PositionAnimationElement;->setEndTime(J)V

    .line 105
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/PositionAnimationElement;->getEndTime()J

    move-result-wide v8

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/PositionAnimationElement;->getStartTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;->setDuration(J)V

    .line 108
    .end local v1           #endTime:J
    .end local v3           #i:I
    .end local v4           #index:I
    .end local v5           #keyFrame:Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;
    :cond_3
    return-object v7

    .line 95
    .restart local v1       #endTime:J
    .restart local v3       #i:I
    .restart local v4       #index:I
    .restart local v5       #keyFrame:Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;
    :cond_4
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement;->isOnceAnimationBoolean:Ljava/lang/Boolean;

    .line 96
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimation;->setFillAfter(Z)V

    .line 84
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method public getAngle()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public matchTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 19
    const-string v0, "PositionAnimation"

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
    .local v1, positionKeyFrame:Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;
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
    const-string v3, "Position"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    new-instance v1, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;

    .end local v1           #positionKeyFrame:Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;
    invoke-direct {v1}, Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;-><init>()V

    .line 36
    .restart local v1       #positionKeyFrame:Lcom/baidu/themeanimation/element/PositionAnimationElement$PositionKeyFrame;
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

.method public setAngle(I)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 55
    return-void
.end method

.method public setAngle(Ljava/lang/String;)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 58
    return-void
.end method

.method public setListener(Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/baidu/themeanimation/element/PositionAnimationElement;->mListener:Lcom/baidu/themeanimation/element/PositionAnimationElement$LockTranslateAnimationListener;

    .line 154
    return-void
.end method
