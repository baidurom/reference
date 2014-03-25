.class Lyi/widget/SearchView$9;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi/widget/SearchView;->hideSearchBackIcon(Z)V
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
    .line 837
    iput-object p1, p0, Lyi/widget/SearchView$9;->this$0:Lyi/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 843
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 848
    iget-object v0, p0, Lyi/widget/SearchView$9;->this$0:Lyi/widget/SearchView;

    #getter for: Lyi/widget/SearchView;->mSearchBackIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lyi/widget/SearchView;->access$400(Lyi/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 849
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 855
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 861
    return-void
.end method
