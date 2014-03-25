.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;
.super Landroid/widget/FrameLayout;
.source "KeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewManagerHost"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    .line 149
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 150
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->setFitsSystemWindows(Z)V

    .line 152
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mCreateOrientation:I
    invoke-static {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;I)I

    .line 153
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 173
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 174
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 175
    .local v0, keyCode:I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->handleBackKey()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    .end local v0           #keyCode:I
    :cond_0
    :goto_0
    return v1

    .line 177
    .restart local v0       #keyCode:I
    :cond_1
    const/16 v2, 0x52

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->handleMenuKey()Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    .end local v0           #keyCode:I
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 159
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged, old orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mCreateOrientation:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mCreateOrientation:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)I

    move-result v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->shouldEnableScreenRotation()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;ZZLandroid/os/Bundle;)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConfigurationChanged: view not visible"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
