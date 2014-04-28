.class public Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;
.super Ljava/lang/Object;
.source "SpectrumSensorManager.java"


# static fields
.field static mSpectrumSensorManager:Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;


# instance fields
.field listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/SensorEventListener;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mGsensor:Landroid/hardware/Sensor;

.field mSensorManager:Landroid/hardware/SensorManager;

.field mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;->mSpectrumSensorManager:Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;->mContext:Landroid/content/Context;

    .line 29
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 30
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;->mGsensor:Landroid/hardware/Sensor;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;->listeners:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;
    .locals 2
    .parameter "c"

    .prologue
    .line 21
    const-class v1, Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;->mSpectrumSensorManager:Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;->mSpectrumSensorManager:Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;

    .line 24
    :cond_0
    sget-object v0, Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;->mSpectrumSensorManager:Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public registerListener(Landroid/hardware/SensorEventListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;->mGsensor:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 37
    return-void
.end method

.method public unRegisterListener(Landroid/hardware/SensorEventListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;->mGsensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p1, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 41
    return-void
.end method
