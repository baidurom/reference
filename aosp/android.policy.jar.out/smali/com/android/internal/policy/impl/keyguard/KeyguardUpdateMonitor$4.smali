.class Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$4;
.super Landroid/database/ContentObserver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->watchForDeviceProvisioning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 751
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 754
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 755
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$3100(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Z

    move-result v1

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$3002(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Z)Z

    .line 756
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$3000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x134

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 759
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEVICE_PROVISIONED state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$3000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_1
    return-void
.end method
