.class final Lcom/android/server/power/DisplayPowerRequest;
.super Ljava/lang/Object;
.source "DisplayPowerRequest.java"


# static fields
.field public static final SCREEN_STATE_BRIGHT:I = 0x2

.field public static final SCREEN_STATE_DIM:I = 0x1

.field public static final SCREEN_STATE_OFF:I


# instance fields
.field public blockScreenOn:Z

.field public forceProximitySensorEnable:Z

.field public screenAutoBrightnessAdjustment:F

.field public screenBrightness:I

.field public screenState:I

.field public useAutoBrightness:Z

.field public useEcoBrightness:Z

.field public useProximitySensor:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    .line 77
    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensor:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerRequest;->forceProximitySensorEnable:Z

    .line 81
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    .line 83
    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerRequest;->useEcoBrightness:Z

    .line 87
    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerRequest;->blockScreenOn:Z

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/DisplayPowerRequest;)V
    .locals 0
    .parameter "other"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/power/DisplayPowerRequest;->copyFrom(Lcom/android/server/power/DisplayPowerRequest;)V

    .line 92
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/power/DisplayPowerRequest;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 95
    iget v0, p1, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    iput v0, p0, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    .line 96
    iget-boolean v0, p1, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensor:Z

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensor:Z

    .line 98
    iget-boolean v0, p1, Lcom/android/server/power/DisplayPowerRequest;->forceProximitySensorEnable:Z

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerRequest;->forceProximitySensorEnable:Z

    .line 100
    iget v0, p1, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    iput v0, p0, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    .line 101
    iget v0, p1, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    iput v0, p0, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    .line 102
    iget-boolean v0, p1, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    .line 104
    iget-boolean v0, p1, Lcom/android/server/power/DisplayPowerRequest;->useEcoBrightness:Z

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerRequest;->useEcoBrightness:Z

    .line 106
    iget-boolean v0, p1, Lcom/android/server/power/DisplayPowerRequest;->blockScreenOn:Z

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerRequest;->blockScreenOn:Z

    .line 107
    return-void
.end method

.method public equals(Lcom/android/server/power/DisplayPowerRequest;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 116
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    iget v1, p1, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensor:Z

    iget-boolean v1, p1, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensor:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerRequest;->forceProximitySensorEnable:Z

    iget-boolean v1, p1, Lcom/android/server/power/DisplayPowerRequest;->forceProximitySensorEnable:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    iget v1, p1, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    iget v1, p1, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    iget-boolean v1, p1, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerRequest;->useEcoBrightness:Z

    iget-boolean v1, p1, Lcom/android/server/power/DisplayPowerRequest;->useEcoBrightness:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerRequest;->blockScreenOn:Z

    iget-boolean v1, p1, Lcom/android/server/power/DisplayPowerRequest;->blockScreenOn:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 111
    instance-of v0, p1, Lcom/android/server/power/DisplayPowerRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/power/DisplayPowerRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/power/DisplayPowerRequest;->equals(Lcom/android/server/power/DisplayPowerRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceProximitySensorEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerRequest;->forceProximitySensorEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useEcoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerRequest;->useEcoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", blockScreenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerRequest;->blockScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
