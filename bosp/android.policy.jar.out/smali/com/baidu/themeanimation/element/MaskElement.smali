.class public Lcom/baidu/themeanimation/element/MaskElement;
.super Lcom/baidu/themeanimation/element/VisibleElement;
.source "MaskElement.java"


# static fields
.field public static final ABSOLUTE:I = 0x1

.field public static final RELATIVE:I


# instance fields
.field private mAlign:I

.field private mBaseElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/VisibleElement;",
            ">;"
        }
    .end annotation
.end field

.field private mSrc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/VisibleElement;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/baidu/themeanimation/element/MaskElement;->mBaseElements:Ljava/util/List;

    .line 18
    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/MaskElement;->setSrc(Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/MaskElement;->setAlign(I)V

    .line 20
    return-void
.end method


# virtual methods
.method public createElement(Ljava/lang/String;)Lcom/baidu/themeanimation/element/Element;
    .locals 1
    .parameter "tagName"

    .prologue
    .line 30
    new-instance v0, Lcom/baidu/themeanimation/element/MaskElement;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/MaskElement;-><init>()V

    return-object v0
.end method

.method public getAlign()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/baidu/themeanimation/element/MaskElement;->mAlign:I

    return v0
.end method

.method public getBaseElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/VisibleElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/themeanimation/element/MaskElement;->mBaseElements:Ljava/util/List;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/themeanimation/element/MaskElement;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public matchTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 24
    const-string v0, "Mask"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ImageFilter"

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

.method public setAlign(I)V
    .locals 1
    .parameter "align"

    .prologue
    .line 46
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 47
    :cond_0
    iput p1, p0, Lcom/baidu/themeanimation/element/MaskElement;->mAlign:I

    .line 49
    :cond_1
    return-void
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 1
    .parameter "align"

    .prologue
    .line 52
    const-string v0, "absolute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/MaskElement;->setAlign(I)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/MaskElement;->setAlign(I)V

    goto :goto_0
.end method

.method public setBaseElements(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/VisibleElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, mBaseElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/VisibleElement;>;"
    iput-object p1, p0, Lcom/baidu/themeanimation/element/MaskElement;->mBaseElements:Ljava/util/List;

    .line 65
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/baidu/themeanimation/element/MaskElement;->mSrc:Ljava/lang/String;

    .line 39
    return-void
.end method
