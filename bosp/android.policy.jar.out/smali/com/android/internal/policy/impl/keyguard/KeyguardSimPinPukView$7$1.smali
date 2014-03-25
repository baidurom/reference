.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;
.super Ljava/lang/Object;
.source "KeyguardSimPinPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->onSimCheckResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 632
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const v7, 0x20500a3

    const v6, 0x2050011

    const v5, #string@keyguard_password_enter_pin_code#t

    const/4 v4, 0x1

    .line 634
    const-string v1, "KeyguardSimPinPukView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSimLockChangedResponse, success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->val$success:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 636
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    .line 638
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->val$success:Z

    if-eqz v1, :cond_2

    .line 641
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 642
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 671
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 672
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCheckInProgress:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$2002(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Z)Z

    .line 673
    return-void

    .line 644
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 645
    .local v0, result:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukEnterState:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)I

    move-result v1

    if-nez v1, :cond_4

    .line 646
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 647
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPinCount(I)I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)I

    move-result v1

    if-nez v1, :cond_3

    .line 648
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPuk(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 650
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukEnterState:I
    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$902(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)I

    .line 655
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 656
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 652
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPin(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 657
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukEnterState:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 658
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 659
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPukCount(I)I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)I

    move-result v1

    if-nez v1, :cond_5

    .line 660
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$1800(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPuk(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 662
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukEnterState:I
    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$902(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)I

    .line 667
    :goto_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 668
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 664
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$1900(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPin(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method
