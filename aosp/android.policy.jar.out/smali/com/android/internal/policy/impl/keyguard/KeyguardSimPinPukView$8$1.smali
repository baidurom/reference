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
    .line 769
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 771
    const-string v6, "KeyguardSimPinPukView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkPuk onSimLockChangedResponse, success = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->val$success:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->val$success:Z

    if-eqz v6, :cond_1

    .line 774
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mDismissSimPinPukRunnable:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v7, 0x1770

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 775
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mKeyguardUtilExt:Lcom/mediatek/common/policy/IKeyguardUtilExt;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Lcom/mediatek/common/policy/IKeyguardUtilExt;

    move-result-object v4

    invoke-interface {v4}, Lcom/mediatek/common/policy/IKeyguardUtilExt;->needShowPassToast()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 776
    const-string v4, "KeyguardSimPinPukView"

    const-string v6, "checkPuk showPassToast"

    invoke-static {v4, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$3000(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;

    move-result-object v4

    const v6, 0x2050124

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 778
    .local v1, cs:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$3100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->show()V

    .line 807
    .end local v1           #cs:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v6, 0x0

    invoke-interface {v4, v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 808
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCheckInProgress:Z
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$2902(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Z)Z

    .line 809
    return-void

    .line 781
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v7, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 783
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/app/ProgressDialog;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 784
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->hide()V

    .line 786
    :cond_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v7, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v7, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPukCount(I)I
    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$2600(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)I

    move-result v2

    .line 787
    .local v2, retryCount:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukRetryCount:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$3200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)I

    move-result v6

    if-eq v6, v2, :cond_3

    move v0, v4

    .line 788
    .local v0, countChange:Z
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v7, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v7, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPuk(I)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$2200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)Ljava/lang/String;

    move-result-object v3

    .line 789
    .local v3, retryInfo:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v7, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v7, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->setSIMCardName(I)V
    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)V

    .line 790
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v7, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$3300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x2050011

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 791
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Ljava/lang/StringBuffer;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 792
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v7, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 793
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinText:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUnlockEnterState:I
    invoke-static {v6, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$1702(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)I

    .line 795
    if-eqz v2, :cond_5

    .line 796
    if-eqz v0, :cond_4

    .line 797
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v7, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$3400(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;

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
    invoke-static {v4, v6, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$3500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .end local v0           #countChange:Z
    .end local v3           #retryInfo:Ljava/lang/String;
    :cond_3
    move v0, v5

    .line 787
    goto/16 :goto_1

    .line 801
    .restart local v0       #countChange:Z
    .restart local v3       #retryInfo:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$3600(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;

    move-result-object v6

    const v7, #string@lockscreen_pattern_wrong#t

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->setInputInvalidAlertDialog(Ljava/lang/CharSequence;Z)V
    invoke-static {v4, v6, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$3500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 804
    :cond_5
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v7, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$3700(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x2050016

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->setInputInvalidAlertDialog(Ljava/lang/CharSequence;Z)V
    invoke-static {v6, v7, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$3500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0
.end method
