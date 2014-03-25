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

.field protected mTarget:Landroid/webkit/WebView;

.field private mTranslatorTextView:Landroid/widget/TextView;

.field protected mWebView:Landroid/webkit/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Landroid/webkit/WebViewClassic;)V
    .locals 7
    .parameter "parent"
    .parameter "webView"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Landroid/webkit/PopupWindowView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 31
    const/16 v1, 0x12c

    iput v1, p0, Landroid/webkit/PopupWindowView;->DELAY:I

    .line 45
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/webkit/PopupWindowView;->mBounds:Landroid/graphics/Rect;

    .line 47
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/webkit/PopupWindowView;->mLoaction:[I

    .line 74
    new-instance v1, Landroid/webkit/PopupWindowView$1;

    invoke-direct {v1, p0}, Landroid/webkit/PopupWindowView$1;-><init>(Landroid/webkit/PopupWindowView;)V

    iput-object v1, p0, Landroid/webkit/PopupWindowView;->mHider:Ljava/lang/Runnable;

    .line 50
    iput-object p1, p0, Landroid/webkit/PopupWindowView;->mTarget:Landroid/webkit/WebView;

    .line 51
    iput-object p2, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebViewClassic;

    .line 52
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, #attr@textSelectHandleWindowStyle#t

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Landroid/webkit/PopupWindowView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 54
    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 55
    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 56
    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 58
    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 59
    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 60
    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 62
    invoke-direct {p0}, Landroid/webkit/PopupWindowView;->setupView()Z

    .line 64
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 66
    .local v0, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 68
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
    .line 118
    new-instance v0, Lcom/android/internal/widget/PopupLayout;

    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/PopupLayout;-><init>(Landroid/content/Context;)V

    .line 119
    .local v0, popupLayout:Lcom/android/internal/widget/PopupLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PopupLayout;->setOrientation(I)V

    .line 120
    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #drawable@yi_list_divider_baidu_light#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PopupLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PopupLayout;->setShowDividers(I)V

    .line 123
    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #dimen@yi_floating_bar_divider_padding#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PopupLayout;->setDividerPadding(I)V

    .line 125
    iput-object v0, p0, Landroid/webkit/PopupWindowView;->mContainer:Landroid/view/ViewGroup;

    .line 126
    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mContainer:Landroid/view/ViewGroup;

    const v2, #drawable@yi_text_edit_paste_window#t

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 128
    invoke-virtual {p0}, Landroid/webkit/PopupWindowView;->addSubView()V

    .line 129
    const/4 v1, 0x1

    return v1
.end method

.method private startSemiView(I)V
    .locals 8
    .parameter "type"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 178
    const/4 v4, 0x4

    new-array v0, v4, [I

    .line 179
    .local v0, handles:[I
    iget-object v4, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4, v0}, Landroid/webkit/WebViewClassic;->getSelectionHandles([I)V

    .line 180
    iget-object v4, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebViewClassic;

    aget v5, v0, v6

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v2

    .line 181
    .local v2, startPointerX:I
    iget-object v4, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebViewClassic;

    aget v5, v0, v7

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v3

    .line 183
    .local v3, startPointerY:I
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 184
    .local v1, locationInWindow:[I
    iget-object v4, p0, Landroid/webkit/PopupWindowView;->mTarget:Landroid/webkit/WebView;

    invoke-virtual {v4, v1}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    .line 185
    aget v4, v1, v6

    iget-object v5, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 186
    aget v4, v1, v7

    iget-object v5, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 187
    iget-object v4, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2, v3, p1}, Lcom/android/internal/util/SearchHelper;->startSearch(Landroid/content/Context;Ljava/lang/String;III)V

    .line 188
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

    .line 133
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 135
    .local v0, inflater:Landroid/view/LayoutInflater;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 138
    .local v1, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/PopupWindowView;->mSearchTextView:Landroid/widget/TextView;

    .line 139
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mSearchTextView:Landroid/widget/TextView;

    const v3, #string@websearch#t

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 141
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/webkit/PopupWindowView;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 142
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 146
    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/PopupWindowView;->mBaidkeTextView:Landroid/widget/TextView;

    .line 147
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mBaidkeTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mBaidkeTextView:Landroid/widget/TextView;

    const v3, #string@web_baike#t

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 149
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/webkit/PopupWindowView;->mBaidkeTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 150
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mBaidkeTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mBaidkeTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mBaidkeTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 154
    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/PopupWindowView;->mTranslatorTextView:Landroid/widget/TextView;

    .line 155
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mTranslatorTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mTranslatorTextView:Landroid/widget/TextView;

    const v3, #string@web_translator#t

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 157
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/webkit/PopupWindowView;->mTranslatorTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 158
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mTranslatorTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mTranslatorTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v2, p0, Landroid/webkit/PopupWindowView;->mTranslatorTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 161
    return-void
.end method

.method protected clamp(III)I
    .locals 0
    .parameter "val"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 268
    if-gt p1, p2, :cond_1

    .line 269
    add-int/lit8 p1, p2, 0x1

    .line 273
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 270
    .restart local p1
    :cond_1
    if-lt p1, p3, :cond_0

    .line 271
    add-int/lit8 p1, p3, -0x1

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/webkit/PopupWindowView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Landroid/webkit/PopupWindowView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 92
    :cond_0
    iget-object v0, p0, Landroid/webkit/PopupWindowView;->mTarget:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 93
    return-void
.end method

.method public hideDelayed()V
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Landroid/webkit/PopupWindowView;->mTarget:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 85
    iget-object v0, p0, Landroid/webkit/PopupWindowView;->mTarget:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mHider:Ljava/lang/Runnable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 71
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
    .line 165
    iget-object v0, p0, Landroid/webkit/PopupWindowView;->mSearchTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 166
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/webkit/PopupWindowView;->startSemiView(I)V

    .line 173
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/PopupWindowView;->hideDelayed()V

    .line 174
    iget-object v0, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 175
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Landroid/webkit/PopupWindowView;->mBaidkeTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 168
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/webkit/PopupWindowView;->startSemiView(I)V

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Landroid/webkit/PopupWindowView;->mTranslatorTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 170
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/webkit/PopupWindowView;->startSemiView(I)V

    goto :goto_0
.end method

.method protected recordScreenSize()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/PopupWindowView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 193
    return-void
.end method

.method public show(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 96
    iget-object v5, p0, Landroid/webkit/PopupWindowView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 97
    iget-object v5, p0, Landroid/webkit/PopupWindowView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    .line 100
    :cond_0
    const/4 v5, 0x4

    new-array v2, v5, [I

    .line 101
    .local v2, handles:[I
    iget-object v5, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5, v2}, Landroid/webkit/WebViewClassic;->getSelectionHandles([I)V

    .line 102
    iget-object v5, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebViewClassic;

    const/4 v6, 0x0

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v3

    .line 103
    .local v3, start_x:I
    iget-object v5, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebViewClassic;

    const/4 v6, 0x1

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v4

    .line 104
    .local v4, start_y:I
    iget-object v5, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebViewClassic;

    const/4 v6, 0x2

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v0

    .line 105
    .local v0, end_x:I
    iget-object v5, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebViewClassic;

    const/4 v6, 0x3

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v1

    .line 107
    .local v1, end_y:I
    add-int v5, v3, v0

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v6

    sub-int p1, v5, v6

    .line 108
    iget-object v5, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v5

    sub-int p2, v4, v5

    .line 110
    iget-object v5, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v5

    sub-int v5, v0, v5

    iget-object v6, p0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v6

    sub-int v6, v1, v6

    invoke-virtual {p0, p1, p2, v5, v6}, Landroid/webkit/PopupWindowView;->updateLocation(IIII)V

    .line 111
    return-void
.end method

.method protected updateLocation(IIII)V
    .locals 18
    .parameter "x"
    .parameter "y"
    .parameter "endx"
    .parameter "endy"

    .prologue
    .line 196
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/PopupWindowView;->recordScreenSize()V

    .line 197
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 198
    .local v6, localR:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mTarget:Landroid/webkit/WebView;

    invoke-virtual {v13, v6}, Landroid/webkit/WebView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 200
    const/4 v13, -0x2

    const/high16 v14, 0x4000

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 202
    .local v12, widthMeasureSpec:I
    const/4 v13, -0x2

    const/high16 v14, 0x4000

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 204
    .local v4, heightMeasureSpec:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v13, v12, v4}, Landroid/view/ViewGroup;->measure(II)V

    .line 205
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/PopupWindowView;->mContainerWidth:I

    .line 206
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/PopupWindowView;->mContainerHeight:I

    .line 209
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mTarget:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/PopupWindowView;->mLoaction:[I

    invoke-virtual {v13, v14}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    .line 211
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/PopupWindowView;->mLoaction:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int v14, v14, p1

    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/PopupWindowView;->mContainerWidth:I

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    iput v14, v13, Landroid/graphics/Rect;->left:I

    .line 212
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/PopupWindowView;->mLoaction:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int v14, v14, p2

    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/PopupWindowView;->mContainerHeight:I

    sub-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x28

    iput v14, v13, Landroid/graphics/Rect;->top:I

    .line 214
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/PopupWindowView;->mContainerHeight:I

    .line 215
    .local v3, containerHeight:I
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 216
    .local v1, actionbar:Landroid/util/TypedValue;
    const/16 v2, 0x48

    .line 217
    .local v2, actionbarheight:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v13}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    const v14, #attr@actionBarSize#t

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v1, v15}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 219
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v13}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v13

    float-to-int v2, v13

    .line 224
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mTarget:Landroid/webkit/WebView;

    instance-of v13, v13, Landroid/webkit/WebViewClassic$TitleBarDelegate;

    if-eqz v13, :cond_2

    .line 225
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mTarget:Landroid/webkit/WebView;

    check-cast v13, Landroid/webkit/WebViewClassic$TitleBarDelegate;

    invoke-interface {v13}, Landroid/webkit/WebViewClassic$TitleBarDelegate;->getTitleHeight()I

    move-result v9

    .line 229
    .local v9, titleHeight:I
    :goto_0
    if-nez v9, :cond_3

    const/4 v5, 0x0

    .line 230
    .local v5, innerOffset:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v13}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v13

    add-int v13, v13, p4

    iget v14, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v5

    if-le v13, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v13}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v13

    add-int v13, v13, p2

    iget v14, v6, Landroid/graphics/Rect;->bottom:I

    if-lt v13, v14, :cond_4

    .line 265
    :cond_1
    :goto_2
    return-void

    .line 227
    .end local v5           #innerOffset:I
    .end local v9           #titleHeight:I
    :cond_2
    const/4 v9, 0x0

    .restart local v9       #titleHeight:I
    goto :goto_0

    :cond_3
    move v5, v2

    .line 229
    goto :goto_1

    .line 233
    .restart local v5       #innerOffset:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v13}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v13

    add-int v13, v13, p3

    iget v14, v6, Landroid/graphics/Rect;->left:I

    if-le v13, v14, :cond_1

    mul-int/lit8 v13, p1, 0x2

    sub-int v13, v13, p3

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v14}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v14

    add-int/2addr v13, v14

    iget v14, v6, Landroid/graphics/Rect;->right:I

    if-ge v13, v14, :cond_1

    .line 237
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/PopupWindowView;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v14}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/PopupWindowView;->mLoaction:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    sub-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x14

    iget v14, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v5

    if-gt v13, v14, :cond_5

    .line 238
    const/4 v3, 0x0

    .line 239
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/PopupWindowView;->mLoaction:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int v14, v14, p4

    add-int/lit8 v14, v14, 0x28

    iput v14, v13, Landroid/graphics/Rect;->top:I

    .line 242
    :cond_5
    const/4 v10, 0x0

    .line 245
    .local v10, tmp:I
    const/4 v8, 0x0

    .line 248
    .local v8, shift:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v13, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkit/PopupWindowView;->mContainerWidth:I

    sub-int v7, v13, v14

    .line 249
    .local v7, max:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    const/4 v14, 0x0

    if-lez v7, :cond_8

    .end local v7           #max:I
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v7}, Landroid/webkit/PopupWindowView;->clamp(III)I

    move-result v10

    .line 250
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    if-eq v13, v10, :cond_6

    .line 251
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    sub-int v8, v10, v13

    .line 252
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mBounds:Landroid/graphics/Rect;

    iput v10, v13, Landroid/graphics/Rect;->left:I

    .line 256
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mContainer:Landroid/view/ViewGroup;

    check-cast v13, Lcom/android/internal/widget/PopupLayout;

    invoke-virtual {v13}, Lcom/android/internal/widget/PopupLayout;->getDrawableWidth()I

    move-result v11

    .line 257
    .local v11, width:I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/PopupWindowView;->mContainerWidth:I

    div-int/lit8 v13, v13, 0x2

    sub-int v8, v13, v8

    .line 258
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/PopupWindowView;->mContainerWidth:I

    sub-int/2addr v13, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11, v13}, Landroid/webkit/PopupWindowView;->clamp(III)I

    move-result v10

    .line 259
    if-eq v8, v10, :cond_7

    .line 260
    move v8, v10

    .line 262
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mContainer:Landroid/view/ViewGroup;

    check-cast v13, Lcom/android/internal/widget/PopupLayout;

    invoke-virtual {v13, v8, v3}, Lcom/android/internal/widget/PopupLayout;->setXY(II)V

    .line 264
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/PopupWindowView;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/PopupWindowView;->mTarget:Landroid/webkit/WebView;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/PopupWindowView;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/PopupWindowView;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2

    .line 249
    .end local v11           #width:I
    .restart local v7       #max:I
    :cond_8
    const/4 v7, 0x0

    goto :goto_3
.end method
