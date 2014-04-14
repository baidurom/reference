.class public Lcom/baidu/service/power/ProfileElement;
.super Lcom/baidu/service/power/IProfileElement$Stub;
.source "ProfileElement.java"


# static fields
.field public static final ELEMENT_AIR_PLANE_ID:I = 0x2

.field public static final ELEMENT_ANIMATION_ID:I = 0xf

.field public static final ELEMENT_AUTO_KILLER_ID:I = 0x1

.field public static final ELEMENT_AUTO_ROTATE_ID:I = 0xb

.field public static final ELEMENT_AUTO_SYNC_ID:I = 0x5

.field public static final ELEMENT_BACKGROUND_DATA_ID:I = 0x4

.field public static final ELEMENT_BACKLIGHT_ID:I = 0xd

.field public static final ELEMENT_BACKLIGHT_MANUAL_ID:I = 0xa

.field public static final ELEMENT_BT_ID:I = 0x7

.field public static final ELEMENT_CPU_FREQ_ID:I = 0xc

.field public static final ELEMENT_FEED_BACK_ID:I = 0x9

.field public static final ELEMENT_GPS_ID:I = 0x8

.field public static final ELEMENT_MOBILE_DATA_ID:I = 0x3

.field public static final ELEMENT_TIMEOUT_ID:I = 0xe

.field public static final ELEMENT_VIBRATION:I = 0x10

.field public static final ELEMENT_WIFI_ID:I = 0x6


# instance fields
.field mId:I

.field mIsActive:Z

.field mValue:I

.field mVisibility:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/baidu/service/power/IProfileElement$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 32
    const-string v2, "SmartPowerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apply profile element: id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/baidu/service/power/ProfileElement;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget v2, p0, Lcom/baidu/service/power/ProfileElement;->mId:I

    packed-switch v2, :pswitch_data_0

    .line 79
    :goto_0
    :pswitch_0
    return-void

    .line 37
    :pswitch_1
    iget v2, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    if-ne v2, v1, :cond_0

    :goto_1
    invoke-static {p1, p2, v0}, Lcom/baidu/service/power/ProfileStateMachine;->setAirPlane(Landroid/content/Context;IZ)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 40
    :pswitch_2
    iget v2, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    if-ne v2, v1, :cond_1

    :goto_2
    invoke-static {p1, p2, v1}, Lcom/baidu/service/power/ProfileStateMachine;->setMobileData(Landroid/content/Context;IZ)V

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_2

    .line 45
    :pswitch_3
    iget v2, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    if-ne v2, v1, :cond_2

    :goto_3
    invoke-static {p1, p2, v1}, Lcom/baidu/service/power/ProfileStateMachine;->setAutoSync(Landroid/content/Context;IZ)V

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_3

    .line 48
    :pswitch_4
    iget v2, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    if-ne v2, v1, :cond_3

    :goto_4
    invoke-static {p1, p2, v1}, Lcom/baidu/service/power/ProfileStateMachine;->setWifi(Landroid/content/Context;IZ)V

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_4

    .line 51
    :pswitch_5
    iget v2, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    if-ne v2, v1, :cond_4

    :goto_5
    invoke-static {p1, p2, v1}, Lcom/baidu/service/power/ProfileStateMachine;->setBluetooth(Landroid/content/Context;IZ)V

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_5

    .line 54
    :pswitch_6
    iget v2, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    if-ne v2, v1, :cond_5

    :goto_6
    invoke-static {p1, p2, v1}, Lcom/baidu/service/power/ProfileStateMachine;->enableGPS(Landroid/content/Context;IZ)V

    goto :goto_0

    :cond_5
    move v1, v0

    goto :goto_6

    .line 57
    :pswitch_7
    iget v2, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    if-ne v2, v1, :cond_6

    :goto_7
    invoke-static {p1, p2, v1}, Lcom/baidu/service/power/ProfileStateMachine;->enableFeedback(Landroid/content/Context;IZ)V

    goto :goto_0

    :cond_6
    move v1, v0

    goto :goto_7

    .line 60
    :pswitch_8
    iget v2, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    if-ne v2, v1, :cond_7

    :goto_8
    invoke-static {p1, p2, v1}, Lcom/baidu/service/power/ProfileStateMachine;->setAutoRotate(Landroid/content/Context;IZ)V

    goto :goto_0

    :cond_7
    move v1, v0

    goto :goto_8

    .line 63
    :pswitch_9
    iget v2, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    if-ne v2, v1, :cond_8

    :goto_9
    invoke-static {p1, p2, v1}, Lcom/baidu/service/power/ProfileStateMachine;->downCpuFreq(Landroid/content/Context;IZ)V

    goto :goto_0

    :cond_8
    move v1, v0

    goto :goto_9

    .line 66
    :pswitch_a
    iget v0, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    invoke-static {p1, p2, v0}, Lcom/baidu/service/power/ProfileStateMachine;->setBackLight(Landroid/content/Context;II)V

    goto :goto_0

    .line 69
    :pswitch_b
    iget v0, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    invoke-static {p1, p2, v0}, Lcom/baidu/service/power/ProfileStateMachine;->setScreenTimeout(Landroid/content/Context;II)V

    goto :goto_0

    .line 72
    :pswitch_c
    iget v0, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    invoke-static {v0, p2}, Lcom/baidu/service/power/ProfileStateMachine;->setAnimations(II)V

    goto :goto_0

    .line 75
    :pswitch_d
    iget v0, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    invoke-static {p1, v0}, Lcom/baidu/service/power/ProfileStateMachine;->setRinger(Landroid/content/Context;I)V

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public applyMerge(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 132
    const-string v3, "SmartPowerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apply profile element: id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/baidu/service/power/ProfileElement;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, value:I
    iget v3, p0, Lcom/baidu/service/power/ProfileElement;->mId:I

    packed-switch v3, :pswitch_data_0

    .line 189
    :goto_0
    :pswitch_0
    return-void

    .line 138
    :pswitch_1
    iget v3, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    if-ne v3, v1, :cond_0

    :goto_1
    invoke-static {p1, v1}, Lcom/baidu/service/power/ProfileUtil;->setAirPlane(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 141
    :pswitch_2
    invoke-static {p1}, Lcom/baidu/service/power/ProfileUtil;->getMobileData(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 142
    :goto_2
    iget v3, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    or-int/2addr v3, v0

    if-ne v3, v1, :cond_2

    :goto_3
    invoke-static {p1, v1}, Lcom/baidu/service/power/ProfileUtil;->setMobileData(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 141
    goto :goto_2

    :cond_2
    move v1, v2

    .line 142
    goto :goto_3

    .line 147
    :pswitch_3
    invoke-static {p1}, Lcom/baidu/service/power/ProfileUtil;->getAutoSync(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 148
    :goto_4
    iget v3, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    or-int/2addr v3, v0

    if-ne v3, v1, :cond_4

    :goto_5
    invoke-static {p1, v1}, Lcom/baidu/service/power/ProfileUtil;->setAutoSync(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 147
    goto :goto_4

    :cond_4
    move v1, v2

    .line 148
    goto :goto_5

    .line 151
    :pswitch_4
    invoke-static {p1}, Lcom/baidu/service/power/ProfileUtil;->getWifi(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    .line 152
    :goto_6
    iget v3, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    or-int/2addr v3, v0

    if-ne v3, v1, :cond_6

    :goto_7
    invoke-static {p1, v1}, Lcom/baidu/service/power/ProfileUtil;->setWifi(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 151
    goto :goto_6

    :cond_6
    move v1, v2

    .line 152
    goto :goto_7

    .line 155
    :pswitch_5
    invoke-static {p1}, Lcom/baidu/service/power/ProfileUtil;->getBluetooth(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v0, v1

    .line 156
    :goto_8
    iget v3, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    or-int/2addr v3, v0

    if-ne v3, v1, :cond_8

    :goto_9
    invoke-static {p1, v1}, Lcom/baidu/service/power/ProfileUtil;->setBluetooth(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_7
    move v0, v2

    .line 155
    goto :goto_8

    :cond_8
    move v1, v2

    .line 156
    goto :goto_9

    .line 159
    :pswitch_6
    invoke-static {p1}, Lcom/baidu/service/power/ProfileUtil;->getGPS(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v0, v1

    .line 160
    :goto_a
    iget v3, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    or-int/2addr v3, v0

    if-ne v3, v1, :cond_a

    :goto_b
    invoke-static {p1, v1}, Lcom/baidu/service/power/ProfileUtil;->enableGPS(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_9
    move v0, v2

    .line 159
    goto :goto_a

    :cond_a
    move v1, v2

    .line 160
    goto :goto_b

    .line 163
    :pswitch_7
    invoke-static {p1}, Lcom/baidu/service/power/ProfileUtil;->getSoundEffects(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v0, v1

    .line 164
    :goto_c
    iget v3, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    or-int/2addr v3, v0

    if-ne v3, v1, :cond_c

    :goto_d
    invoke-static {p1, v1}, Lcom/baidu/service/power/ProfileUtil;->enableSoundEffects(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_b
    move v0, v2

    .line 163
    goto :goto_c

    :cond_c
    move v1, v2

    .line 164
    goto :goto_d

    .line 167
    :pswitch_8
    invoke-static {p1}, Lcom/baidu/service/power/ProfileUtil;->getAutoRotate(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_d

    move v0, v1

    .line 168
    :goto_e
    iget v3, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    or-int/2addr v3, v0

    if-ne v3, v1, :cond_e

    :goto_f
    invoke-static {p1, v1}, Lcom/baidu/service/power/ProfileUtil;->setAutoRotate(Landroid/content/Context;Z)V

    goto/16 :goto_0

    :cond_d
    move v0, v2

    .line 167
    goto :goto_e

    :cond_e
    move v1, v2

    .line 168
    goto :goto_f

    .line 171
    :pswitch_9
    iget v3, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    if-ne v3, v1, :cond_f

    :goto_10
    invoke-static {p1, v1}, Lcom/baidu/service/power/ProfileUtil;->downCpuFreq(Landroid/content/Context;Z)V

    goto/16 :goto_0

    :cond_f
    move v1, v2

    goto :goto_10

    .line 174
    :pswitch_a
    invoke-static {p1}, Lcom/baidu/service/power/ProfileUtil;->getBackLight(Landroid/content/Context;)I

    move-result v0

    .line 175
    iget v1, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    invoke-static {p1, v1}, Lcom/baidu/service/power/ProfileUtil;->setBackLight(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 178
    :pswitch_b
    invoke-static {p1}, Lcom/baidu/service/power/ProfileUtil;->getScreenTimeout(Landroid/content/Context;)I

    move-result v0

    .line 179
    iget v1, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    if-le v1, v0, :cond_10

    iget v1, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    :goto_11
    invoke-static {p1, v1}, Lcom/baidu/service/power/ProfileUtil;->setScreenTimeout(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_10
    move v1, v0

    goto :goto_11

    .line 182
    :pswitch_c
    iget v3, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/baidu/service/power/ProfileUtil;->operateAnimations(IF)V

    .line 183
    iget v2, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/baidu/service/power/ProfileUtil;->operateAnimations(IF)V

    goto/16 :goto_0

    .line 186
    :pswitch_d
    iget v1, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    invoke-static {p1, v1}, Lcom/baidu/service/power/ProfileUtil;->setRinger(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public applyWithoutSM(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 82
    const-string v2, "SmartPowerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apply profile element: id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/baidu/service/power/ProfileElement;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget v2, p0, Lcom/baidu/service/power/ProfileElement;->mId:I

    packed-switch v2, :pswitch_data_0

    .line 129
    :goto_0
    :pswitch_0
    return-void

    .line 87
    :pswitch_1
    iget v2, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    if-ne v2, v0, :cond_0

    :goto_1
    invoke-static {p1, v0}, Lcom/baidu/service/power/ProfileUtil;->setAirPlane(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 90
    :pswitch_2
    iget v2, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    if-ne v2, v0, :cond_1

    :goto_2
    invoke-static {p1, v0}, Lcom/baidu/service/power/ProfileUtil;->setMobileData(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 95
    :pswitch_3
    iget v2, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    if-ne v2, v0, :cond_2

    :goto_3
    invoke-static {p1, v0}, Lcom/baidu/service/power/ProfileUtil;->setAutoSync(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_3

    .line 98
    :pswitch_4
    iget v2, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    if-ne v2, v0, :cond_3

    :goto_4
    invoke-static {p1, v0}, Lcom/baidu/service/power/ProfileUtil;->setWifi(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_4

    .line 101
    :pswitch_5
    iget v2, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    if-ne v2, v0, :cond_4

    :goto_5
    invoke-static {p1, v0}, Lcom/baidu/service/power/ProfileUtil;->setBluetooth(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_5

    .line 104
    :pswitch_6
    iget v2, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    if-ne v2, v0, :cond_5

    :goto_6
    invoke-static {p1, v0}, Lcom/baidu/service/power/ProfileUtil;->enableGPS(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_6

    .line 107
    :pswitch_7
    iget v2, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    if-ne v2, v0, :cond_6

    :goto_7
    invoke-static {p1, v0}, Lcom/baidu/service/power/ProfileUtil;->enableSoundEffects(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_7

    .line 110
    :pswitch_8
    iget v2, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    if-ne v2, v0, :cond_7

    :goto_8
    invoke-static {p1, v0}, Lcom/baidu/service/power/ProfileUtil;->setAutoRotate(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_8

    .line 113
    :pswitch_9
    iget v2, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    if-ne v2, v0, :cond_8

    :goto_9
    invoke-static {p1, v0}, Lcom/baidu/service/power/ProfileUtil;->downCpuFreq(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_9

    .line 116
    :pswitch_a
    iget v0, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    invoke-static {p1, v0}, Lcom/baidu/service/power/ProfileUtil;->setBackLight(Landroid/content/Context;I)V

    goto :goto_0

    .line 119
    :pswitch_b
    iget v0, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    invoke-static {p1, v0}, Lcom/baidu/service/power/ProfileUtil;->setScreenTimeout(Landroid/content/Context;I)V

    goto :goto_0

    .line 122
    :pswitch_c
    iget v2, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/baidu/service/power/ProfileUtil;->operateAnimations(IF)V

    .line 123
    iget v1, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/baidu/service/power/ProfileUtil;->operateAnimations(IF)V

    goto :goto_0

    .line 126
    :pswitch_d
    iget v0, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    invoke-static {p1, v0}, Lcom/baidu/service/power/ProfileUtil;->setRinger(Landroid/content/Context;I)V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public getId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 193
    iget v0, p0, Lcom/baidu/service/power/ProfileElement;->mId:I

    return v0
.end method

.method public getValue()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 198
    iget v0, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    return v0
.end method

.method public isActive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/baidu/service/power/ProfileElement;->mIsActive:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/baidu/service/power/ProfileElement;->mVisibility:Z

    return v0
.end method

.method public setActive(Z)V
    .locals 1
    .parameter "active"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/baidu/service/power/ProfileElement;->mIsActive:Z

    .line 222
    invoke-static {}, Lcom/baidu/service/power/PowerModeManager;->getInstance()Lcom/baidu/service/power/PowerModeManager;

    move-result-object v0

    .line 223
    .local v0, pm:Lcom/baidu/service/power/PowerModeManager;
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/baidu/service/power/PowerModeManager;->storeModes()V

    .line 225
    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 213
    iput p1, p0, Lcom/baidu/service/power/ProfileElement;->mValue:I

    .line 214
    invoke-static {}, Lcom/baidu/service/power/PowerModeManager;->getInstance()Lcom/baidu/service/power/PowerModeManager;

    move-result-object v0

    .line 215
    .local v0, pm:Lcom/baidu/service/power/PowerModeManager;
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/baidu/service/power/PowerModeManager;->storeModes()V

    .line 217
    :cond_0
    return-void
.end method
