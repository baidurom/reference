.class public Lcom/baidu/themeanimation/element/LockPathElement;
.super Lcom/baidu/themeanimation/element/Element;
.source "LockPathElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;
    }
.end annotation


# instance fields
.field private mEndPoint:Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;

.field private mPositionIndex:I

.field private mStartPoint:Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;

.field private mTolerance:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/Element;-><init>()V

    .line 11
    iput v0, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mTolerance:I

    .line 12
    iput v0, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mX:I

    .line 13
    iput v0, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mY:I

    .line 14
    iput-object v1, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mStartPoint:Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;

    .line 15
    iput-object v1, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mEndPoint:Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;

    .line 16
    iput v0, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mPositionIndex:I

    .line 154
    return-void
.end method


# virtual methods
.method public addElement(Lcom/baidu/themeanimation/element/Element;)V
    .locals 2
    .parameter "element"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/baidu/themeanimation/element/Element;->addElement(Lcom/baidu/themeanimation/element/Element;)V

    .line 31
    instance-of v0, p1, Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;

    if-eqz v0, :cond_1

    .line 32
    iget v0, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mPositionIndex:I

    if-nez v0, :cond_2

    .line 33
    check-cast p1, Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/element/LockPathElement;->setStartPoint(Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;)V

    .line 37
    :cond_0
    :goto_0
    iget v0, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mPositionIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mPositionIndex:I

    .line 39
    :cond_1
    return-void

    .line 34
    .restart local p1
    :cond_2
    iget v0, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mPositionIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 35
    check-cast p1, Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/element/LockPathElement;->setEndPoint(Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;)V

    goto :goto_0
.end method

.method public createElement(Ljava/lang/String;)Lcom/baidu/themeanimation/element/Element;
    .locals 1
    .parameter "tagName"

    .prologue
    .line 25
    new-instance v0, Lcom/baidu/themeanimation/element/LockPathElement;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/LockPathElement;-><init>()V

    return-object v0
.end method

.method public getEndPoint()Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mEndPoint:Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;

    return-object v0
.end method

.method public getMaxX()I
    .locals 2

    .prologue
    .line 143
    iget v0, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mX:I

    iget-object v1, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mEndPoint:Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;

    iget v1, v1, Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;->x:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getMaxY()I
    .locals 2

    .prologue
    .line 151
    iget v0, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mY:I

    iget-object v1, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mEndPoint:Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;

    iget v1, v1, Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;->y:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getMinX()I
    .locals 2

    .prologue
    .line 139
    iget v0, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mX:I

    iget-object v1, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mStartPoint:Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;

    iget v1, v1, Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;->x:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getMinY()I
    .locals 2

    .prologue
    .line 147
    iget v0, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mY:I

    iget-object v1, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mStartPoint:Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;

    iget v1, v1, Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;->y:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getStartPoint()Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mStartPoint:Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;

    return-object v0
.end method

.method public getTolerance()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mTolerance:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mY:I

    return v0
.end method

.method public matchTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 20
    const-string v0, "Path"

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
    .line 43
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, tagName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 45
    .local v1, position:Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 46
    .local v0, eventType:I
    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    .line 47
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 48
    const-string v3, "Position"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    new-instance v1, Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;

    .end local v1           #position:Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;
    invoke-direct {v1}, Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;-><init>()V

    .line 50
    .restart local v1       #position:Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;
    invoke-static {p1, v1}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    .line 57
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 52
    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 53
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    :cond_2
    return-object v1
.end method

.method public setEndPoint(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 127
    int-to-float v0, p1

    sget v1, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 128
    int-to-float v0, p2

    sget v1, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p2, v0

    .line 130
    iget-object v0, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mEndPoint:Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;

    iput p1, v0, Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;->x:I

    .line 131
    iget-object v0, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mEndPoint:Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;

    iput p2, v0, Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;->y:I

    .line 132
    return-void
.end method

.method public setEndPoint(Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;)V
    .locals 0
    .parameter "position"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mEndPoint:Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;

    .line 136
    return-void
.end method

.method public setStartPoint(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 110
    int-to-float v0, p1

    sget v1, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 111
    int-to-float v0, p2

    sget v1, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p2, v0

    .line 113
    iget-object v0, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mStartPoint:Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;

    iput p1, v0, Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;->x:I

    .line 114
    iget-object v0, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mStartPoint:Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;

    iput p2, v0, Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;->y:I

    .line 115
    return-void
.end method

.method public setStartPoint(Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;)V
    .locals 0
    .parameter "position"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mStartPoint:Lcom/baidu/themeanimation/element/LockPathElement$LockPosition;

    .line 119
    return-void
.end method

.method public setTolerance(I)V
    .locals 0
    .parameter "tolerance"

    .prologue
    .line 67
    iput p1, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mTolerance:I

    .line 68
    return-void
.end method

.method public setTolerance(Ljava/lang/String;)V
    .locals 1
    .parameter "tolerance"

    .prologue
    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/LockPathElement;->setTolerance(I)V

    .line 72
    return-void
.end method

.method public setX(I)V
    .locals 2
    .parameter "x"

    .prologue
    .line 80
    int-to-float v0, p1

    sget v1, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 82
    iput p1, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mX:I

    .line 83
    return-void
.end method

.method public setX(Ljava/lang/String;)V
    .locals 1
    .parameter "x"

    .prologue
    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/LockPathElement;->setX(I)V

    .line 87
    return-void
.end method

.method public setY(I)V
    .locals 2
    .parameter "y"

    .prologue
    .line 95
    int-to-float v0, p1

    sget v1, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 97
    iput p1, p0, Lcom/baidu/themeanimation/element/LockPathElement;->mY:I

    .line 98
    return-void
.end method

.method public setY(Ljava/lang/String;)V
    .locals 1
    .parameter "y"

    .prologue
    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/LockPathElement;->setY(I)V

    .line 102
    return-void
.end method
