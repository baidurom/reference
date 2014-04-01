.class Lcom/android/internal/policy/impl/SimUnlockScreen$2;
.super Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;
.source "SimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPuk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 734
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(Z)V
    .locals 8
    .parameter "success"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 736
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 737
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->hide()V

    .line 739
    :cond_0
    if-eqz p1, :cond_2

    .line 742
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget v5, v5, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 743
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DM_IsLocked()Z

    move-result v4

    if-ne v3, v4, :cond_1

    .line 744
    const-string v3, "keyguard"

    const-string v4, "we clicked cancel button"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 774
    :goto_0
    return-void

    .line 747
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 750
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mTimesLeft:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 751
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mResultPrompt:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x40b0026

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 752
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mResultPrompt:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 753
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreen;->getRetryPukCount(I)I
    invoke-static {v5, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$800(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I

    move-result v1

    .line 754
    .local v1, retryCount:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mPUKRetryCount:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$900(Lcom/android/internal/policy/impl/SimUnlockScreen;)I

    move-result v5

    if-eq v5, v1, :cond_3

    move v0, v3

    .line 755
    .local v0, countChange:Z
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreen;->getRetryPuk(I)Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/SimUnlockScreen;I)Ljava/lang/String;

    move-result-object v2

    .line 757
    .local v2, retryInfo:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1100(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x2050011

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 758
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mTimesLeft:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 760
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I
    invoke-static {v5, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1302(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I

    .line 762
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mPukEnterState:I
    invoke-static {v5, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1402(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I

    .line 763
    if-eqz v1, :cond_5

    .line 764
    if-eqz v0, :cond_4

    .line 765
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x2050012

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreen;->setInputInvalidAlertDialog(Ljava/lang/CharSequence;Z)V
    invoke-static {v3, v5, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1600(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/CharSequence;Z)V

    .line 772
    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto/16 :goto_0

    .end local v0           #countChange:Z
    .end local v2           #retryInfo:Ljava/lang/String;
    :cond_3
    move v0, v4

    .line 754
    goto :goto_1

    .line 767
    .restart local v0       #countChange:Z
    .restart local v2       #retryInfo:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1700(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/content/Context;

    move-result-object v5

    const v6, #string@lockscreen_pattern_wrong#t

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreen;->setInputInvalidAlertDialog(Ljava/lang/CharSequence;Z)V
    invoke-static {v3, v5, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1600(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/CharSequence;Z)V

    goto :goto_2

    .line 770
    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1800(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x2050016

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreen;->setInputInvalidAlertDialog(Ljava/lang/CharSequence;Z)V
    invoke-static {v4, v5, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1600(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/CharSequence;Z)V

    goto :goto_2
.end method
