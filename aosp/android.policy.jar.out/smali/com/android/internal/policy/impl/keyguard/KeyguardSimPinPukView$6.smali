.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$6;
.super Ljava/lang/Object;
.source "KeyguardSimPinPukView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    .line 336
    const/4 v0, 0x1

    .line 337
    .local v0, lockType:I
    const/16 v2, 0x1f5

    .line 339
    .local v2, verifyType:I
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v5, v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 340
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    sget-object v5, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->SIM_LOCK_PIN:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setPINDismiss(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;Z)V

    .line 341
    const/4 v0, 0x1

    .line 342
    const/16 v2, 0x1f5

    .line 353
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->setSimLockScreenDone(II)V
    invoke-static {v3, v4, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;II)V

    .line 354
    new-instance v1, Landroid/content/Intent;

    const-string v3, "action_pin_dismiss"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    .local v1, t:Landroid/content/Intent;
    const-string v3, "simslot"

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 356
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 358
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->sendVerifyResult(IZ)V

    .line 360
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v4, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 361
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 362
    return-void

    .line 343
    .end local v1           #t:Landroid/content/Intent;
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v5, v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 344
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    sget-object v5, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->SIM_LOCK_PUK:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setPINDismiss(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;Z)V

    .line 345
    const/4 v0, 0x1

    .line 346
    const/16 v2, 0x1f6

    goto :goto_0

    .line 347
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v5, v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 348
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    sget-object v5, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;->SIM_LOCK_ME:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setPINDismiss(ILcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimLockType;Z)V

    .line 349
    const/4 v0, 0x2

    .line 350
    const/16 v2, 0x1f7

    goto/16 :goto_0
.end method
