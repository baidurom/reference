.class public Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;
.super Lcom/baidu/themeanimation/element/BottomElement;
.source "LockPathElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/LockPathElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockPosition"
.end annotation


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/BottomElement;-><init>()V

    .line 155
    iput v0, p0, Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;->x:I

    .line 156
    iput v0, p0, Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;->y:I

    return-void
.end method


# virtual methods
.method public getX()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;->y:I

    return v0
.end method

.method public setX(I)V
    .locals 2
    .parameter "x"

    .prologue
    .line 163
    int-to-float v0, p1

    sget v1, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 164
    iput p1, p0, Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;->x:I

    .line 165
    return-void
.end method

.method public setX(Ljava/lang/String;)V
    .locals 1
    .parameter "x"

    .prologue
    .line 168
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;->setX(I)V

    .line 169
    return-void
.end method

.method public setY(I)V
    .locals 2
    .parameter "y"

    .prologue
    .line 176
    int-to-float v0, p1

    sget v1, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 178
    iput p1, p0, Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;->y:I

    .line 179
    return-void
.end method

.method public setY(Ljava/lang/String;)V
    .locals 1
    .parameter "y"

    .prologue
    .line 182
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;->setY(I)V

    .line 183
    return-void
.end method
