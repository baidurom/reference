.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;
.super Ljava/lang/Object;
.source "KeyguardSimPinPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->onSimMeCheckResponse(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

.field final synthetic val$ret:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 827
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->val$ret:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 829
    const-string v1, "KeyguardSimPinPukView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkMe onSimChangedResponse, ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->val$ret:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->val$ret:I

    if-nez v1, :cond_1

    .line 832
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mDismissSimPinPukRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x1770

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 863
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 864
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCheckInProgress:Z
    invoke-static {v1, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$2902(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Z)Z

    .line 865
    return-void

    .line 833
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->val$ret:I

    if-ne v5, v1, :cond_4

    .line 834
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 835
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->minusRetryMeCount(I)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$3800(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)V

    .line 837
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 838
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    .line 840
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUnlockEnterState:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 841
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryMeCount(I)I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)I

    move-result v1

    if-nez v1, :cond_3

    .line 842
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$3900(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x205007c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->setInputInvalidAlertDialog(Ljava/lang/CharSequence;Z)V
    invoke-static {v1, v2, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$3500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Ljava/lang/CharSequence;Z)V

    .line 843
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    const/16 v2, 0x1f7

    invoke-virtual {v1, v2, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->sendVerifyResult(IZ)V

    .line 844
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->SIM_LOCK_ME:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setPINDismiss(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;Z)V

    .line 845
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 852
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 853
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 847
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimMeCategory(I)I

    move-result v0

    .line 848
    .local v0, category:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$4000(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x20500a2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 849
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$4100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x205007d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 850
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->strLockName:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$4200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryMe(I)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$4300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 855
    .end local v0           #category:I
    :cond_4
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->val$ret:I

    if-ne v1, v2, :cond_0

    .line 856
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 857
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    .line 859
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    const-string v2, "*** Exception happen, fail to unlock"

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->setInputInvalidAlertDialog(Ljava/lang/CharSequence;Z)V
    invoke-static {v1, v2, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$3500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Ljava/lang/CharSequence;Z)V

    .line 860
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->SIM_LOCK_ME:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setPINDismiss(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;Z)V

    .line 861
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto/16 :goto_0
.end method
