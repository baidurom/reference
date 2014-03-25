.class Landroid/hardware/SystemSensorManager$ListenerDelegate$3;
.super Ljava/lang/Object;
.source "SystemSensorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/SystemSensorManager$ListenerDelegate;->onSensorChangedLocked(Landroid/hardware/Sensor;[F[JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;


# direct methods
.method constructor <init>(Landroid/hardware/SystemSensorManager$ListenerDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$3;->this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 336
    const-string v0, "SensorManager"

    const-string v1, "Toast will appear!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$3;->this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

    iget-object v0, v0, Landroid/hardware/SystemSensorManager$ListenerDelegate;->this$0:Landroid/hardware/SystemSensorManager;

    iget-object v0, v0, Landroid/hardware/SystemSensorManager;->mAppContextImpl:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$3;->this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

    iget-object v0, v0, Landroid/hardware/SystemSensorManager$ListenerDelegate;->this$0:Landroid/hardware/SystemSensorManager;

    #calls: Landroid/hardware/SystemSensorManager;->needToast()Z
    invoke-static {v0}, Landroid/hardware/SystemSensorManager;->access$400(Landroid/hardware/SystemSensorManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    const-string v0, "SensorManager"

    const-string/jumbo v1, "mAppContextImpl != null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$3;->this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

    iget-object v0, v0, Landroid/hardware/SystemSensorManager$ListenerDelegate;->this$0:Landroid/hardware/SystemSensorManager;

    iget-object v0, v0, Landroid/hardware/SystemSensorManager;->mAppContextImpl:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x2050129

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 347
    :cond_0
    return-void
.end method
