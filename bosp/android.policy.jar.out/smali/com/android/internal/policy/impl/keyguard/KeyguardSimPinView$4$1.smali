.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4$1;
.super Ljava/lang/Object;
.source "KeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;->onSimCheckResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4$1;->val$success:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 191
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 194
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4$1;->val$success:Z

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 198
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 204
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 205
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimCheckInProgress:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->access$102(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;Z)Z

    .line 206
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, #string@kg_password_wrong_pin_code#t

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 202
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
