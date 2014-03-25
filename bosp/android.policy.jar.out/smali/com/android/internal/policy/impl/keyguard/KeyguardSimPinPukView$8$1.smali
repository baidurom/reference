.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;
.super Ljava/lang/Object;
.source "KeyguardSimPinPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->onSimCheckResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 694
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 696
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/app/ProgressDialog;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 697
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->hide()V

    .line 699
    :cond_0
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->val$success:Z

    if-eqz v6, :cond_1

    .line 702
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v7, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v7, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 703
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 730
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4, v9, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 731
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCheckInProgress:Z
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$2002(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Z)Z

    .line 732
    return-void

    .line 706
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 707
    .local v1, result:Ljava/lang/StringBuffer;
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v7, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v7, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getSIMCardName(I)V
    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)V

    .line 708
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$2100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x2050011

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 709
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v7, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v8, v8, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v8, v8, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPuk(I)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 710
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 711
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v7, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v7, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPukCount(I)I
    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)I

    move-result v2

    .line 712
    .local v2, retryCount:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPUKRetryCount:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$2200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)I

    move-result v6

    if-eq v6, v2, :cond_2

    move v0, v4

    .line 713
    .local v0, countChange:Z
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v7, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v7, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPuk(I)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)Ljava/lang/String;

    move-result-object v3

    .line 714
    .local v3, retryInfo:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinText:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukEnterState:I
    invoke-static {v6, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$902(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)I

    .line 716
    if-eqz v2, :cond_4

    .line 717
    if-eqz v0, :cond_3

    .line 718
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v7, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$2300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x2050012

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->setInputInvalidAlertDialog(Ljava/lang/CharSequence;Z)V
    invoke-static {v4, v6, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$2400(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Ljava/lang/CharSequence;Z)V

    .line 727
    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4, v9, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 728
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCheckInProgress:Z
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$2002(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Z)Z

    goto/16 :goto_0

    .end local v0           #countChange:Z
    .end local v3           #retryInfo:Ljava/lang/String;
    :cond_2
    move v0, v5

    .line 712
    goto :goto_1

    .line 722
    .restart local v0       #countChange:Z
    .restart local v3       #retryInfo:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$2500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;

    move-result-object v6

    const v7, #string@lockscreen_pattern_wrong#t

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->setInputInvalidAlertDialog(Ljava/lang/CharSequence;Z)V
    invoke-static {v4, v6, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$2400(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Ljava/lang/CharSequence;Z)V

    goto :goto_2

    .line 725
    :cond_4
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v7, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$2600(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x2050016

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->setInputInvalidAlertDialog(Ljava/lang/CharSequence;Z)V
    invoke-static {v6, v7, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$2400(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Ljava/lang/CharSequence;Z)V

    goto :goto_2
.end method
