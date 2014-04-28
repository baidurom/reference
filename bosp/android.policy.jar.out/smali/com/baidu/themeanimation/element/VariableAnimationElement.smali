.class public Lcom/baidu/themeanimation/element/VariableAnimationElement;
.super Lcom/baidu/themeanimation/element/AnimationElement;
.source "VariableAnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/VariableAnimationElement$LockVarAnimation;,
        Lcom/baidu/themeanimation/element/VariableAnimationElement$VarAniFrame;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VariableAnimationElement"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/AnimationElement;-><init>()V

    .line 113
    return-void
.end method


# virtual methods
.method public createElement(Ljava/lang/String;)Lcom/baidu/themeanimation/element/Element;
    .locals 1
    .parameter "tagName"

    .prologue
    .line 23
    new-instance v0, Lcom/baidu/themeanimation/element/VariableAnimationElement;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/VariableAnimationElement;-><init>()V

    return-object v0
.end method

.method public generateAnimations(Lcom/baidu/themeanimation/element/VisibleElement;)Landroid/view/animation/Animation;
    .locals 13
    .parameter "element"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-wide/16 v9, 0x0

    .line 49
    const/4 v5, 0x0

    .line 52
    .local v5, lockVarAnimation:Lcom/baidu/themeanimation/element/VariableAnimationElement$LockVarAnimation;
    iget-object v7, p0, Lcom/baidu/themeanimation/element/VariableAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    .line 53
    .local v0, count:I
    if-lez v0, :cond_2

    if-eqz p1, :cond_2

    .line 56
    iget-object v7, p0, Lcom/baidu/themeanimation/element/VariableAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/themeanimation/element/VariableAnimationElement$VarAniFrame;

    .line 57
    .local v4, keyFrame:Lcom/baidu/themeanimation/element/VariableAnimationElement$VarAniFrame;
    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/VariableAnimationElement$VarAniFrame;->getTime()J

    move-result-wide v7

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    .line 58
    new-instance v6, Lcom/baidu/themeanimation/element/VariableAnimationElement$VarAniFrame;

    invoke-direct {v6}, Lcom/baidu/themeanimation/element/VariableAnimationElement$VarAniFrame;-><init>()V

    .line 59
    .local v6, varKeyFrame:Lcom/baidu/themeanimation/element/VariableAnimationElement$VarAniFrame;
    invoke-virtual {v6, v9, v10}, Lcom/baidu/themeanimation/element/VariableAnimationElement$VarAniFrame;->setTime(J)V

    .line 60
    invoke-virtual {v4}, Lcom/baidu/themeanimation/element/VariableAnimationElement$VarAniFrame;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/themeanimation/element/VariableAnimationElement$VarAniFrame;->setValue(Ljava/lang/String;)V

    .line 61
    iget-object v7, p0, Lcom/baidu/themeanimation/element/VariableAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7, v11, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 64
    .end local v6           #varKeyFrame:Lcom/baidu/themeanimation/element/VariableAnimationElement$VarAniFrame;
    :cond_0
    new-instance v5, Lcom/baidu/themeanimation/element/VariableAnimationElement$LockVarAnimation;

    .end local v5           #lockVarAnimation:Lcom/baidu/themeanimation/element/VariableAnimationElement$LockVarAnimation;
    invoke-direct {v5, p0, p1}, Lcom/baidu/themeanimation/element/VariableAnimationElement$LockVarAnimation;-><init>(Lcom/baidu/themeanimation/element/VariableAnimationElement;Lcom/baidu/themeanimation/element/VisibleElement;)V

    .line 66
    .restart local v5       #lockVarAnimation:Lcom/baidu/themeanimation/element/VariableAnimationElement$LockVarAnimation;
    invoke-virtual {p0, v9, v10}, Lcom/baidu/themeanimation/element/VariableAnimationElement;->setStartTime(J)V

    .line 67
    const-wide/16 v1, 0x0

    .line 68
    .local v1, endTime:J
    iget-object v7, p0, Lcom/baidu/themeanimation/element/VariableAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_1

    .line 69
    iget-object v7, p0, Lcom/baidu/themeanimation/element/VariableAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v7}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v7

    const-wide/32 v9, 0x186a0

    cmp-long v7, v7, v9

    if-gez v7, :cond_3

    .line 70
    iget-object v7, p0, Lcom/baidu/themeanimation/element/VariableAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    invoke-virtual {v7}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->getTime()J

    move-result-wide v1

    .line 71
    iget-object v7, p0, Lcom/baidu/themeanimation/element/VariableAnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v3, v7, :cond_1

    .line 72
    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Lcom/baidu/themeanimation/element/VariableAnimationElement$LockVarAnimation;->setRepeatCount(I)V

    .line 73
    invoke-virtual {v5, v12}, Lcom/baidu/themeanimation/element/VariableAnimationElement$LockVarAnimation;->setRepeatMode(I)V

    .line 82
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/baidu/themeanimation/element/VariableAnimationElement;->setEndTime(J)V

    .line 87
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VariableAnimationElement;->getEndTime()J

    move-result-wide v7

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/VariableAnimationElement;->getStartTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-virtual {v5, v7, v8}, Lcom/baidu/themeanimation/element/VariableAnimationElement$LockVarAnimation;->setDuration(J)V

    .line 89
    .end local v1           #endTime:J
    .end local v3           #i:I
    .end local v4           #keyFrame:Lcom/baidu/themeanimation/element/VariableAnimationElement$VarAniFrame;
    :cond_2
    return-object v5

    .line 79
    .restart local v1       #endTime:J
    .restart local v3       #i:I
    .restart local v4       #keyFrame:Lcom/baidu/themeanimation/element/VariableAnimationElement$VarAniFrame;
    :cond_3
    invoke-virtual {v5, v12}, Lcom/baidu/themeanimation/element/VariableAnimationElement$LockVarAnimation;->setFillAfter(Z)V

    .line 68
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method public matchTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 18
    const-string v0, "VariableAnimation"

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

    move-result-object v1

    .line 29
    .local v1, tagName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 30
    .local v2, varKeyFrame:Lcom/baidu/themeanimation/element/VariableAnimationElement$VarAniFrame;
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
    const-string v3, "AniFrame"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    new-instance v2, Lcom/baidu/themeanimation/element/VariableAnimationElement$VarAniFrame;

    .end local v2           #varKeyFrame:Lcom/baidu/themeanimation/element/VariableAnimationElement$VarAniFrame;
    invoke-direct {v2}, Lcom/baidu/themeanimation/element/VariableAnimationElement$VarAniFrame;-><init>()V

    .line 35
    .restart local v2       #varKeyFrame:Lcom/baidu/themeanimation/element/VariableAnimationElement$VarAniFrame;
    invoke-static {p1, v2}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

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

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    :cond_2
    return-object v2
.end method
