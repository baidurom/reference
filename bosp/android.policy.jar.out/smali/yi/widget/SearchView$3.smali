.class Lyi/widget/SearchView$3;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 186
    iput-object p1, p0, Lyi/widget/SearchView$3;->this$0:Lyi/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lyi/widget/SearchView$3;->this$0:Lyi/widget/SearchView;

    #getter for: Lyi/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v0}, Lyi/widget/SearchView;->access$100(Lyi/widget/SearchView;)Landroid/widget/CursorAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyi/widget/SearchView$3;->this$0:Lyi/widget/SearchView;

    #getter for: Lyi/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v0}, Lyi/widget/SearchView;->access$100(Lyi/widget/SearchView;)Landroid/widget/CursorAdapter;

    move-result-object v0

    instance-of v0, v0, Lyi/widget/SuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lyi/widget/SearchView$3;->this$0:Lyi/widget/SearchView;

    #getter for: Lyi/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v0}, Lyi/widget/SearchView;->access$100(Lyi/widget/SearchView;)Landroid/widget/CursorAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 191
    :cond_0
    return-void
.end method
