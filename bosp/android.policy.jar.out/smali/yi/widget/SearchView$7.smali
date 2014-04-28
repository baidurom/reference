.class Lyi/widget/SearchView$7;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi/widget/SearchView;->showSearchBackIcon(Landroid/view/View$OnClickListener;Z)V
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
    .line 797
    iput-object p1, p0, Lyi/widget/SearchView$7;->this$0:Lyi/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .parameter "animation"

    .prologue
    .line 801
    iget-object v0, p0, Lyi/widget/SearchView$7;->this$0:Lyi/widget/SearchView;

    #getter for: Lyi/widget/SearchView;->mSearchPlate:Landroid/view/View;
    invoke-static {v0}, Lyi/widget/SearchView;->access$500(Lyi/widget/SearchView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lyi/widget/SearchView$7;->this$0:Lyi/widget/SearchView;

    #getter for: Lyi/widget/SearchView;->mSearchPlate:Landroid/view/View;
    invoke-static {v2}, Lyi/widget/SearchView;->access$500(Lyi/widget/SearchView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lyi/widget/SearchView$7;->this$0:Lyi/widget/SearchView;

    #getter for: Lyi/widget/SearchView;->mSearchPlate:Landroid/view/View;
    invoke-static {v3}, Lyi/widget/SearchView;->access$500(Lyi/widget/SearchView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lyi/widget/SearchView$7;->this$0:Lyi/widget/SearchView;

    #getter for: Lyi/widget/SearchView;->mSearchPlate:Landroid/view/View;
    invoke-static {v4}, Lyi/widget/SearchView;->access$500(Lyi/widget/SearchView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 804
    return-void
.end method
