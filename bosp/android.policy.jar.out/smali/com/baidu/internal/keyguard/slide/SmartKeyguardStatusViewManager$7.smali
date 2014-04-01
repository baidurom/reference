.class Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;
.super Ljava/lang/Object;
.source "SmartKeyguardStatusViewManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;


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
    .line 1202
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadCalibrationDataUpdate(Z)V
    .locals 1
    .parameter "DownloadCalibrationData"

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #setter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDownloadCalibrationData:Z
    invoke-static {v0, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2902(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Z)Z

    .line 1312
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateCalibrationDataText()V
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$3000(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)V

    .line 1313
    return-void
.end method

.method public onLockScreenUpdate(I)V
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v4, 0x1

    .line 1250
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->isAccountMode()Z
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2100(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Z

    move-result v0

    .line 1251
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

    .line 1252
    if-eqz v0, :cond_0

    .line 1260
    :goto_0
    return-void

    .line 1255
    :cond_0
    if-ne v4, p1, :cond_1

    .line 1256
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iget-object v2, v2, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSimGeminiState:Lcom/android/internal/telephony/IccCard$State;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateCarrierTextWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V
    invoke-static {v1, v2, v4}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2000(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;I)V

    goto :goto_0

    .line 1258
    :cond_1
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iget-object v2, v2, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    const/4 v3, 0x0

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateCarrierTextWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V
    invoke-static {v1, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2000(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;I)V

    goto :goto_0
.end method

.method public onMissedCallChanged(I)V
    .locals 0
    .parameter "missedCall"

    .prologue
    .line 1263
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 4
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 1206
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #setter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mShowingBatteryInfo:Z
    invoke-static {v1, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$1402(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Z)Z

    .line 1207
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #setter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPluggedIn:Z
    invoke-static {v1, p2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$1502(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Z)Z

    .line 1208
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #setter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mBatteryLevel:I
    invoke-static {v1, p3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$1602(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;I)I

    .line 1209
    new-instance v0, Llibcore/util/MutableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llibcore/util/MutableInt;-><init>(I)V

    .line 1210
    .local v0, tmpIcon:Llibcore/util/MutableInt;
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    const/16 v2, 0xf

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    invoke-static {v3, v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$300(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v3

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V
    invoke-static {v1, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$1700(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;ILjava/lang/CharSequence;)V

    .line 1211
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #setter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$1802(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1219
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #setter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;
    invoke-static {v0, p2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$1902(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1222
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iget-object v1, v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSimGeminiState:Lcom/android/internal/telephony/IccCard$State;

    const/4 v2, 0x1

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateCarrierTextWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V
    invoke-static {v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2000(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;I)V

    .line 1223
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iget-object v1, v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    const/4 v2, 0x0

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateCarrierTextWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V
    invoke-static {v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2000(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;I)V

    .line 1227
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1231
    return-void
.end method

.method public onSIMInfoChanged(I)V
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v4, 0x1

    .line 1236
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->isAccountMode()Z
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2100(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Z

    move-result v0

    .line 1237
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

    .line 1238
    if-eqz v0, :cond_0

    .line 1246
    :goto_0
    return-void

    .line 1241
    :cond_0
    if-ne v4, p1, :cond_1

    .line 1242
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iget-object v2, v2, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSimGeminiState:Lcom/android/internal/telephony/IccCard$State;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateCarrierTextWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V
    invoke-static {v1, v2, v4}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2000(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;I)V

    goto :goto_0

    .line 1244
    :cond_1
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iget-object v2, v2, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    const/4 v3, 0x0

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateCarrierTextWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V
    invoke-static {v1, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2000(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;I)V

    goto :goto_0
.end method

.method public onSearchNetworkUpdate(IZ)V
    .locals 6
    .parameter "simId"
    .parameter "switchOn"

    .prologue
    const v5, 0x40b001e

    .line 1269
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->isAccountMode()Z
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2100(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Z

    move-result v0

    .line 1270
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

    .line 1271
    if-eqz v0, :cond_0

    .line 1304
    :goto_0
    return-void

    .line 1274
    :cond_0
    if-eqz p2, :cond_2

    .line 1276
    if-nez p1, :cond_1

    .line 1277
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    sget-object v3, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->NetworkSearching:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    #setter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mStatus:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;
    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2202(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;)Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    .line 1278
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;
    invoke-static {v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2400(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2302(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1283
    :goto_1
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateCarrierText()V
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2700(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)V

    goto :goto_0

    .line 1280
    :cond_1
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    sget-object v3, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->NetworkSearching:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    #setter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mGeminiStatus:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;
    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2502(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;)Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    .line 1281
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;
    invoke-static {v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2400(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierGeminiText:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2602(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto :goto_1

    .line 1291
    :cond_2
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2800(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    .line 1292
    .local v1, status:Lcom/android/internal/telephony/IccCard$State;
    const/4 v2, 0x1

    if-ne v2, p1, :cond_3

    .line 1293
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    invoke-virtual {v3, v1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getStatusForIccState(Lcom/android/internal/telephony/IccCard$State;)Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    move-result-object v3

    #setter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mGeminiStatus:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;
    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2502(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;)Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    .line 1297
    :goto_2
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateCarrierTextWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V
    invoke-static {v2, v1, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2000(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;I)V

    goto :goto_0

    .line 1295
    :cond_3
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    invoke-virtual {v3, v1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getStatusForIccState(Lcom/android/internal/telephony/IccCard$State;)Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    move-result-object v3

    #setter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mStatus:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;
    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2202(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;)Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    goto :goto_2
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->refreshDate()V

    .line 1215
    return-void
.end method

.method public onUnlockKeyguard()V
    .locals 0

    .prologue
    .line 1307
    return-void
.end method

.method public onWallpaperSetComplete()V
    .locals 0

    .prologue
    .line 1266
    return-void
.end method
