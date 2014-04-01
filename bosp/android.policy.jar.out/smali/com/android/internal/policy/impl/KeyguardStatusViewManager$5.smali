.class Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;
.super Ljava/lang/Object;
.source "KeyguardStatusViewManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;


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
    .line 1107
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadCalibrationDataUpdate(Z)V
    .locals 1
    .parameter "DownloadCalibrationData"

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDownloadCalibrationData:Z
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$2302(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z

    .line 1217
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCalibrationDataText()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$2400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    .line 1218
    return-void
.end method

.method public onLockScreenUpdate(I)V
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v4, 0x1

    .line 1155
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->isAccountMode()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1500(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Z

    move-result v0

    .line 1156
    .local v0, account:Z
    const-string v1, "KeyguardStatusViewManager"

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

    .line 1157
    if-eqz v0, :cond_0

    .line 1165
    :goto_0
    return-void

    .line 1160
    :cond_0
    if-ne v4, p1, :cond_1

    .line 1161
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimGeminiState:Lcom/android/internal/telephony/IccCard$State;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCarrierTextWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V
    invoke-static {v1, v2, v4}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;I)V

    goto :goto_0

    .line 1163
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    const/4 v3, 0x0

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCarrierTextWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;I)V

    goto :goto_0
.end method

.method public onMissedCallChanged(I)V
    .locals 0
    .parameter "missedCall"

    .prologue
    .line 1168
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 4
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 1111
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z
    invoke-static {v1, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$802(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z

    .line 1112
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z
    invoke-static {v1, p2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$902(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z

    .line 1113
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I
    invoke-static {v1, p3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1002(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;I)I

    .line 1114
    new-instance v0, Llibcore/util/MutableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llibcore/util/MutableInt;-><init>(I)V

    .line 1115
    .local v0, tmpIcon:Llibcore/util/MutableInt;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    const/16 v2, 0xf

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$300(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v3

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1100(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;ILjava/lang/CharSequence;)V

    .line 1116
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1202(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1124
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;
    invoke-static {v0, p2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1302(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1127
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimGeminiState:Lcom/android/internal/telephony/IccCard$State;

    const/4 v2, 0x1

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCarrierTextWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;I)V

    .line 1128
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    const/4 v2, 0x0

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCarrierTextWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;I)V

    .line 1132
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1136
    return-void
.end method

.method public onSIMInfoChanged(I)V
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v4, 0x1

    .line 1141
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->isAccountMode()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1500(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Z

    move-result v0

    .line 1142
    .local v0, account:Z
    const-string v1, "KeyguardStatusViewManager"

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

    .line 1143
    if-eqz v0, :cond_0

    .line 1151
    :goto_0
    return-void

    .line 1146
    :cond_0
    if-ne v4, p1, :cond_1

    .line 1147
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimGeminiState:Lcom/android/internal/telephony/IccCard$State;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCarrierTextWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V
    invoke-static {v1, v2, v4}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;I)V

    goto :goto_0

    .line 1149
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    const/4 v3, 0x0

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCarrierTextWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;I)V

    goto :goto_0
.end method

.method public onSearchNetworkUpdate(IZ)V
    .locals 6
    .parameter "simId"
    .parameter "switchOn"

    .prologue
    const v5, 0x40b001e

    .line 1174
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->isAccountMode()Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1500(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Z

    move-result v0

    .line 1175
    .local v0, account:Z
    const-string v2, "KeyguardStatusViewManager"

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

    .line 1176
    if-eqz v0, :cond_0

    .line 1209
    :goto_0
    return-void

    .line 1179
    :cond_0
    if-eqz p2, :cond_2

    .line 1181
    if-nez p1, :cond_1

    .line 1182
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    sget-object v3, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->NetworkSearching:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1602(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    .line 1183
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1800(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1702(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1188
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCarrierText()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$2100(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    goto :goto_0

    .line 1185
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    sget-object v3, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->NetworkSearching:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mGeminiStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1902(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    .line 1186
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1800(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierGeminiText:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$2002(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto :goto_1

    .line 1196
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$2200(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    .line 1197
    .local v1, status:Lcom/android/internal/telephony/IccCard$State;
    const/4 v2, 0x1

    if-ne v2, p1, :cond_3

    .line 1198
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v3, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getStatusForIccState(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    move-result-object v3

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mGeminiStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1902(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    .line 1202
    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCarrierTextWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V
    invoke-static {v2, v1, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;I)V

    goto :goto_0

    .line 1200
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v3, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getStatusForIccState(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    move-result-object v3

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1602(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_2
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->refreshDate()V

    .line 1120
    return-void
.end method

.method public onUnlockKeyguard()V
    .locals 0

    .prologue
    .line 1212
    return-void
.end method

.method public onWallpaperSetComplete()V
    .locals 0

    .prologue
    .line 1171
    return-void
.end method
