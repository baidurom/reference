.class public Lcom/baidu/themeanimation/element/StartPointElement;
.super Lcom/baidu/themeanimation/element/VisibleElement;
.source "StartPointElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/StartPointElement$IntentWrapper;,
        Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;
    }
.end annotation


# instance fields
.field private final MIN_ENDPOINT_DIM:I

.field private mDeltaX:I

.field private mDeltaY:I

.field private mH:I

.field private mNormalElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/VisibleElement;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalSound:Ljava/lang/String;

.field private mPressedElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/VisibleElement;",
            ">;"
        }
    .end annotation
.end field

.field private mPressedSound:Ljava/lang/String;

.field private mReachedElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/VisibleElement;",
            ">;"
        }
    .end annotation
.end field

.field private mReachedSound:Ljava/lang/String;

.field private mStartPointView:Landroid/widget/RelativeLayout;

.field private mState:I

.field private mW:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/VisibleElement;-><init>()V

    .line 27
    iput v0, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mX:I

    .line 28
    iput v0, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mY:I

    .line 29
    iput v0, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mW:I

    .line 30
    iput v0, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mH:I

    .line 31
    iput-object v1, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mNormalElements:Ljava/util/List;

    .line 32
    iput-object v1, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mPressedElements:Ljava/util/List;

    .line 33
    iput-object v1, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mReachedElements:Ljava/util/List;

    .line 96
    const/16 v0, 0x23

    iput v0, p0, Lcom/baidu/themeanimation/element/StartPointElement;->MIN_ENDPOINT_DIM:I

    .line 238
    iput-object v1, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mStartPointView:Landroid/widget/RelativeLayout;

    .line 239
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mState:I

    .line 545
    return-void
.end method


# virtual methods
.method public addElement(Lcom/baidu/themeanimation/element/Element;)V
    .locals 2
    .parameter "element"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/baidu/themeanimation/element/VisibleElement;->addElement(Lcom/baidu/themeanimation/element/Element;)V

    .line 48
    instance-of v1, p1, Lcom/baidu/themeanimation/element/StateElement;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 49
    check-cast v1, Lcom/baidu/themeanimation/element/StateElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/StateElement;->getState()I

    move-result v0

    .line 50
    .local v0, state:I
    if-nez v0, :cond_1

    .line 51
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/Element;->getVisibleElements()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/StartPointElement;->setNormalElements(Ljava/util/List;)V

    .line 58
    .end local v0           #state:I
    :cond_0
    :goto_0
    return-void

    .line 52
    .restart local v0       #state:I
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 53
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/Element;->getVisibleElements()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/StartPointElement;->setPressedElements(Ljava/util/List;)V

    goto :goto_0

    .line 54
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/Element;->getVisibleElements()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/StartPointElement;->setReachedElements(Ljava/util/List;)V

    goto :goto_0
.end method

.method public bringToFront()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mStartPointView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mStartPointView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 245
    :cond_0
    return-void
.end method

.method public clearView()V
    .locals 4

    .prologue
    .line 248
    iget-object v3, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mStartPointView:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_2

    .line 249
    iget-object v3, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mStartPointView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 250
    .local v2, viewGroup:Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 251
    iget-object v3, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mStartPointView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 253
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mStartPointView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 254
    iget-object v3, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mStartPointView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_1
    iget-object v3, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mStartPointView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 258
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mStartPointView:Landroid/widget/RelativeLayout;

    .line 261
    .end local v1           #i:I
    .end local v2           #viewGroup:Landroid/view/ViewGroup;
    :cond_2
    iget-object v3, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mNormalElements:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 262
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget-object v3, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mNormalElements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 263
    iget-object v3, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mNormalElements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/VisibleElement;

    .line 264
    .local v0, element:Lcom/baidu/themeanimation/element/VisibleElement;
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/VisibleElement;->clearView()V

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 270
    .end local v0           #element:Lcom/baidu/themeanimation/element/VisibleElement;
    .end local v1           #i:I
    :cond_3
    iget-object v3, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mPressedElements:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 271
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v3, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mPressedElements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 272
    iget-object v3, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mPressedElements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/VisibleElement;

    .line 273
    .restart local v0       #element:Lcom/baidu/themeanimation/element/VisibleElement;
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/VisibleElement;->clearView()V

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 277
    .end local v0           #element:Lcom/baidu/themeanimation/element/VisibleElement;
    .end local v1           #i:I
    :cond_4
    iget-object v3, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mReachedElements:Ljava/util/List;

    if-eqz v3, :cond_5

    .line 278
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    iget-object v3, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mReachedElements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 279
    iget-object v3, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mReachedElements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/VisibleElement;

    .line 280
    .restart local v0       #element:Lcom/baidu/themeanimation/element/VisibleElement;
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/VisibleElement;->clearView()V

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 283
    .end local v0           #element:Lcom/baidu/themeanimation/element/VisibleElement;
    .end local v1           #i:I
    :cond_5
    return-void
.end method

.method public createElement(Ljava/lang/String;)Lcom/baidu/themeanimation/element/Element;
    .locals 1
    .parameter "tagName"

    .prologue
    .line 42
    new-instance v0, Lcom/baidu/themeanimation/element/StartPointElement;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/StartPointElement;-><init>()V

    return-object v0
.end method

.method public dispatchCategoryChange(I)V
    .locals 3
    .parameter "category"

    .prologue
    .line 189
    iget-object v2, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mNormalElements:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 190
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mNormalElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mNormalElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/VisibleElement;

    .line 192
    .local v0, element:Lcom/baidu/themeanimation/element/VisibleElement;
    invoke-virtual {v0, p1}, Lcom/baidu/themeanimation/element/VisibleElement;->onCategoryChange(I)V

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .end local v0           #element:Lcom/baidu/themeanimation/element/VisibleElement;
    .end local v1           #i:I
    :cond_0
    iget-object v2, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mPressedElements:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 199
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget-object v2, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mPressedElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mPressedElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/VisibleElement;

    .line 201
    .restart local v0       #element:Lcom/baidu/themeanimation/element/VisibleElement;
    invoke-virtual {v0, p1}, Lcom/baidu/themeanimation/element/VisibleElement;->onCategoryChange(I)V

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 205
    .end local v0           #element:Lcom/baidu/themeanimation/element/VisibleElement;
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mReachedElements:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 206
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v2, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mReachedElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 207
    iget-object v2, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mReachedElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/VisibleElement;

    .line 208
    .restart local v0       #element:Lcom/baidu/themeanimation/element/VisibleElement;
    invoke-virtual {v0, p1}, Lcom/baidu/themeanimation/element/VisibleElement;->onCategoryChange(I)V

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 211
    .end local v0           #element:Lcom/baidu/themeanimation/element/VisibleElement;
    .end local v1           #i:I
    :cond_2
    return-void
.end method

.method public getH()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mH:I

    return v0
.end method

.method public getNormalElements()Ljava/util/List;
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
    .line 163
    iget-object v0, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mNormalElements:Ljava/util/List;

    return-object v0
.end method

.method public getNormalSound()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mNormalSound:Ljava/lang/String;

    return-object v0
.end method

.method public getPressedElements()Ljava/util/List;
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
    .line 171
    iget-object v0, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mPressedElements:Ljava/util/List;

    return-object v0
.end method

.method public getPressedSound()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mPressedSound:Ljava/lang/String;

    return-object v0
.end method

.method public getReachedElements()Ljava/util/List;
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
    .line 179
    iget-object v0, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mReachedElements:Ljava/util/List;

    return-object v0
.end method

.method public getReachedSound()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mReachedSound:Ljava/lang/String;

    return-object v0
.end method

.method public getView(Landroid/content/Context;ILandroid/os/Handler;)Landroid/view/View;
    .locals 9
    .parameter "context"
    .parameter "state"
    .parameter "handler"

    .prologue
    const/4 v8, 0x0

    .line 286
    iget-object v4, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mStartPointView:Landroid/widget/RelativeLayout;

    if-nez v4, :cond_0

    .line 287
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mStartPointView:Landroid/widget/RelativeLayout;

    .line 288
    iget-object v4, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mStartPointView:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    sget v6, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_WIDTH:I

    sget v7, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_HEIGHT:I

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    :cond_0
    const/4 v1, 0x0

    .line 298
    .local v1, elements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/VisibleElement;>;"
    packed-switch p2, :pswitch_data_0

    .line 323
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v4, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mStartPointView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 324
    iget-object v4, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mStartPointView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 323
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 300
    .end local v2           #i:I
    :pswitch_0
    iget-object v1, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mNormalElements:Ljava/util/List;

    .line 303
    iput v8, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mDeltaX:I

    .line 304
    iput v8, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mDeltaY:I

    goto :goto_0

    .line 308
    :pswitch_1
    iget-object v1, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mPressedElements:Ljava/util/List;

    .line 309
    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mNormalElements:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 310
    iget-object v1, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mNormalElements:Ljava/util/List;

    goto :goto_0

    .line 315
    :pswitch_2
    iget-object v1, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mReachedElements:Ljava/util/List;

    .line 316
    goto :goto_0

    .line 327
    .restart local v2       #i:I
    :cond_2
    iget-object v4, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mStartPointView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 330
    iput p2, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mState:I

    .line 332
    if-eqz v1, :cond_3

    .line 333
    const/4 v3, 0x0

    .line 334
    .local v3, view:Landroid/view/View;
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getCategoryValue()I

    move-result v0

    .line 335
    .local v0, category:I
    const/4 v2, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 336
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-virtual {v4, p1, p3}, Lcom/baidu/themeanimation/element/VisibleElement;->generateView(Landroid/content/Context;Landroid/os/Handler;)Landroid/view/View;

    move-result-object v3

    .line 337
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-virtual {v4, v0}, Lcom/baidu/themeanimation/element/VisibleElement;->onCategoryChange(I)V

    .line 338
    iget-object v4, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mStartPointView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 335
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 342
    .end local v0           #category:I
    .end local v3           #view:Landroid/view/View;
    :cond_3
    iget v4, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mDeltaX:I

    iget v5, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mDeltaY:I

    invoke-virtual {p0, v4, v5}, Lcom/baidu/themeanimation/element/StartPointElement;->moveBy(II)V

    .line 344
    iget-object v4, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mStartPointView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 346
    iget-object v4, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mStartPointView:Landroid/widget/RelativeLayout;

    return-object v4

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getW()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mW:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mY:I

    return v0
.end method

.method public matchTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 37
    const-string v0, "StartPoint"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public moveBy(II)V
    .locals 1
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 470
    iput p1, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mDeltaX:I

    .line 471
    iput p2, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mDeltaY:I

    .line 472
    iget v0, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mState:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/themeanimation/element/StartPointElement;->moveBy(III)V

    .line 473
    return-void
.end method

.method public moveBy(III)V
    .locals 8
    .parameter "deltaX"
    .parameter "deltaY"
    .parameter "state"

    .prologue
    const/4 v7, 0x1

    .line 402
    const/4 v1, 0x0

    .line 403
    .local v1, elements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/VisibleElement;>;"
    packed-switch p3, :pswitch_data_0

    .line 434
    :goto_0
    const/4 v3, 0x0

    .line 435
    .local v3, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v1, :cond_7

    .line 436
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_7

    .line 437
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/VisibleElement;

    .line 438
    .local v0, element:Lcom/baidu/themeanimation/element/VisibleElement;
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/VisibleElement;->getView()Landroid/view/View;

    move-result-object v4

    .line 439
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 440
    .restart local v3       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v3, :cond_1

    .line 441
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/VisibleElement;->getX()I

    move-result v5

    add-int/2addr v5, p1

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 442
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/VisibleElement;->getY()I

    move-result v5

    add-int/2addr v5, p2

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 447
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/VisibleElement;->getAlign()I

    move-result v5

    if-ne v5, v7, :cond_5

    .line 448
    iget v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 453
    :cond_0
    :goto_2
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/VisibleElement;->getAlignV()I

    move-result v5

    if-ne v5, v7, :cond_6

    .line 454
    iget v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 459
    :cond_1
    :goto_3
    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 436
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 405
    .end local v0           #element:Lcom/baidu/themeanimation/element/VisibleElement;
    .end local v2           #i:I
    .end local v3           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #view:Landroid/view/View;
    :pswitch_0
    iget-object v1, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mNormalElements:Ljava/util/List;

    .line 406
    goto :goto_0

    .line 409
    :pswitch_1
    iget-object v5, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mPressedElements:Ljava/util/List;

    if-nez v5, :cond_2

    .line 410
    iget-object v1, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mNormalElements:Ljava/util/List;

    goto :goto_0

    .line 412
    :cond_2
    iget-object v1, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mPressedElements:Ljava/util/List;

    .line 415
    goto :goto_0

    .line 418
    :pswitch_2
    iget-object v5, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mReachedElements:Ljava/util/List;

    if-eqz v5, :cond_3

    .line 419
    iget-object v1, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mReachedElements:Ljava/util/List;

    goto :goto_0

    .line 421
    :cond_3
    iget-object v5, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mPressedElements:Ljava/util/List;

    if-eqz v5, :cond_4

    .line 422
    iget-object v1, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mPressedElements:Ljava/util/List;

    goto :goto_0

    .line 424
    :cond_4
    iget-object v1, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mNormalElements:Ljava/util/List;

    .line 427
    goto :goto_0

    .line 449
    .restart local v0       #element:Lcom/baidu/themeanimation/element/VisibleElement;
    .restart local v2       #i:I
    .restart local v3       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v4       #view:Landroid/view/View;
    :cond_5
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/VisibleElement;->getAlign()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 450
    iget v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int/2addr v5, v6

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    .line 455
    :cond_6
    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/VisibleElement;->getAlignV()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 456
    iget v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v5, v6

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_3

    .line 462
    .end local v0           #element:Lcom/baidu/themeanimation/element/VisibleElement;
    .end local v2           #i:I
    .end local v4           #view:Landroid/view/View;
    :cond_7
    return-void

    .line 403
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTimeTick(Landroid/text/format/Time;)V
    .locals 3
    .parameter "time"

    .prologue
    .line 216
    iget-object v2, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mNormalElements:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 217
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mNormalElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mNormalElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/VisibleElement;

    .line 219
    .local v0, element:Lcom/baidu/themeanimation/element/VisibleElement;
    invoke-virtual {v0, p1}, Lcom/baidu/themeanimation/element/VisibleElement;->onTimeTick(Landroid/text/format/Time;)V

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    .end local v0           #element:Lcom/baidu/themeanimation/element/VisibleElement;
    .end local v1           #i:I
    :cond_0
    iget-object v2, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mPressedElements:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 224
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget-object v2, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mPressedElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 225
    iget-object v2, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mPressedElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/VisibleElement;

    .line 226
    .restart local v0       #element:Lcom/baidu/themeanimation/element/VisibleElement;
    invoke-virtual {v0, p1}, Lcom/baidu/themeanimation/element/VisibleElement;->onTimeTick(Landroid/text/format/Time;)V

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 230
    .end local v0           #element:Lcom/baidu/themeanimation/element/VisibleElement;
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mReachedElements:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 231
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v2, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mReachedElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 232
    iget-object v2, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mReachedElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/VisibleElement;

    .line 233
    .restart local v0       #element:Lcom/baidu/themeanimation/element/VisibleElement;
    invoke-virtual {v0, p1}, Lcom/baidu/themeanimation/element/VisibleElement;->onTimeTick(Landroid/text/format/Time;)V

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 236
    .end local v0           #element:Lcom/baidu/themeanimation/element/VisibleElement;
    .end local v1           #i:I
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 6

    .prologue
    .line 377
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v2, elements:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Lcom/baidu/themeanimation/element/VisibleElement;>;>;"
    iget-object v5, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mNormalElements:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v5, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mPressedElements:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v5, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mReachedElements:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 386
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 388
    .local v0, baseElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/VisibleElement;>;"
    if-eqz v0, :cond_0

    .line 389
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 390
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/VisibleElement;

    .line 392
    .local v1, element:Lcom/baidu/themeanimation/element/VisibleElement;
    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/VisibleElement;->updateView()V

    .line 389
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 385
    .end local v1           #element:Lcom/baidu/themeanimation/element/VisibleElement;
    .end local v4           #j:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 396
    .end local v0           #baseElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/VisibleElement;>;"
    :cond_1
    return-void
.end method

.method public setH(I)V
    .locals 3
    .parameter "h"

    .prologue
    .line 118
    int-to-float v1, p1

    sget v2, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    mul-float/2addr v1, v2

    float-to-int p1, v1

    .line 120
    move v0, p1

    .line 121
    .local v0, th:I
    const/16 v1, 0x23

    if-ge v0, v1, :cond_0

    .line 122
    const/16 v0, 0x23

    .line 124
    :cond_0
    iput v0, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mH:I

    .line 125
    return-void
.end method

.method public setH(Ljava/lang/String;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/StartPointElement;->setH(I)V

    .line 129
    return-void
.end method

.method public setNormalElements(Ljava/util/List;)V
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
    .line 167
    .local p1, normalElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/VisibleElement;>;"
    iput-object p1, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mNormalElements:Ljava/util/List;

    .line 168
    return-void
.end method

.method public setNormalSound(Ljava/lang/String;)V
    .locals 0
    .parameter "normalSound"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mNormalSound:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setPressedElements(Ljava/util/List;)V
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
    .line 175
    .local p1, pressedElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/VisibleElement;>;"
    iput-object p1, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mPressedElements:Ljava/util/List;

    .line 176
    return-void
.end method

.method public setPressedSound(Ljava/lang/String;)V
    .locals 0
    .parameter "pressedSound"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mPressedSound:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setReachedElements(Ljava/util/List;)V
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
    .line 183
    .local p1, reachedElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/VisibleElement;>;"
    iput-object p1, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mReachedElements:Ljava/util/List;

    .line 184
    return-void
.end method

.method public setReachedSound(Ljava/lang/String;)V
    .locals 0
    .parameter "reachedSound"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mReachedSound:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setW(I)V
    .locals 3
    .parameter "w"

    .prologue
    .line 99
    int-to-float v1, p1

    sget v2, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    mul-float/2addr v1, v2

    float-to-int p1, v1

    .line 101
    move v0, p1

    .line 102
    .local v0, tw:I
    const/16 v1, 0x23

    if-ge v0, v1, :cond_0

    .line 103
    const/16 v0, 0x23

    .line 105
    :cond_0
    iput v0, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mW:I

    .line 106
    return-void
.end method

.method public setW(Ljava/lang/String;)V
    .locals 1
    .parameter "w"

    .prologue
    .line 109
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/StartPointElement;->setW(I)V

    .line 110
    return-void
.end method

.method public setX(I)V
    .locals 2
    .parameter "x"

    .prologue
    .line 66
    int-to-float v0, p1

    sget v1, Lcom/baidu/themeanimation/util/FileUtil;->X_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 68
    iput p1, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mX:I

    .line 70
    return-void
.end method

.method public setX(Ljava/lang/String;)V
    .locals 1
    .parameter "x"

    .prologue
    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/StartPointElement;->setX(I)V

    .line 74
    return-void
.end method

.method public setY(I)V
    .locals 2
    .parameter "y"

    .prologue
    .line 82
    int-to-float v0, p1

    sget v1, Lcom/baidu/themeanimation/util/FileUtil;->Y_SCALE:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 84
    iput p1, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mY:I

    .line 86
    return-void
.end method

.method public setY(Ljava/lang/String;)V
    .locals 1
    .parameter "y"

    .prologue
    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/StartPointElement;->setY(I)V

    .line 90
    return-void
.end method

.method public startAnimations(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, elements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/VisibleElement;>;"
    packed-switch p1, :pswitch_data_0

    .line 368
    :goto_0
    if-eqz v0, :cond_0

    .line 369
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 370
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/VisibleElement;->startAnimations()V

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 353
    .end local v1           #i:I
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mNormalElements:Ljava/util/List;

    .line 354
    goto :goto_0

    .line 357
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mPressedElements:Ljava/util/List;

    .line 358
    goto :goto_0

    .line 361
    :pswitch_2
    iget-object v0, p0, Lcom/baidu/themeanimation/element/StartPointElement;->mReachedElements:Ljava/util/List;

    .line 362
    goto :goto_0

    .line 373
    :cond_0
    return-void

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
