.class Lyi/widget/SearchView$10;
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
    .line 869
    iput-object p1, p0, Lyi/widget/SearchView$10;->this$0:Lyi/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 871
    iget-object v0, p0, Lyi/widget/SearchView$10;->this$0:Lyi/widget/SearchView;

    #calls: Lyi/widget/SearchView;->setShowSoftInputOnFocus(Z)V
    invoke-static {v0, v1}, Lyi/widget/SearchView;->access$600(Lyi/widget/SearchView;Z)V

    .line 872
    iget-object v0, p0, Lyi/widget/SearchView$10;->this$0:Lyi/widget/SearchView;

    #calls: Lyi/widget/SearchView;->setImeVisibility(Z)V
    invoke-static {v0, v1}, Lyi/widget/SearchView;->access$700(Lyi/widget/SearchView;Z)V

    .line 873
    return-void
.end method
