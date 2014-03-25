.class Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;
.super Landroid/webkit/PopupWindowView;
.source "MagnifierSelectionPopupWindowView_Rect.java"


# instance fields
.field private mMagnifierView:Landroid/webkit/MagnifierView_Rect;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "parent"
    .parameter "webView"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/webkit/PopupWindowView;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebViewClassic;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected addSubView()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Landroid/webkit/MagnifierView_Rect;

    iget-object v1, p0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mTarget:Landroid/webkit/WebView;

    invoke-direct {v0, v1, v2}, Landroid/webkit/MagnifierView_Rect;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mMagnifierView:Landroid/webkit/MagnifierView_Rect;

    .line 28
    iget-object v0, p0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mMagnifierView:Landroid/webkit/MagnifierView_Rect;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 29
    return-void
.end method

.method public show(ZIIII)V
    .locals 25
    .parameter "hitStartHandle"
    .parameter "x"
    .parameter "y"
    .parameter "start_bottom"
    .parameter "start_top"

    .prologue
    .line 32
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 36
    :cond_0
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v8, v0, [I

    .line 37
    .local v8, handles:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/webkit/WebViewClassic;->getSelectionHandles([I)V

    .line 38
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v21, v8, v21

    invoke-virtual/range {v20 .. v21}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v14

    .line 39
    .local v14, start_x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v21, v8, v21

    invoke-virtual/range {v20 .. v21}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v15

    .line 40
    .local v15, start_y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v21, v8, v21

    invoke-virtual/range {v20 .. v21}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v6

    .line 41
    .local v6, end_x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget v21, v8, v21

    invoke-virtual/range {v20 .. v21}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v7

    .line 43
    .local v7, end_y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v21

    add-int v21, v21, p2

    invoke-virtual/range {v20 .. v21}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v3

    .line 44
    .local v3, contentX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v21

    add-int v21, v21, p3

    invoke-virtual/range {v20 .. v21}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v4

    .line 48
    .local v4, contentY:I
    if-eqz p1, :cond_3

    move/from16 v17, v15

    .line 49
    .local v17, top:I
    :goto_0
    if-eqz p1, :cond_4

    move v11, v14

    .line 51
    .local v11, left:I
    :goto_1
    const/16 v20, 0x5

    move/from16 v0, v20

    new-array v9, v0, [I

    .line 52
    .local v9, handlesInScreenCordinate:[I
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v21

    sub-int v21, v14, v21

    aput v21, v9, v20

    .line 53
    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v21

    sub-int v21, v15, v21

    aput v21, v9, v20

    .line 54
    const/16 v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v21

    sub-int v21, v6, v21

    aput v21, v9, v20

    .line 55
    const/16 v20, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v21

    sub-int v21, v7, v21

    aput v21, v9, v20

    .line 59
    const/16 v20, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v22

    sub-int v21, v21, v22

    aput v21, v9, v20

    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mMagnifierView:Landroid/webkit/MagnifierView_Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    move/from16 v2, p1

    invoke-virtual {v0, v1, v9, v2}, Landroid/webkit/MagnifierView_Rect;->updateMagnifierPosition(I[IZ)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->recordScreenSize()V

    .line 66
    const/16 v20, -0x2

    const/high16 v21, 0x4000

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    .line 68
    .local v19, widthMeasureSpec:I
    const/16 v20, -0x2

    const/high16 v21, 0x4000

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 70
    .local v10, heightMeasureSpec:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Landroid/view/ViewGroup;->measure(II)V

    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainerWidth:I

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainerHeight:I

    .line 74
    const-string v20, ""

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "updateMagnifierPosition2 mContainerWidth="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainerWidth:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", mContainerHeight="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainerHeight:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mTarget:Landroid/webkit/WebView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mLoaction:[I

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    .line 81
    .local v5, density:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v21

    sub-int v21, v11, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mLoaction:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainerWidth:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    sub-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v21

    sub-int v21, v17, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mLoaction:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainerHeight:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    const v22, 0x41d55555

    mul-float v22, v22, v5

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 85
    const/4 v13, 0x0

    .line 88
    .local v13, shift:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainerWidth:I

    move/from16 v21, v0

    sub-int v12, v20, v21

    .line 89
    .local v12, max:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    const/16 v21, 0x0

    if-lez v12, :cond_5

    .end local v12           #max:I
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v12}, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->clamp(III)I

    move-result v16

    .line 90
    .local v16, tmp:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v16

    if-eq v0, v1, :cond_1

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v13, v16, v20

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move/from16 v0, v16

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 96
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/widget/PopupLayout;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/PopupLayout;->getDrawableWidth()I

    move-result v18

    .line 97
    .local v18, width:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainerWidth:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    sub-int v13, v20, v13

    .line 98
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainerWidth:I

    move/from16 v20, v0

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2}, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->clamp(III)I

    move-result v16

    .line 99
    move/from16 v0, v16

    if-eq v13, v0, :cond_2

    .line 100
    move/from16 v13, v16

    .line 102
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/widget/PopupLayout;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainerHeight:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/widget/PopupLayout;->setXY(II)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainerWidth:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainerHeight:I

    move/from16 v24, v0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mTarget:Landroid/webkit/WebView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 106
    return-void

    .end local v5           #density:F
    .end local v9           #handlesInScreenCordinate:[I
    .end local v10           #heightMeasureSpec:I
    .end local v11           #left:I
    .end local v13           #shift:I
    .end local v16           #tmp:I
    .end local v17           #top:I
    .end local v18           #width:I
    .end local v19           #widthMeasureSpec:I
    :cond_3
    move/from16 v17, v7

    .line 48
    goto/16 :goto_0

    .restart local v17       #top:I
    :cond_4
    move v11, v6

    .line 49
    goto/16 :goto_1

    .line 89
    .restart local v5       #density:F
    .restart local v9       #handlesInScreenCordinate:[I
    .restart local v10       #heightMeasureSpec:I
    .restart local v11       #left:I
    .restart local v12       #max:I
    .restart local v13       #shift:I
    .restart local v19       #widthMeasureSpec:I
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_2
.end method
