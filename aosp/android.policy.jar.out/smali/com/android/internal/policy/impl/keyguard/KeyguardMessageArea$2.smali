.class Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardMessageArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 6
    .parameter "status"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    iget v0, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->index:I

    .line 144
    .local v0, idx:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    iget-object v4, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingBatteryInfo:[Z

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v3

    :goto_0
    aput-boolean v1, v4, v0

    .line 146
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mCharging:[Z

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    iget v4, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    :cond_1
    :goto_1
    aput-boolean v3, v1, v0

    .line 149
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryLevel:[I

    iget v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    aput v2, v1, v0

    .line 150
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryCharged:[Z

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isCharged()Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 151
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryIsLow:[Z

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 152
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->update()V

    .line 153
    return-void

    :cond_2
    move v1, v2

    .line 144
    goto :goto_0

    :cond_3
    move v3, v2

    .line 146
    goto :goto_1
.end method
