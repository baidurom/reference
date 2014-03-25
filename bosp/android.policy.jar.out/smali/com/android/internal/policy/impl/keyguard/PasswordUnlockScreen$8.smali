.class Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$8;
.super Ljava/lang/Object;
.source "PasswordUnlockScreen.java"

# interfaces
.implements Lcom/yi/internal/widget/LockScreenVoicePrintCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;

    const/high16 v1, 0x42b4

    #calls: Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->ShowInputLayoutAnimation(F)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->access$1100(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;F)V

    .line 555
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->access$400(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->access$1200(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    #calls: Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->sendToUbcServerForCount(Landroid/content/Context;B)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->access$1300(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;Landroid/content/Context;B)V

    .line 557
    return-void
.end method

.method public pokeWakelock()V
    .locals 3

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->access$500(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 548
    return-void
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->access$500(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 541
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->access$500(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    .line 542
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->sendToUbcServerForSearchUnlockTime()V

    .line 543
    return-void
.end method
