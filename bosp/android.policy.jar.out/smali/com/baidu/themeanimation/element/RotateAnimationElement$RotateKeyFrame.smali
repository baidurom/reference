.class public Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;
.super Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;
.source "RotateAnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/RotateAnimationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RotateKeyFrame"
.end annotation


# instance fields
.field private mAngle:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;-><init>()V

    return-void
.end method


# virtual methods
.method public getAngle()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;->mAngle:I

    return v0
.end method

.method public setAngle(I)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 55
    iput p1, p0, Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;->mAngle:I

    .line 56
    return-void
.end method

.method public setAngle(Ljava/lang/String;)V
    .locals 1
    .parameter "angle"

    .prologue
    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/RotateAnimationElement$RotateKeyFrame;->setAngle(I)V

    .line 60
    return-void
.end method
