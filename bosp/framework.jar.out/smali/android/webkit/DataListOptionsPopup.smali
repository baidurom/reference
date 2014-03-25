.class Landroid/webkit/DataListOptionsPopup;
.super Ljava/lang/Object;
.source "DataListOptionsPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/DataListOptionsPopup$AnchorView;
    }
.end annotation


# static fields
.field private static final SELECT_OPTION:I = 0x64


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAnchor:Landroid/view/View;

.field private mFilter:Landroid/widget/Filter;

.field private mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mQueryId:I

.field private mText:Ljava/lang/CharSequence;

.field private mWebView:Landroid/webkit/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$WebViewInputConnection;)V
    .locals 0
    .parameter "webView"
    .parameter "inputConnection"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Landroid/webkit/DataListOptionsPopup;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    .line 57
    iput-object p1, p0, Landroid/webkit/DataListOptionsPopup;->mWebView:Landroid/webkit/WebViewClassic;

    .line 58
    return-void
.end method

.method private ensurePopup()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Landroid/webkit/DataListOptionsPopup;->mPopup:Landroid/widget/ListPopupWindow;

    if-nez v0, :cond_1

    .line 202
    new-instance v0, Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/webkit/DataListOptionsPopup;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/DataListOptionsPopup;->mPopup:Landroid/widget/ListPopupWindow;

    .line 203
    new-instance v0, Landroid/webkit/DataListOptionsPopup$AnchorView;

    iget-object v1, p0, Landroid/webkit/DataListOptionsPopup;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/DataListOptionsPopup$AnchorView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/DataListOptionsPopup;->mAnchor:Landroid/view/View;

    .line 204
    iget-object v0, p0, Landroid/webkit/DataListOptionsPopup;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/DataListOptionsPopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->addView(Landroid/view/View;)V

    .line 205
    iget-object v0, p0, Landroid/webkit/DataListOptionsPopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 206
    iget-object v0, p0, Landroid/webkit/DataListOptionsPopup;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/webkit/DataListOptionsPopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 207
    iget-object v0, p0, Landroid/webkit/DataListOptionsPopup;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setPromptPosition(I)V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Landroid/webkit/DataListOptionsPopup;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/DataListOptionsPopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    .line 209
    iget-object v0, p0, Landroid/webkit/DataListOptionsPopup;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/DataListOptionsPopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private pushTextToInputConnection()V
    .locals 4

    .prologue
    .line 173
    iget-object v1, p0, Landroid/webkit/DataListOptionsPopup;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 174
    .local v0, oldText:Landroid/text/Editable;
    iget-object v1, p0, Landroid/webkit/DataListOptionsPopup;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    const/4 v2, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 175
    iget-object v1, p0, Landroid/webkit/DataListOptionsPopup;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    iget-object v2, p0, Landroid/webkit/DataListOptionsPopup;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->replaceSelection(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v1, p0, Landroid/webkit/DataListOptionsPopup;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    iget-object v2, p0, Landroid/webkit/DataListOptionsPopup;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, p0, Landroid/webkit/DataListOptionsPopup;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 177
    return-void
.end method


# virtual methods
.method public clearAdapter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    iput-object v1, p0, Landroid/webkit/DataListOptionsPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 99
    iput-object v1, p0, Landroid/webkit/DataListOptionsPopup;->mFilter:Landroid/widget/Filter;

    .line 100
    iget-object v0, p0, Landroid/webkit/DataListOptionsPopup;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Landroid/webkit/DataListOptionsPopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 102
    iget-object v0, p0, Landroid/webkit/DataListOptionsPopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Landroid/webkit/DataListOptionsPopup;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/DataListOptionsPopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    .line 198
    return-void
.end method

.method public onFilterComplete(I)V
    .locals 4
    .parameter "count"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    invoke-direct {p0}, Landroid/webkit/DataListOptionsPopup;->ensurePopup()V

    .line 182
    if-lez p1, :cond_1

    iget-object v3, p0, Landroid/webkit/DataListOptionsPopup;->mText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/webkit/DataListOptionsPopup;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    move v0, v1

    .line 183
    .local v0, showDropDown:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 184
    iget-object v3, p0, Landroid/webkit/DataListOptionsPopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 186
    iget-object v3, p0, Landroid/webkit/DataListOptionsPopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3, v1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 188
    :cond_0
    iget-object v1, p0, Landroid/webkit/DataListOptionsPopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    .line 189
    iget-object v1, p0, Landroid/webkit/DataListOptionsPopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 193
    :goto_1
    return-void

    .end local v0           #showDropDown:Z
    :cond_1
    move v0, v2

    .line 182
    goto :goto_0

    .line 191
    .restart local v0       #showDropDown:Z
    :cond_2
    iget-object v1, p0, Landroid/webkit/DataListOptionsPopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Landroid/webkit/DataListOptionsPopup;->mPopup:Landroid/widget/ListPopupWindow;

    if-nez v1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 160
    :cond_0
    if-gez p3, :cond_2

    .line 161
    iget-object v1, p0, Landroid/webkit/DataListOptionsPopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 165
    .local v0, selectedItem:Ljava/lang/Object;
    :goto_1
    if-eqz v0, :cond_1

    .line 166
    iget-object v1, p0, Landroid/webkit/DataListOptionsPopup;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v1, v0}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/webkit/DataListOptionsPopup;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-direct {p0}, Landroid/webkit/DataListOptionsPopup;->pushTextToInputConnection()V

    .line 169
    :cond_1
    iget-object v1, p0, Landroid/webkit/DataListOptionsPopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_0

    .line 163
    .end local v0           #selectedItem:Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Landroid/webkit/DataListOptionsPopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .restart local v0       #selectedItem:Ljava/lang/Object;
    goto :goto_1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 61
    iget-object v3, p0, Landroid/webkit/DataListOptionsPopup;->mPopup:Landroid/widget/ListPopupWindow;

    if-nez v3, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v1

    .line 64
    :cond_1
    const/4 v3, 0x4

    if-ne p1, v3, :cond_5

    iget-object v3, p0, Landroid/webkit/DataListOptionsPopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 67
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 68
    iget-object v1, p0, Landroid/webkit/DataListOptionsPopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 69
    .local v0, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_2
    move v1, v2

    .line 72
    goto :goto_0

    .line 73
    .end local v0           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 74
    iget-object v3, p0, Landroid/webkit/DataListOptionsPopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 75
    .restart local v0       #state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_4

    .line 76
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 78
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 79
    iget-object v1, p0, Landroid/webkit/DataListOptionsPopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    move v1, v2

    .line 80
    goto :goto_0

    .line 84
    .end local v0           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_5
    iget-object v2, p0, Landroid/webkit/DataListOptionsPopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    iget-object v1, p0, Landroid/webkit/DataListOptionsPopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, p1, p2}, Landroid/widget/ListPopupWindow;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public resetRect()V
    .locals 10

    .prologue
    .line 120
    invoke-direct {p0}, Landroid/webkit/DataListOptionsPopup;->ensurePopup()V

    .line 121
    iget-object v8, p0, Landroid/webkit/DataListOptionsPopup;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v9, p0, Landroid/webkit/DataListOptionsPopup;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v9, v9, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8, v9}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v2

    .line 122
    .local v2, left:I
    iget-object v8, p0, Landroid/webkit/DataListOptionsPopup;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v9, p0, Landroid/webkit/DataListOptionsPopup;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v9, v9, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {v8, v9}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v5

    .line 123
    .local v5, right:I
    sub-int v7, v5, v2

    .line 124
    .local v7, width:I
    iget-object v8, p0, Landroid/webkit/DataListOptionsPopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v8, v7}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 126
    iget-object v8, p0, Landroid/webkit/DataListOptionsPopup;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v9, p0, Landroid/webkit/DataListOptionsPopup;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v9, v9, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v9}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v0

    .line 127
    .local v0, bottom:I
    iget-object v8, p0, Landroid/webkit/DataListOptionsPopup;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v9, p0, Landroid/webkit/DataListOptionsPopup;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v9, v9, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v9}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v6

    .line 128
    .local v6, top:I
    sub-int v1, v0, v6

    .line 130
    .local v1, height:I
    iget-object v8, p0, Landroid/webkit/DataListOptionsPopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 132
    .local v3, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    const/4 v4, 0x0

    .line 133
    .local v4, needsUpdate:Z
    if-nez v3, :cond_3

    .line 134
    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .end local v3           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-direct {v3, v7, v1, v2, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 145
    .restart local v3       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 146
    iget-object v8, p0, Landroid/webkit/DataListOptionsPopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v8, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    :cond_1
    iget-object v8, p0, Landroid/webkit/DataListOptionsPopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v8}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 149
    iget-object v8, p0, Landroid/webkit/DataListOptionsPopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v8}, Landroid/widget/ListPopupWindow;->show()V

    .line 151
    :cond_2
    return-void

    .line 136
    :cond_3
    iget v8, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    if-ne v8, v2, :cond_4

    iget v8, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    if-ne v8, v6, :cond_4

    iget v8, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    if-ne v8, v7, :cond_4

    iget v8, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    if-eq v8, v1, :cond_0

    .line 138
    :cond_4
    const/4 v4, 0x1

    .line 139
    iput v2, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 140
    iput v6, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 141
    iput v7, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 142
    iput v1, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, adapter:Landroid/widget/ListAdapter;,"TT;"
    invoke-direct {p0}, Landroid/webkit/DataListOptionsPopup;->ensurePopup()V

    .line 108
    iget-object v0, p0, Landroid/webkit/DataListOptionsPopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    iput-object p1, p0, Landroid/webkit/DataListOptionsPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 110
    if-eqz p1, :cond_0

    .line 111
    check-cast p1, Landroid/widget/Filterable;

    .end local p1           #adapter:Landroid/widget/ListAdapter;,"TT;"
    invoke-interface {p1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/DataListOptionsPopup;->mFilter:Landroid/widget/Filter;

    .line 112
    iget-object v0, p0, Landroid/webkit/DataListOptionsPopup;->mFilter:Landroid/widget/Filter;

    iget-object v1, p0, Landroid/webkit/DataListOptionsPopup;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 116
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/DataListOptionsPopup;->resetRect()V

    .line 117
    return-void

    .line 114
    .restart local p1       #adapter:Landroid/widget/ListAdapter;,"TT;"
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/DataListOptionsPopup;->mFilter:Landroid/widget/Filter;

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 91
    iput-object p1, p0, Landroid/webkit/DataListOptionsPopup;->mText:Ljava/lang/CharSequence;

    .line 92
    iget-object v0, p0, Landroid/webkit/DataListOptionsPopup;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Landroid/webkit/DataListOptionsPopup;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 95
    :cond_0
    return-void
.end method
