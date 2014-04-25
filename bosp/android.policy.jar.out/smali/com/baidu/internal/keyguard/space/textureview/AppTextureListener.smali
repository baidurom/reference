.class public Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;
.super Ljava/lang/Object;
.source "AppTextureListener.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AppTextureListener"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mPast:F

.field private mRenderThread:Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;

.field private mSensorX:F

.field private mSensorY:F

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->mContext:Landroid/content/Context;

    .line 27
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->mWindowManager:Landroid/view/WindowManager;

    .line 28
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->mDisplay:Landroid/view/Display;

    .line 29
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 64
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/high16 v6, 0x41a0

    const/high16 v5, 0x4198

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, x:F
    const/4 v1, 0x0

    .line 70
    .local v1, y:F
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 88
    :goto_0
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->mRenderThread:Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;

    if-eqz v2, :cond_0

    .line 89
    iget v2, p0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->mSensorX:F

    mul-float/2addr v2, v5

    add-float/2addr v2, v0

    div-float/2addr v2, v6

    iput v2, p0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->mSensorX:F

    .line 90
    iget v2, p0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->mSensorY:F

    mul-float/2addr v2, v5

    add-float/2addr v2, v1

    div-float/2addr v2, v6

    iput v2, p0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->mSensorY:F

    .line 91
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->mRenderThread:Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;

    iget v3, p0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->mSensorX:F

    iget v4, p0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->mSensorY:F

    invoke-virtual {v2, v3, v4}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->setSensorValue(FF)V

    .line 93
    :cond_0
    return-void

    .line 72
    :pswitch_0
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v3

    .line 73
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v2, v4

    .line 74
    goto :goto_0

    .line 76
    :pswitch_1
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    neg-float v0, v2

    .line 77
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v2, v3

    .line 78
    goto :goto_0

    .line 80
    :pswitch_2
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    neg-float v0, v2

    .line 81
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    neg-float v1, v2

    .line 82
    goto :goto_0

    .line 84
    :pswitch_3
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v4

    .line 85
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    neg-float v1, v2

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 33
    new-instance v0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;-><init>(Landroid/content/Context;Landroid/graphics/SurfaceTexture;II)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->mRenderThread:Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;

    .line 34
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->mRenderThread:Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->start()V

    .line 35
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .parameter "surface"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->mRenderThread:Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->mRenderThread:Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->quit()V

    .line 42
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->mRenderThread:Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->mRenderThread:Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 50
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter "surface"

    .prologue
    .line 54
    return-void
.end method

.method public resetSensorData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    iput v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->mSensorX:F

    .line 97
    iput v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->mSensorY:F

    .line 98
    return-void
.end method

.method public setPast(F)V
    .locals 3
    .parameter "past"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 101
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    .line 102
    iput v1, p0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->mPast:F

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->mRenderThread:Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->mRenderThread:Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;

    iget v1, p0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->mPast:F

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->setPast(F)V

    .line 111
    :cond_0
    return-void

    .line 103
    :cond_1
    cmpl-float v0, p1, v2

    if-lez v0, :cond_2

    .line 104
    iput v2, p0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->mPast:F

    goto :goto_0

    .line 106
    :cond_2
    iput p1, p0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->mPast:F

    goto :goto_0
.end method

.method public stopRedraw()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->mRenderThread:Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->mRenderThread:Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->stopRedraw()V

    .line 60
    :cond_0
    return-void
.end method
