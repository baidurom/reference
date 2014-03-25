.class Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$3;
.super Landroid/os/CountDownTimer;
.source "PatternUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 405
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$000(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 406
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$500(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, #string@lockscreen_pattern_instructions#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$500(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateStatusLines(Z)V

    .line 410
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$702(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;I)I

    .line 411
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mEnableFallback:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$900(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$FooterMode;->ForgotLockPattern:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$FooterMode;

    #calls: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$FooterMode;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$FooterMode;)V

    .line 416
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$FooterMode;->Normal:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$FooterMode;

    #calls: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$FooterMode;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$FooterMode;)V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 8
    .parameter "millisUntilFinished"

    .prologue
    const/4 v7, 0x1

    .line 396
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v0, v1

    .line 397
    .local v0, secondsRemaining:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$500(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, #string@lockscreen_too_many_failed_attempts_countdown#t

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$500(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateStatusLines(Z)V

    .line 401
    return-void
.end method
