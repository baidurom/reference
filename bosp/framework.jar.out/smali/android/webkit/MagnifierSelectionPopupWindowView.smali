.class Landroid/webkit/MagnifierSelectionPopupWindowView;
.super Landroid/webkit/PopupWindowView;
.source "MagnifierSelectionPopupWindowView.java"


# instance fields
.field mDensity:F

.field private mMagnifierView:Landroid/webkit/MagnifierView;

.field mPadding:I


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 3
    .parameter "webView"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1}, Landroid/webkit/PopupWindowView;-><init>(Landroid/webkit/WebView;)V

    .line 22
    iput v1, p0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mPadding:I

    .line 23
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mDensity:F

    .line 27
    iget-object v0, p0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    iget-object v0, p0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mContainer:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/internal/widget/PopupLayout;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/PopupLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    iget-object v0, p0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mContainer:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/internal/widget/PopupLayout;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PopupLayout;->setDividerPadding(I)V

    .line 31
    iget-object v0, p0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mContainer:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/internal/widget/PopupLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/android/internal/widget/PopupLayout;->setPadding(IIII)V

    .line 32
    iget-object v0, p0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mContainer:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/internal/widget/PopupLayout;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PopupLayout;->setShowArrow(Z)V

    .line 34
    iget-object v0, p0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mDensity:F

    .line 35
    return-void
.end method


# virtual methods
.method protected addSubView()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 38
    new-instance v1, Landroid/webkit/MagnifierView;

    iget-object v2, p0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-direct {v1, v2, v3}, Landroid/webkit/MagnifierView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mMagnifierView:Landroid/webkit/MagnifierView;

    .line 39
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 41
    .local v0, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mMagnifierView:Landroid/webkit/MagnifierView;

    invoke-virtual {v1, v0}, Landroid/webkit/MagnifierView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iget-object v1, p0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mMagnifierView:Landroid/webkit/MagnifierView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 43
    return-void
.end method

.method public show(ZII)V
    .locals 18
    .parameter "hitStartHandle"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 48
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mLoaction:[I

    invoke-virtual {v12, v13}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    .line 50
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v12}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v12

    if-nez v12, :cond_0

    .line 51
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mWebView:Landroid/webkit/WebView;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mLoaction:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mLoaction:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    invoke-virtual/range {v12 .. v16}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 52
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v13}, Landroid/webkit/WebView;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v14}, Landroid/webkit/WebView;->getHeight()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/widget/PopupWindow;->update(II)V

    .line 55
    :cond_0
    const/4 v12, 0x4

    new-array v6, v12, [I

    .line 56
    .local v6, handles:[I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v12, v6}, Landroid/webkit/WebView;->getSelectionHandles([I)V

    .line 57
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mWebView:Landroid/webkit/WebView;

    const/4 v13, 0x0

    aget v13, v6, v13

    invoke-virtual {v12, v13}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v9

    .line 58
    .local v9, start_x:I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mWebView:Landroid/webkit/WebView;

    const/4 v13, 0x1

    aget v13, v6, v13

    invoke-virtual {v12, v13}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v10

    .line 59
    .local v10, start_y:I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mWebView:Landroid/webkit/WebView;

    const/4 v13, 0x2

    aget v13, v6, v13

    invoke-virtual {v12, v13}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v4

    .line 60
    .local v4, end_x:I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mWebView:Landroid/webkit/WebView;

    const/4 v13, 0x3

    aget v13, v6, v13

    invoke-virtual {v12, v13}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v5

    .line 62
    .local v5, end_y:I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v13}, Landroid/webkit/WebView;->getScrollX()I

    move-result v13

    add-int v13, v13, p2

    invoke-virtual {v12, v13}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v2

    .line 63
    .local v2, contentX:I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v13}, Landroid/webkit/WebView;->getScrollY()I

    move-result v13

    add-int v13, v13, p3

    invoke-virtual {v12, v13}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v3

    .line 67
    .local v3, contentY:I
    if-eqz p1, :cond_1

    move v11, v10

    .line 68
    .local v11, top:I
    :goto_0
    if-eqz p1, :cond_2

    move v8, v9

    .line 70
    .local v8, left:I
    :goto_1
    const/4 v12, 0x5

    new-array v7, v12, [I

    .line 71
    .local v7, handlesInScreenCordinate:[I
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v13}, Landroid/webkit/WebView;->getScrollX()I

    move-result v13

    sub-int v13, v9, v13

    aput v13, v7, v12

    .line 72
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v13}, Landroid/webkit/WebView;->getScrollY()I

    move-result v13

    sub-int v13, v10, v13

    aput v13, v7, v12

    .line 73
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v13}, Landroid/webkit/WebView;->getScrollX()I

    move-result v13

    sub-int v13, v4, v13

    aput v13, v7, v12

    .line 74
    const/4 v12, 0x3

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v13}, Landroid/webkit/WebView;->getScrollY()I

    move-result v13

    sub-int v13, v5, v13

    aput v13, v7, v12

    .line 87
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mMagnifierView:Landroid/webkit/MagnifierView;

    invoke-virtual {v13}, Landroid/webkit/MagnifierView;->getMyWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int v13, p2, v13

    iput v13, v12, Landroid/graphics/Rect;->left:I

    .line 88
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mMagnifierView:Landroid/webkit/MagnifierView;

    invoke-virtual {v13}, Landroid/webkit/MagnifierView;->getMyHeight()I

    move-result v13

    sub-int v13, p3, v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mPadding:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mDensity:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    sub-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->top:I

    .line 90
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mMagnifierView:Landroid/webkit/MagnifierView;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/webkit/MagnifierView;->setTranslationX(F)V

    .line 91
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mMagnifierView:Landroid/webkit/MagnifierView;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/webkit/MagnifierView;->setTranslationY(F)V

    .line 92
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mMagnifierView:Landroid/webkit/MagnifierView;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v12, v0, v1}, Landroid/webkit/MagnifierView;->updateMagnifierPosition(II)V

    .line 93
    return-void

    .end local v7           #handlesInScreenCordinate:[I
    .end local v8           #left:I
    .end local v11           #top:I
    :cond_1
    move v11, v5

    .line 67
    goto/16 :goto_0

    .restart local v11       #top:I
    :cond_2
    move v8, v4

    .line 68
    goto/16 :goto_1
.end method

.method public updateView()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/MagnifierSelectionPopupWindowView;->mMagnifierView:Landroid/webkit/MagnifierView;

    invoke-virtual {v0}, Landroid/webkit/MagnifierView;->invalidate()V

    .line 97
    return-void
.end method
