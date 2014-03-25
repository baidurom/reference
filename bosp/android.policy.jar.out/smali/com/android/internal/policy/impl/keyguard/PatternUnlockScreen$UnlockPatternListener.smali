.class Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$UnlockPatternListener;
.super Ljava/lang/Object;
.source "PatternUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$UnlockPatternListener;-><init>(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 350
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x1b58

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 356
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    goto :goto_0
.end method

.method public onPatternCleared()V
    .locals 0

    .prologue
    .line 345
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v6, 0x1

    .line 359
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$400(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 360
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$000(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v3

    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 362
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$500(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 363
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$500(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateStatusLines(Z)V

    .line 364
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 365
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    .line 366
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    const/4 v2, 0x0

    .line 369
    .local v2, reportFailedAttempt:Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_2

    .line 370
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    const-wide/16 v4, 0x1b58

    invoke-interface {v3, v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 372
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$000(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v3

    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 373
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_3

    .line 374
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$608(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)I

    .line 375
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$708(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)I

    .line 376
    const/4 v2, 0x1

    .line 378
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$700(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_4

    .line 380
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$400(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 381
    .local v0, deadline:J
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->handleAttemptLockout(J)V
    invoke-static {v3, v0, v1}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$800(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;J)V

    .line 394
    .end local v0           #deadline:J
    :goto_1
    if-eqz v2, :cond_0

    .line 395
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportFailedUnlockAttempt()V

    goto :goto_0

    .line 384
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$500(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, #string@lockscreen_pattern_wrong#t

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 386
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$500(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateStatusLines(Z)V

    .line 387
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$000(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$300(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public onPatternStart()V
    .locals 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 341
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$000(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$300(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 342
    return-void
.end method
