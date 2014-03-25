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
    .line 134
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 2
    .parameter "status"

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingBatteryInfo:Z

    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mPluggedIn:Z

    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    iget v1, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iput v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    .line 140
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isCharged()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryCharged:Z

    .line 141
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryIsLow:Z

    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    iget v1, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryDetialStatus:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->access$202(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;I)I

    .line 144
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->update()V

    .line 145
    return-void

    .line 137
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
