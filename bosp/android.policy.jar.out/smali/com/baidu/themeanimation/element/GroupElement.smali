.class public Lcom/baidu/themeanimation/element/GroupElement;
.super Lcom/baidu/themeanimation/element/VisibleElement;
.source "GroupElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/GroupElement$GroupElementView;
    }
.end annotation


# instance fields
.field private mGroupElementView:Lcom/baidu/themeanimation/element/GroupElement$GroupElementView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/VisibleElement;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/GroupElement;->mGroupElementView:Lcom/baidu/themeanimation/element/GroupElement$GroupElementView;

    .line 66
    return-void
.end method


# virtual methods
.method public clearView()V
    .locals 3

    .prologue
    .line 41
    invoke-super {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->clearView()V

    .line 42
    iget-object v2, p0, Lcom/baidu/themeanimation/element/GroupElement;->mGroupElementView:Lcom/baidu/themeanimation/element/GroupElement$GroupElementView;

    if-eqz v2, :cond_2

    .line 43
    iget-object v2, p0, Lcom/baidu/themeanimation/element/GroupElement;->mGroupElementView:Lcom/baidu/themeanimation/element/GroupElement$GroupElementView;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/GroupElement$GroupElementView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 44
    .local v1, viewGroup:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 45
    iget-object v2, p0, Lcom/baidu/themeanimation/element/GroupElement;->mGroupElementView:Lcom/baidu/themeanimation/element/GroupElement$GroupElementView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/GroupElement;->getVisibleElements()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 48
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/GroupElement;->getVisibleElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/GroupElement;->getVisibleElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/VisibleElement;->clearView()V

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    .end local v0           #i:I
    :cond_1
    iget-object v2, p0, Lcom/baidu/themeanimation/element/GroupElement;->mGroupElementView:Lcom/baidu/themeanimation/element/GroupElement$GroupElementView;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/GroupElement$GroupElementView;->removeAllViews()V

    .line 53
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/baidu/themeanimation/element/GroupElement;->mGroupElementView:Lcom/baidu/themeanimation/element/GroupElement$GroupElementView;

    .line 55
    .end local v1           #viewGroup:Landroid/view/ViewGroup;
    :cond_2
    return-void
.end method

.method public createElement(Ljava/lang/String;)Lcom/baidu/themeanimation/element/Element;
    .locals 1
    .parameter "tagName"

    .prologue
    .line 24
    new-instance v0, Lcom/baidu/themeanimation/element/GroupElement;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/GroupElement;-><init>()V

    return-object v0
.end method

.method public generateView(Landroid/content/Context;Landroid/os/Handler;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/baidu/themeanimation/element/GroupElement;->mGroupElementView:Lcom/baidu/themeanimation/element/GroupElement$GroupElementView;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/baidu/themeanimation/element/GroupElement$GroupElementView;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/themeanimation/element/GroupElement$GroupElementView;-><init>(Lcom/baidu/themeanimation/element/GroupElement;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/GroupElement;->mGroupElementView:Lcom/baidu/themeanimation/element/GroupElement$GroupElementView;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/GroupElement;->mGroupElementView:Lcom/baidu/themeanimation/element/GroupElement$GroupElementView;

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/GroupElement;->setView(Landroid/view/View;)V

    .line 63
    iget-object v0, p0, Lcom/baidu/themeanimation/element/GroupElement;->mGroupElementView:Lcom/baidu/themeanimation/element/GroupElement$GroupElementView;

    return-object v0
.end method

.method public matchTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 18
    const-string v0, "Group"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GroupElement"

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

.method public startAnimations()V
    .locals 3

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/GroupElement;->getVisibleElements()Ljava/util/List;

    move-result-object v0

    .line 31
    .local v0, elements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/VisibleElement;>;"
    if-eqz v0, :cond_0

    .line 32
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/VisibleElement;->startAnimations()V

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    .end local v1           #i:I
    :cond_0
    return-void
.end method
