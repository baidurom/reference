.class Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardStatusViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 640
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .locals 1
    .parameter "phoneState"

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    iput p1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPhoneState:I

    .line 667
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;I)V

    .line 668
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 4
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    .line 643
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mShowingBatteryInfo:Z
    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$502(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Z)Z

    .line 644
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v3

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPluggedIn:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$602(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Z)Z

    .line 645
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    iget v3, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mBatteryLevel:I
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$702(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;I)I

    .line 646
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isCharged()Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mBatteryCharged:Z

    .line 647
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mBatteryIsLow:Z

    .line 648
    new-instance v0, Llibcore/util/MutableInt;

    invoke-direct {v0, v2}, Llibcore/util/MutableInt;-><init>(I)V

    .line 649
    .local v0, tmpIcon:Llibcore/util/MutableInt;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    const/16 v2, 0xf

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v3

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;ILjava/lang/CharSequence;)V

    .line 650
    return-void

    .end local v0           #tmpIcon:Llibcore/util/MutableInt;
    :cond_1
    move v1, v2

    .line 643
    goto :goto_0
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$902(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 660
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;
    invoke-static {v0, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$1002(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 661
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCardConstants$State;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 662
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCardConstants$State;)V
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 673
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->refreshDate()V

    .line 655
    return-void
.end method
