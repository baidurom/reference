.class Landroid/webkit/SelectActionModeCallback;
.super Ljava/lang/Object;
.source "SelectActionModeCallback.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mIsTextSelected:Z

.field private mWebView:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/SelectActionModeCallback;->mIsTextSelected:Z

    return-void
.end method

.method private setMenuVisibility(Landroid/view/Menu;ZI)V
    .locals 1
    .parameter "menu"
    .parameter "visible"
    .parameter "resourceId"

    .prologue
    .line 145
    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 146
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 149
    :cond_0
    return-void
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 48
    :cond_0
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 136
    :goto_0
    return v2

    .line 92
    :sswitch_0
    iget-object v2, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->cutSelection()V

    .line 93
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 136
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 97
    :sswitch_1
    iget-object v2, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->copySelection()Z

    .line 98
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 102
    :sswitch_2
    iget-object v2, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->pasteFromClipboard()V

    .line 103
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 107
    :sswitch_3
    iget-object v2, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, selection:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 113
    .end local v1           #selection:Ljava/lang/String;
    :sswitch_4
    iget-object v2, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->selectAll()V

    goto :goto_1

    .line 117
    :sswitch_5
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, sel:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 119
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3, v0, v2}, Landroid/webkit/WebViewClassic;->showFindDialog(Ljava/lang/String;Z)Z

    goto :goto_1

    .line 90
    nop

    :sswitch_data_0
    .sparse-switch
        #id@cut#t -> :sswitch_0
        #id@copy#t -> :sswitch_1
        #id@paste#t -> :sswitch_2
        #id@select_all#t -> :sswitch_4
        #id@share#t -> :sswitch_3
        #id@find#t -> :sswitch_5
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 12
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 54
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v9

    const/high16 v11, 0x114

    invoke-virtual {v9, v11, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 56
    iget-object v9, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 57
    .local v6, context:Landroid/content/Context;
    const v9, #string@textSelectionCABTitle#t

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p1, v10}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 65
    const-string v9, "clipboard"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ClipboardManager;

    move-object v5, v9

    check-cast v5, Landroid/content/ClipboardManager;

    .line 67
    .local v5, cm:Landroid/content/ClipboardManager;
    invoke-virtual {p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v8

    .line 68
    .local v8, isFocusable:Z
    iget-object v9, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v7

    .line 69
    .local v7, isEditable:Z
    if-eqz v7, :cond_1

    invoke-virtual {v5}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v8, :cond_1

    move v3, v10

    .line 70
    .local v3, canPaste:Z
    :goto_0
    if-nez v7, :cond_2

    if-eqz v8, :cond_2

    move v2, v10

    .line 71
    .local v2, canFind:Z
    :goto_1
    if-eqz v7, :cond_0

    iget-boolean v9, p0, Landroid/webkit/SelectActionModeCallback;->mIsTextSelected:Z

    if-eqz v9, :cond_0

    if-eqz v8, :cond_0

    move v1, v10

    .line 72
    .local v1, canCut:Z
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/SelectActionModeCallback;->mIsTextSelected:Z

    .line 73
    .local v0, canCopy:Z
    iget-boolean v4, p0, Landroid/webkit/SelectActionModeCallback;->mIsTextSelected:Z

    .line 74
    .local v4, canWebSearch:Z
    const v9, #id@find#t

    invoke-direct {p0, p2, v2, v9}, Landroid/webkit/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 75
    const v9, #id@paste#t

    invoke-direct {p0, p2, v3, v9}, Landroid/webkit/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 76
    const v9, #id@cut#t

    invoke-direct {p0, p2, v1, v9}, Landroid/webkit/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 77
    const v9, #id@copy#t

    invoke-direct {p0, p2, v0, v9}, Landroid/webkit/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 78
    const v9, #id@websearch#t

    invoke-direct {p0, p2, v4, v9}, Landroid/webkit/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 79
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 80
    return v10

    .end local v0           #canCopy:Z
    .end local v1           #canCut:Z
    .end local v2           #canFind:Z
    .end local v3           #canPaste:Z
    .end local v4           #canWebSearch:Z
    :cond_1
    move v3, v1

    .line 69
    goto :goto_0

    .restart local v3       #canPaste:Z
    :cond_2
    move v2, v1

    .line 70
    goto :goto_1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 141
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 142
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method setTextSelected(Z)V
    .locals 0
    .parameter "isTextSelected"

    .prologue
    .line 39
    iput-boolean p1, p0, Landroid/webkit/SelectActionModeCallback;->mIsTextSelected:Z

    .line 40
    return-void
.end method

.method setWebView(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "webView"

    .prologue
    .line 35
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    .line 36
    return-void
.end method
