.class Lcom/android/internal/policy/impl/SimUnlockScreen$4;
.super Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;
.source "SimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 855
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(Z)V
    .locals 9
    .parameter "success"

    .prologue
    const v8, 0x40b0026

    const v7, 0x2050011

    const v6, #string@keyguard_password_enter_pin_code#t

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 857
    const-string v1, "SimUnlockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSimLockChangedResponse, success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 859
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    .line 861
    :cond_0
    if-eqz p1, :cond_3

    .line 864
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 865
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DM_IsLocked()Z

    move-result v1

    if-ne v5, v1, :cond_2

    .line 866
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 914
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 915
    return-void

    .line 868
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 871
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mPukEnterState:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1400(Lcom/android/internal/policy/impl/SimUnlockScreen;)I

    move-result v1

    if-nez v1, :cond_5

    .line 873
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mResultPrompt:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    .line 874
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mResultPrompt:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 875
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreen;->getRetryPinCount(I)I
    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$2300(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I

    move-result v0

    .line 876
    .local v0, retryCount:I
    if-nez v0, :cond_4

    .line 878
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1100(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 879
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mTimesLeft:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreen;->getRetryPuk(I)Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/SimUnlockScreen;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 881
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mPukEnterState:I
    invoke-static {v1, v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1402(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I

    .line 889
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 890
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I
    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1302(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I

    goto :goto_0

    .line 885
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1100(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 886
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mTimesLeft:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreen;->getRetryPin(I)Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$2400(Lcom/android/internal/policy/impl/SimUnlockScreen;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 893
    .end local v0           #retryCount:I
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mPukEnterState:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1400(Lcom/android/internal/policy/impl/SimUnlockScreen;)I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 895
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mResultPrompt:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    .line 896
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mResultPrompt:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 897
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreen;->getRetryPukCount(I)I
    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$800(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I

    move-result v0

    .line 898
    .restart local v0       #retryCount:I
    if-nez v0, :cond_6

    .line 900
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1100(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 901
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mTimesLeft:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreen;->getRetryPuk(I)Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/SimUnlockScreen;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 903
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mPukEnterState:I
    invoke-static {v1, v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1402(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I

    .line 910
    :goto_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 911
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I
    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1302(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I

    goto/16 :goto_0

    .line 907
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1100(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 908
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mTimesLeft:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreen;->getRetryPin(I)Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$2400(Lcom/android/internal/policy/impl/SimUnlockScreen;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
