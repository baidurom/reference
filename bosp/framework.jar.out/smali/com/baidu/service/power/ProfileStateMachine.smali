.class Lcom/baidu/service/power/ProfileStateMachine;
.super Ljava/lang/Object;
.source "ProfileStateMachine.java"


# static fields
.field static final TIMEOUT_MIN:I = 0x3a98

.field static mAirPlane:I

.field static mAnimation:I

.field static mAutoRotate:I

.field static mAutoSync:I

.field static mBluetooth:I

.field static mCpu:I

.field static mFeedback:I

.field static mGps:I

.field static mMobileData:I

.field static mScreenTimeout:I

.field static mVibrate:I

.field static mWifi:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static downCpuFreq(Landroid/content/Context;IZ)V
    .locals 2
    .parameter "context"
    .parameter "id"
    .parameter "desired"

    .prologue
    const/4 v1, 0x1

    .line 169
    if-eqz p2, :cond_2

    .line 170
    sget v0, Lcom/baidu/service/power/ProfileStateMachine;->mCpu:I

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    sput v0, Lcom/baidu/service/power/ProfileStateMachine;->mCpu:I

    .line 174
    :goto_0
    if-eqz p2, :cond_0

    if-eqz p2, :cond_1

    sget v0, Lcom/baidu/service/power/ProfileStateMachine;->mCpu:I

    if-nez v0, :cond_1

    .line 175
    :cond_0
    invoke-static {p0, p2}, Lcom/baidu/service/power/ProfileUtil;->downCpuFreq(Landroid/content/Context;Z)V

    .line 176
    :cond_1
    return-void

    .line 172
    :cond_2
    sget v0, Lcom/baidu/service/power/ProfileStateMachine;->mCpu:I

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    sput v0, Lcom/baidu/service/power/ProfileStateMachine;->mCpu:I

    goto :goto_0
.end method

.method static enableFeedback(Landroid/content/Context;IZ)V
    .locals 3
    .parameter "context"
    .parameter "id"
    .parameter "desired"

    .prologue
    const/4 v2, 0x1

    .line 141
    invoke-static {p0}, Lcom/baidu/service/power/ProfileUtil;->getSoundEffects(Landroid/content/Context;)Z

    move-result v0

    .line 142
    .local v0, value:Z
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-nez p2, :cond_2

    .line 152
    :cond_1
    :goto_0
    return-void

    .line 145
    :cond_2
    if-eqz p2, :cond_4

    .line 146
    sget v1, Lcom/baidu/service/power/ProfileStateMachine;->mFeedback:I

    shl-int/2addr v2, p1

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    sput v1, Lcom/baidu/service/power/ProfileStateMachine;->mFeedback:I

    .line 150
    :goto_1
    if-eqz p2, :cond_3

    if-eqz p2, :cond_1

    sget v1, Lcom/baidu/service/power/ProfileStateMachine;->mFeedback:I

    if-nez v1, :cond_1

    .line 151
    :cond_3
    invoke-static {p0, p2}, Lcom/baidu/service/power/ProfileUtil;->enableSoundEffects(Landroid/content/Context;Z)V

    goto :goto_0

    .line 148
    :cond_4
    sget v1, Lcom/baidu/service/power/ProfileStateMachine;->mFeedback:I

    shl-int/2addr v2, p1

    or-int/2addr v1, v2

    sput v1, Lcom/baidu/service/power/ProfileStateMachine;->mFeedback:I

    goto :goto_1
.end method

.method static enableGPS(Landroid/content/Context;IZ)V
    .locals 4
    .parameter "context"
    .parameter "id"
    .parameter "desired"

    .prologue
    const/4 v2, 0x1

    .line 126
    invoke-static {p0}, Lcom/baidu/service/power/ProfileUtil;->getGPS(Landroid/content/Context;)Z

    move-result v0

    .line 127
    .local v0, value:Z
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-nez p2, :cond_2

    .line 138
    :cond_1
    :goto_0
    return-void

    .line 130
    :cond_2
    if-eqz p2, :cond_4

    .line 131
    sget v1, Lcom/baidu/service/power/ProfileStateMachine;->mGps:I

    shl-int/2addr v2, p1

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    sput v1, Lcom/baidu/service/power/ProfileStateMachine;->mGps:I

    .line 134
    :goto_1
    const-string v1, "SmartPowerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableGPS----> desired = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/baidu/service/power/ProfileStateMachine;->mGps:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    if-eqz p2, :cond_3

    if-eqz p2, :cond_1

    sget v1, Lcom/baidu/service/power/ProfileStateMachine;->mGps:I

    if-nez v1, :cond_1

    .line 137
    :cond_3
    invoke-static {p0, p2}, Lcom/baidu/service/power/ProfileUtil;->enableGPS(Landroid/content/Context;Z)V

    goto :goto_0

    .line 133
    :cond_4
    sget v1, Lcom/baidu/service/power/ProfileStateMachine;->mGps:I

    shl-int/2addr v2, p1

    or-int/2addr v1, v2

    sput v1, Lcom/baidu/service/power/ProfileStateMachine;->mGps:I

    goto :goto_1
.end method

.method static reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput v0, Lcom/baidu/service/power/ProfileStateMachine;->mAirPlane:I

    .line 24
    sput v0, Lcom/baidu/service/power/ProfileStateMachine;->mMobileData:I

    .line 25
    sput v0, Lcom/baidu/service/power/ProfileStateMachine;->mAutoSync:I

    .line 26
    sput v0, Lcom/baidu/service/power/ProfileStateMachine;->mWifi:I

    .line 27
    sput v0, Lcom/baidu/service/power/ProfileStateMachine;->mBluetooth:I

    .line 28
    sput v0, Lcom/baidu/service/power/ProfileStateMachine;->mGps:I

    .line 29
    sput v0, Lcom/baidu/service/power/ProfileStateMachine;->mFeedback:I

    .line 30
    sput v0, Lcom/baidu/service/power/ProfileStateMachine;->mAutoRotate:I

    .line 31
    sput v0, Lcom/baidu/service/power/ProfileStateMachine;->mCpu:I

    .line 32
    sput v0, Lcom/baidu/service/power/ProfileStateMachine;->mScreenTimeout:I

    .line 33
    sput v0, Lcom/baidu/service/power/ProfileStateMachine;->mAnimation:I

    .line 34
    sput v0, Lcom/baidu/service/power/ProfileStateMachine;->mVibrate:I

    .line 35
    return-void
.end method

.method static reset(I)V
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 38
    sget v0, Lcom/baidu/service/power/ProfileStateMachine;->mAirPlane:I

    shl-int v1, v2, p0

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    sput v0, Lcom/baidu/service/power/ProfileStateMachine;->mAirPlane:I

    .line 39
    sget v0, Lcom/baidu/service/power/ProfileStateMachine;->mMobileData:I

    shl-int v1, v2, p0

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    sput v0, Lcom/baidu/service/power/ProfileStateMachine;->mMobileData:I

    .line 40
    sget v0, Lcom/baidu/service/power/ProfileStateMachine;->mAutoSync:I

    shl-int v1, v2, p0

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    sput v0, Lcom/baidu/service/power/ProfileStateMachine;->mAutoSync:I

    .line 41
    sget v0, Lcom/baidu/service/power/ProfileStateMachine;->mWifi:I

    shl-int v1, v2, p0

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    sput v0, Lcom/baidu/service/power/ProfileStateMachine;->mWifi:I

    .line 42
    sget v0, Lcom/baidu/service/power/ProfileStateMachine;->mBluetooth:I

    shl-int v1, v2, p0

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    sput v0, Lcom/baidu/service/power/ProfileStateMachine;->mBluetooth:I

    .line 43
    sget v0, Lcom/baidu/service/power/ProfileStateMachine;->mGps:I

    shl-int v1, v2, p0

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    sput v0, Lcom/baidu/service/power/ProfileStateMachine;->mGps:I

    .line 44
    sget v0, Lcom/baidu/service/power/ProfileStateMachine;->mFeedback:I

    shl-int v1, v2, p0

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    sput v0, Lcom/baidu/service/power/ProfileStateMachine;->mFeedback:I

    .line 45
    sget v0, Lcom/baidu/service/power/ProfileStateMachine;->mAutoRotate:I

    shl-int v1, v2, p0

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    sput v0, Lcom/baidu/service/power/ProfileStateMachine;->mAutoRotate:I

    .line 46
    sget v0, Lcom/baidu/service/power/ProfileStateMachine;->mCpu:I

    shl-int v1, v2, p0

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    sput v0, Lcom/baidu/service/power/ProfileStateMachine;->mCpu:I

    .line 47
    sget v0, Lcom/baidu/service/power/ProfileStateMachine;->mScreenTimeout:I

    shl-int v1, v2, p0

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    sput v0, Lcom/baidu/service/power/ProfileStateMachine;->mScreenTimeout:I

    .line 48
    sget v0, Lcom/baidu/service/power/ProfileStateMachine;->mAnimation:I

    shl-int v1, v2, p0

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    sput v0, Lcom/baidu/service/power/ProfileStateMachine;->mAnimation:I

    .line 49
    sget v0, Lcom/baidu/service/power/ProfileStateMachine;->mVibrate:I

    shl-int v1, v2, p0

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    sput v0, Lcom/baidu/service/power/ProfileStateMachine;->mVibrate:I

    .line 50
    return-void
.end method

.method static setAirPlane(Landroid/content/Context;IZ)V
    .locals 3
    .parameter "context"
    .parameter "id"
    .parameter "desired"

    .prologue
    const/4 v2, 0x1

    .line 53
    invoke-static {p0}, Lcom/baidu/service/power/ProfileUtil;->getAirplane(Landroid/content/Context;)Z

    move-result v0

    .line 54
    .local v0, value:Z
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-nez p2, :cond_2

    .line 64
    :cond_1
    :goto_0
    return-void

    .line 57
    :cond_2
    if-eqz p2, :cond_4

    .line 58
    sget v1, Lcom/baidu/service/power/ProfileStateMachine;->mAirPlane:I

    shl-int/2addr v2, p1

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    sput v1, Lcom/baidu/service/power/ProfileStateMachine;->mAirPlane:I

    .line 62
    :goto_1
    if-eqz p2, :cond_3

    if-eqz p2, :cond_1

    sget v1, Lcom/baidu/service/power/ProfileStateMachine;->mAirPlane:I

    if-nez v1, :cond_1

    .line 63
    :cond_3
    invoke-static {p0, p2}, Lcom/baidu/service/power/ProfileUtil;->setAirPlane(Landroid/content/Context;Z)V

    goto :goto_0

    .line 60
    :cond_4
    sget v1, Lcom/baidu/service/power/ProfileStateMachine;->mAirPlane:I

    shl-int/2addr v2, p1

    or-int/2addr v1, v2

    sput v1, Lcom/baidu/service/power/ProfileStateMachine;->mAirPlane:I

    goto :goto_1
.end method

.method static setAnimations(II)V
    .locals 5
    .parameter "value"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 197
    invoke-static {}, Lcom/baidu/service/power/ProfileUtil;->getOperateAnimations()[F

    move-result-object v0

    .line 198
    .local v0, ret:[F
    if-lez p0, :cond_0

    aget v1, v0, v4

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    aget v1, v0, v3

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    :cond_0
    if-nez p0, :cond_2

    aget v1, v0, v4

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    aget v1, v0, v3

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 210
    :cond_1
    :goto_0
    return-void

    .line 201
    :cond_2
    if-lez p0, :cond_4

    .line 202
    sget v1, Lcom/baidu/service/power/ProfileStateMachine;->mAnimation:I

    shl-int v2, v3, p1

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    sput v1, Lcom/baidu/service/power/ProfileStateMachine;->mAnimation:I

    .line 206
    :goto_1
    if-eqz p0, :cond_3

    if-lez p0, :cond_1

    sget v1, Lcom/baidu/service/power/ProfileStateMachine;->mAnimation:I

    if-nez v1, :cond_1

    .line 207
    :cond_3
    int-to-float v1, p0

    invoke-static {v4, v1}, Lcom/baidu/service/power/ProfileUtil;->operateAnimations(IF)V

    .line 208
    int-to-float v1, p0

    invoke-static {v3, v1}, Lcom/baidu/service/power/ProfileUtil;->operateAnimations(IF)V

    goto :goto_0

    .line 204
    :cond_4
    sget v1, Lcom/baidu/service/power/ProfileStateMachine;->mAnimation:I

    shl-int v2, v3, p1

    or-int/2addr v1, v2

    sput v1, Lcom/baidu/service/power/ProfileStateMachine;->mAnimation:I

    goto :goto_1
.end method

.method static setAutoRotate(Landroid/content/Context;IZ)V
    .locals 3
    .parameter "context"
    .parameter "id"
    .parameter "desired"

    .prologue
    const/4 v2, 0x1

    .line 155
    invoke-static {p0}, Lcom/baidu/service/power/ProfileUtil;->getAutoRotate(Landroid/content/Context;)Z

    move-result v0

    .line 156
    .local v0, value:Z
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-nez p2, :cond_2

    .line 166
    :cond_1
    :goto_0
    return-void

    .line 159
    :cond_2
    if-eqz p2, :cond_4

    .line 160
    sget v1, Lcom/baidu/service/power/ProfileStateMachine;->mAutoRotate:I

    shl-int/2addr v2, p1

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    sput v1, Lcom/baidu/service/power/ProfileStateMachine;->mAutoRotate:I

    .line 164
    :goto_1
    if-eqz p2, :cond_3

    if-eqz p2, :cond_1

    sget v1, Lcom/baidu/service/power/ProfileStateMachine;->mAutoRotate:I

    if-nez v1, :cond_1

    .line 165
    :cond_3
    invoke-static {p0, p2}, Lcom/baidu/service/power/ProfileUtil;->setAutoRotate(Landroid/content/Context;Z)V

    goto :goto_0

    .line 162
    :cond_4
    sget v1, Lcom/baidu/service/power/ProfileStateMachine;->mAutoRotate:I

    shl-int/2addr v2, p1

    or-int/2addr v1, v2

    sput v1, Lcom/baidu/service/power/ProfileStateMachine;->mAutoRotate:I

    goto :goto_1
.end method

.method static setAutoSync(Landroid/content/Context;IZ)V
    .locals 3
    .parameter "context"
    .parameter "id"
    .parameter "desired"

    .prologue
    const/4 v2, 0x1

    .line 81
    invoke-static {p0}, Lcom/baidu/service/power/ProfileUtil;->getAutoSync(Landroid/content/Context;)Z

    move-result v0

    .line 82
    .local v0, value:Z
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-nez p2, :cond_2

    .line 93
    :cond_1
    :goto_0
    return-void

    .line 85
    :cond_2
    if-eqz p2, :cond_4

    .line 86
    sget v1, Lcom/baidu/service/power/ProfileStateMachine;->mAutoSync:I

    shl-int/2addr v2, p1

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    sput v1, Lcom/baidu/service/power/ProfileStateMachine;->mAutoSync:I

    .line 90
    :goto_1
    if-eqz p2, :cond_3

    if-eqz p2, :cond_1

    sget v1, Lcom/baidu/service/power/ProfileStateMachine;->mAutoSync:I

    if-nez v1, :cond_1

    .line 91
    :cond_3
    invoke-static {p0, p2}, Lcom/baidu/service/power/ProfileUtil;->setAutoSync(Landroid/content/Context;Z)V

    goto :goto_0

    .line 88
    :cond_4
    sget v1, Lcom/baidu/service/power/ProfileStateMachine;->mAutoSync:I

    shl-int/2addr v2, p1

    or-int/2addr v1, v2

    sput v1, Lcom/baidu/service/power/ProfileStateMachine;->mAutoSync:I

    goto :goto_1
.end method

.method static setBackLight(Landroid/content/Context;II)V
    .locals 0
    .parameter "context"
    .parameter "id"
    .parameter "value"

    .prologue
    .line 179
    invoke-static {p0, p2}, Lcom/baidu/service/power/ProfileUtil;->setBackLight(Landroid/content/Context;I)V

    .line 180
    return-void
.end method

.method static setBluetooth(Landroid/content/Context;IZ)V
    .locals 4
    .parameter "context"
    .parameter "id"
    .parameter "desired"

    .prologue
    const/4 v2, 0x1

    .line 111
    invoke-static {p0}, Lcom/baidu/service/power/ProfileUtil;->getBluetooth(Landroid/content/Context;)Z

    move-result v0

    .line 112
    .local v0, value:Z
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-nez p2, :cond_2

    .line 123
    :cond_1
    :goto_0
    return-void

    .line 115
    :cond_2
    if-eqz p2, :cond_4

    .line 116
    sget v1, Lcom/baidu/service/power/ProfileStateMachine;->mBluetooth:I

    shl-int/2addr v2, p1

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    sput v1, Lcom/baidu/service/power/ProfileStateMachine;->mBluetooth:I

    .line 119
    :goto_1
    const-string v1, "SmartPowerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBluetooth----> desired = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/baidu/service/power/ProfileStateMachine;->mBluetooth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    if-eqz p2, :cond_3

    if-eqz p2, :cond_1

    sget v1, Lcom/baidu/service/power/ProfileStateMachine;->mBluetooth:I

    if-nez v1, :cond_1

    .line 122
    :cond_3
    invoke-static {p0, p2}, Lcom/baidu/service/power/ProfileUtil;->setBluetooth(Landroid/content/Context;Z)V

    goto :goto_0

    .line 118
    :cond_4
    sget v1, Lcom/baidu/service/power/ProfileStateMachine;->mBluetooth:I

    shl-int/2addr v2, p1

    or-int/2addr v1, v2

    sput v1, Lcom/baidu/service/power/ProfileStateMachine;->mBluetooth:I

    goto :goto_1
.end method

.method static setMobileData(Landroid/content/Context;IZ)V
    .locals 3
    .parameter "context"
    .parameter "id"
    .parameter "desired"

    .prologue
    const/4 v2, 0x1

    .line 67
    invoke-static {p0}, Lcom/baidu/service/power/ProfileUtil;->getMobileData(Landroid/content/Context;)Z

    move-result v0

    .line 68
    .local v0, value:Z
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-nez p2, :cond_2

    .line 78
    :cond_1
    :goto_0
    return-void

    .line 71
    :cond_2
    if-eqz p2, :cond_4

    .line 72
    sget v1, Lcom/baidu/service/power/ProfileStateMachine;->mMobileData:I

    shl-int/2addr v2, p1

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    sput v1, Lcom/baidu/service/power/ProfileStateMachine;->mMobileData:I

    .line 76
    :goto_1
    if-eqz p2, :cond_3

    if-eqz p2, :cond_1

    sget v1, Lcom/baidu/service/power/ProfileStateMachine;->mMobileData:I

    if-nez v1, :cond_1

    .line 77
    :cond_3
    invoke-static {p0, p2}, Lcom/baidu/service/power/ProfileUtil;->setMobileData(Landroid/content/Context;Z)V

    goto :goto_0

    .line 74
    :cond_4
    sget v1, Lcom/baidu/service/power/ProfileStateMachine;->mMobileData:I

    shl-int/2addr v2, p1

    or-int/2addr v1, v2

    sput v1, Lcom/baidu/service/power/ProfileStateMachine;->mMobileData:I

    goto :goto_1
.end method

.method static setRinger(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "value"

    .prologue
    .line 213
    invoke-static {p0, p1}, Lcom/baidu/service/power/ProfileUtil;->setRinger(Landroid/content/Context;I)V

    .line 214
    return-void
.end method

.method static setScreenTimeout(Landroid/content/Context;II)V
    .locals 4
    .parameter "context"
    .parameter "id"
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    const/16 v3, 0x3a98

    .line 183
    invoke-static {p0}, Lcom/baidu/service/power/ProfileUtil;->getScreenTimeout(Landroid/content/Context;)I

    move-result v0

    .line 184
    .local v0, ret:I
    if-le p2, v3, :cond_0

    if-gt v0, v3, :cond_1

    :cond_0
    if-gt p2, v3, :cond_2

    if-gt v0, v3, :cond_2

    .line 194
    :cond_1
    :goto_0
    return-void

    .line 187
    :cond_2
    if-le p2, v3, :cond_4

    .line 188
    sget v1, Lcom/baidu/service/power/ProfileStateMachine;->mScreenTimeout:I

    shl-int/2addr v2, p1

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    sput v1, Lcom/baidu/service/power/ProfileStateMachine;->mScreenTimeout:I

    .line 192
    :goto_1
    if-eq p2, v3, :cond_3

    if-le p2, v3, :cond_1

    sget v1, Lcom/baidu/service/power/ProfileStateMachine;->mScreenTimeout:I

    if-nez v1, :cond_1

    .line 193
    :cond_3
    invoke-static {p0, p2}, Lcom/baidu/service/power/ProfileUtil;->setScreenTimeout(Landroid/content/Context;I)V

    goto :goto_0

    .line 190
    :cond_4
    sget v1, Lcom/baidu/service/power/ProfileStateMachine;->mScreenTimeout:I

    shl-int/2addr v2, p1

    or-int/2addr v1, v2

    sput v1, Lcom/baidu/service/power/ProfileStateMachine;->mScreenTimeout:I

    goto :goto_1
.end method

.method static setWifi(Landroid/content/Context;IZ)V
    .locals 5
    .parameter "context"
    .parameter "id"
    .parameter "desired"

    .prologue
    const/4 v4, 0x1

    .line 96
    const-string v1, "SmartPowerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWifi----> desired = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/baidu/service/power/ProfileStateMachine;->mWifi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {p0}, Lcom/baidu/service/power/ProfileUtil;->getWifi(Landroid/content/Context;)Z

    move-result v0

    .line 98
    .local v0, value:Z
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-nez p2, :cond_2

    .line 108
    :cond_1
    :goto_0
    return-void

    .line 101
    :cond_2
    if-eqz p2, :cond_4

    .line 102
    sget v1, Lcom/baidu/service/power/ProfileStateMachine;->mWifi:I

    shl-int v2, v4, p1

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    sput v1, Lcom/baidu/service/power/ProfileStateMachine;->mWifi:I

    .line 105
    :goto_1
    const-string v1, "SmartPowerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWifi----> desired = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/baidu/service/power/ProfileStateMachine;->mWifi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    if-eqz p2, :cond_3

    if-eqz p2, :cond_1

    sget v1, Lcom/baidu/service/power/ProfileStateMachine;->mWifi:I

    if-nez v1, :cond_1

    .line 107
    :cond_3
    invoke-static {p0, p2}, Lcom/baidu/service/power/ProfileUtil;->setWifi(Landroid/content/Context;Z)V

    goto :goto_0

    .line 104
    :cond_4
    sget v1, Lcom/baidu/service/power/ProfileStateMachine;->mWifi:I

    shl-int v2, v4, p1

    or-int/2addr v1, v2

    sput v1, Lcom/baidu/service/power/ProfileStateMachine;->mWifi:I

    goto :goto_1
.end method
