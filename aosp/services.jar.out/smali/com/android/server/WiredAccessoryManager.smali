.class final Lcom/android/server/WiredAccessoryManager;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
    }
.end annotation


# static fields
.field private static final BIT_HDMI_AUDIO:I = 0x10

.field private static final BIT_HEADSET:I = 0x1

.field private static final BIT_HEADSET_NO_MIC:I = 0x2

.field private static final BIT_USB_HEADSET_ANLG:I = 0x4

.field private static final BIT_USB_HEADSET_DGTL:I = 0x8

.field private static final LOG:Z = true

.field private static final MSG_NEW_DEVICE_STATE:I = 0x1

.field private static final NAME_H2W:Ljava/lang/String; = "h2w"

.field private static final NAME_HDMI:Ljava/lang/String; = "hdmi"

.field private static final NAME_HDMI_AUDIO:Ljava/lang/String; = "hdmi_audio"

.field private static final NAME_USB_AUDIO:Ljava/lang/String; = "usb_audio"

.field private static final SUPPORTED_HEADSETS:I = 0x1f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private illegal_state:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetState:I

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field private final mLock:Ljava/lang/Object;

.field private final mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

.field private mSwitchValues:I

.field private final mUseDevInputEventForAudioJack:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/android/server/WiredAccessoryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .locals 7
    .parameter "context"
    .parameter "inputManager"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    .line 93
    iput v5, p0, Lcom/android/server/WiredAccessoryManager;->illegal_state:I

    .line 264
    new-instance v2, Lcom/android/server/WiredAccessoryManager$3;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3, v4, v6}, Lcom/android/server/WiredAccessoryManager$3;-><init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    .line 95
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    .line 96
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 97
    .local v1, pm:Landroid/os/PowerManager;
    const-string v2, "WiredAccessoryManager"

    invoke-virtual {v1, v6, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 98
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 99
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 100
    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #bool@config_useDevInputEventForAudioJack#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    .line 105
    new-instance v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct {v2, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.LAUNCH_POWEROFF_ALARM"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    new-instance v2, Lcom/android/server/WiredAccessoryManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/WiredAccessoryManager$1;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    invoke-virtual {p1, v2, v0, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/WiredAccessoryManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager;->bootCompleted()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/WiredAccessoryManager;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/WiredAccessoryManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/WiredAccessoryManager;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDevicesState(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/WiredAccessoryManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/server/WiredAccessoryManager;->illegal_state:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/WiredAccessoryManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/server/WiredAccessoryManager;->illegal_state:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/WiredAccessoryManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager;->getIllegalHeadset()I

    move-result v0

    return v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/WiredAccessoryManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager;->showheadsetToast()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/WiredAccessoryManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    return v0
.end method

.method private bootCompleted()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/16 v3, -0x100

    .line 117
    iget-boolean v1, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    if-eqz v1, :cond_2

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, switchValues:I
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x2

    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 120
    or-int/lit8 v0, v0, 0x4

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x4

    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 123
    or-int/lit8 v0, v0, 0x10

    .line 125
    :cond_1
    const-wide/16 v1, 0x0

    const/16 v3, 0x14

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/server/WiredAccessoryManager;->notifyWiredAccessoryChanged(JII)V

    .line 129
    .end local v0           #switchValues:I
    :cond_2
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->init()V

    .line 130
    return-void
.end method

.method private getIllegalHeadset()I
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 191
    const/4 v4, 0x0

    .line 193
    .local v4, state:I
    const-string v6, "/sys/devices/platform/Accdet_Driver/driver/accdet_pin_recognition"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, pinStateFilePath:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 197
    .local v1, fw:Ljava/io/FileReader;
    invoke-virtual {v1}, Ljava/io/FileReader;->read()I

    move-result v4

    .line 198
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 199
    .local v3, pin_state:I
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 200
    sget-object v6, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PIN state for Accdet is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v1           #fw:Ljava/io/FileReader;
    .end local v3           #pin_state:I
    :goto_0
    return v3

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v5

    .line 205
    goto :goto_0
.end method

.method private setDeviceStateLocked(IIILjava/lang/String;)V
    .locals 7
    .parameter "headset"
    .parameter "headsetState"
    .parameter "prevHeadsetState"
    .parameter "headsetName"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 290
    and-int v2, p2, p1

    and-int v3, p3, p1

    if-eq v2, v3, :cond_1

    .line 294
    and-int v2, p2, p1

    if-eqz v2, :cond_2

    .line 295
    const/4 v1, 0x1

    .line 300
    .local v1, state:I
    :goto_0
    if-ne p1, v5, :cond_3

    .line 301
    const/4 v0, 0x4

    .line 316
    .local v0, device:I
    :goto_1
    sget-object v3, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v1, v5, :cond_8

    const-string v2, " connected"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    if-ne p3, v6, :cond_0

    if-ne p2, v5, :cond_0

    if-nez v1, :cond_0

    .line 321
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :cond_0
    :goto_3
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0, v1, p4}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    .line 328
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager;->getIllegalHeadset()I

    move-result v2

    iput v2, p0, Lcom/android/server/WiredAccessoryManager;->illegal_state:I

    .line 329
    const/16 v2, 0x31

    iget v3, p0, Lcom/android/server/WiredAccessoryManager;->illegal_state:I

    if-ne v2, v3, :cond_1

    .line 330
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/WiredAccessoryManager$4;

    invoke-direct {v3, p0}, Lcom/android/server/WiredAccessoryManager$4;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 346
    .end local v0           #device:I
    .end local v1           #state:I
    :cond_1
    :goto_4
    return-void

    .line 297
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #state:I
    goto :goto_0

    .line 302
    :cond_3
    if-ne p1, v6, :cond_4

    .line 303
    const/16 v0, 0x8

    .restart local v0       #device:I
    goto :goto_1

    .line 304
    .end local v0           #device:I
    :cond_4
    const/4 v2, 0x4

    if-ne p1, v2, :cond_5

    .line 305
    const/16 v0, 0x800

    .restart local v0       #device:I
    goto :goto_1

    .line 306
    .end local v0           #device:I
    :cond_5
    const/16 v2, 0x8

    if-ne p1, v2, :cond_6

    .line 307
    const/16 v0, 0x1000

    .restart local v0       #device:I
    goto :goto_1

    .line 308
    .end local v0           #device:I
    :cond_6
    const/16 v2, 0x10

    if-ne p1, v2, :cond_7

    .line 309
    const/16 v0, 0x400

    .restart local v0       #device:I
    goto :goto_1

    .line 311
    .end local v0           #device:I
    :cond_7
    sget-object v2, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDeviceState() invalid headset type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 316
    .restart local v0       #device:I
    :cond_8
    const-string v2, " disconnected"

    goto :goto_2

    .line 322
    :catch_0
    move-exception v2

    goto :goto_3
.end method

.method private setDevicesState(IILjava/lang/String;)V
    .locals 4
    .parameter "headsetState"
    .parameter "prevHeadsetState"
    .parameter "headsetName"

    .prologue
    .line 277
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 278
    const/16 v0, 0x1f

    .line 279
    .local v0, allHeadsets:I
    const/4 v1, 0x1

    .local v1, curHeadset:I
    :goto_0
    if-eqz v0, :cond_1

    .line 280
    and-int v2, v1, v0

    if-eqz v2, :cond_0

    .line 281
    :try_start_0
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDeviceStateLocked(IIILjava/lang/String;)V

    .line 282
    xor-int/lit8 v2, v1, -0x1

    and-int/2addr v0, v2

    .line 279
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :cond_1
    monitor-exit v3

    .line 286
    return-void

    .line 285
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private showheadsetToast()V
    .locals 5

    .prologue
    .line 167
    sget-object v2, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v3, "come in showheadsetToast++++++++"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v0, 0x1

    .line 171
    .local v0, duration:I
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    const v3, 0x2050125

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/WiredAccessoryManager;->toast:Landroid/widget/Toast;

    .line 177
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->toast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 180
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 181
    .local v1, headset_timer:Ljava/util/Timer;
    new-instance v2, Lcom/android/server/WiredAccessoryManager$2;

    invoke-direct {v2, p0}, Lcom/android/server/WiredAccessoryManager$2;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 188
    return-void
.end method

.method private switchCodeToString(II)Ljava/lang/String;
    .locals 2
    .parameter "switchValues"
    .parameter "switchMask"

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 350
    .local v0, sb:Ljava/lang/StringBuffer;
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    .line 352
    const-string v1, "SW_HEADPHONE_INSERT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 354
    :cond_0
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_1

    .line 356
    const-string v1, "SW_MICROPHONE_INSERT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateLocked(Ljava/lang/String;I)V
    .locals 10
    .parameter "newName"
    .parameter "newState"

    .prologue
    .line 220
    and-int/lit8 v2, p2, 0x1f

    .line 221
    .local v2, headsetState:I
    and-int/lit8 v5, v2, 0x4

    .line 222
    .local v5, usb_headset_anlg:I
    and-int/lit8 v6, v2, 0x8

    .line 223
    .local v6, usb_headset_dgtl:I
    and-int/lit8 v1, v2, 0x3

    .line 224
    .local v1, h2w_headset:I
    const/4 v0, 0x1

    .line 225
    .local v0, h2wStateChange:Z
    const/4 v4, 0x1

    .line 226
    .local v4, usbStateChange:Z
    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "newName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " newState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " headsetState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " prev headsetState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget v7, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    if-ne v7, v2, :cond_0

    .line 232
    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v8, "No state change."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :goto_0
    return-void

    .line 239
    :cond_0
    const/4 v7, 0x3

    if-ne v1, v7, :cond_1

    .line 240
    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v8, "Invalid combination, unsetting h2w flag"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v0, 0x0

    .line 246
    :cond_1
    const/4 v7, 0x4

    if-ne v5, v7, :cond_2

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    .line 247
    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v8, "Invalid combination, unsetting usb flag"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v4, 0x0

    .line 250
    :cond_2
    if-nez v0, :cond_3

    if-nez v4, :cond_3

    .line 251
    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v8, "invalid transition, returning ..."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    :cond_3
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 257
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    iget v9, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    invoke-virtual {v7, v8, v2, v9, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 259
    .local v3, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 261
    iput v2, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    goto :goto_0
.end method


# virtual methods
.method public notifyWiredAccessoryChanged(JII)V
    .locals 4
    .parameter "whenNanos"
    .parameter "switchValues"
    .parameter "switchMask"

    .prologue
    .line 134
    sget-object v1, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyWiredAccessoryChanged: when="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bits="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p3, p4}, Lcom/android/server/WiredAccessoryManager;->switchCodeToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 140
    :try_start_0
    iget v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    xor-int/lit8 v3, p4, -0x1

    and-int/2addr v1, v3

    or-int/2addr v1, p3

    iput v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    .line 141
    iget v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    and-int/lit8 v1, v1, 0x14

    sparse-switch v1, :sswitch_data_0

    .line 159
    const/4 v0, 0x0

    .line 163
    .local v0, headset:I
    :goto_0
    const-string v1, "h2w"

    iget v3, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    and-int/lit8 v3, v3, -0x4

    or-int/2addr v3, v0

    invoke-direct {p0, v1, v3}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V

    .line 164
    monitor-exit v2

    .line 165
    return-void

    .line 143
    .end local v0           #headset:I
    :sswitch_0
    const/4 v0, 0x0

    .line 144
    .restart local v0       #headset:I
    goto :goto_0

    .line 147
    .end local v0           #headset:I
    :sswitch_1
    const/4 v0, 0x2

    .line 148
    .restart local v0       #headset:I
    goto :goto_0

    .line 151
    .end local v0           #headset:I
    :sswitch_2
    const/4 v0, 0x1

    .line 152
    .restart local v0       #headset:I
    goto :goto_0

    .line 155
    .end local v0           #headset:I
    :sswitch_3
    const/4 v0, 0x1

    .line 156
    .restart local v0       #headset:I
    goto :goto_0

    .line 164
    .end local v0           #headset:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 141
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x10 -> :sswitch_3
        0x14 -> :sswitch_2
    .end sparse-switch
.end method
