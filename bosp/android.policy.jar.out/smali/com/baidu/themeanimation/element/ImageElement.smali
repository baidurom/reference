.class public Lcom/baidu/themeanimation/element/ImageElement;
.super Lcom/baidu/themeanimation/element/VisibleElement;
.source "ImageElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;
    }
.end annotation


# instance fields
.field private mAntiAlias:Ljava/lang/Boolean;

.field protected mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

.field private mSrc:Ljava/lang/String;

.field private mSrcid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/VisibleElement;-><init>()V

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/ImageElement;->setSrc(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/ImageElement;->setSrcid(I)V

    .line 31
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/ImageElement;->setAntiAlias(Ljava/lang/Boolean;)V

    .line 32
    return-void
.end method


# virtual methods
.method public clearView()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->clearView()V

    .line 86
    iget-object v1, p0, Lcom/baidu/themeanimation/element/ImageElement;->mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/baidu/themeanimation/element/ImageElement;->mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 88
    .local v0, viewGroup:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/baidu/themeanimation/element/ImageElement;->mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 92
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/themeanimation/element/ImageElement;->mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    .line 94
    .end local v0           #viewGroup:Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public createElement(Ljava/lang/String;)Lcom/baidu/themeanimation/element/Element;
    .locals 1
    .parameter "tagName"

    .prologue
    .line 42
    new-instance v0, Lcom/baidu/themeanimation/element/ImageElement;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/ImageElement;-><init>()V

    return-object v0
.end method

.method public generateView(Landroid/content/Context;Landroid/os/Handler;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement;->mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p0, v1}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;-><init>(Lcom/baidu/themeanimation/element/ImageElement;Landroid/content/Context;Lcom/baidu/themeanimation/element/VisibleElement;I)V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement;->mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement;->mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/ImageElement;->setView(Landroid/view/View;)V

    .line 107
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement;->mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    return-object v0
.end method

.method public getAntiAlias()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement;->mAntiAlias:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getImageElementView()Landroid/view/View;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement;->mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcid()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/baidu/themeanimation/element/ImageElement;->mSrcid:I

    return v0
.end method

.method public matchTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 36
    const-string v0, "Image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ImageElement"

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

.method public setAntiAlias(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "antiAlias"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/baidu/themeanimation/element/ImageElement;->mAntiAlias:Ljava/lang/Boolean;

    .line 78
    return-void
.end method

.method public setAntiAlias(Ljava/lang/String;)V
    .locals 1
    .parameter "antiAlias"

    .prologue
    .line 81
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/ImageElement;->setAntiAlias(Ljava/lang/Boolean;)V

    .line 82
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/baidu/themeanimation/element/ImageElement;->mSrc:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setSrcid(I)V
    .locals 1
    .parameter "srcid"

    .prologue
    .line 58
    iget v0, p0, Lcom/baidu/themeanimation/element/ImageElement;->mSrcid:I

    if-eq v0, p1, :cond_0

    .line 59
    iput p1, p0, Lcom/baidu/themeanimation/element/ImageElement;->mSrcid:I

    .line 60
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement;->mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ImageElement;->mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->updateSrc()V

    .line 64
    :cond_0
    return-void
.end method

.method public setSrcid(Ljava/lang/String;)V
    .locals 1
    .parameter "srcid"

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/ImageElement;->setSrcid(I)V

    .line 70
    :cond_0
    return-void
.end method
