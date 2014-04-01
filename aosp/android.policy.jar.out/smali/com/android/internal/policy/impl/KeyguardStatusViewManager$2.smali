.class Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;
.super Ljava/lang/Object;
.source "KeyguardStatusViewManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 1122
    return-void
.end method

.method public onDMKeyguardUpdate()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 1129
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    const v5, #id@unlock_widget#t

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;
    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$2100(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;I)Landroid/view/View;

    move-result-object v1

    .line 1130
    .local v1, unlockWidget:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1131
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1800(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DM_IsLocked()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1133
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$2200(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1134
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$2200(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/widget/Button;

    move-result-object v5

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1800(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DM_IsLocked()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v4

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1136
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDMPrompt:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$2300(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1137
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDMPrompt:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$2300(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1800(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DM_IsLocked()Z

    move-result v5

    if-eqz v5, :cond_6

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1138
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDMPrompt:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$2300(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x205008e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1141
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mContainer:Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$300(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    if-eqz v2, :cond_3

    .line 1142
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$2400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    .line 1143
    .local v0, mode:I
    packed-switch v0, :pswitch_data_0

    .line 1149
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updatePasswordWhenDMChanged(Landroid/view/View;)V
    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$2600(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Landroid/view/View;)V

    .line 1153
    .end local v0           #mode:I
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v2, v4

    .line 1131
    goto :goto_0

    :cond_5
    move v2, v3

    .line 1134
    goto :goto_1

    :cond_6
    move v4, v3

    .line 1137
    goto :goto_2

    .line 1145
    .restart local v0       #mode:I
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updatePINWhenDMChanged()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$2500(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    goto :goto_3

    .line 1143
    :pswitch_data_0
    .packed-switch 0x20000
        :pswitch_0
    .end packed-switch
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 1126
    return-void
.end method
