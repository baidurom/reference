.class public final Landroid/os/PowerManager;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerManager$WakeLock;
    }
.end annotation


# static fields
.field public static final ACQUIRE_CAUSES_WAKEUP:I = 0x10000000

.field public static final BRIGHTNESS_OFF:I = 0x0

.field public static final BRIGHTNESS_ON:I = 0xff

.field public static final FULL_WAKE_LOCK:I = 0x1a
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GO_TO_SLEEP_REASON_DEVICE_ADMIN:I = 0x1

.field public static final GO_TO_SLEEP_REASON_PROXIMITY:I = 0x3

.field public static final GO_TO_SLEEP_REASON_TIMEOUT:I = 0x2

.field public static final GO_TO_SLEEP_REASON_USER:I = 0x0

.field public static final ON_AFTER_RELEASE:I = 0x20000000

.field public static final PARTIAL_WAKE_LOCK:I = 0x1

.field public static final PROXIMITY_SCREEN_OFF_WAKE_LOCK:I = 0x20

.field public static final SCREEN_BRIGHT_WAKE_LOCK:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCREEN_DIM_WAKE_LOCK:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PowerManager"

.field public static final USER_ACTIVITY_EVENT_BUTTON:I = 0x1

.field public static final USER_ACTIVITY_EVENT_OTHER:I = 0x0

.field public static final USER_ACTIVITY_EVENT_TOUCH:I = 0x2

.field public static final USER_ACTIVITY_FLAG_NO_CHANGE_LIGHTS:I = 0x1

.field public static final WAIT_FOR_PROXIMITY_NEGATIVE:I = 0x1

.field public static final WAKE_LOCK_LEVEL_MASK:I = 0xffff


# instance fields
.field final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field final mService:Landroid/os/IPowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IPowerManager;Landroid/os/Handler;)V
    .locals 0
    .parameter "context"
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    .line 308
    iput-object p2, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    .line 309
    iput-object p3, p0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    .line 310
    return-void
.end method

.method public static useScreenAutoBrightnessAdjustmentFeature()Z
    .locals 2

    .prologue
    .line 349
    const-string/jumbo v0, "persist.power.useautobrightadj"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static useTwilightAdjustmentFeature()Z
    .locals 2

    .prologue
    .line 358
    const-string/jumbo v0, "persist.power.usetwilightadj"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static validateWakeLockParameters(ILjava/lang/String;)V
    .locals 2
    .parameter "levelAndFlags"
    .parameter "tag"

    .prologue
    .line 421
    const v0, 0xffff

    and-int/2addr v0, p0

    sparse-switch v0, :sswitch_data_0

    .line 429
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify a valid wake lock level."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :sswitch_0
    if-nez p1, :cond_0

    .line 432
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The tag must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_0
    return-void

    .line 421
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getDefaultScreenBrightnessSetting()I
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #integer@config_screenBrightnessSettingDefault#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMaximumScreenBrightnessSetting()I
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #integer@config_screenBrightnessSettingMaximum#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMinimumScreenBrightnessSetting()I
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #integer@config_screenBrightnessSettingMinimum#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public goToSleep(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 487
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IPowerManager;->goToSleep(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :goto_0
    return-void

    .line 488
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isScreenOn()Z
    .locals 2

    .prologue
    .line 715
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->isScreenOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 717
    :goto_0
    return v1

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWakeLockLevelSupported(I)Z
    .locals 2
    .parameter "level"

    .prologue
    .line 694
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->isWakeLockLevelSupported(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 696
    :goto_0
    return v1

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public nap(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 633
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->nap(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :goto_0
    return-void

    .line 634
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "levelAndFlags"
    .parameter "tag"

    .prologue
    .line 415
    invoke-static {p1, p2}, Landroid/os/PowerManager;->validateWakeLockParameters(ILjava/lang/String;)V

    .line 416
    new-instance v0, Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/PowerManager$WakeLock;-><init>(Landroid/os/PowerManager;ILjava/lang/String;)V

    return-object v0
.end method

.method public reboot(Ljava/lang/String;)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 732
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    :goto_0
    return-void

    .line 733
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sbGoToSleep(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 563
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IPowerManager;->sbGoToSleep(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    :goto_0
    return-void

    .line 564
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sbScreenOffCtrl(I)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 605
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->sbScreenOffCtrl(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :goto_0
    return-void

    .line 606
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sbScreenOnCtrl(I)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 584
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->sbScreenOnCtrl(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :goto_0
    return-void

    .line 585
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sbWakeUp(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 537
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->sbWakeUp(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :goto_0
    return-void

    .line 538
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setBacklightBrightness(I)V
    .locals 1
    .parameter "brightness"

    .prologue
    .line 650
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    :goto_0
    return-void

    .line 651
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setBacklightBrightnessOff(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 665
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightnessOff(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    :goto_0
    return-void

    .line 666
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setBacklightOffForWFD(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 679
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightOffForWFD(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :goto_0
    return-void

    .line 680
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public userActivity(JZ)V
    .locals 3
    .parameter "when"
    .parameter "noChangeLights"

    .prologue
    const/4 v0, 0x0

    .line 462
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {v1, p1, p2, v2, v0}, Landroid/os/IPowerManager;->userActivity(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :goto_0
    return-void

    .line 464
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public wakeUp(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 511
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->wakeUp(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :goto_0
    return-void

    .line 512
    :catch_0
    move-exception v0

    goto :goto_0
.end method
