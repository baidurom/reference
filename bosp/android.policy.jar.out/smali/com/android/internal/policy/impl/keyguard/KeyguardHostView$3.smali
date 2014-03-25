.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 1
    .parameter "authenticated"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showNextSecurityScreenOrFinish(Z)V
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)V

    goto :goto_0
.end method

.method public getFailedAttempts()I
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    return v0
.end method

.method public hasOnDismissAction()Z
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->hasOnDismissAction()Z

    move-result v0

    return v0
.end method

.method public isVerifyUnlockOnly()Z
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsVerifyUnlockOnly:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z

    move-result v0

    return v0
.end method

.method public reportFailedUnlockAttempt()V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Biometric:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Voice:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_1

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->reportFailedBiometricUnlockAttempt()V

    .line 431
    :goto_0
    return-void

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->reportFailedUnlockAttempt()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    goto :goto_0
.end method

.method public reportSuccessfulUnlockAttempt()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 421
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt()V

    .line 422
    return-void
.end method

.method public setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 445
    return-void
.end method

.method public showBackupSecurity()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showBackupSecurityScreen()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    .line 440
    return-void
.end method

.method public updateClipChildren(Z)V
    .locals 1
    .parameter "clipChildren"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setClipChildrenForNewEventView(Z)V

    .line 467
    :cond_0
    return-void
.end method

.method public updateKeyguardLayerVisibility(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyaugerLayerVisibility:Z
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1202(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)Z

    .line 458
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateKeyguardLayerVisibility()V

    .line 459
    return-void
.end method

.method public userActivity(J)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->userActivity(J)V

    .line 405
    :cond_0
    return-void
.end method
