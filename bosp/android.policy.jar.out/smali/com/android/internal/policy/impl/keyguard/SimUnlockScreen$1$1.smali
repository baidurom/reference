.class Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1$1;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;->onSimLockChangedResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1$1;->val$success:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 226
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->access$100(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 227
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->access$100(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->hide()V

    .line 229
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1$1;->val$success:Z

    if-eqz v2, :cond_1

    .line 232
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->access$200(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 233
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->access$300(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 253
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->access$300(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 254
    return-void

    .line 235
    :cond_1
    const/4 v1, 0x0

    .line 237
    .local v1, remaintime:I
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getIccPinPukRetryTimes()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 243
    :goto_1
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 244
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->access$400(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;)Landroid/content/Context;

    move-result-object v3

    const v4, #string@keyguard_password_wrong_pin_code_no_remain_time#t

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->access$800(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mEnteredDigits:I
    invoke-static {v2, v7}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->access$902(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;I)I

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 245
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    if-ne v1, v6, :cond_3

    .line 246
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->access$600(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;)Landroid/content/Context;

    move-result-object v3

    const v4, #string@keyguard_password_wrong_pin_code_one#t

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 248
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->access$700(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;)Landroid/content/Context;

    move-result-object v3

    const v4, #string@keyguard_password_wrong_pin_code#t

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
