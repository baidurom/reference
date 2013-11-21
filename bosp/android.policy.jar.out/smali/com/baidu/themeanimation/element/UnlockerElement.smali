.class public Lcom/baidu/themeanimation/element/UnlockerElement;
.super Lcom/baidu/themeanimation/element/VisibleElement;
.source "UnlockerElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;
    }
.end annotation


# static fields
.field private static mUnlockerElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/UnlockerElement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hasChanged:Z

.field private mEndPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;",
            ">;"
        }
    .end annotation
.end field

.field private mStandAloneMode:Z

.field private mStartPoint:Lcom/baidu/themeanimation/element/StartPointElement;

.field private mTouchState:I

.field private mUnlockerElementView:Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElements:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/VisibleElement;-><init>()V

    .line 71
    iput-boolean v1, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mStandAloneMode:Z

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mEndPoints:Ljava/util/List;

    .line 125
    iput-boolean v1, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->hasChanged:Z

    .line 77
    invoke-static {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->addUnlockerElement(Lcom/baidu/themeanimation/element/UnlockerElement;)V

    .line 78
    return-void
.end method

.method static synthetic access$100(Lcom/baidu/themeanimation/element/UnlockerElement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I

    return v0
.end method

.method static synthetic access$102(Lcom/baidu/themeanimation/element/UnlockerElement;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I

    return p1
.end method

.method static synthetic access$200(Lcom/baidu/themeanimation/element/UnlockerElement;)Lcom/baidu/themeanimation/element/StartPointElement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mStartPoint:Lcom/baidu/themeanimation/element/StartPointElement;

    return-object v0
.end method

.method public static addUnlockerElement(Lcom/baidu/themeanimation/element/UnlockerElement;)V
    .locals 1
    .parameter "unlockerElement"

    .prologue
    .line 33
    sget-object v0, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElements:Ljava/util/List;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElements:Ljava/util/List;

    .line 36
    :cond_0
    sget-object v0, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElements:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public static dispatchStateChange(Lcom/baidu/themeanimation/element/UnlockerElement;I)V
    .locals 4
    .parameter "unlockerElement"
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 47
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getStandAloneMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 48
    if-eq p1, v2, :cond_1

    .line 49
    .local v2, visible:Z
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget-object v3, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 50
    sget-object v3, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/UnlockerElement;

    .line 51
    .local v0, element:Lcom/baidu/themeanimation/element/UnlockerElement;
    if-eq v0, p0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getStandAloneMode()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getAlwaysShow()Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    invoke-virtual {v0, v2}, Lcom/baidu/themeanimation/element/UnlockerElement;->changeVisibility(Z)V

    .line 54
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/UnlockerElement;->clearAnimations()V

    .line 49
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 48
    .end local v0           #element:Lcom/baidu/themeanimation/element/UnlockerElement;
    .end local v1           #i:I
    .end local v2           #visible:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 58
    :cond_2
    return-void
.end method


# virtual methods
.method public addElement(Lcom/baidu/themeanimation/element/Element;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/baidu/themeanimation/element/VisibleElement;->addElement(Lcom/baidu/themeanimation/element/Element;)V

    .line 94
    instance-of v0, p1, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;

    if-eqz v0, :cond_1

    .line 95
    check-cast p1, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/element/UnlockerElement;->addEndPoint(Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 96
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/baidu/themeanimation/element/StartPointElement;

    if-eqz v0, :cond_0

    .line 97
    check-cast p1, Lcom/baidu/themeanimation/element/StartPointElement;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/element/UnlockerElement;->setStartPoint(Lcom/baidu/themeanimation/element/StartPointElement;)V

    goto :goto_0
.end method

.method public addEndPoint(Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;)V
    .locals 1
    .parameter "endpoint"

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mEndPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_0
    return-void
.end method

.method public changeVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 128
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getVisibility()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iput-boolean v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->hasChanged:Z

    .line 130
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/UnlockerElement;->setVisibility(Ljava/lang/Boolean;)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->hasChanged:Z

    if-eqz v0, :cond_0

    .line 134
    iput-boolean v1, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->hasChanged:Z

    .line 135
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/UnlockerElement;->setVisibility(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public clearView()V
    .locals 3

    .prologue
    .line 295
    invoke-super {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->clearView()V

    .line 296
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElementView:Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;

    if-eqz v2, :cond_1

    .line 297
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElementView:Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 298
    .local v1, viewGroup:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 299
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElementView:Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 302
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElementView:Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;

    .line 303
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mStartPoint:Lcom/baidu/themeanimation/element/StartPointElement;

    if-eqz v2, :cond_1

    .line 304
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mStartPoint:Lcom/baidu/themeanimation/element/StartPointElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/StartPointElement;->clearView()V

    .line 307
    .end local v1           #viewGroup:Landroid/view/ViewGroup;
    :cond_1
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mEndPoints:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 308
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mEndPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 309
    iget-object v2, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mEndPoints:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;->clearView()V

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method public createElement(Ljava/lang/String;)Lcom/baidu/themeanimation/element/Element;
    .locals 1
    .parameter "tagName"

    .prologue
    .line 88
    new-instance v0, Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/UnlockerElement;-><init>()V

    return-object v0
.end method

.method public generateView(Landroid/content/Context;Landroid/os/Handler;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    .line 316
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElementView:Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;

    if-nez v0, :cond_0

    .line 317
    new-instance v0, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;

    invoke-direct {v0, p0, p1, p0, p2}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;-><init>(Lcom/baidu/themeanimation/element/UnlockerElement;Landroid/content/Context;Lcom/baidu/themeanimation/element/UnlockerElement;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElementView:Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElementView:Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/UnlockerElement;->setView(Landroid/view/View;)V

    .line 321
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/baidu/themeanimation/element/UnlockerElement;->updateAttributes(Landroid/graphics/Point;Landroid/graphics/Point;I)V

    .line 322
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElementView:Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;

    return-object v0
.end method

.method public getEndPoint(I)Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;
    .locals 1
    .parameter "index"

    .prologue
    .line 160
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mEndPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mEndPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;

    .line 163
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEndPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mEndPoints:Ljava/util/List;

    return-object v0
.end method

.method public getStandAloneMode()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mStandAloneMode:Z

    return v0
.end method

.method public getStartPoint()Lcom/baidu/themeanimation/element/StartPointElement;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mStartPoint:Lcom/baidu/themeanimation/element/StartPointElement;

    return-object v0
.end method

.method public inEndPoint(FF)I
    .locals 6
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 198
    const/4 v3, -0x1

    .line 200
    .local v3, index:I
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getEndPoints()Ljava/util/List;

    move-result-object v1

    .line 201
    .local v1, endPoints:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;>;"
    if-eqz v1, :cond_0

    .line 205
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 206
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;

    .line 212
    .local v0, endPoint:Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;->getX()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_1

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;->getX()I

    move-result v4

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;->getW()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_1

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;->getY()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_1

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;->getY()I

    move-result v4

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;->getH()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_1

    .line 216
    move v3, v2

    .line 222
    .end local v0           #endPoint:Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;
    .end local v2           #i:I
    :cond_0
    return v3

    .line 205
    .restart local v0       #endPoint:Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;
    .restart local v2       #i:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public inStartPoint(FF)Ljava/lang/Boolean;
    .locals 4
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 170
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 171
    .local v0, result:Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getStartPoint()Lcom/baidu/themeanimation/element/StartPointElement;

    move-result-object v1

    .line 172
    .local v1, startPoint:Lcom/baidu/themeanimation/element/StartPointElement;
    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/StartPointElement;->getX()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/StartPointElement;->getX()I

    move-result v2

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/StartPointElement;->getW()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/StartPointElement;->getY()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/StartPointElement;->getY()I

    move-result v2

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/StartPointElement;->getH()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    .line 177
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 188
    :cond_0
    return-object v0
.end method

.method public matchTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 82
    const-string v0, "Unlocker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UnlockerElement"

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
    .locals 3
    .parameter "category"

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getStartPoint()Lcom/baidu/themeanimation/element/StartPointElement;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/baidu/themeanimation/element/StartPointElement;->dispatchCategoryChange(I)V

    .line 231
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getEndPoints()Ljava/util/List;

    move-result-object v0

    .line 233
    .local v0, endPoints:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 234
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;

    invoke-virtual {v2, p1}, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;->dispatchCategoryChange(I)V

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    :cond_0
    return-void
.end method

.method public onTimeTick(Landroid/text/format/Time;)V
    .locals 3
    .parameter "time"

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getStartPoint()Lcom/baidu/themeanimation/element/StartPointElement;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/baidu/themeanimation/element/StartPointElement;->onTimeTick(Landroid/text/format/Time;)V

    .line 242
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getEndPoints()Ljava/util/List;

    move-result-object v0

    .line 243
    .local v0, endPoints:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 244
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;

    invoke-virtual {v2, p1}, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;->onTimeTick(Landroid/text/format/Time;)V

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    :cond_0
    return-void
.end method

.method public releaseUnlockerElement()V
    .locals 3

    .prologue
    .line 61
    sget-object v1, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElements:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 62
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 63
    sget-object v1, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElements:Ljava/util/List;

    if-eq v1, v2, :cond_0

    .line 64
    sget-object v1, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/UnlockerElement;->releaseAttributAnimation()V

    .line 62
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_1
    sget-object v1, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 69
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElementView:Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mUnlockerElementView:Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;

    #calls: Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->resetState()V
    invoke-static {v0}, Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;->access$000(Lcom/baidu/themeanimation/element/UnlockerElement$UnlockerElementView;)V

    .line 334
    :cond_0
    return-void
.end method

.method public setBounceAcceleration(Ljava/lang/String;)V
    .locals 0
    .parameter "bounceInitSpeed"

    .prologue
    .line 123
    return-void
.end method

.method public setBounceInitSpeed(Ljava/lang/String;)V
    .locals 0
    .parameter "bounceInitSpeed"

    .prologue
    .line 119
    return-void
.end method

.method public setStandAloneMode(Ljava/lang/String;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 115
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mStandAloneMode:Z

    .line 116
    return-void
.end method

.method public setStandAloneMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mStandAloneMode:Z

    .line 112
    return-void
.end method

.method public setStartPoint(Lcom/baidu/themeanimation/element/StartPointElement;)V
    .locals 0
    .parameter "startPoint"

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    iput-object p1, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mStartPoint:Lcom/baidu/themeanimation/element/StartPointElement;

    .line 147
    :cond_0
    return-void
.end method

.method public startAnimations()V
    .locals 5

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getStartPoint()Lcom/baidu/themeanimation/element/StartPointElement;

    move-result-object v3

    iget v4, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I

    invoke-virtual {v3, v4}, Lcom/baidu/themeanimation/element/StartPointElement;->startAnimations(I)V

    .line 811
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getEndPoints()Ljava/util/List;

    move-result-object v1

    .line 812
    .local v1, endPoints:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;>;"
    if-eqz v1, :cond_0

    .line 813
    const/4 v0, 0x0

    .line 814
    .local v0, endPoint:Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 815
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #endPoint:Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;
    check-cast v0, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;

    .line 816
    .restart local v0       #endPoint:Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;
    iget v3, p0, Lcom/baidu/themeanimation/element/UnlockerElement;->mTouchState:I

    invoke-virtual {v0, v3}, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;->startAnimations(I)V

    .line 814
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 819
    .end local v0           #endPoint:Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;
    .end local v2           #i:I
    :cond_0
    return-void
.end method

.method public updateAttributes(Landroid/graphics/Point;Landroid/graphics/Point;I)V
    .locals 10
    .parameter "downEvent"
    .parameter "deltaPoint"
    .parameter "state"

    .prologue
    .line 254
    const/4 v5, 0x0

    .line 255
    .local v5, move_x:F
    const/4 v6, 0x0

    .line 256
    .local v6, move_y:F
    const/4 v0, 0x0

    .line 257
    .local v0, actual_x:F
    const/4 v1, 0x0

    .line 258
    .local v1, actual_y:F
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v2

    .line 260
    .local v2, expressionManager:Lcom/baidu/themeanimation/manager/ExpressionManager;
    if-eqz p2, :cond_0

    .line 261
    iget v7, p2, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    sget v8, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    div-float v5, v7, v8

    .line 262
    iget v7, p2, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    sget v8, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    div-float v6, v7, v8

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getStartPoint()Lcom/baidu/themeanimation/element/StartPointElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/themeanimation/element/StartPointElement;->getX()I

    move-result v7

    int-to-float v7, v7

    add-float v0, v5, v7

    .line 274
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getStartPoint()Lcom/baidu/themeanimation/element/StartPointElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/themeanimation/element/StartPointElement;->getY()I

    move-result v7

    int-to-float v7, v7

    add-float v1, v6, v7

    .line 277
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".move_x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    float-to-int v8, v5

    int-to-long v8, v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 278
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".move_y"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    float-to-int v8, v6

    int-to-long v8, v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 279
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".actual_x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    float-to-int v8, v0

    int-to-long v8, v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 280
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".actual_y"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    float-to-int v8, v1

    int-to-long v8, v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 283
    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    invoke-static {v7}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v7

    float-to-double v3, v7

    .line 284
    .local v3, move_dist:D
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".move_dist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    double-to-int v8, v3

    int-to-long v8, v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 286
    if-eqz p3, :cond_1

    const/4 v7, 0x1

    if-eq p3, v7, :cond_1

    const/4 v7, 0x2

    if-ne p3, v7, :cond_2

    .line 288
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/UnlockerElement;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".state"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    int-to-long v8, p3

    invoke-virtual {v2, v7, v8, v9}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 290
    :cond_2
    return-void
.end method
