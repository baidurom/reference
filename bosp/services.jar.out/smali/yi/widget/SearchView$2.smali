.class Lyi/widget/SearchView$2;
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
    .line 180
    iput-object p1, p0, Lyi/widget/SearchView$2;->this$0:Lyi/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lyi/widget/SearchView$2;->this$0:Lyi/widget/SearchView;

    #calls: Lyi/widget/SearchView;->updateFocusedState()V
    invoke-static {v0}, Lyi/widget/SearchView;->access$000(Lyi/widget/SearchView;)V

    .line 183
    return-void
.end method
