.class Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$8;
.super Ljava/lang/Object;
.source "SmartKeyguardStatusViewManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1317
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$8;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 1321
    return-void
.end method

.method public onDMKeyguardUpdate()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 1328
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$8;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    const v5, #id@unlock_widget#t

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;
    invoke-static {v2, v5}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$3100(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;I)Landroid/view/View;

    move-result-object v1

    .line 1329
    .local v1, unlockWidget:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1330
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$8;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2800(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DM_IsLocked()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1332
    :cond_0
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$8;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$3200(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1333
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$8;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$3200(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/widget/Button;

    move-result-object v5

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$8;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2800(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DM_IsLocked()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v4

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1335
    :cond_1
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$8;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDMPrompt:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$3300(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1336
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$8;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDMPrompt:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$3300(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$8;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v5}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2800(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DM_IsLocked()Z

    move-result v5

    if-eqz v5, :cond_6

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1337
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$8;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDMPrompt:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$3300(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x40b001d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1340
    :cond_2
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$8;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mContainer:Landroid/view/View;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$500(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    if-eqz v2, :cond_3

    .line 1341
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$8;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$3400(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    .line 1342
    .local v0, mode:I
    packed-switch v0, :pswitch_data_0

    .line 1348
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$8;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updatePasswordWhenDMChanged(Landroid/view/View;)V
    invoke-static {v2, v1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$3600(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Landroid/view/View;)V

    .line 1352
    .end local v0           #mode:I
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v2, v4

    .line 1330
    goto :goto_0

    :cond_5
    move v2, v3

    .line 1333
    goto :goto_1

    :cond_6
    move v4, v3

    .line 1336
    goto :goto_2

    .line 1344
    .restart local v0       #mode:I
    :pswitch_0
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$8;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updatePINWhenDMChanged()V
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$3500(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)V

    goto :goto_3

    .line 1342
    :pswitch_data_0
    .packed-switch 0x20000
        :pswitch_0
    .end packed-switch
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 1325
    return-void
.end method
