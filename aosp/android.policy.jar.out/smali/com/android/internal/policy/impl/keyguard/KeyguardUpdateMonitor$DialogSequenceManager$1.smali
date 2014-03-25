.class Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager$1;
.super Landroid/database/ContentObserver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 2374
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v4, 0x1

    .line 2377
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->queryDialogSequenceSeetings()I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->access$3500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;)I

    move-result v0

    .line 2379
    .local v0, value:I
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DialogSequenceManager DialogSequenceObserver--onChange()--dialog_sequence_settings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    if-nez v0, :cond_1

    .line 2383
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;

    const/4 v2, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->setLocked(Z)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->access$3600(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;Z)V

    .line 2384
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->handleShowDialog()V

    .line 2389
    :cond_0
    :goto_0
    return-void

    .line 2385
    :cond_1
    if-ne v0, v4, :cond_0

    .line 2386
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->setLocked(Z)V
    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->access$3600(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;Z)V

    .line 2387
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->handleShowDialog()V

    goto :goto_0
.end method
