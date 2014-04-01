.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$4;
.super Landroid/database/ContentObserver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$4;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x0

    .line 571
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 572
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$4;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$4;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1802(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)Z

    .line 574
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$4;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$4;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/database/ContentObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$4;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$4;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 577
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$4;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2002(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;

    .line 579
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$4;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEVICE_PROVISIONED state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$4;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_2
    return-void
.end method
