.class Lcom/android/internal/policy/impl/keyguard/PagedView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/PagedView;->hideScrollingIndicator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cancelled:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/PagedView;)V
    .locals 1
    .parameter

    .prologue
    .line 1977
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1978
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$3;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 1981
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$3;->cancelled:Z

    .line 1982
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1985
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$3;->cancelled:Z

    if-nez v0, :cond_0

    .line 1986
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->access$300(Lcom/android/internal/policy/impl/keyguard/PagedView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1988
    :cond_0
    return-void
.end method
