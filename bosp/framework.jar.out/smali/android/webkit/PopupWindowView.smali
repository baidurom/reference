.class Landroid/webkit/PopupWindowView;
.super Ljava/lang/Object;
.source "PopupWindowView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final POPUP_TEXT_LAYOUT:I = #layout@yi_text_edit_action_popup_text#t


# instance fields
.field private final DELAY:I

.field private mBaidkeTextView:Landroid/widget/TextView;

.field protected mBounds:Landroid/graphics/Rect;

.field protected mContainer:Landroid/view/ViewGroup;

.field protected mContainerHeight:I

.field protected mContainerWidth:I

.field protected mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mHider:Ljava/lang/Runnable;

.field protected mLoaction:[I

.field protected mPopupWindow:Landroid/widget/PopupWindow;

.field private mSearchTextView:Landroid/widget/TextView;

.field private mTranslatorTextView:Landroid/widget/TextView;

.field protected mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 7
    .parameter "webView"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Landroid/webkit/PopupWindowView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 31
    const/16 v1, 0x12c

    iput v1, p0, Landroid/webkit/PopupWindowView;->DELAY:I

    .line 43
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/webkit/PopupWindowView;->mBounds:Landroid/graphics/Rect;

    .line 45
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/webkit/PopupWindowView;->mLoaction:[I

    .line 71
    new-instance v1, Landroid/webkit/PopupWindowView$1;

    invoke-direct {v1, p0}, Landroid/webkit/PopupWindowView$1;-><init>(Landroid/webkit/PopupWindowView;)V

    iput-object v1, p0, Landroid/webkit/PopupWindowView;->mHider:Ljava/lang/Runnable;

    .line 48
    iput-object p1, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    .line 49
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, #attr@textSelectHandleWindowStyle#t

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Landroid/webkit/PopupWindowView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 51
    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 52
    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 53
    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 55
    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 56
    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 57
    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 59
    invoke-direct {p0}, Landroid/webkit/PopupWindowView;->setupView()Z

    .line 61
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 63
    .local v0, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/PopupWindowView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Landroid/webkit/PopupWindowView;->mHider:Ljava/lang/Runnable;

    return-object v0
.end method

.method private setupView()Z
    .locals 3

    .prologue
    .line 115
    new-instance v0, Lcom/android/internal/widget/PopupLayout;

    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/PopupLayout;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, popupLayout:Lcom/android/internal/widget/PopupLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PopupLayout;->setOrientation(I)V

    .line 117
    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #drawable@yi_list_divider_baidu_light#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PopupLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PopupLayout;->setShowDividers(I)V

    .line 120
    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #dimen@yi_floating_bar_divider_padding#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PopupLayout;->setDividerPadding(I)V

    .line 122
    iput-object v0, p0, Landroid/webkit/PopupWindowView;->mContainer:Landroid/view/ViewGroup;

    .line 123
    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mContainer:Landroid/view/ViewGroup;

    const v2, #drawable@yi_text_edit_paste_window#t

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 125
    invoke-virtual {p0}, Landroid/webkit/PopupWindowView;->addSubView()V

    .line 126
    const/4 v1, 0x1

    return v1
.end method

.method private startSemiView(I)V
    .locals 8
    .parameter "type"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 175
    const/4 v4, 0x4

    new-array v0, v4, [I

    .line 176
    .local v0, handles:[I
    iget-object v4, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->getSelectionHandles([I)V

    .line 177
    iget-object v4, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    aget v5, v0, v6

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v2

    .line 178
    .local v2, startPointerX:I
    iget-object v4, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    aget v5, v0, v7

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    .line 180
    .local v3, startPointerY:I
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 181
    .local v1, locationInWindow:[I
    iget-object v4, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v1}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    .line 182
    aget v4, v1, v6

    iget-object v5, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 183
    aget v4, v1, v7

    iget-object v5, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getScrollY()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 184
    iget-object v4, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2, v3, p1}, Lcom/android/internal/util/SearchHelper;->startSearch(Landroid/content/Context;Ljava/lang/String;III)V

    .line 185
    return-void
.end method


# virtual methods
.method protected addSubView()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x0

    const v5, #layout@yi_text_edit_action_popup_text#t

    const/4 v4, 0x0

    .line 130
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 132
    .local v0, inflater:Landroid/view/LayoutInflater;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 135
    .local v1, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/PopupWindowView;->mSearchTextView:Landroid/widget/TextView;

    .line 136
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mSearchTextView:Landroid/widget/TextView;

    const v3, #string@websearch#t

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 138
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/webkit/PopupWindowView;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 139
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 143
    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/PopupWindowView;->mBaidkeTextView:Landroid/widget/TextView;

    .line 144
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mBaidkeTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mBaidkeTextView:Landroid/widget/TextView;

    const v3, #string@web_baike#t

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 146
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/webkit/PopupWindowView;->mBaidkeTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 147
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mBaidkeTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mBaidkeTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mBaidkeTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 151
    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/PopupWindowView;->mTranslatorTextView:Landroid/widget/TextView;

    .line 152
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mTranslatorTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mTranslatorTextView:Landroid/widget/TextView;

    const v3, #string@web_translator#t

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 154
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/webkit/PopupWindowView;->mTranslatorTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 155
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mTranslatorTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mTranslatorTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mTranslatorTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 158
    return-void
.end method

.method protected clamp(III)I
    .locals 0
    .parameter "val"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 260
    if-gt p1, p2, :cond_1

    .line 261
    add-int/lit8 p1, p2, 0x1

    .line 265
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 262
    .restart local p1
    :cond_1
    if-lt p1, p3, :cond_0

    .line 263
    add-int/lit8 p1, p3, -0x1

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/webkit/PopupWindowView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Landroid/webkit/PopupWindowView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 89
    :cond_0
    iget-object v0, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method

.method public hideDelayed()V
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 82
    iget-object v0, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mHider:Ljava/lang/Runnable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Landroid/webkit/PopupWindowView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/PopupWindowView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 162
    iget-object v0, p0, Landroid/webkit/PopupWindowView;->mSearchTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 163
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/webkit/PopupWindowView;->startSemiView(I)V

    .line 170
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/PopupWindowView;->hideDelayed()V

    .line 171
    iget-object v0, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->selectionDone()V

    .line 172
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Landroid/webkit/PopupWindowView;->mBaidkeTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 165
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/webkit/PopupWindowView;->startSemiView(I)V

    goto :goto_0

    .line 166
    :cond_2
    iget-object v0, p0, Landroid/webkit/PopupWindowView;->mTranslatorTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 167
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/webkit/PopupWindowView;->startSemiView(I)V

    goto :goto_0
.end method

.method protected recordScreenSize()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 190
    return-void
.end method

.method public show(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 93
    iget-object v5, p0, Landroid/webkit/PopupWindowView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 94
    iget-object v5, p0, Landroid/webkit/PopupWindowView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    .line 97
    :cond_0
    const/4 v5, 0x4

    new-array v2, v5, [I

    .line 98
    .local v2, handles:[I
    iget-object v5, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5, v2}, Landroid/webkit/WebView;->getSelectionHandles([I)V

    .line 99
    iget-object v5, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    const/4 v6, 0x0

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    .line 100
    .local v3, start_x:I
    iget-object v5, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    const/4 v6, 0x1

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v4

    .line 101
    .local v4, start_y:I
    iget-object v5, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    const/4 v6, 0x2

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v0

    .line 102
    .local v0, end_x:I
    iget-object v5, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    const/4 v6, 0x3

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v1

    .line 104
    .local v1, end_y:I
    add-int v5, v3, v0

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollX()I

    move-result v6

    sub-int p1, v5, v6

    .line 105
    iget-object v5, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getScrollY()I

    move-result v5

    sub-int p2, v4, v5

    .line 107
    iget-object v5, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getScrollX()I

    move-result v5

    sub-int v5, v0, v5

    iget-object v6, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollY()I

    move-result v6

    sub-int v6, v1, v6

    invoke-virtual {p0, p1, p2, v5, v6}, Landroid/webkit/PopupWindowView;->updateLocation(IIII)V

    .line 108
    return-void
.end method

.method protected updateLocation(IIII)V
    .locals 17
    .parameter "x"
    .parameter "y"
    .parameter "endx"
    .parameter "endy"

    .prologue
    .line 193
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/PopupWindowView;->recordScreenSize()V

    .line 194
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 195
    .local v6, localR:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v12, v6}, Landroid/webkit/WebView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 197
    const/4 v12, -0x2

    const/high16 v13, 0x4000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 199
    .local v11, widthMeasureSpec:I
    const/4 v12, -0x2

    const/high16 v13, 0x4000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 201
    .local v4, heightMeasureSpec:I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/PopupWindowView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v12, v11, v4}, Landroid/view/ViewGroup;->measure(II)V

    .line 202
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/PopupWindowView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/webkit/PopupWindowView;->mContainerWidth:I

    .line 203
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/PopupWindowView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/webkit/PopupWindowView;->mContainerHeight:I

    .line 206
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mLoaction:[I

    invoke-virtual {v12, v13}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    .line 208
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/PopupWindowView;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mLoaction:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int v13, v13, p1

    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkit/PopupWindowView;->mContainerWidth:I

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->left:I

    .line 209
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/PopupWindowView;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mLoaction:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int v13, v13, p2

    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkit/PopupWindowView;->mContainerHeight:I

    sub-int/2addr v13, v14

    add-int/lit8 v13, v13, -0x28

    iput v13, v12, Landroid/graphics/Rect;->top:I

    .line 211
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/PopupWindowView;->mContainerHeight:I

    .line 212
    .local v3, containerHeight:I
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 213
    .local v1, actionbar:Landroid/util/TypedValue;
    const/16 v2, 0x48

    .line 214
    .local v2, actionbarheight:I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v12}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v12

    const v13, #attr@actionBarSize#t

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v1, v14}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 216
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/PopupWindowView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v12}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v2, v12

    .line 221
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v12}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v12

    if-nez v12, :cond_2

    const/4 v5, 0x0

    .line 222
    .local v5, innerOffset:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v12}, Landroid/webkit/WebView;->getScrollY()I

    move-result v12

    add-int v12, v12, p4

    iget v13, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v5

    if-le v12, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v12}, Landroid/webkit/WebView;->getScrollY()I

    move-result v12

    add-int v12, v12, p2

    iget v13, v6, Landroid/graphics/Rect;->bottom:I

    if-lt v12, v13, :cond_3

    .line 257
    :cond_1
    :goto_1
    return-void

    .end local v5           #innerOffset:I
    :cond_2
    move v5, v2

    .line 221
    goto :goto_0

    .line 225
    .restart local v5       #innerOffset:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v12}, Landroid/webkit/WebView;->getScrollX()I

    move-result v12

    add-int v12, v12, p3

    iget v13, v6, Landroid/graphics/Rect;->left:I

    if-le v12, v13, :cond_1

    mul-int/lit8 v12, p1, 0x2

    sub-int v12, v12, p3

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v13}, Landroid/webkit/WebView;->getScrollX()I

    move-result v13

    add-int/2addr v12, v13

    iget v13, v6, Landroid/graphics/Rect;->right:I

    if-ge v12, v13, :cond_1

    .line 229
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v13}, Landroid/webkit/WebView;->getScrollY()I

    move-result v13

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mLoaction:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    sub-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x14

    iget v13, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v5

    if-gt v12, v13, :cond_4

    .line 230
    const/4 v3, 0x0

    .line 231
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/PopupWindowView;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mLoaction:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int v13, v13, p4

    add-int/lit8 v13, v13, 0x28

    iput v13, v12, Landroid/graphics/Rect;->top:I

    .line 234
    :cond_4
    const/4 v9, 0x0

    .line 237
    .local v9, tmp:I
    const/4 v8, 0x0

    .line 240
    .local v8, shift:I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/PopupWindowView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v12, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/PopupWindowView;->mContainerWidth:I

    sub-int v7, v12, v13

    .line 241
    .local v7, max:I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    const/4 v13, 0x0

    if-lez v7, :cond_7

    .end local v7           #max:I
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v7}, Landroid/webkit/PopupWindowView;->clamp(III)I

    move-result v9

    .line 242
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    if-eq v12, v9, :cond_5

    .line 243
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int v8, v9, v12

    .line 244
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iput v9, v12, Landroid/graphics/Rect;->left:I

    .line 248
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/PopupWindowView;->mContainer:Landroid/view/ViewGroup;

    check-cast v12, Lcom/android/internal/widget/PopupLayout;

    invoke-virtual {v12}, Lcom/android/internal/widget/PopupLayout;->getDrawableWidth()I

    move-result v10

    .line 249
    .local v10, width:I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/webkit/PopupWindowView;->mContainerWidth:I

    div-int/lit8 v12, v12, 0x2

    sub-int v8, v12, v8

    .line 250
    move-object/from16 v0, p0

    iget v12, v0, Landroid/webkit/PopupWindowView;->mContainerWidth:I

    sub-int/2addr v12, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10, v12}, Landroid/webkit/PopupWindowView;->clamp(III)I

    move-result v9

    .line 251
    if-eq v8, v9, :cond_6

    .line 252
    move v8, v9

    .line 254
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/PopupWindowView;->mContainer:Landroid/view/ViewGroup;

    check-cast v12, Lcom/android/internal/widget/PopupLayout;

    invoke-virtual {v12, v8, v3}, Lcom/android/internal/widget/PopupLayout;->setXY(II)V

    .line 256
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/PopupWindowView;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebView;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/PopupWindowView;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_1

    .line 241
    .end local v10           #width:I
    .restart local v7       #max:I
    :cond_7
    const/4 v7, 0x0

    goto :goto_2
.end method
