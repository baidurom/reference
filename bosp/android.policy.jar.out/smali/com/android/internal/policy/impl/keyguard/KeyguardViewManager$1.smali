.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

.field final synthetic val$showListener:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;->val$showListener:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 421
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScreenTurnedOn mKeyguardView visible, showListener.onShown"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;->val$showListener:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;->onShown(Landroid/os/IBinder;)V

    .line 427
    :goto_0
    return-void

    .line 424
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScreenTurnedOn mKeyguardView !visible showListener.onShown"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;->val$showListener:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;->onShown(Landroid/os/IBinder;)V

    goto :goto_0
.end method
