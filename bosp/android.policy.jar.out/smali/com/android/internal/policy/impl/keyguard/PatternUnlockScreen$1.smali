.class Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$1;
.super Ljava/lang/Object;
.source "PatternUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$000(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 90
    return-void
.end method
