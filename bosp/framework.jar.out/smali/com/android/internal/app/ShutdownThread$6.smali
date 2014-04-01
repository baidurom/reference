.class final Lcom/android/internal/app/ShutdownThread$6;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 411
    const-string v0, "ShutdownThread"

    const-string/jumbo v1, "setBacklightBrightness: Off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$600()Lcom/android/internal/app/ShutdownThread;

    move-result-object v0

    #getter for: Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/internal/app/ShutdownThread;->access$700(Lcom/android/internal/app/ShutdownThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$600()Lcom/android/internal/app/ShutdownThread;

    move-result-object v0

    #getter for: Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/internal/app/ShutdownThread;->access$700(Lcom/android/internal/app/ShutdownThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$600()Lcom/android/internal/app/ShutdownThread;

    move-result-object v0

    #getter for: Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/internal/app/ShutdownThread;->access$700(Lcom/android/internal/app/ShutdownThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 414
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$600()Lcom/android/internal/app/ShutdownThread;

    move-result-object v0

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->access$702(Lcom/android/internal/app/ShutdownThread;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 416
    :cond_0
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$600()Lcom/android/internal/app/ShutdownThread;

    move-result-object v0

    #getter for: Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/internal/app/ShutdownThread;->access$800(Lcom/android/internal/app/ShutdownThread;)Landroid/os/PowerManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setBacklightBrightnessOff(Z)V

    .line 417
    return-void
.end method
