.class public Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;
.super Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;
.source "SizeAnimationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/SizeAnimationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SizeKeyFrame"
.end annotation


# instance fields
.field private mH:I

.field private mW:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/AnimationElement$BaseKeyFrame;-><init>()V

    .line 113
    iput v0, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;->mW:I

    .line 114
    iput v0, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;->mH:I

    return-void
.end method


# virtual methods
.method public getH()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;->mH:I

    return v0
.end method

.method public getW()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;->mW:I

    return v0
.end method

.method public setH(I)V
    .locals 2
    .parameter "h"

    .prologue
    .line 137
    int-to-float v0, p1

    sget v1, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 139
    iput p1, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;->mH:I

    .line 140
    return-void
.end method

.method public setH(Ljava/lang/String;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;->setH(I)V

    .line 144
    return-void
.end method

.method public setW(I)V
    .locals 2
    .parameter "w"

    .prologue
    .line 122
    int-to-float v0, p1

    sget v1, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 124
    iput p1, p0, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;->mW:I

    .line 125
    return-void
.end method

.method public setW(Ljava/lang/String;)V
    .locals 1
    .parameter "w"

    .prologue
    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/SizeAnimationElement$SizeKeyFrame;->setW(I)V

    .line 129
    return-void
.end method
