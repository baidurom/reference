.class Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$10;
.super Ljava/lang/Object;
.source "SmartKeyguardStatusViewManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


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
    .line 1383
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$10;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 4
    .parameter "simState"

    .prologue
    .line 1386
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$10;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->isAccountMode()Z
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2100(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Z

    move-result v0

    .line 1387
    .local v0, account:Z
    const-string v1, "KeyguardStatusViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSimStateCallback, account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", simState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    if-eqz v0, :cond_0

    .line 1392
    :goto_0
    return-void

    .line 1391
    :cond_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$10;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    const/4 v2, 0x0

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateCarrierTextWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V
    invoke-static {v1, p1, v2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2000(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;I)V

    goto :goto_0
.end method

.method public onSimStateChangedGemini(Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 4
    .parameter "simState"
    .parameter "simId"

    .prologue
    .line 1395
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$10;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->isAccountMode()Z
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2100(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Z

    move-result v0

    .line 1396
    .local v0, account:Z
    const-string v1, "KeyguardStatusViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSimStateCallback, account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", simState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    if-eqz v0, :cond_0

    .line 1401
    :goto_0
    return-void

    .line 1400
    :cond_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$10;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateCarrierTextWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V
    invoke-static {v1, p1, p2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$2000(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;I)V

    goto :goto_0
.end method
