.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$5;
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
    .line 260
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 263
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 264
    .local v1, updateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 265
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v1, v2, v5, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setPINDismiss(IZZ)V

    .line 269
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->setSimLockScreenDone(II)V
    invoke-static {v2, v3, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;II)V

    .line 271
    new-instance v0, Landroid/content/Intent;

    const-string v2, "action_pin_dismiss"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, t:Landroid/content/Intent;
    const-string v2, "simslot"

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 273
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 277
    .end local v0           #t:Landroid/content/Intent;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    const/16 v3, 0x1f5

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->sendVerifyResult(IZ)V

    .line 279
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v3, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 280
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 281
    return-void

    .line 267
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setPINDismiss(IZZ)V

    goto :goto_0

    .line 275
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->setSimLockScreenDone(II)V
    invoke-static {v2, v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;II)V

    goto :goto_1
.end method
