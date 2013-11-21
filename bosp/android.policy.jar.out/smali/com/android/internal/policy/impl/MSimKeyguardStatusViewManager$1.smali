.class Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;
.super Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;
.source "MSimKeyguardStatusViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 266
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isClockVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    :cond_1
    :goto_0
    return-void

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 275
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 278
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->updateAlarmInfo()V

    goto :goto_0
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 1
    .parameter "phoneState"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    iput p1, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPhoneState:I

    .line 260
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V

    .line 261
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 4
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 233
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    iput-boolean p1, v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    .line 234
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    iput-boolean p2, v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z

    .line 235
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    iput p3, v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    .line 236
    new-instance v0, Llibcore/util/MutableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llibcore/util/MutableInt;-><init>(I)V

    .line 237
    .local v0, tmpIcon:Llibcore/util/MutableInt;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    const/16 v2, 0xf

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 238
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 246
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter "plmn"
    .parameter "spn"
    .parameter "subscription"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->access$000(Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;)[Ljava/lang/CharSequence;

    move-result-object v0

    aput-object p1, v0, p3

    .line 250
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimSpn:[Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->access$100(Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;)[Ljava/lang/CharSequence;

    move-result-object v0

    aput-object p2, v0, p3

    .line 251
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->access$200(Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;)[Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    aget-object v1, v1, p3

    #calls: Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V
    invoke-static {v0, v1, p3}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->access$300(Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;I)V

    .line 252
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 256
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->refreshDate()V

    .line 242
    return-void
.end method

.method public onUserChanged(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 290
    return-void
.end method
