.class public Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;
.super Lcom/baidu/themeanimation/element/BottomElement;
.source "AnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/AnimationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseKeyFrame"
.end annotation


# instance fields
.field private mIsUsePos:Z

.field private mTime:J

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/BottomElement;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->mIsUsePos:Z

    return-void
.end method


# virtual methods
.method public getTime()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->mTime:J

    return-wide v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->mY:I

    return v0
.end method

.method public isUsePos()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->mIsUsePos:Z

    return v0
.end method

.method public setTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->mTime:J

    .line 89
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 2
    .parameter "time"

    .prologue
    .line 92
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->setTime(J)V

    .line 93
    return-void
.end method

.method public setX(I)V
    .locals 1
    .parameter "x"

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->mIsUsePos:Z

    .line 105
    iput p1, p0, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->mX:I

    .line 106
    return-void
.end method

.method public setX(Ljava/lang/String;)V
    .locals 1
    .parameter "x"

    .prologue
    .line 109
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->setX(I)V

    .line 110
    return-void
.end method

.method public setY(I)V
    .locals 1
    .parameter "y"

    .prologue
    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->mIsUsePos:Z

    .line 114
    iput p1, p0, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->mY:I

    .line 115
    return-void
.end method

.method public setY(Ljava/lang/String;)V
    .locals 1
    .parameter "y"

    .prologue
    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;->setY(I)V

    .line 119
    return-void
.end method
