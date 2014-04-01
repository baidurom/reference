.class Lcom/android/internal/policy/impl/PasswordUnlockScreen$8;
.super Ljava/lang/Object;
.source "PasswordUnlockScreen.java"

# interfaces
.implements Lcom/yi/internal/widget/LockScreenVoicePrintCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PasswordUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    const/high16 v1, 0x42b4

    #calls: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->ShowInputLayoutAnimation(F)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$900(Lcom/android/internal/policy/impl/PasswordUnlockScreen;F)V

    .line 591
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$400(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    #calls: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->sendToUbcServerForCount(Landroid/content/Context;B)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1100(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Landroid/content/Context;B)V

    .line 593
    return-void
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$500(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 584
    return-void
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$500(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 577
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$500(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 578
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->sendToUbcServerForSearchUnlockTime()V

    .line 579
    return-void
.end method
