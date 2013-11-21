.class Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$1;
.super Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;
.source "SmartMSimKeyguardStatusViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$1;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 271
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$1;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isClockVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$1;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$1;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$1;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$1;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    :cond_1
    :goto_0
    return-void

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$1;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 280
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$1;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    :cond_3
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$1;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 283
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$1;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    :cond_4
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$1;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->updateAlarmInfo()V

    goto :goto_0
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 1
    .parameter "phoneState"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$1;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;

    iput p1, v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPhoneState:I

    .line 265
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$1;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;

    invoke-virtual {v0, p1}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V

    .line 266
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 4
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 238
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$1;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;

    iput-boolean p1, v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mShowingBatteryInfo:Z

    .line 239
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$1;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;

    iput-boolean p2, v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPluggedIn:Z

    .line 240
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$1;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;

    iput p3, v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mBatteryLevel:I

    .line 241
    new-instance v0, Llibcore/util/MutableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llibcore/util/MutableInt;-><init>(I)V

    .line 242
    .local v0, tmpIcon:Llibcore/util/MutableInt;
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$1;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;

    const/16 v2, 0xf

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$1;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;

    invoke-virtual {v3, v0}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 243
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 251
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter "plmn"
    .parameter "spn"
    .parameter "subscription"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$1;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->access$000(Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;)[Ljava/lang/CharSequence;

    move-result-object v0

    aput-object p1, v0, p3

    .line 255
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$1;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimSpn:[Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->access$100(Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;)[Ljava/lang/CharSequence;

    move-result-object v0

    aput-object p2, v0, p3

    .line 256
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$1;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$1;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->access$200(Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;)[Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    aget-object v1, v1, p3

    #calls: Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V
    invoke-static {v0, v1, p3}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->access$300(Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;I)V

    .line 257
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 261
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$1;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->refreshDate()V

    .line 247
    return-void
.end method
