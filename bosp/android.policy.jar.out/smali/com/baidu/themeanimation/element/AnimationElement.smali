.class public abstract Lcom/baidu/themeanimation/element/AnimationElement;
.super Lcom/baidu/themeanimation/element/Element;
.source "AnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;
    }
.end annotation


# instance fields
.field private mEndTime:J

.field protected mKeyFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 9
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/Element;-><init>()V

    .line 11
    iput-wide v0, p0, Lcom/baidu/themeanimation/element/AnimationElement;->mStartTime:J

    .line 12
    iput-wide v0, p0, Lcom/baidu/themeanimation/element/AnimationElement;->mEndTime:J

    .line 73
    return-void
.end method


# virtual methods
.method public addElement(Lcom/baidu/themeanimation/element/Element;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 21
    instance-of v0, p1, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    if-eqz v0, :cond_0

    .line 22
    check-cast p1, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/element/AnimationElement;->addKeyFrame(Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;)V

    .line 24
    :cond_0
    return-void
.end method

.method public final addKeyFrame(Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;)V
    .locals 1
    .parameter "baseKeyFrame"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimationElement;->mKeyFrames:Ljava/util/List;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/AnimationElement;->mKeyFrames:Ljava/util/List;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimationElement;->mKeyFrames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public abstract generateAnimations(Lcom/baidu/themeanimation/element/VisibleElement;)Landroid/view/animation/Animation;
.end method

.method public getAngle()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/baidu/themeanimation/element/AnimationElement;->mEndTime:J

    return-wide v0
.end method

.method public getKeyFrames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimationElement;->mKeyFrames:Ljava/util/List;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/baidu/themeanimation/element/AnimationElement;->mStartTime:J

    return-wide v0
.end method

.method public hasView()Z
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public setAngle(I)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 47
    return-void
.end method

.method public setAngle(Ljava/lang/String;)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 51
    return-void
.end method

.method public setEndTime(J)V
    .locals 0
    .parameter "endTime"

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/baidu/themeanimation/element/AnimationElement;->mEndTime:J

    .line 40
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .parameter "startTime"

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/baidu/themeanimation/element/AnimationElement;->mStartTime:J

    .line 32
    return-void
.end method
