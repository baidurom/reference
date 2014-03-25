.class Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorCallback.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onBootCompleted()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method onDevicePolicyManagerStateChanged()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method onDockStatusUpdate(I)V
    .locals 0
    .parameter "dockState"

    .prologue
    .line 140
    return-void
.end method

.method onDownloadCalibrationDataUpdate(Z)V
    .locals 0
    .parameter "calibrationData"

    .prologue
    .line 133
    return-void
.end method

.method onKeyguardVisibilityChanged(Z)V
    .locals 0
    .parameter "showing"

    .prologue
    .line 70
    return-void
.end method

.method onLockScreenUpdate(I)V
    .locals 0
    .parameter "slotId"

    .prologue
    .line 128
    return-void
.end method

.method onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 64
    return-void
.end method

.method onRefreshBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 33
    return-void
.end method

.method onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"
    .parameter "simId"

    .prologue
    .line 49
    return-void
.end method

.method onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 56
    return-void
.end method

.method onSIMInfoChanged(I)V
    .locals 0
    .parameter "slotId"

    .prologue
    .line 118
    return-void
.end method

.method onSearchNetworkUpdate(IZ)V
    .locals 0
    .parameter "simId"
    .parameter "switchOn"

    .prologue
    .line 123
    return-void
.end method

.method onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 0
    .parameter "simState"
    .parameter "simId"

    .prologue
    .line 100
    return-void
.end method

.method onTimeChanged()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method onUserRemoved(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 105
    return-void
.end method

.method onUserSwitched(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 92
    return-void
.end method
