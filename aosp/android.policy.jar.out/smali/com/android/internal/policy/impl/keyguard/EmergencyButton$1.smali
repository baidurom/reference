.class Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "EmergencyButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/EmergencyButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onPhoneStateChanged(I)V
    .locals 1
    .parameter "phoneState"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->updateEmergencyCallButton(I)V

    .line 66
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 4
    .parameter "plmn"
    .parameter "spn"
    .parameter "simId"

    .prologue
    .line 72
    const-string v1, "EmergencyButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRefreshCarrierInfo plmn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", spn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->access$100(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    .line 74
    .local v0, phoneState:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->updateEmergencyCallButton(I)V

    .line 75
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 2
    .parameter "simState"
    .parameter "simId"

    .prologue
    .line 60
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->access$000(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    .line 61
    .local v0, phoneState:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->updateEmergencyCallButton(I)V

    .line 62
    return-void
.end method
