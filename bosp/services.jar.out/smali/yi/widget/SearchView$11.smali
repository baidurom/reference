.class Lyi/widget/SearchView$11;
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
    .line 912
    iput-object p1, p0, Lyi/widget/SearchView$11;->this$0:Lyi/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 916
    iget-object v0, p0, Lyi/widget/SearchView$11;->this$0:Lyi/widget/SearchView;

    #calls: Lyi/widget/SearchView;->setShowSoftInputOnFocus(Z)V
    invoke-static {v0, v2}, Lyi/widget/SearchView;->access$600(Lyi/widget/SearchView;Z)V

    .line 917
    invoke-static {}, Lyi/support/v1/YiLaf;->current()Lyi/support/v1/YiLaf$Interface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lyi/support/v1/YiLaf$Interface;->setContentViewExclusive(Z)V

    .line 918
    iget-object v0, p0, Lyi/widget/SearchView$11;->this$0:Lyi/widget/SearchView;

    invoke-virtual {v0, v2}, Lyi/widget/SearchView;->hideSearchBackIcon(Z)V

    .line 919
    return-void
.end method
