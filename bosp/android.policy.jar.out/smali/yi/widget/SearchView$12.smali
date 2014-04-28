.class Lyi/widget/SearchView$12;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1083
    iput-object p1, p0, Lyi/widget/SearchView$12;->this$0:Lyi/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1086
    iget-object v0, p0, Lyi/widget/SearchView$12;->this$0:Lyi/widget/SearchView;

    #getter for: Lyi/widget/SearchView;->mSearchButton:Landroid/view/View;
    invoke-static {v0}, Lyi/widget/SearchView;->access$800(Lyi/widget/SearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1087
    iget-object v0, p0, Lyi/widget/SearchView$12;->this$0:Lyi/widget/SearchView;

    #calls: Lyi/widget/SearchView;->onSearchClicked()V
    invoke-static {v0}, Lyi/widget/SearchView;->access$900(Lyi/widget/SearchView;)V

    .line 1099
    :cond_0
    :goto_0
    return-void

    .line 1088
    :cond_1
    iget-object v0, p0, Lyi/widget/SearchView$12;->this$0:Lyi/widget/SearchView;

    #getter for: Lyi/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lyi/widget/SearchView;->access$1000(Lyi/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 1089
    iget-object v0, p0, Lyi/widget/SearchView$12;->this$0:Lyi/widget/SearchView;

    #calls: Lyi/widget/SearchView;->onCloseClicked()V
    invoke-static {v0}, Lyi/widget/SearchView;->access$1100(Lyi/widget/SearchView;)V

    goto :goto_0

    .line 1090
    :cond_2
    iget-object v0, p0, Lyi/widget/SearchView$12;->this$0:Lyi/widget/SearchView;

    #getter for: Lyi/widget/SearchView;->mSubmitButton:Landroid/view/View;
    invoke-static {v0}, Lyi/widget/SearchView;->access$1200(Lyi/widget/SearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 1091
    iget-object v0, p0, Lyi/widget/SearchView$12;->this$0:Lyi/widget/SearchView;

    #calls: Lyi/widget/SearchView;->onSubmitQuery()V
    invoke-static {v0}, Lyi/widget/SearchView;->access$1300(Lyi/widget/SearchView;)V

    goto :goto_0

    .line 1092
    :cond_3
    iget-object v0, p0, Lyi/widget/SearchView$12;->this$0:Lyi/widget/SearchView;

    #getter for: Lyi/widget/SearchView;->mVoiceButton:Landroid/view/View;
    invoke-static {v0}, Lyi/widget/SearchView;->access$1400(Lyi/widget/SearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 1093
    iget-object v0, p0, Lyi/widget/SearchView$12;->this$0:Lyi/widget/SearchView;

    #calls: Lyi/widget/SearchView;->onVoiceClicked()V
    invoke-static {v0}, Lyi/widget/SearchView;->access$1500(Lyi/widget/SearchView;)V

    goto :goto_0

    .line 1094
    :cond_4
    iget-object v0, p0, Lyi/widget/SearchView$12;->this$0:Lyi/widget/SearchView;

    #getter for: Lyi/widget/SearchView;->mQueryTextView:Lyi/widget/SearchView$SearchAutoComplete;
    invoke-static {v0}, Lyi/widget/SearchView;->access$1600(Lyi/widget/SearchView;)Lyi/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 1095
    iget-object v0, p0, Lyi/widget/SearchView$12;->this$0:Lyi/widget/SearchView;

    #calls: Lyi/widget/SearchView;->forceSuggestionQuery()V
    invoke-static {v0}, Lyi/widget/SearchView;->access$1700(Lyi/widget/SearchView;)V

    goto :goto_0

    .line 1096
    :cond_5
    iget-object v0, p0, Lyi/widget/SearchView$12;->this$0:Lyi/widget/SearchView;

    #getter for: Lyi/widget/SearchView;->mSearchBackIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lyi/widget/SearchView;->access$400(Lyi/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1097
    iget-object v0, p0, Lyi/widget/SearchView$12;->this$0:Lyi/widget/SearchView;

    #calls: Lyi/widget/SearchView;->onCloseClicked()V
    invoke-static {v0}, Lyi/widget/SearchView;->access$1100(Lyi/widget/SearchView;)V

    goto :goto_0
.end method
