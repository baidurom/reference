.class Lcom/android/internal/policy/impl/keyguard/PagedView$9$1$1;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/PagedView$9$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/internal/policy/impl/keyguard/PagedView$9$1;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/PagedView$9$1;)V
    .locals 0
    .parameter

    .prologue
    .line 2387
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$9$1$1;->this$2:Lcom/android/internal/policy/impl/keyguard/PagedView$9$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2390
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$9$1$1;->this$2:Lcom/android/internal/policy/impl/keyguard/PagedView$9$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/PagedView$9;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/PagedView;->mDeferringForDelete:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->access$802(Lcom/android/internal/policy/impl/keyguard/PagedView;Z)Z

    .line 2391
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$9$1$1;->this$2:Lcom/android/internal/policy/impl/keyguard/PagedView$9$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/PagedView$9;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onEndReordering()V

    .line 2392
    return-void
.end method
