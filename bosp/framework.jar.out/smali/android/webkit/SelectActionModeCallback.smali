.class Landroid/webkit/SelectActionModeCallback;
.super Ljava/lang/Object;
.source "SelectActionModeCallback.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "SelectActionModeCallback"


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mIsTextSelected:Z

.field private mWebView:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
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
    .line 165
    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 166
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 169
    :cond_0
    return-void
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 51
    :cond_0
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "mode"
    .parameter "item"

    .prologue
    const v7, 0xc800

    const/4 v3, 0x0

    .line 93
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 156
    :goto_0
    return v3

    .line 95
    :sswitch_0
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->cutSelection()V

    .line 96
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 156
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 100
    :sswitch_1
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->copySelection()Z

    .line 101
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 105
    :sswitch_2
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->pasteFromClipboard()V

    .line 106
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 110
    :sswitch_3
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, selection:Ljava/lang/String;
    const v0, 0xc800

    .line 114
    .local v0, limitShare:I
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_0

    .line 115
    const-string v4, "SelectActionModeCallback"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SelectActionModeCallback truncate share string("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") to 50KB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 119
    :cond_0
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 124
    .end local v0           #limitShare:I
    .end local v2           #selection:Ljava/lang/String;
    :sswitch_4
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->selectAll()V

    goto :goto_1

    .line 128
    :sswitch_5
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, sel:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 130
    iget-object v4, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4, v1, v3}, Landroid/webkit/WebViewClassic;->showFindDialog(Ljava/lang/String;Z)Z

    goto :goto_1

    .line 93
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

    .line 57
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v9

    const/high16 v11, 0x114

    invoke-virtual {v9, v11, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 59
    iget-object v9, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 60
    .local v6, context:Landroid/content/Context;
    const v9, #string@textSelectionCABTitle#t

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p1, v10}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 68
    const-string v9, "clipboard"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ClipboardManager;

    move-object v5, v9

    check-cast v5, Landroid/content/ClipboardManager;

    .line 70
    .local v5, cm:Landroid/content/ClipboardManager;
    invoke-virtual {p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v8

    .line 71
    .local v8, isFocusable:Z
    iget-object v9, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v7

    .line 72
    .local v7, isEditable:Z
    if-eqz v7, :cond_1

    invoke-virtual {v5}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v8, :cond_1

    move v3, v10

    .line 73
    .local v3, canPaste:Z
    :goto_0
    if-nez v7, :cond_2

    if-eqz v8, :cond_2

    move v2, v10

    .line 74
    .local v2, canFind:Z
    :goto_1
    if-eqz v7, :cond_0

    iget-boolean v9, p0, Landroid/webkit/SelectActionModeCallback;->mIsTextSelected:Z

    if-eqz v9, :cond_0

    if-eqz v8, :cond_0

    move v1, v10

    .line 75
    .local v1, canCut:Z
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/SelectActionModeCallback;->mIsTextSelected:Z

    .line 76
    .local v0, canCopy:Z
    iget-boolean v4, p0, Landroid/webkit/SelectActionModeCallback;->mIsTextSelected:Z

    .line 77
    .local v4, canWebSearch:Z
    const v9, #id@find#t

    invoke-direct {p0, p2, v2, v9}, Landroid/webkit/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 78
    const v9, #id@paste#t

    invoke-direct {p0, p2, v3, v9}, Landroid/webkit/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 79
    const v9, #id@cut#t

    invoke-direct {p0, p2, v1, v9}, Landroid/webkit/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 80
    const v9, #id@copy#t

    invoke-direct {p0, p2, v0, v9}, Landroid/webkit/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 81
    const v9, #id@websearch#t

    invoke-direct {p0, p2, v4, v9}, Landroid/webkit/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 82
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 83
    return v10

    .end local v0           #canCopy:Z
    .end local v1           #canCut:Z
    .end local v2           #canFind:Z
    .end local v3           #canPaste:Z
    .end local v4           #canWebSearch:Z
    :cond_1
    move v3, v1

    .line 72
    goto :goto_0

    .restart local v3       #canPaste:Z
    :cond_2
    move v2, v1

    .line 73
    goto :goto_1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 161
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 162
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method setTextSelected(Z)V
    .locals 0
    .parameter "isTextSelected"

    .prologue
    .line 42
    iput-boolean p1, p0, Landroid/webkit/SelectActionModeCallback;->mIsTextSelected:Z

    .line 43
    return-void
.end method

.method setWebView(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "webView"

    .prologue
    .line 38
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    .line 39
    return-void
.end method
