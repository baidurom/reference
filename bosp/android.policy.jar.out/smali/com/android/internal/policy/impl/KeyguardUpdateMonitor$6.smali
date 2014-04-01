.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$6;
.super Ljava/lang/Thread;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleDelaySIMCardChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 981
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$6;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 986
    :goto_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$6;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$6;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$6;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$6;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    if-nez v0, :cond_1

    .line 989
    :cond_0
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 990
    :catch_0
    move-exception v0

    goto :goto_0

    .line 994
    :cond_1
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDelaySIMCardChanged, exit, shouldPopup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$6;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldPopup:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$6;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 997
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$6;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldPopup:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 998
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$6;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$6;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x139

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$6;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;->getSimType()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$6;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;
    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;->getSIMCardCount()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1002
    :cond_2
    return-void
.end method
