.class Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "SmartKeyguardStatusViewManager.java"


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
    .line 799
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockScreenUpdate(I)V
    .locals 4
    .parameter "slotId"

    .prologue
    .line 872
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->isAccountMode()Z
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$1800(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Z

    move-result v0

    .line 873
    .local v0, account:Z
    const-string v1, "SmartKeyguardStatusViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLockScreenUpdate, account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    if-eqz v0, :cond_0

    .line 882
    :goto_0
    return-void

    .line 878
    :cond_0
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iget-object v1, v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    :goto_1
    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateCarrierStatusWithSimStatus(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    invoke-static {v2, v1, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$1700(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Lcom/android/internal/telephony/IccCardConstants$State;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iget-object v1, v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSimGeminiState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_1
.end method

.method public onPhoneStateChanged(I)V
    .locals 1
    .parameter "phoneState"

    .prologue
    .line 848
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iput p1, v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPhoneState:I

    .line 849
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V
    invoke-static {v0, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2000(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;I)V

    .line 850
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 4
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    .line 803
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    #setter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mShowingBatteryInfo:Z
    invoke-static {v3, v1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$1102(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Z)Z

    .line 804
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v3

    #setter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPluggedIn:Z
    invoke-static {v1, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$1202(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Z)Z

    .line 805
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iget v3, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    #setter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mBatteryLevel:I
    invoke-static {v1, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$1302(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;I)I

    .line 806
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isCharged()Z

    move-result v3

    iput-boolean v3, v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mBatteryCharged:Z

    .line 807
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v3

    iput-boolean v3, v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mBatteryIsLow:Z

    .line 808
    new-instance v0, Llibcore/util/MutableInt;

    invoke-direct {v0, v2}, Llibcore/util/MutableInt;-><init>(I)V

    .line 809
    .local v0, tmpIcon:Llibcore/util/MutableInt;
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    const/16 v2, 0xf

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    invoke-static {v3, v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$100(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v3

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V
    invoke-static {v1, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$1400(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;ILjava/lang/CharSequence;)V

    .line 810
    return-void

    .end local v0           #tmpIcon:Llibcore/util/MutableInt;
    :cond_1
    move v1, v2

    .line 803
    goto :goto_0
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 819
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #setter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$1502(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 820
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #setter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;
    invoke-static {v0, p2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$1602(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 822
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iget-object v1, v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSimGeminiState:Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v2, 0x1

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateCarrierStatusWithSimStatus(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    invoke-static {v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$1700(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 823
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iget-object v1, v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v2, 0x0

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateCarrierStatusWithSimStatus(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    invoke-static {v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$1700(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 827
    return-void
.end method

.method public onSIMInfoChanged(I)V
    .locals 4
    .parameter "slotId"

    .prologue
    .line 858
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->isAccountMode()Z
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$1800(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Z

    move-result v0

    .line 859
    .local v0, account:Z
    const-string v1, "SmartKeyguardStatusViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSIMInfoChanged, account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    if-eqz v0, :cond_0

    .line 868
    :goto_0
    return-void

    .line 864
    :cond_0
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iget-object v1, v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    :goto_1
    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateCarrierStatusWithSimStatus(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    invoke-static {v2, v1, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$1700(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Lcom/android/internal/telephony/IccCardConstants$State;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iget-object v1, v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSimGeminiState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_1
.end method

.method public onSearchNetworkUpdate(IZ)V
    .locals 6
    .parameter "simId"
    .parameter "switchOn"

    .prologue
    const v5, 0x20500a9

    .line 885
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->isAccountMode()Z
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$1800(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Z

    move-result v0

    .line 886
    .local v0, account:Z
    const-string v2, "SmartKeyguardStatusViewManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSearchNetworkUpdate, account="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",simId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", switchOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    if-eqz v0, :cond_0

    .line 920
    :goto_0
    return-void

    .line 890
    :cond_0
    if-eqz p2, :cond_2

    .line 892
    if-nez p1, :cond_1

    .line 893
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    sget-object v3, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->NetworkSearching:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    #setter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mStatus:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;
    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2102(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;)Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    .line 894
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;
    invoke-static {v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2300(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2202(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 899
    :goto_1
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateCarrierText()V
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2600(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)V

    goto :goto_0

    .line 896
    :cond_1
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    sget-object v3, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->NetworkSearching:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    #setter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mGeminiStatus:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;
    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2402(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;)Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    .line 897
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;
    invoke-static {v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2300(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierGeminiText:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2502(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto :goto_1

    .line 907
    :cond_2
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2700(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 908
    .local v1, status:Lcom/android/internal/telephony/IccCardConstants$State;
    const/4 v2, 0x1

    if-ne v2, p1, :cond_3

    .line 909
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    invoke-virtual {v3, v1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    move-result-object v3

    #setter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mGeminiStatus:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;
    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2402(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;)Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    .line 913
    :goto_2
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateCarrierStatusWithSimStatus(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    invoke-static {v2, v1, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$1700(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Lcom/android/internal/telephony/IccCardConstants$State;I)V

    goto :goto_0

    .line 911
    :cond_3
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    invoke-virtual {v3, v1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    move-result-object v3

    #setter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mStatus:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;
    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2102(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;)Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    goto :goto_2
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 2
    .parameter "simState"

    .prologue
    .line 831
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->isAccountMode()Z
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$1800(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Z

    move-result v0

    .line 832
    .local v0, account:Z
    if-eqz v0, :cond_0

    .line 836
    :goto_0
    return-void

    .line 835
    :cond_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCardConstants$State;)V
    invoke-static {v1, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$1900(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0
.end method

.method public onSimStateChangedGemini(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 2
    .parameter "simState"
    .parameter "simId"

    .prologue
    .line 839
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->isAccountMode()Z
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$1800(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Z

    move-result v0

    .line 840
    .local v0, account:Z
    if-eqz v0, :cond_0

    .line 844
    :goto_0
    return-void

    .line 843
    :cond_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateCarrierStatusWithSimStatus(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    invoke-static {v1, p1, p2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$1700(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Lcom/android/internal/telephony/IccCardConstants$State;I)V

    goto :goto_0
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->refreshDate()V

    .line 815
    return-void
.end method
