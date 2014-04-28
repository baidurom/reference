.class Lyi/widget/SearchView$13;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyi/widget/SearchView;


# direct methods
.method constructor <init>(Lyi/widget/SearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 1134
    iput-object p1, p0, Lyi/widget/SearchView$13;->this$0:Lyi/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1137
    iget-object v3, p0, Lyi/widget/SearchView$13;->this$0:Lyi/widget/SearchView;

    #getter for: Lyi/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;
    invoke-static {v3}, Lyi/widget/SearchView;->access$1800(Lyi/widget/SearchView;)Landroid/app/SearchableInfo;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1175
    :cond_0
    :goto_0
    return v1

    .line 1148
    :cond_1
    iget-object v3, p0, Lyi/widget/SearchView$13;->this$0:Lyi/widget/SearchView;

    #getter for: Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;
    invoke-static {v3}, Lyi/widget/SearchView;->access$1600(Lyi/widget/SearchView;)Lyi/widget/SearchView$SearchAutoComplete;

    move-result-object v3

    invoke-virtual {v3}, Lyi/widget/SearchView$SearchAutoComplete;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lyi/widget/SearchView$13;->this$0:Lyi/widget/SearchView;

    #getter for: Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;
    invoke-static {v3}, Lyi/widget/SearchView;->access$1600(Lyi/widget/SearchView;)Lyi/widget/SearchView$SearchAutoComplete;

    move-result-object v3

    invoke-virtual {v3}, Lyi/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 1150
    iget-object v1, p0, Lyi/widget/SearchView$13;->this$0:Lyi/widget/SearchView;

    #calls: Lyi/widget/SearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    invoke-static {v1, p1, p2, p3}, Lyi/widget/SearchView;->access$1900(Lyi/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1155
    :cond_2
    iget-object v3, p0, Lyi/widget/SearchView$13;->this$0:Lyi/widget/SearchView;

    #getter for: Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;
    invoke-static {v3}, Lyi/widget/SearchView;->access$1600(Lyi/widget/SearchView;)Lyi/widget/SearchView$SearchAutoComplete;

    move-result-object v3

    #calls: Lyi/widget/SearchView$SearchAutoComplete;->isEmpty()Z
    invoke-static {v3}, Lyi/widget/SearchView$SearchAutoComplete;->access$2000(Lyi/widget/SearchView$SearchAutoComplete;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1156
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 1157
    const/16 v3, 0x42

    if-ne p2, v3, :cond_3

    .line 1158
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 1161
    iget-object v3, p0, Lyi/widget/SearchView$13;->this$0:Lyi/widget/SearchView;

    const/4 v4, 0x0

    iget-object v5, p0, Lyi/widget/SearchView$13;->this$0:Lyi/widget/SearchView;

    #getter for: Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;
    invoke-static {v5}, Lyi/widget/SearchView;->access$1600(Lyi/widget/SearchView;)Lyi/widget/SearchView$SearchAutoComplete;

    move-result-object v5

    invoke-virtual {v5}, Lyi/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lyi/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v1, v4, v5}, Lyi/widget/SearchView;->access$2100(Lyi/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 1163
    goto :goto_0

    .line 1166
    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 1167
    iget-object v3, p0, Lyi/widget/SearchView$13;->this$0:Lyi/widget/SearchView;

    #getter for: Lyi/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;
    invoke-static {v3}, Lyi/widget/SearchView;->access$1800(Lyi/widget/SearchView;)Landroid/app/SearchableInfo;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 1168
    .local v0, actionKey:Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1169
    iget-object v1, p0, Lyi/widget/SearchView$13;->this$0:Lyi/widget/SearchView;

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lyi/widget/SearchView$13;->this$0:Lyi/widget/SearchView;

    #getter for: Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;
    invoke-static {v4}, Lyi/widget/SearchView;->access$1600(Lyi/widget/SearchView;)Lyi/widget/SearchView$SearchAutoComplete;

    move-result-object v4

    invoke-virtual {v4}, Lyi/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lyi/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, p2, v3, v4}, Lyi/widget/SearchView;->access$2100(Lyi/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 1171
    goto/16 :goto_0
.end method
