.class Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$3;
.super Landroid/database/ContentObserver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->watchForDeviceProvisioning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x0

    .line 323
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 324
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->access$1100(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    #setter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->mDeviceProvisioned:Z
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->access$1002(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;Z)Z

    .line 326
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->mDeviceProvisioned:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;->access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x134

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 330
    :cond_1
    return-void
.end method
