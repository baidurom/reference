.class Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper$CheckForLongPress;
.super Ljava/lang/Object;
.source "CheckLongPressHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    #getter for: Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->access$000(Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    #getter for: Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->access$000(Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    #getter for: Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->mHasPerformedLongPress:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->access$100(Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    #getter for: Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->access$000(Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    #getter for: Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->access$000(Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 37
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;

    const/4 v1, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->mHasPerformedLongPress:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;->access$102(Lcom/android/internal/policy/impl/keyguard/CheckLongPressHelper;Z)Z

    .line 40
    :cond_0
    return-void
.end method
