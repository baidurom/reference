.class Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$2;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)V
    .locals 0
    .parameter

    .prologue
    .line 803
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 806
    const-string v1, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 807
    const-string v1, "seq"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 810
    .local v0, sequence:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;

    monitor-enter v2

    .line 811
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->access$900(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 813
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;

    const/4 v3, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->access$1002(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;Z)Z

    .line 814
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardViewMediator;)V

    .line 816
    :cond_0
    monitor-exit v2

    .line 818
    .end local v0           #sequence:I
    :cond_1
    return-void

    .line 816
    .restart local v0       #sequence:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
