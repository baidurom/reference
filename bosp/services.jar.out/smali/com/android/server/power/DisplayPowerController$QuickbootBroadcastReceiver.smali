.class Lcom/android/server/power/DisplayPowerController$QuickbootBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QuickbootBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/power/DisplayPowerController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 503
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, action:Ljava/lang/String;
    const-string v1, "PowerManagerDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive the quickboot broadcast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/power/DisplayPowerController;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mElectronBeamFadesConfig:Z
    invoke-static {v2}, Lcom/android/server/power/DisplayPowerController;->access$300(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v2

    #setter for: Lcom/android/server/power/DisplayPowerController;->mElectronBeamFadesConfigOrigin:Z
    invoke-static {v1, v2}, Lcom/android/server/power/DisplayPowerController;->access$202(Lcom/android/server/power/DisplayPowerController;Z)Z

    .line 509
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/power/DisplayPowerController;

    const/4 v2, 0x1

    #setter for: Lcom/android/server/power/DisplayPowerController;->mElectronBeamFadesConfig:Z
    invoke-static {v1, v2}, Lcom/android/server/power/DisplayPowerController;->access$302(Lcom/android/server/power/DisplayPowerController;Z)Z

    .line 515
    :goto_0
    const-string v1, "PowerManagerDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Now mElectronBeamFadesConfig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mElectronBeamFadesConfig:Z
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController;->access$300(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return-void

    .line 510
    :cond_0
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_BOOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 511
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/power/DisplayPowerController;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mElectronBeamFadesConfigOrigin:Z
    invoke-static {v2}, Lcom/android/server/power/DisplayPowerController;->access$200(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v2

    #setter for: Lcom/android/server/power/DisplayPowerController;->mElectronBeamFadesConfig:Z
    invoke-static {v1, v2}, Lcom/android/server/power/DisplayPowerController;->access$302(Lcom/android/server/power/DisplayPowerController;Z)Z

    goto :goto_0

    .line 513
    :cond_1
    const-string v1, "PowerManagerDisplayController"

    const-string v2, "Receive Fake Intent"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
