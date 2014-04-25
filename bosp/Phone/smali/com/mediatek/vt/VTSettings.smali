.class public Lcom/mediatek/vt/VTSettings;
.super Ljava/lang/Object;
.source "VTSettings.java"


# static fields
.field static final CAMERA_ZOOM_SCALE_LEVELS:I = 0x10

.field private static final DEBUG:Z = true

.field static final KEY_CAMERA:Ljava/lang/String; = "camera"

.field static final KEY_IS_MUTE:Ljava/lang/String; = "microphone_is_mute"

.field static final KEY_LOCAL_IMAGE_PATH:Ljava/lang/String; = "KEY_LOCAL_IMAGE_PATH"

.field static final KEY_LOCAL_IMAGE_TYPE:Ljava/lang/String; = "KEY_LOCAL_IMAGE_TYPE"

.field static final KEY_LOCAL_VIDEO_TYPE:Ljava/lang/String; = "KEY_LOCAL_VIDEO_TYPE"

.field static final KEY_SPEAKER_IS_ON:Ljava/lang/String; = "SPEAKER_IS_ON"

.field static final KEY_VIDEO_QUALITY:Ljava/lang/String; = "video_quality"

.field public static final OFF:I = 0x0

.field public static final ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VTSettings"

.field static final VTSETTING_FILE:Ljava/lang/String; = "vt_settings"


# instance fields
.field localSurface:Landroid/view/SurfaceHolder;

.field mCameraParamters:Lcom/mediatek/vt/CameraParamters;

.field mCameraZoomIncVal:I

.field mContext:Landroid/content/Context;

.field mImagePath:Ljava/lang/String;

.field mIsSwitch:Z

.field mVideoQuality:I

.field mVideoType:I

.field peerSurface:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDecBrightness()Z
    .locals 4

    .prologue
    .line 138
    const-string v2, "VTSettings"

    const-string v3, "canDecBrightness"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v2, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v2}, Lcom/mediatek/vt/CameraParamters;->getExposureCompensation()I

    move-result v1

    .line 140
    .local v1, value:I
    iget-object v2, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v2}, Lcom/mediatek/vt/CameraParamters;->getMinExposureCompensation()I

    move-result v0

    .line 141
    .local v0, min:I
    if-le v1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public canDecContrast()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 231
    const-string v2, "VTSettings"

    const-string v3, "canDecContrast"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v2, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v2}, Lcom/mediatek/vt/CameraParamters;->getSupportedContrastMode()Ljava/util/List;

    move-result-object v0

    .line 233
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "low"

    invoke-virtual {p0}, Lcom/mediatek/vt/VTSettings;->getContrastMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public canDecZoom()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 186
    const-string v1, "VTSettings"

    const-string v2, "canDecZoom"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v1}, Lcom/mediatek/vt/CameraParamters;->isZoomSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/vt/VTSettings;->getZoom()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canIncBrightness()Z
    .locals 4

    .prologue
    .line 119
    const-string v2, "VTSettings"

    const-string v3, "getBrightnessMode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v2, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v2}, Lcom/mediatek/vt/CameraParamters;->getExposureCompensation()I

    move-result v1

    .line 121
    .local v1, value:I
    iget-object v2, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v2}, Lcom/mediatek/vt/CameraParamters;->getMaxExposureCompensation()I

    move-result v0

    .line 122
    .local v0, max:I
    if-ge v1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public canIncContrast()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 207
    const-string v2, "VTSettings"

    const-string v3, "canIncContrast"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v2, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v2}, Lcom/mediatek/vt/CameraParamters;->getSupportedContrastMode()Ljava/util/List;

    move-result-object v0

    .line 209
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "high"

    invoke-virtual {p0}, Lcom/mediatek/vt/VTSettings;->getContrastMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public canIncZoom()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 172
    const-string v1, "VTSettings"

    const-string v2, "canIncZoom"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v1}, Lcom/mediatek/vt/CameraParamters;->isZoomSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/vt/VTSettings;->getZoom()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v2}, Lcom/mediatek/vt/CameraParamters;->getMaxZoom()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public decBrightness()Z
    .locals 5

    .prologue
    .line 127
    const-string v3, "VTSettings"

    const-string v4, "decBrightness"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v3, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v3}, Lcom/mediatek/vt/CameraParamters;->getExposureCompensation()I

    move-result v2

    .line 129
    .local v2, value:I
    iget-object v3, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v3}, Lcom/mediatek/vt/CameraParamters;->getMinExposureCompensation()I

    move-result v0

    .line 130
    .local v0, min:I
    iget-object v3, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v3}, Lcom/mediatek/vt/CameraParamters;->getExposureCompensationStep()F

    move-result v1

    .line 131
    .local v1, step:F
    int-to-float v3, v2

    sub-float/2addr v3, v1

    float-to-int v2, v3

    .line 132
    if-ge v2, v0, :cond_0

    move v2, v0

    .line 133
    :cond_0
    iget-object v3, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v3, v2}, Lcom/mediatek/vt/CameraParamters;->setExposureCompensation(I)V

    .line 134
    const/4 v3, 0x1

    return v3
.end method

.method public decContrast()Z
    .locals 3

    .prologue
    .line 216
    const-string v1, "VTSettings"

    const-string v2, "decContrast"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {p0}, Lcom/mediatek/vt/VTSettings;->getContrastMode()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 219
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    const-string v2, "low"

    invoke-virtual {v1, v2}, Lcom/mediatek/vt/CameraParamters;->setContrastMode(Ljava/lang/String;)V

    .line 227
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 220
    :cond_0
    const-string v1, "high"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    const-string v2, "middle"

    invoke-virtual {v1, v2}, Lcom/mediatek/vt/CameraParamters;->setContrastMode(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_1
    const-string v1, "middle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    const-string v2, "low"

    invoke-virtual {v1, v2}, Lcom/mediatek/vt/CameraParamters;->setContrastMode(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public decZoom()Z
    .locals 3

    .prologue
    .line 178
    const-string v1, "VTSettings"

    const-string v2, "decZoom"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p0}, Lcom/mediatek/vt/VTSettings;->getZoom()I

    move-result v1

    iget v2, p0, Lcom/mediatek/vt/VTSettings;->mCameraZoomIncVal:I

    sub-int v0, v1, v2

    .line 180
    .local v0, value:I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v1, v0}, Lcom/mediatek/vt/CameraParamters;->setZoom(I)V

    .line 182
    const/4 v1, 0x1

    return v1
.end method

.method deinit()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    .line 70
    return-void
.end method

.method public getBrightnessMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/vt/CameraParamters;->getExposure()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getCameraSettings()V
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->getParameters()Lcom/mediatek/vt/CameraParamters;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    .line 75
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/vt/CameraParamters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraZoomIncVal:I

    .line 80
    :cond_0
    return-void
.end method

.method public getColorEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/vt/CameraParamters;->getColorEffect()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getContrastMode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 300
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v1, :cond_0

    .line 301
    const/4 v0, 0x0

    .line 304
    :goto_0
    return-object v0

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v1}, Lcom/mediatek/vt/CameraParamters;->getContrastMode()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, value:Ljava/lang/String;
    const-string v1, "VTSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContrastMode ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getDefaultSettings()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    .line 89
    return-void
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSwitch()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/mediatek/vt/VTSettings;->mIsSwitch:Z

    return v0
.end method

.method public getLocalSurface()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->localSurface:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getNightMode()Z
    .locals 2

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/mediatek/vt/VTSettings;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 288
    const/4 v0, 0x0

    .line 290
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/vt/VTSettings;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "night"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getPeerSurface()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->peerSurface:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getSceneMode()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 320
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v1, :cond_0

    .line 328
    :goto_0
    return-object v0

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v1}, Lcom/mediatek/vt/CameraParamters;->getSceneMode()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 322
    const-string v1, "VTSettings"

    const-string v2, "mCameraParamters.getSceneMode() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 326
    :cond_1
    const-string v0, "VTSettings"

    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v1}, Lcom/mediatek/vt/CameraParamters;->getSceneMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/vt/CameraParamters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportedBrightnessMode()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 159
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/vt/CameraParamters;->getSupportedExposure()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportedColorEffects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/vt/CameraParamters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportedContrastMode()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 316
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/vt/CameraParamters;->getSupportedContrastMode()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportedSceneModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v0, :cond_0

    .line 295
    const/4 v0, 0x0

    .line 296
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/vt/CameraParamters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoQuality()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/mediatek/vt/VTSettings;->mVideoQuality:I

    return v0
.end method

.method public getVideoType()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/mediatek/vt/VTSettings;->mVideoType:I

    return v0
.end method

.method public getZoom()I
    .locals 2

    .prologue
    .line 259
    const-string v0, "VTSettings"

    const-string v1, "getZoom"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 261
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/vt/CameraParamters;->getZoom()I

    move-result v0

    goto :goto_0
.end method

.method public getZoomRatios()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    const-string v0, "VTSettings"

    const-string v1, "getZoomRatios"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 250
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/vt/CameraParamters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public incBrightness()Z
    .locals 5

    .prologue
    .line 108
    const-string v3, "VTSettings"

    const-string v4, "incBrightness"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v3, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v3}, Lcom/mediatek/vt/CameraParamters;->getExposureCompensation()I

    move-result v2

    .line 110
    .local v2, value:I
    iget-object v3, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v3}, Lcom/mediatek/vt/CameraParamters;->getMaxExposureCompensation()I

    move-result v0

    .line 111
    .local v0, max:I
    iget-object v3, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v3}, Lcom/mediatek/vt/CameraParamters;->getExposureCompensationStep()F

    move-result v1

    .line 112
    .local v1, step:F
    int-to-float v3, v2

    add-float/2addr v3, v1

    float-to-int v2, v3

    .line 113
    if-le v2, v0, :cond_0

    move v2, v0

    .line 114
    :cond_0
    iget-object v3, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v3, v2}, Lcom/mediatek/vt/CameraParamters;->setExposureCompensation(I)V

    .line 115
    const/4 v3, 0x1

    return v3
.end method

.method public incContrast()Z
    .locals 3

    .prologue
    .line 192
    const-string v1, "VTSettings"

    const-string v2, "incContrast"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p0}, Lcom/mediatek/vt/VTSettings;->getContrastMode()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 195
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    const-string v2, "high"

    invoke-virtual {v1, v2}, Lcom/mediatek/vt/CameraParamters;->setContrastMode(Ljava/lang/String;)V

    .line 203
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 196
    :cond_0
    const-string v1, "low"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    const-string v2, "middle"

    invoke-virtual {v1, v2}, Lcom/mediatek/vt/CameraParamters;->setContrastMode(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_1
    const-string v1, "middle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    const-string v2, "high"

    invoke-virtual {v1, v2}, Lcom/mediatek/vt/CameraParamters;->setContrastMode(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public incZoom()Z
    .locals 4

    .prologue
    .line 163
    const-string v2, "VTSettings"

    const-string v3, "incZoom"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Lcom/mediatek/vt/VTSettings;->getZoom()I

    move-result v2

    iget v3, p0, Lcom/mediatek/vt/VTSettings;->mCameraZoomIncVal:I

    add-int v1, v2, v3

    .line 165
    .local v1, value:I
    iget-object v2, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v2}, Lcom/mediatek/vt/CameraParamters;->getMaxZoom()I

    move-result v0

    .line 166
    .local v0, max_zoom:I
    if-le v1, v0, :cond_0

    move v1, v0

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v2, v1}, Lcom/mediatek/vt/CameraParamters;->setZoom(I)V

    .line 168
    const/4 v2, 0x1

    return v2
.end method

.method init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "VTSettings"

    const-string v1, "init error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_0
    return-void

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/mediatek/vt/VTSettings;->mContext:Landroid/content/Context;

    .line 60
    iput v1, p0, Lcom/mediatek/vt/VTSettings;->mVideoType:I

    .line 61
    iput-object v2, p0, Lcom/mediatek/vt/VTSettings;->mImagePath:Ljava/lang/String;

    .line 62
    iput-boolean v1, p0, Lcom/mediatek/vt/VTSettings;->mIsSwitch:Z

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/vt/VTSettings;->mVideoQuality:I

    .line 64
    iput v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraZoomIncVal:I

    .line 65
    iput-object v2, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    goto :goto_0
.end method

.method public isSupportNightMode()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 266
    invoke-virtual {p0}, Lcom/mediatek/vt/VTSettings;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v1

    .line 267
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v3

    .line 270
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 271
    .local v2, str:Ljava/lang/String;
    const-string v4, "night"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isZoomSupported()Z
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 255
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0}, Lcom/mediatek/vt/CameraParamters;->isZoomSupported()Z

    move-result v0

    goto :goto_0
.end method

.method public setBrightnessMode(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/CameraParamters;->setExposure(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/CameraParamters;->setColorEffect(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContrastMode(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 308
    const-string v0, "VTSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContrastMode ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v0, :cond_0

    .line 312
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/CameraParamters;->setContrastMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 0
    .parameter "mImagePath"

    .prologue
    .line 351
    iput-object p1, p0, Lcom/mediatek/vt/VTSettings;->mImagePath:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public setIsSwitch(Z)V
    .locals 0
    .parameter "mIsSwitch"

    .prologue
    .line 359
    iput-boolean p1, p0, Lcom/mediatek/vt/VTSettings;->mIsSwitch:Z

    .line 360
    return-void
.end method

.method public setLocalSurface(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "localSurface"

    .prologue
    .line 367
    iput-object p1, p0, Lcom/mediatek/vt/VTSettings;->localSurface:Landroid/view/SurfaceHolder;

    .line 368
    return-void
.end method

.method public setNightMode(Z)V
    .locals 1
    .parameter "isOn"

    .prologue
    .line 281
    if-eqz p1, :cond_0

    const-string v0, "night"

    .line 282
    .local v0, value:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mediatek/vt/VTSettings;->setNightModeFrameRate(Z)V

    .line 283
    invoke-virtual {p0, v0}, Lcom/mediatek/vt/VTSettings;->setSceneMode(Ljava/lang/String;)V

    .line 284
    return-void

    .line 281
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    const-string v0, "auto"

    goto :goto_0
.end method

.method public setNightModeFrameRate(Z)V
    .locals 2
    .parameter "isNightMode"

    .prologue
    .line 277
    iget-object v1, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-eqz p1, :cond_0

    const/16 v0, 0xf

    :goto_0
    invoke-virtual {v1, v0}, Lcom/mediatek/vt/CameraParamters;->setPreviewFrameRate(I)V

    .line 278
    return-void

    .line 277
    :cond_0
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method public setPeerSurface(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "peerSurface"

    .prologue
    .line 375
    iput-object p1, p0, Lcom/mediatek/vt/VTSettings;->peerSurface:Landroid/view/SurfaceHolder;

    .line 376
    return-void
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 332
    const-string v0, "VTSettings"

    const-string v1, "setSceneMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string v0, "VTSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/CameraParamters;->setSceneMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVideoQuality(I)V
    .locals 0
    .parameter "mVideoQuality"

    .prologue
    .line 383
    iput p1, p0, Lcom/mediatek/vt/VTSettings;->mVideoQuality:I

    .line 384
    return-void
.end method

.method public setVideoType(I)V
    .locals 0
    .parameter "mVideoType"

    .prologue
    .line 343
    iput p1, p0, Lcom/mediatek/vt/VTSettings;->mVideoType:I

    .line 344
    return-void
.end method

.method public setZoom(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 241
    const-string v0, "VTSettings"

    const-string v1, "setZoom"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    if-nez v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/CameraParamters;->setZoom(I)V

    goto :goto_0
.end method
