.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost$1;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    monitor-enter v1

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->shouldEnableScreenRotation(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V
    invoke-static {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;ZZLandroid/os/Bundle;)V

    .line 168
    :goto_0
    monitor-exit v1

    .line 169
    return-void

    .line 166
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onConfigurationChanged: view not visible"

    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
