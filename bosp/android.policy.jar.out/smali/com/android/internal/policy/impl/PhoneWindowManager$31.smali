.class Lcom/android/internal/policy/impl/PhoneWindowManager$31;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 4750
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$31;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 4766
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 4752
    const/high16 v0, 0x4090

    .line 4753
    .local v0, THRESHOLD:F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v2, v5

    .line 4754
    .local v1, distance:F
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mProximityListener.onSensorChanged distance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4755
    const/high16 v2, 0x4090

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 4756
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$31;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsInPocket:Z
    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$602(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 4757
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsInPocket="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$31;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsInPocket:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4762
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$31;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$708(Lcom/android/internal/policy/impl/PhoneWindowManager;)I

    .line 4763
    return-void

    .line 4759
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$31;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v3, 0x1

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsInPocket:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$602(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 4760
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsInPocket="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$31;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsInPocket:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
