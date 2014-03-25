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
    .line 760
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadCalibrationDataUpdate(Z)V
    .locals 1
    .parameter "downloadCalibrationData"

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCalibrationDataDownloaded:Z
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$2202(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Z)Z

    .line 896
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateCalibrationDataText()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$2300(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;)V

    .line 897
    return-void
.end method

.method public onLockScreenUpdate(I)V
    .locals 4
    .parameter "slotId"

    .prologue
    .line 842
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->isAccountMode()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;)Z

    move-result v0

    .line 843
    .local v0, account:Z
    const-string v1, "KeyguardStatusView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLockScreenUpdate, account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    if-eqz v0, :cond_0

    .line 852
    :goto_0
    return-void

    .line 848
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    :goto_1
    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateCarrierStatusWithSimStatus(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    invoke-static {v2, v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Lcom/android/internal/telephony/IccCardConstants$State;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mSimGeminiState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_1
.end method

.method public onPhoneStateChanged(I)V
    .locals 1
    .parameter "phoneState"

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    iput p1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPhoneState:I

    .line 817
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;I)V

    .line 818
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 4
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    .line 763
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

    .line 764
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v3

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPluggedIn:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$602(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Z)Z

    .line 765
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    iget v3, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mBatteryLevel:I
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$702(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;I)I

    .line 766
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isCharged()Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mBatteryCharged:Z

    .line 767
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mBatteryIsLow:Z

    .line 768
    new-instance v0, Llibcore/util/MutableInt;

    invoke-direct {v0, v2}, Llibcore/util/MutableInt;-><init>(I)V

    .line 769
    .local v0, tmpIcon:Llibcore/util/MutableInt;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    const/16 v2, 0xf

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v3

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;ILjava/lang/CharSequence;)V

    .line 770
    return-void

    .end local v0           #tmpIcon:Llibcore/util/MutableInt;
    :cond_1
    move v1, v2

    .line 763
    goto :goto_0
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$902(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 784
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;
    invoke-static {v0, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$1002(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 787
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mSimGeminiState:Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v2, 0x1

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateCarrierStatusWithSimStatus(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 788
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v2, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateCarrierStatusWithSimStatus(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 792
    return-void
.end method

.method public onSIMInfoChanged(I)V
    .locals 4
    .parameter "slotId"

    .prologue
    .line 827
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->isAccountMode()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;)Z

    move-result v0

    .line 828
    .local v0, account:Z
    const-string v1, "KeyguardStatusView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSIMInfoChanged, account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    if-eqz v0, :cond_0

    .line 837
    :goto_0
    return-void

    .line 833
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    :goto_1
    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateCarrierStatusWithSimStatus(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    invoke-static {v2, v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Lcom/android/internal/telephony/IccCardConstants$State;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mSimGeminiState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_1
.end method

.method public onSearchNetworkUpdate(IZ)V
    .locals 6
    .parameter "simId"
    .parameter "switchOn"

    .prologue
    const v5, 0x20500a9

    .line 856
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->isAccountMode()Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;)Z

    move-result v0

    .line 857
    .local v0, account:Z
    const-string v2, "KeyguardStatusView"

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

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    if-eqz v0, :cond_0

    .line 891
    :goto_0
    return-void

    .line 861
    :cond_0
    if-eqz p2, :cond_2

    .line 863
    if-nez p1, :cond_1

    .line 864
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->NetworkSearching:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$1502(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    .line 865
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$1602(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 870
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateCarrierText()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$2000(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;)V

    goto :goto_0

    .line 867
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->NetworkSearching:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mGeminiStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$1802(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    .line 868
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierGeminiText:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$1902(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto :goto_1

    .line 878
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$2100(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 879
    .local v1, status:Lcom/android/internal/telephony/IccCardConstants$State;
    const/4 v2, 0x1

    if-ne v2, p1, :cond_3

    .line 880
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    invoke-virtual {v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    move-result-object v3

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mGeminiStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$1802(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    .line 884
    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateCarrierStatusWithSimStatus(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    invoke-static {v2, v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Lcom/android/internal/telephony/IccCardConstants$State;I)V

    goto :goto_0

    .line 882
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    invoke-virtual {v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    move-result-object v3

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$1502(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    goto :goto_2
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 2
    .parameter "simState"

    .prologue
    .line 796
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->isAccountMode()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;)Z

    move-result v0

    .line 798
    .local v0, account:Z
    if-eqz v0, :cond_0

    .line 802
    :goto_0
    return-void

    .line 801
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCardConstants$State;)V
    invoke-static {v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0
.end method

.method public onSimStateChangedGemini(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 2
    .parameter "simState"
    .parameter "simId"

    .prologue
    .line 806
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->isAccountMode()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;)Z

    move-result v0

    .line 808
    .local v0, account:Z
    if-eqz v0, :cond_0

    .line 812
    :goto_0
    return-void

    .line 811
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateCarrierStatusWithSimStatus(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    invoke-static {v1, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Lcom/android/internal/telephony/IccCardConstants$State;I)V

    goto :goto_0
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->refreshDate()V

    .line 775
    return-void
.end method
