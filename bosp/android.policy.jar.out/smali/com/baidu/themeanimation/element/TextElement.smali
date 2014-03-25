.class public Lcom/baidu/themeanimation/element/TextElement;
.super Lcom/baidu/themeanimation/element/VisibleElement;
.source "TextElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/TextElement$TextElementView;
    }
.end annotation


# static fields
.field public static final DEFAULT_MARQUEEN_SPEED:I = 0x1e

.field public static final DEFAULT_TEXT_COLOR:I = 0x0

.field public static final DEFAULT_TEXT_SIZE:I = 0xa


# instance fields
.field private mBoldText:Z

.field private mColor:I

.field private mFormat:Ljava/lang/String;

.field private mMarqueeSpeed:I

.field private mParas:Ljava/lang/String;

.field private mSize:I

.field private mStartAnimationOnTextChange:Z

.field private mText:Ljava/lang/String;

.field private mTextElementView:Lcom/baidu/themeanimation/element/TextElement$TextElementView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/VisibleElement;-><init>()V

    .line 26
    iput v1, p0, Lcom/baidu/themeanimation/element/TextElement;->mColor:I

    .line 27
    const/16 v0, 0xa

    iput v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mSize:I

    .line 28
    iput-object v2, p0, Lcom/baidu/themeanimation/element/TextElement;->mFormat:Ljava/lang/String;

    .line 29
    iput-object v2, p0, Lcom/baidu/themeanimation/element/TextElement;->mParas:Ljava/lang/String;

    .line 33
    const/16 v0, 0x1e

    iput v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mMarqueeSpeed:I

    .line 35
    iput-boolean v1, p0, Lcom/baidu/themeanimation/element/TextElement;->mBoldText:Z

    .line 36
    iput-boolean v1, p0, Lcom/baidu/themeanimation/element/TextElement;->mStartAnimationOnTextChange:Z

    .line 206
    return-void
.end method


# virtual methods
.method public clearView()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->clearView()V

    .line 187
    iget-object v1, p0, Lcom/baidu/themeanimation/element/TextElement;->mTextElementView:Lcom/baidu/themeanimation/element/TextElement$TextElementView;

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/baidu/themeanimation/element/TextElement;->mTextElementView:Lcom/baidu/themeanimation/element/TextElement$TextElementView;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 189
    .local v0, viewGroup:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 190
    iget-object v1, p0, Lcom/baidu/themeanimation/element/TextElement;->mTextElementView:Lcom/baidu/themeanimation/element/TextElement$TextElementView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 192
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/themeanimation/element/TextElement;->mTextElementView:Lcom/baidu/themeanimation/element/TextElement$TextElementView;

    .line 194
    .end local v0           #viewGroup:Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public createElement(Ljava/lang/String;)Lcom/baidu/themeanimation/element/Element;
    .locals 1
    .parameter "tagName"

    .prologue
    .line 46
    new-instance v0, Lcom/baidu/themeanimation/element/TextElement;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/TextElement;-><init>()V

    return-object v0
.end method

.method public generateView(Landroid/content/Context;Landroid/os/Handler;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mTextElementView:Lcom/baidu/themeanimation/element/TextElement$TextElementView;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/baidu/themeanimation/element/TextElement$TextElementView;

    invoke-direct {v0, p0, p1}, Lcom/baidu/themeanimation/element/TextElement$TextElementView;-><init>(Lcom/baidu/themeanimation/element/TextElement;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mTextElementView:Lcom/baidu/themeanimation/element/TextElement$TextElementView;

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mTextElementView:Lcom/baidu/themeanimation/element/TextElement$TextElementView;

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/TextElement;->setView(Landroid/view/View;)V

    .line 203
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mTextElementView:Lcom/baidu/themeanimation/element/TextElement$TextElementView;

    return-object v0
.end method

.method public getBold()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mBoldText:Z

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mColor:I

    return v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getMarqueeSpeed()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mMarqueeSpeed:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mSize:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public matchTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 40
    const-string v0, "Text"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TextElement"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCategoryChange(I)V
    .locals 0
    .parameter "category"

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/baidu/themeanimation/element/VisibleElement;->onCategoryChange(I)V

    .line 181
    return-void
.end method

.method public setAnimationOnTextChange(Ljava/lang/String;)V
    .locals 1
    .parameter "change"

    .prologue
    .line 175
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/TextElement;->setAnimationOnTextChange(Z)V

    .line 176
    return-void
.end method

.method public setAnimationOnTextChange(Z)V
    .locals 0
    .parameter "change"

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/baidu/themeanimation/element/TextElement;->mStartAnimationOnTextChange:Z

    .line 172
    return-void
.end method

.method public setBold(Ljava/lang/String;)V
    .locals 1
    .parameter "bold"

    .prologue
    .line 78
    invoke-static {p1}, Lcom/baidu/themeanimation/util/Utils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/TextElement;->setVisibility(Ljava/lang/Boolean;)V

    .line 79
    return-void
.end method

.method public setBold(Z)V
    .locals 0
    .parameter "bold"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/baidu/themeanimation/element/TextElement;->mBoldText:Z

    .line 75
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 58
    iput p1, p0, Lcom/baidu/themeanimation/element/TextElement;->mColor:I

    .line 59
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 4
    .parameter "color"

    .prologue
    .line 63
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/TextElement;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "TextElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Color+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/themeanimation/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0
    .parameter "format"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/baidu/themeanimation/element/TextElement;->mFormat:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setMarqueeSpeed(I)V
    .locals 0
    .parameter "marqueeSpeed"

    .prologue
    .line 133
    iput p1, p0, Lcom/baidu/themeanimation/element/TextElement;->mMarqueeSpeed:I

    .line 134
    return-void
.end method

.method public setMarqueeSpeed(Ljava/lang/String;)V
    .locals 1
    .parameter "marqueeSpeed"

    .prologue
    .line 137
    if-eqz p1, :cond_0

    .line 138
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/TextElement;->setMarqueeSpeed(I)V

    .line 140
    :cond_0
    return-void
.end method

.method public setParas(Ljava/lang/String;)V
    .locals 7
    .parameter "paras"

    .prologue
    .line 104
    if-nez p1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iput-object p1, p0, Lcom/baidu/themeanimation/element/TextElement;->mParas:Ljava/lang/String;

    .line 108
    iget-object v5, p0, Lcom/baidu/themeanimation/element/TextElement;->mFormat:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 109
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, params:[Ljava/lang/String;
    array-length v5, v3

    new-array v4, v5, [Ljava/lang/Object;

    .line 111
    .local v4, targets:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_3

    .line 112
    aget-object v2, v3, v1

    .line 114
    .local v2, param:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/baidu/themeanimation/util/Utils;->getStringType(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_2

    .line 115
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 111
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    :cond_2
    aput-object v2, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 119
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/Exception;
    aput-object v2, v4, v1

    goto :goto_2

    .line 124
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #param:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/baidu/themeanimation/element/TextElement;->mFormat:Ljava/lang/String;

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/baidu/themeanimation/element/TextElement;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSize(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 86
    int-to-float v0, p1

    sget v1, Lcom/baidu/themeanimation/util/FileUtil;->Image_X_SCALE:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mSize:I

    .line 87
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 1
    .parameter "size"

    .prologue
    .line 90
    if-eqz p1, :cond_0

    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/TextElement;->setSize(I)V

    .line 93
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 155
    if-eqz p1, :cond_0

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 158
    :cond_0
    iput-object p1, p0, Lcom/baidu/themeanimation/element/TextElement;->mText:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mTextElementView:Lcom/baidu/themeanimation/element/TextElement$TextElementView;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mTextElementView:Lcom/baidu/themeanimation/element/TextElement$TextElementView;

    iget-object v1, p0, Lcom/baidu/themeanimation/element/TextElement;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/themeanimation/element/TextElement$TextElementView;->updateText(Ljava/lang/CharSequence;)V

    .line 161
    iget-boolean v0, p0, Lcom/baidu/themeanimation/element/TextElement;->mStartAnimationOnTextChange:Z

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/TextElement;->startAnimations()V

    .line 165
    :cond_1
    return-void
.end method

.method public setTextExp(Ljava/lang/String;)V
    .locals 0
    .parameter "textExp"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/element/TextElement;->setText(Ljava/lang/String;)V

    .line 51
    return-void
.end method
