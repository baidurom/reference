.class Lcom/android/internal/policy/impl/SimUnlockScreen$5;
.super Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;
.source "SimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPin(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 941
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(Z)V
    .locals 10
    .parameter "success"

    .prologue
    const v9, 0x40b0026

    const v8, 0x2050011

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 943
    const-string v5, "SimUnlockScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSimLockChangedResponse, simId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget v7, v7, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", success = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 945
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->hide()V

    .line 947
    :cond_0
    if-eqz p1, :cond_3

    .line 950
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget v5, v5, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 951
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DM_IsLocked()Z

    move-result v4

    if-ne v3, v4, :cond_2

    .line 952
    const-string v3, "keyguard"

    const-string v4, "we clicked cancel button"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 1003
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 1004
    return-void

    .line 955
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 959
    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreen;->getSIMCardName(I)V
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1900(Lcom/android/internal/policy/impl/SimUnlockScreen;I)V

    .line 960
    const-string v5, "SimUnlockScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSimLockChangedResponse, simId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget v7, v7, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", success = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mPukEnterState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mPukEnterState:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1400(Lcom/android/internal/policy/impl/SimUnlockScreen;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mPukEnterState:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1400(Lcom/android/internal/policy/impl/SimUnlockScreen;)I

    move-result v5

    if-nez v5, :cond_5

    .line 964
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mResultPrompt:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    .line 965
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mResultPrompt:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 966
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreen;->getRetryPinCount(I)I
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$2300(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I

    move-result v1

    .line 967
    .local v1, retryCount:I
    const-string v5, "SimUnlockScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check PIN, retryCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    if-nez v1, :cond_4

    .line 969
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1100(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 970
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mTimesLeft:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v7, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget v7, v7, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreen;->getRetryPuk(I)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/SimUnlockScreen;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 971
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mPukEnterState:I
    invoke-static {v5, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1402(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I

    .line 976
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 977
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1302(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I

    goto/16 :goto_0

    .line 973
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1100(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v3

    const v5, #string@keyguard_password_enter_pin_code#t

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 974
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mTimesLeft:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreen;->getRetryPin(I)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$2400(Lcom/android/internal/policy/impl/SimUnlockScreen;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 979
    .end local v1           #retryCount:I
    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mPukEnterState:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1400(Lcom/android/internal/policy/impl/SimUnlockScreen;)I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 981
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mResultPrompt:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    .line 982
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mResultPrompt:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 983
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreen;->getRetryPukCount(I)I
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$800(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I

    move-result v1

    .line 984
    .restart local v1       #retryCount:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mPUKRetryCount:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$900(Lcom/android/internal/policy/impl/SimUnlockScreen;)I

    move-result v5

    if-eq v5, v1, :cond_6

    move v0, v3

    .line 985
    .local v0, countChange:Z
    :goto_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreen;->getRetryPuk(I)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/SimUnlockScreen;I)Ljava/lang/String;

    move-result-object v2

    .line 986
    .local v2, retryInfo:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1100(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 987
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mTimesLeft:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 989
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 990
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I
    invoke-static {v5, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1302(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I

    .line 991
    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mPukEnterState:I
    invoke-static {v5, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1402(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I

    .line 992
    if-eqz v1, :cond_8

    .line 993
    if-eqz v0, :cond_7

    .line 994
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$2500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/content/Context;

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

    goto/16 :goto_0

    .end local v0           #countChange:Z
    .end local v2           #retryInfo:Ljava/lang/String;
    :cond_6
    move v0, v4

    .line 984
    goto :goto_2

    .line 996
    .restart local v0       #countChange:Z
    .restart local v2       #retryInfo:Ljava/lang/String;
    :cond_7
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$2600(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/content/Context;

    move-result-object v5

    const v6, #string@lockscreen_pattern_wrong#t

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreen;->setInputInvalidAlertDialog(Ljava/lang/CharSequence;Z)V
    invoke-static {v3, v5, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1600(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 999
    :cond_8
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$2700(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x2050016

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreen;->setInputInvalidAlertDialog(Ljava/lang/CharSequence;Z)V
    invoke-static {v4, v5, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1600(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0
.end method
