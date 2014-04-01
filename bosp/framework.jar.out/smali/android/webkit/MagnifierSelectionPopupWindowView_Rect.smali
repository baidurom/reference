.class Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;
.super Landroid/webkit/PopupWindowView;
.source "MagnifierSelectionPopupWindowView_Rect.java"


# instance fields
.field private mMagnifierView:Landroid/webkit/MagnifierView_Rect;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "webView"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/webkit/PopupWindowView;-><init>(Landroid/webkit/WebView;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected addSubView()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Landroid/webkit/MagnifierView_Rect;

    iget-object v1, p0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebView;

    invoke-direct {v0, v1, v2}, Landroid/webkit/MagnifierView_Rect;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mMagnifierView:Landroid/webkit/MagnifierView_Rect;

    .line 28
    iget-object v0, p0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mMagnifierView:Landroid/webkit/MagnifierView_Rect;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 29
    return-void
.end method

.method public show(ZII)V
    .locals 29
    .parameter "hitStartHandle"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 32
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 36
    :cond_0
    const/16 v24, 0x8

    move/from16 v0, v24

    new-array v10, v0, [I

    .line 37
    .local v10, handles:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/webkit/WebView;->getSelectionHandlesEx([I)V

    .line 38
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v25, v10, v25

    invoke-virtual/range {v24 .. v25}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v18

    .line 39
    .local v18, start_x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget v25, v10, v25

    invoke-virtual/range {v24 .. v25}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v19

    .line 40
    .local v19, start_y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget v25, v10, v25

    invoke-virtual/range {v24 .. v25}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v8

    .line 41
    .local v8, end_x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget v25, v10, v25

    invoke-virtual/range {v24 .. v25}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v9

    .line 43
    .local v9, end_y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    aget v25, v10, v25

    invoke-virtual/range {v24 .. v25}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v17

    .line 44
    .local v17, start_w:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    const/16 v25, 0x5

    aget v25, v10, v25

    invoke-virtual/range {v24 .. v25}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v16

    .line 45
    .local v16, start_h:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    const/16 v25, 0x6

    aget v25, v10, v25

    invoke-virtual/range {v24 .. v25}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v7

    .line 46
    .local v7, end_w:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    const/16 v25, 0x7

    aget v25, v10, v25

    invoke-virtual/range {v24 .. v25}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v6

    .line 49
    .local v6, end_h:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/WebView;->getScrollX()I

    move-result v25

    add-int v25, v25, p2

    invoke-virtual/range {v24 .. v25}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v3

    .line 50
    .local v3, contentX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/WebView;->getScrollY()I

    move-result v25

    add-int v25, v25, p3

    invoke-virtual/range {v24 .. v25}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v4

    .line 54
    .local v4, contentY:I
    if-eqz p1, :cond_3

    move/from16 v21, v19

    .line 55
    .local v21, top:I
    :goto_0
    if-eqz p1, :cond_4

    move/from16 v13, v18

    .line 57
    .local v13, left:I
    :goto_1
    const/16 v24, 0x5

    move/from16 v0, v24

    new-array v11, v0, [I

    .line 58
    .local v11, handlesInScreenCordinate:[I
    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/WebView;->getScrollX()I

    move-result v25

    sub-int v25, v18, v25

    aput v25, v11, v24

    .line 59
    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/WebView;->getScrollY()I

    move-result v25

    sub-int v25, v19, v25

    aput v25, v11, v24

    .line 60
    const/16 v24, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/WebView;->getScrollX()I

    move-result v25

    sub-int v25, v8, v25

    aput v25, v11, v24

    .line 61
    const/16 v24, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/WebView;->getScrollY()I

    move-result v25

    sub-int v25, v9, v25

    aput v25, v11, v24

    .line 63
    const/16 v24, 0x4

    aput v16, v11, v24

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mMagnifierView:Landroid/webkit/MagnifierView_Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p2

    move/from16 v2, p1

    invoke-virtual {v0, v1, v11, v2}, Landroid/webkit/MagnifierView_Rect;->updateMagnifierPosition(I[IZ)V

    .line 68
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->recordScreenSize()V

    .line 71
    const/16 v24, -0x2

    const/high16 v25, 0x4000

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .line 73
    .local v23, widthMeasureSpec:I
    const/16 v24, -0x2

    const/high16 v25, 0x4000

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 75
    .local v12, heightMeasureSpec:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1, v12}, Landroid/view/ViewGroup;->measure(II)V

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainerWidth:I

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainerHeight:I

    .line 79
    const-string v24, ""

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "updateMagnifierPosition2 mContainerWidth="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainerWidth:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", mContainerHeight="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainerHeight:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mLoaction:[I

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    move-object/from16 v0, v24

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    .line 86
    .local v5, density:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/WebView;->getScrollX()I

    move-result v25

    sub-int v25, v13, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mLoaction:[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainerWidth:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    sub-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/WebView;->getScrollY()I

    move-result v25

    sub-int v25, v21, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mLoaction:[I

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainerHeight:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    const v26, 0x41d55555

    mul-float v26, v26, v5

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 90
    const/4 v15, 0x0

    .line 93
    .local v15, shift:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainerWidth:I

    move/from16 v25, v0

    sub-int v14, v24, v25

    .line 94
    .local v14, max:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    const/16 v25, 0x0

    if-lez v14, :cond_5

    .end local v14           #max:I
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v14}, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->clamp(III)I

    move-result v20

    .line 95
    .local v20, tmp:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v15, v20, v24

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move/from16 v0, v20

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 101
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/internal/widget/PopupLayout;

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/widget/PopupLayout;->getDrawableWidth()I

    move-result v22

    .line 102
    .local v22, width:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainerWidth:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    sub-int v15, v24, v15

    .line 103
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainerWidth:I

    move/from16 v24, v0

    sub-int v24, v24, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v15, v1, v2}, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->clamp(III)I

    move-result v20

    .line 104
    move/from16 v0, v20

    if-eq v15, v0, :cond_2

    .line 105
    move/from16 v15, v20

    .line 107
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/internal/widget/PopupLayout;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainerHeight:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/widget/PopupLayout;->setXY(II)V

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainerWidth:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mContainerHeight:I

    move/from16 v28, v0

    invoke-virtual/range {v24 .. v28}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/MagnifierSelectionPopupWindowView_Rect;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    invoke-virtual/range {v24 .. v28}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 111
    return-void

    .end local v5           #density:F
    .end local v11           #handlesInScreenCordinate:[I
    .end local v12           #heightMeasureSpec:I
    .end local v13           #left:I
    .end local v15           #shift:I
    .end local v20           #tmp:I
    .end local v21           #top:I
    .end local v22           #width:I
    .end local v23           #widthMeasureSpec:I
    :cond_3
    move/from16 v21, v9

    .line 54
    goto/16 :goto_0

    .restart local v21       #top:I
    :cond_4
    move v13, v8

    .line 55
    goto/16 :goto_1

    .line 94
    .restart local v5       #density:F
    .restart local v11       #handlesInScreenCordinate:[I
    .restart local v12       #heightMeasureSpec:I
    .restart local v13       #left:I
    .restart local v14       #max:I
    .restart local v15       #shift:I
    .restart local v23       #widthMeasureSpec:I
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_2
.end method
