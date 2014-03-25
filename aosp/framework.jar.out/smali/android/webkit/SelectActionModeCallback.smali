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
    .line 164
    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 165
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 166
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 168
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
    .locals 13
    .parameter "mode"
    .parameter "item"

    .prologue
    const v12, 0xc800

    const/16 v11, 0x7d0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 93
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 155
    :goto_0
    return v6

    .line 95
    :sswitch_0
    iget-object v6, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->cutSelection()V

    .line 96
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :goto_1
    move v6, v7

    .line 155
    goto :goto_0

    .line 100
    :sswitch_1
    iget-object v6, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->copySelection()Z

    .line 101
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 105
    :sswitch_2
    iget-object v6, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->pasteFromClipboard()V

    .line 106
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 110
    :sswitch_3
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, selection:Ljava/lang/String;
    const v2, 0xc800

    .line 114
    .local v2, limitShare:I
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v12, :cond_0

    .line 115
    const-string v8, "SelectActionModeCallback"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SelectActionModeCallback truncate share string("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") to 50KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {v5, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 119
    :cond_0
    iget-object v6, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 124
    .end local v2           #limitShare:I
    .end local v5           #selection:Ljava/lang/String;
    :sswitch_4
    iget-object v6, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->selectAll()V

    goto :goto_1

    .line 128
    :sswitch_5
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, sel:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 130
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8, v3, v6}, Landroid/webkit/WebViewClassic;->showFindDialog(Ljava/lang/String;Z)Z

    goto :goto_1

    .line 133
    .end local v3           #sel:Ljava/lang/String;
    :sswitch_6
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, i:Landroid/content/Intent;
    const-string/jumbo v8, "new_search"

    invoke-virtual {v0, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    const/16 v1, 0x7d0

    .line 139
    .local v1, limit:I
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, select:Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v11, :cond_1

    .line 141
    const-string v8, "SelectActionModeCallback"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "websearch truncate string. length="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {v4, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 145
    :cond_1
    const-string/jumbo v6, "query"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget-object v6, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Landroid/app/Activity;

    if-nez v6, :cond_2

    .line 147
    const/high16 v6, 0x1000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 149
    :cond_2
    iget-object v6, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

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
        #id@websearch#t -> :sswitch_6
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
    .line 160
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 161
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
