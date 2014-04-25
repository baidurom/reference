.class public Lcom/mediatek/vt/VTManager;
.super Ljava/lang/Object;
.source "VTManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/vt/VTManager$TelMsgHandler;,
        Lcom/mediatek/vt/VTManager$VTHanlder;,
        Lcom/mediatek/vt/VTManager$State;
    }
.end annotation


# static fields
.field public static final QUIT_THREAD:I = 0x8000000

.field public static final RECORD_TYPE_AUDIO_ONLY:I = 0x2

.field public static final RECORD_TYPE_VIDEO_AUDIO:I = 0x1

.field public static final RECORD_TYPE_VIDEO_ONLY:I = 0x3

.field public static final SET_VT_CLOSE:I = 0x0

.field public static final SET_VT_OPEN:I = 0x1

.field public static final SET_VT_READY:I = 0x2

.field static final TAG:Ljava/lang/String; = "VTManager"

.field private static final VIDEO_TYPE_CAMERA:I = 0x0

.field private static final VIDEO_TYPE_IMAGE:I = 0x1

.field private static final VIDEO_TYPE_LAST_SHOT:I = 0x2

.field public static final VT_ERROR_CALL_DISCONNECT:I = 0x8001

.field public static final VT_ERROR_CAMERA:I = 0x8003

.field public static final VT_ERROR_MEDIA_RECORDER_COMPLETE:I = 0x8007

.field public static final VT_ERROR_MEDIA_RECORDER_EVENT_ERROR:I = 0x8006

.field public static final VT_ERROR_MEDIA_RECORDER_EVENT_INFO:I = 0x8005

.field public static final VT_ERROR_MEDIA_SERVER_DIED:I = 0x8004

.field public static final VT_ERROR_START_VTS_FAIL:I = 0x8002

.field public static final VT_MSG_CAM_BEGIN:I = 0x1000

.field public static final VT_MSG_CLOSE:I = 0x1

.field public static final VT_MSG_CONNECTED:I = 0x4

.field public static final VT_MSG_DISCONNECTED:I = 0x5

.field public static final VT_MSG_EM_INDICATION:I = 0x6

.field public static final VT_MSG_OPEN:I = 0x2

.field public static final VT_MSG_PEER_CAMERA_CLOSE:I = 0x10

.field public static final VT_MSG_PEER_CAMERA_OPEN:I = 0x9

.field public static final VT_MSG_READY:I = 0x3

.field public static final VT_MSG_RECEIVE_FIRSTFRAME:I = 0x8

.field public static final VT_MSG_RING:I = 0x7

.field public static final VT_MSG_START_COUNTER:I = 0x7

.field public static final VT_MSG_VTSTATUS:I = 0x6

.field public static final VT_NORMAL_END_SESSION_COMMAND:I = 0x8101

.field public static final VT_RET_FROM_JNI_FALSE:I = 0x1

.field public static final VT_RET_FROM_JNI_TRUE:I = 0x0

.field public static final VT_VQ_NORMAL:I = 0x1

.field public static final VT_VQ_SHARP:I = 0x0

.field public static final VT_VQ_SMOOTH:I = 0x2

.field private static sVTManager:Lcom/mediatek/vt/VTManager;


# instance fields
.field private bEnableReplacePeerVideo:I

.field private bStartVTSMALFail:Z

.field private closingVTService:Z

.field private dateTakenRecording:J

.field private invokeHideMeBeforeOpen:Z

.field private invokeLockPeerVideoBeforeOpen:Z

.field mCallManager:Ljava/lang/Object;

.field mContext:Landroid/content/Context;

.field private mEndCallLock:Ljava/lang/Integer;

.field mSettings:Lcom/mediatek/vt/VTSettings;

.field mState:Lcom/mediatek/vt/VTManager$State;

.field mTelMsgHandler:Landroid/os/Handler;

.field mTelMsgThread:Ljava/lang/Thread;

.field mVTListener:Landroid/os/Handler;

.field private mVTListenerLock:Ljava/lang/Integer;

.field mVTThread:Ljava/lang/Thread;

.field mVtHandler:Landroid/os/Handler;

.field private recordedFileName:Ljava/lang/String;

.field private recordedFilePath:Ljava/lang/String;

.field private sReplacePeerVideoPicturePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 259
    new-instance v0, Lcom/mediatek/vt/VTManager;

    invoke-direct {v0}, Lcom/mediatek/vt/VTManager;-><init>()V

    sput-object v0, Lcom/mediatek/vt/VTManager;->sVTManager:Lcom/mediatek/vt/VTManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iput-object v0, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    .line 107
    iput-object v2, p0, Lcom/mediatek/vt/VTManager;->mVTListener:Landroid/os/Handler;

    .line 110
    iput-object v2, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    .line 112
    iput-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    .line 114
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/vt/VTManager;->mVTListenerLock:Ljava/lang/Integer;

    .line 115
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/vt/VTManager;->mEndCallLock:Ljava/lang/Integer;

    .line 117
    iput-boolean v1, p0, Lcom/mediatek/vt/VTManager;->invokeHideMeBeforeOpen:Z

    .line 118
    iput-boolean v1, p0, Lcom/mediatek/vt/VTManager;->invokeLockPeerVideoBeforeOpen:Z

    .line 119
    iput-boolean v1, p0, Lcom/mediatek/vt/VTManager;->closingVTService:Z

    .line 120
    iput-boolean v1, p0, Lcom/mediatek/vt/VTManager;->bStartVTSMALFail:Z

    .line 127
    iput-object v2, p0, Lcom/mediatek/vt/VTManager;->recordedFilePath:Ljava/lang/String;

    .line 128
    iput-object v2, p0, Lcom/mediatek/vt/VTManager;->recordedFileName:Ljava/lang/String;

    .line 129
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/vt/VTManager;->dateTakenRecording:J

    .line 266
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iput-object v0, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    .line 267
    new-instance v0, Lcom/mediatek/vt/VTSettings;

    invoke-direct {v0}, Lcom/mediatek/vt/VTSettings;-><init>()V

    iput-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    .line 268
    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/vt/VTManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/mediatek/vt/VTManager;->setVTCloseImpl()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/vt/VTManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/mediatek/vt/VTManager;->setVTOpenImpl()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/vt/VTManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/mediatek/vt/VTManager;->setVTReadyImpl()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/vt/VTManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/mediatek/vt/VTManager;->bStartVTSMALFail:Z

    return v0
.end method

.method public static getInstance()Lcom/mediatek/vt/VTManager;
    .locals 1

    .prologue
    .line 262
    sget-object v0, Lcom/mediatek/vt/VTManager;->sVTManager:Lcom/mediatek/vt/VTManager;

    return-object v0
.end method

.method public static setEM(III)V
    .locals 0
    .parameter "item"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 869
    invoke-static {p0, p1, p2}, Lcom/mediatek/vt/VTelProvider;->setEM(III)V

    .line 870
    return-void
.end method

.method private setInvokeHideMeBeforeOpen(Z)V
    .locals 0
    .parameter "invokeHideMeBeforeOpen"

    .prologue
    .line 1065
    iput-boolean p1, p0, Lcom/mediatek/vt/VTManager;->invokeHideMeBeforeOpen:Z

    .line 1066
    return-void
.end method

.method private setInvokeLockPeerVideoBeforeOpen(Z)V
    .locals 0
    .parameter "invokeLockPeerVideoBeforeOpen"

    .prologue
    .line 1103
    iput-boolean p1, p0, Lcom/mediatek/vt/VTManager;->invokeLockPeerVideoBeforeOpen:Z

    .line 1104
    return-void
.end method

.method private declared-synchronized setVTCloseImpl()V
    .locals 6

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    const-string v2, "VTManager"

    const-string v3, "setVTCloseImpl"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :goto_0
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    sget-object v3, Lcom/mediatek/vt/VTManager$State;->CONNECTED:Lcom/mediatek/vt/VTManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v2, v3, :cond_0

    .line 390
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "VTManager"

    const-string v3, "createThreads, wait error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 401
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mediatek/vt/VTManager;->postEventToMMI(IIILjava/lang/Object;)V

    .line 404
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/vt/VTManager;->closingVTService:Z

    .line 406
    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mEndCallLock:Ljava/lang/Integer;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 407
    :try_start_3
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->closeVTService()I

    move-result v1

    .line 408
    .local v1, ret:I
    if-eqz v1, :cond_1

    .line 409
    const-string v2, "VTManager"

    const-string v4, "setVTCloseImpl, error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 416
    :goto_1
    monitor-exit p0

    return-void

    .line 412
    :cond_1
    :try_start_4
    sget-object v2, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iput-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    .line 413
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/vt/VTManager;->bStartVTSMALFail:Z

    .line 414
    const-string v2, "VTManager"

    iget-object v4, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    invoke-virtual {v4}, Lcom/mediatek/vt/VTManager$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    monitor-exit v3

    goto :goto_1

    .end local v1           #ret:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 387
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized setVTOpenImpl()V
    .locals 4

    .prologue
    .line 298
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->openVTSerice()I

    move-result v0

    .line 299
    .local v0, ret:I
    if-eqz v0, :cond_1

    .line 300
    const-string v1, "VTManager"

    const-string v2, "setVTOpenImpl, error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 303
    :cond_1
    :try_start_1
    sget-object v1, Lcom/mediatek/vt/VTManager$State;->OPEN:Lcom/mediatek/vt/VTManager$State;

    iput-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    .line 305
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 306
    const-string v1, "VTManager"

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v1, "VTManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/vt/VTManager;->invokeHideMeBeforeOpen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-boolean v1, p0, Lcom/mediatek/vt/VTManager;->invokeHideMeBeforeOpen:Z

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->getVideoType()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTSettings;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 298
    .end local v0           #ret:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized setVTReadyImpl()V
    .locals 6

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    const-string v2, "VTManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVTReadyImpl, mTelMsgHandler = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v1, 0x0

    .line 337
    .local v1, ret:I
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTSettings;->getIsSwitch()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 338
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTSettings;->getPeerSurface()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v3}, Lcom/mediatek/vt/VTSettings;->getLocalSurface()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/vt/VTelProvider;->initVTService(Landroid/view/Surface;Landroid/view/Surface;)I

    move-result v1

    .line 343
    :goto_0
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 345
    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mTelMsgThread:Ljava/lang/Thread;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 347
    :try_start_1
    const-string v2, "VTManager"

    const-string v4, "setVTReadyImpl mTelMsgThread wait "

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 353
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 355
    :cond_0
    if-eqz v1, :cond_2

    .line 356
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/mediatek/vt/VTManager;->bStartVTSMALFail:Z

    .line 357
    const-string v2, "VTManager"

    const-string v3, "setVTReadyImpl, error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 360
    :try_start_4
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 361
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 371
    :goto_2
    monitor-exit p0

    return-void

    .line 340
    :cond_1
    :try_start_5
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTSettings;->getLocalSurface()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v3}, Lcom/mediatek/vt/VTSettings;->getPeerSurface()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/vt/VTelProvider;->initVTService(Landroid/view/Surface;Landroid/view/Surface;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v1

    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_6
    const-string v2, "VTManager"

    const-string v4, "setVTReadyImpl, wait error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 353
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 335
    .end local v1           #ret:I
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 361
    .restart local v1       #ret:I
    :catchall_2
    move-exception v2

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v2

    .line 364
    :cond_2
    sget-object v2, Lcom/mediatek/vt/VTManager$State;->READY:Lcom/mediatek/vt/VTManager$State;

    iput-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    .line 365
    const-string v2, "VTManager"

    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTSettings;->getCameraSettings()V

    .line 367
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mediatek/vt/VTManager;->postEventToMMI(IIILjava/lang/Object;)V

    .line 368
    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    monitor-enter v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 369
    :try_start_a
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 370
    monitor-exit v3

    goto :goto_2

    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
.end method


# virtual methods
.method public canDecBrightness()Z
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->canDecBrightness()Z

    move-result v0

    return v0
.end method

.method public canDecContrast()Z
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->canDecContrast()Z

    move-result v0

    return v0
.end method

.method public canDecZoom()Z
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->canDecZoom()Z

    move-result v0

    return v0
.end method

.method public canIncBrightness()Z
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->canIncBrightness()Z

    move-result v0

    return v0
.end method

.method public canIncContrast()Z
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->canIncContrast()Z

    move-result v0

    return v0
.end method

.method public canIncZoom()Z
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->canIncZoom()Z

    move-result v0

    return v0
.end method

.method createThreads()V
    .locals 4

    .prologue
    .line 139
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 140
    :cond_0
    const-string v1, "VTManager"

    const-string v2, "init error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_0
    return-void

    .line 144
    :cond_1
    new-instance v1, Lcom/mediatek/vt/VTManager$1;

    invoke-direct {v1, p0}, Lcom/mediatek/vt/VTManager$1;-><init>(Lcom/mediatek/vt/VTManager;)V

    iput-object v1, p0, Lcom/mediatek/vt/VTManager;->mVTThread:Ljava/lang/Thread;

    .line 161
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVTThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 163
    new-instance v1, Lcom/mediatek/vt/VTManager$2;

    invoke-direct {v1, p0}, Lcom/mediatek/vt/VTManager$2;-><init>(Lcom/mediatek/vt/VTManager;)V

    iput-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgThread:Ljava/lang/Thread;

    .line 187
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mVTThread:Ljava/lang/Thread;

    monitor-enter v2

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 190
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVTThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 198
    const-string v1, "VTManager"

    const-string v2, "mVtHandler.sendEmptyMessage()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 200
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "VTManager"

    const-string v3, "createThreads, wait error"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 196
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public decBrightness()Z
    .locals 2

    .prologue
    .line 732
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->decBrightness()Z

    move-result v0

    .line 733
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 734
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 735
    :cond_0
    return v0
.end method

.method public decContrast()Z
    .locals 2

    .prologue
    .line 776
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->decContrast()Z

    move-result v0

    .line 777
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 778
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 779
    :cond_0
    return v0
.end method

.method public decZoom()Z
    .locals 2

    .prologue
    .line 754
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->decZoom()Z

    move-result v0

    .line 755
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 756
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 757
    :cond_0
    return v0
.end method

.method public deinit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->joinThreads()V

    .line 279
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->deinit()V

    .line 280
    iput-object v1, p0, Lcom/mediatek/vt/VTManager;->mContext:Landroid/content/Context;

    .line 281
    iput-object v1, p0, Lcom/mediatek/vt/VTManager;->mCallManager:Ljava/lang/Object;

    .line 282
    return-void
.end method

.method public enableAlwaysAskSettings(I)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 1073
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableAlwaysAskSettings in VTManager.java, flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    invoke-static {p1}, Lcom/mediatek/vt/VTelProvider;->enableAlwaysAskSettings(I)I

    .line 1075
    return-void
.end method

.method public enableHideMe(I)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 1088
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableHideMe in VTManager.java, flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    invoke-static {p1}, Lcom/mediatek/vt/VTelProvider;->enableHideMe(I)I

    .line 1090
    return-void
.end method

.method public enableHideYou(I)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 1083
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableHideYou in VTManager.java, flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    invoke-static {p1}, Lcom/mediatek/vt/VTelProvider;->enableHideYou(I)I

    .line 1085
    return-void
.end method

.method public enlargeDisplaySurface(Z)V
    .locals 0
    .parameter "isEnlarge"

    .prologue
    .line 614
    return-void
.end method

.method public getCameraSensorCount()I
    .locals 5

    .prologue
    .line 838
    const/4 v0, 0x0

    .line 839
    .local v0, ret:I
    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mEndCallLock:Ljava/lang/Integer;

    monitor-enter v3

    .line 840
    :try_start_0
    sget-object v2, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v4, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v2, v4, :cond_0

    .line 841
    monitor-exit v3

    move v1, v0

    .line 845
    .end local v0           #ret:I
    .local v1, ret:I
    :goto_0
    return v1

    .line 843
    .end local v1           #ret:I
    .restart local v0       #ret:I
    :cond_0
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->getCameraSensorCount()I

    move-result v0

    .line 844
    monitor-exit v3

    move v1, v0

    .line 845
    .end local v0           #ret:I
    .restart local v1       #ret:I
    goto :goto_0

    .line 844
    .end local v1           #ret:I
    .restart local v0       #ret:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getColorEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getColorEffect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMute(Lcom/android/internal/telephony/Phone;)Z
    .locals 1
    .parameter "phone"

    .prologue
    .line 834
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->isMicrophoneOn()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNightMode()Z
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getNightMode()Z

    move-result v0

    return v0
.end method

.method getParameters()V
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->getParameters()Lcom/mediatek/vt/CameraParamters;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    .line 713
    return-void
.end method

.method public getState()Lcom/mediatek/vt/VTManager$State;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    return-object v0
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
    .line 799
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVideoQuality()I
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getVideoQuality()I

    move-result v0

    return v0
.end method

.method public getmVTListener()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mVTListener:Landroid/os/Handler;

    return-object v0
.end method

.method public incBrightness()Z
    .locals 2

    .prologue
    .line 739
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->incBrightness()Z

    move-result v0

    .line 740
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 741
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 742
    :cond_0
    return v0
.end method

.method public incContrast()Z
    .locals 2

    .prologue
    .line 783
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->incContrast()Z

    move-result v0

    .line 784
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 785
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 786
    :cond_0
    return v0
.end method

.method public incZoom()Z
    .locals 2

    .prologue
    .line 761
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->incZoom()Z

    move-result v0

    .line 762
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 763
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 764
    :cond_0
    return v0
.end method

.method public incomingVTCall(I)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 1098
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incomingVTCall in VTManager.java, flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    invoke-static {p1}, Lcom/mediatek/vt/VTelProvider;->incomingVTCall(I)I

    .line 1100
    return-void
.end method

.method public incomingVideoDispaly(I)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 1093
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incomingVideoDispaly in VTManager.java, flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    invoke-static {p1}, Lcom/mediatek/vt/VTelProvider;->incomingVideoDispaly(I)I

    .line 1095
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "callManager"

    .prologue
    .line 271
    iput-object p1, p0, Lcom/mediatek/vt/VTManager;->mContext:Landroid/content/Context;

    .line 272
    iput-object p2, p0, Lcom/mediatek/vt/VTManager;->mCallManager:Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTSettings;->init(Landroid/content/Context;)V

    .line 274
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->createThreads()V

    .line 275
    return-void
.end method

.method public isInvokeHideMeBeforeOpen()Z
    .locals 1

    .prologue
    .line 1061
    iget-boolean v0, p0, Lcom/mediatek/vt/VTManager;->invokeHideMeBeforeOpen:Z

    return v0
.end method

.method public isInvokeLockPeerVideoBeforeOpenn()Z
    .locals 1

    .prologue
    .line 1069
    iget-boolean v0, p0, Lcom/mediatek/vt/VTManager;->invokeLockPeerVideoBeforeOpen:Z

    return v0
.end method

.method public isSpeakerOn(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 858
    const/4 v0, 0x0

    .line 859
    .local v0, result:Z
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mEndCallLock:Ljava/lang/Integer;

    monitor-enter v2

    .line 860
    :try_start_0
    sget-object v3, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v4, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v3, v4, :cond_0

    .line 861
    monitor-exit v2

    .line 865
    :goto_0
    return v1

    .line 863
    :cond_0
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->isSpeakerOn()I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 864
    :goto_1
    monitor-exit v2

    move v1, v0

    .line 865
    goto :goto_0

    .line 863
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 864
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSupportNightMode()Z
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->isSupportNightMode()Z

    move-result v0

    return v0
.end method

.method joinThreads()V
    .locals 6

    .prologue
    const/high16 v5, 0x800

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 205
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mCallManager:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForVtStatusInfoGemini(Landroid/os/Handler;I)V

    .line 206
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mCallManager:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gemini/MTKCallManager;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/gemini/MTKCallManager;->unregisterForVtRingInfoGemini(Landroid/os/Handler;I)V

    .line 216
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 218
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 220
    const-string v1, "VTManager"

    const-string v2, "null == mTelMsgHandler in joinThreads()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_0
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 234
    :try_start_0
    const-string v1, "VTManager"

    const-string v3, "mTelMsgHandler notify in joinThreads()"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVTThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 246
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 251
    :goto_2
    iput-object v4, p0, Lcom/mediatek/vt/VTManager;->mVTThread:Ljava/lang/Thread;

    .line 252
    iput-object v4, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    .line 254
    iput-object v4, p0, Lcom/mediatek/vt/VTManager;->mTelMsgThread:Ljava/lang/Thread;

    .line 255
    iput-object v4, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    .line 257
    return-void

    .line 224
    :cond_0
    const-string v1, "VTManager"

    const-string v2, "null != mTelMsgHandler in joinThreads()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "VTManager"

    const-string v3, "mTelMsgHandler notify in joinThreads(), wait error"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 242
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 247
    :catch_1
    move-exception v0

    .line 248
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "VTManager"

    const-string v2, "joinThreads error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method public lockPeerVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 928
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v1, :cond_0

    .line 929
    const-string v0, "VTManager"

    const-string v1, "lockPeerVideo, vtmanager state error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-direct {p0, v2}, Lcom/mediatek/vt/VTManager;->setInvokeLockPeerVideoBeforeOpen(Z)V

    .line 931
    invoke-static {v2}, Lcom/mediatek/vt/VTelProvider;->setInvokeLockPeerVideoBeforeOpen(I)I

    .line 935
    :goto_0
    return-void

    .line 934
    :cond_0
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->lockPeerVideo()I

    goto :goto_0
.end method

.method public declared-synchronized onConnected()V
    .locals 5

    .prologue
    .line 419
    monitor-enter p0

    :try_start_0
    const-string v1, "VTManager"

    const-string v2, "onConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CONNECTED:Lcom/mediatek/vt/VTManager$State;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    .line 445
    :goto_0
    monitor-exit p0

    return-void

    .line 422
    :cond_0
    :try_start_1
    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v1, v2, :cond_1

    .line 423
    const-string v1, "VTManager"

    const-string v2, "onConnected, error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 419
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 437
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->startVTService()I

    move-result v0

    .line 438
    .local v0, ret:I
    if-eqz v0, :cond_2

    .line 439
    const-string v1, "VTManager"

    const-string v2, "onConnected, error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 442
    :cond_2
    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CONNECTED:Lcom/mediatek/vt/VTManager$State;

    iput-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    .line 443
    const-string v1, "VTManager"

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mediatek/vt/VTManager;->postEventToMMI(IIILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 448
    const-string v0, "VTManager"

    const-string v1, "pre-onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->setEndCallFlag()V

    .line 450
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->onDisconnectedActual()V

    .line 451
    return-void
.end method

.method public declared-synchronized onDisconnectedActual()V
    .locals 5

    .prologue
    .line 454
    monitor-enter p0

    :try_start_0
    const-string v1, "VTManager"

    const-string v2, "onDisconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CONNECTED:Lcom/mediatek/vt/VTManager$State;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-eq v1, v2, :cond_0

    .line 456
    const-string v1, "VTManager"

    const-string v2, "onDisconnected, VT Manager state error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    :goto_0
    monitor-exit p0

    return-void

    .line 459
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->stopVTService()I

    move-result v0

    .line 460
    .local v0, ret:I
    if-eqz v0, :cond_1

    .line 461
    const-string v1, "VTManager"

    const-string v2, "onDisconnected, error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 454
    .end local v0           #ret:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 464
    .restart local v0       #ret:I
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 465
    sget-object v1, Lcom/mediatek/vt/VTManager$State;->READY:Lcom/mediatek/vt/VTManager$State;

    iput-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    .line 466
    const-string v1, "VTManager"

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mediatek/vt/VTManager;->postEventToMMI(IIILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onUserInput(Ljava/lang/String;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 915
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v1, :cond_0

    .line 916
    const-string v0, "VTManager"

    const-string v1, "onUserInput, vtmanager state error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :goto_0
    return-void

    .line 919
    :cond_0
    invoke-static {p1}, Lcom/mediatek/vt/VTelProvider;->onUserInput(Ljava/lang/String;)V

    goto :goto_0
.end method

.method postEventFromNative(IIILjava/lang/Object;)V
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 905
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEventFromNative ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/vt/VTManager;->postEventToMMI(IIILjava/lang/Object;)V

    .line 907
    return-void
.end method

.method postEventToMMI(IIILjava/lang/Object;)V
    .locals 4
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 892
    iget-boolean v0, p0, Lcom/mediatek/vt/VTManager;->closingVTService:Z

    if-eqz v0, :cond_0

    const v0, 0x8001

    if-ne v0, p1, :cond_0

    .line 902
    :goto_0
    return-void

    .line 895
    :cond_0
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVTListenerLock:Ljava/lang/Integer;

    monitor-enter v1

    .line 896
    :try_start_0
    const-string v0, "VTManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postEventToMMI ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mVTListener:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 898
    const-string v0, "VTManager"

    const-string v2, "error postEventToMMI"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 900
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mVTListener:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mVTListener:Landroid/os/Handler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public registerVTListener(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 498
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVTListenerLock:Ljava/lang/Integer;

    monitor-enter v1

    .line 499
    :try_start_0
    iput-object p1, p0, Lcom/mediatek/vt/VTManager;->mVTListener:Landroid/os/Handler;

    .line 500
    monitor-exit v1

    .line 501
    return-void

    .line 500
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public replacePeerVideoSettings(ILjava/lang/String;)V
    .locals 2
    .parameter "bEnableReplacePeerVideo"
    .parameter "sReplacePeerVideoPicturePath"

    .prologue
    .line 132
    const-string v0, "VTManager"

    const-string v1, "replacePeerVideoSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iput p1, p0, Lcom/mediatek/vt/VTManager;->bEnableReplacePeerVideo:I

    .line 134
    iput-object p2, p0, Lcom/mediatek/vt/VTManager;->sReplacePeerVideoPicturePath:Ljava/lang/String;

    .line 135
    invoke-static {p1, p2}, Lcom/mediatek/vt/VTelProvider;->replacePeerVideoSettings(ILjava/lang/String;)I

    .line 136
    return-void
.end method

.method public savePeerPhoto()Z
    .locals 15

    .prologue
    const/4 v12, 0x0

    .line 669
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 671
    .local v2, dateTaken:J
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "yyyy-MM-dd kk.mm.ss.SSS"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    .line 672
    .local v7, name:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".png"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 673
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/DCIM/Camera/IMG_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 676
    .local v8, path:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/DCIM/Camera/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 678
    .local v6, image_directory:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 680
    invoke-static {v12, v8}, Lcom/mediatek/vt/VTelProvider;->snapshot(ILjava/lang/String;)I

    move-result v4

    .line 681
    .local v4, flag:I
    if-eqz v4, :cond_0

    .line 682
    const-string v13, "VTManager"

    const-string v14, "***snapshot() fail in Manager layer***"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :goto_0
    return v12

    .line 687
    :cond_0
    iget-object v13, p0, Lcom/mediatek/vt/VTManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 688
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 689
    .local v11, values:Landroid/content/ContentValues;
    const-string v13, "title"

    invoke-virtual {v11, v13, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v13, "_display_name"

    invoke-virtual {v11, v13, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const-string v13, "datetaken"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 692
    const-string v13, "mime_type"

    const-string v14, "image/png"

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string v13, "orientation"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 695
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 696
    .local v5, image_File:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 697
    const-string v12, "VTManager"

    const-string v13, "***image_File does not exist in Manager layer***"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 700
    .local v9, size:J
    const-string v12, "_size"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 701
    const-string v12, "_data"

    invoke-virtual {v11, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string v12, "VTManager"

    invoke-virtual {v11}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    sget-object v12, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v12, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 704
    const/4 v12, 0x1

    goto :goto_0
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 794
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTSettings;->setColorEffect(Ljava/lang/String;)V

    .line 795
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 796
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "local"
    .parameter "peer"

    .prologue
    .line 593
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTSettings;->setLocalSurface(Landroid/view/SurfaceHolder;)V

    .line 595
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p2}, Lcom/mediatek/vt/VTSettings;->setPeerSurface(Landroid/view/SurfaceHolder;)V

    .line 596
    return-void
.end method

.method public setLocalVideoType(ILjava/lang/String;)V
    .locals 4
    .parameter "videoType"
    .parameter "path"

    .prologue
    const/4 v3, 0x1

    .line 641
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocalVideoType, closingVTService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/vt/VTManager;->closingVTService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " videoType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    if-nez p2, :cond_0

    .line 643
    const-string v0, "VTManager"

    const-string v1, "setLocalVideoType, path is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/vt/VTManager;->closingVTService:Z

    if-eqz v0, :cond_2

    .line 645
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mEndCallLock:Ljava/lang/Integer;

    monitor-enter v1

    .line 646
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTSettings;->setVideoType(I)V

    .line 647
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p2}, Lcom/mediatek/vt/VTSettings;->setImagePath(Ljava/lang/String;)V

    .line 648
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v2, :cond_1

    .line 649
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/vt/VTManager;->setInvokeHideMeBeforeOpen(Z)V

    .line 650
    monitor-exit v1

    .line 663
    :goto_0
    return-void

    .line 652
    :cond_1
    invoke-static {p1, p2}, Lcom/mediatek/vt/VTelProvider;->setLocalVideoType(ILjava/lang/String;)V

    .line 653
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 655
    :cond_2
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTSettings;->setVideoType(I)V

    .line 656
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p2}, Lcom/mediatek/vt/VTSettings;->setImagePath(Ljava/lang/String;)V

    .line 657
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v1, :cond_3

    .line 658
    invoke-direct {p0, v3}, Lcom/mediatek/vt/VTManager;->setInvokeHideMeBeforeOpen(Z)V

    goto :goto_0

    .line 661
    :cond_3
    invoke-static {p1, p2}, Lcom/mediatek/vt/VTelProvider;->setLocalVideoType(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setMute(Lcom/android/internal/telephony/Phone;Z)V
    .locals 1
    .parameter "phone"
    .parameter "muted"

    .prologue
    .line 830
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/mediatek/vt/VTelProvider;->turnOnMicrophone(I)V

    .line 831
    return-void

    .line 830
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setNightMode(Z)V
    .locals 1
    .parameter "isOn"

    .prologue
    .line 811
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTSettings;->setNightMode(Z)V

    .line 812
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->setParameters()V

    .line 813
    return-void
.end method

.method setParameters()V
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    iget-object v0, v0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-static {v0}, Lcom/mediatek/vt/VTelProvider;->setParameters(Lcom/mediatek/vt/CameraParamters;)V

    .line 718
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    iget-object v0, v0, Lcom/mediatek/vt/VTSettings;->mCameraParamters:Lcom/mediatek/vt/CameraParamters;

    invoke-static {v0}, Lcom/mediatek/vt/VTelProvider;->updateParameters(Lcom/mediatek/vt/CameraParamters;)Lcom/mediatek/vt/CameraParamters;

    .line 721
    return-void
.end method

.method public setVTClose()V
    .locals 2

    .prologue
    .line 377
    const-string v0, "VTManager"

    const-string v1, "setVTClose"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v1, :cond_0

    .line 379
    const-string v0, "VTManager"

    const-string v1, "setVTCloseImpl, error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 383
    invoke-virtual {p0}, Lcom/mediatek/vt/VTManager;->deinit()V

    goto :goto_0
.end method

.method public declared-synchronized setVTDisconnect()V
    .locals 2

    .prologue
    .line 471
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 472
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 473
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 475
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 476
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 477
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    monitor-exit p0

    return-void

    .line 471
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setVTOpen(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "callManager"

    .prologue
    .line 288
    const-string v0, "VTManager"

    const-string v1, "setVTOpen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_0

    .line 290
    const-string v0, "VTManager"

    const-string v1, "setVTOpen, mState != State.CLOSE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/vt/VTManager;->init(Landroid/content/Context;Ljava/lang/Object;)V

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/vt/VTManager;->closingVTService:Z

    goto :goto_0
.end method

.method public declared-synchronized setVTReady()V
    .locals 3

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVTReady, mVtHandler = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->OPEN:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_1

    .line 326
    const-string v0, "VTManager"

    const-string v1, "setVTReadyImpl, error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 329
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mVtHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVTVisible(Z)V
    .locals 4
    .parameter "isVisible"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 877
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v2, :cond_0

    .line 889
    :goto_0
    return-void

    .line 879
    :cond_0
    if-nez p1, :cond_1

    .line 880
    const/4 v2, 0x0

    move-object v0, v1

    check-cast v0, Landroid/view/Surface;

    check-cast v1, Landroid/view/Surface;

    invoke-static {v2, v0, v1}, Lcom/mediatek/vt/VTelProvider;->setVTVisible(ILandroid/view/Surface;Landroid/view/Surface;)I

    goto :goto_0

    .line 882
    :cond_1
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getIsSwitch()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 883
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getPeerSurface()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->getLocalSurface()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/mediatek/vt/VTelProvider;->setVTVisible(ILandroid/view/Surface;Landroid/view/Surface;)I

    goto :goto_0

    .line 885
    :cond_2
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getLocalSurface()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v1}, Lcom/mediatek/vt/VTSettings;->getPeerSurface()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/mediatek/vt/VTelProvider;->setVTVisible(ILandroid/view/Surface;Landroid/view/Surface;)I

    goto :goto_0
.end method

.method public setVideoQuality(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 821
    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/vt/VTSettings;->setVideoQuality(I)V

    .line 822
    invoke-static {p1}, Lcom/mediatek/vt/VTelProvider;->setPeerVideo(I)V

    .line 823
    return-void
.end method

.method public startRecording(IJ)I
    .locals 9
    .parameter "type"
    .parameter "maxSize"

    .prologue
    const/4 v8, 0x1

    .line 956
    const-string v5, "VTManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startRecording() in VTManager.java, type is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "maxSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const/4 v2, 0x0

    .line 960
    .local v2, ret:I
    sget-object v5, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v6, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v5, v6, :cond_0

    .line 961
    const-string v5, "VTManager"

    const-string v6, "startRecording() in VTManager.java, State=CLOSE"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1002
    .end local v2           #ret:I
    .local v3, ret:I
    :goto_0
    return v3

    .line 966
    .end local v3           #ret:I
    .restart local v2       #ret:I
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 967
    .local v0, CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;
    const-string v5, "VTManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CAMERA_IMAGE_BUCKET_NAME is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/mediatek/vt/VTManager;->dateTakenRecording:J

    .line 971
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd kk.mm.ss.SSS"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/mediatek/vt/VTManager;->dateTakenRecording:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 974
    .local v4, timeSuffix:Ljava/lang/String;
    if-ne v8, p1, :cond_1

    .line 975
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Video_and_Audio_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/vt/VTManager;->recordedFileName:Ljava/lang/String;

    .line 988
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/PhoneRecord/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/vt/VTManager;->recordedFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".3gp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/vt/VTManager;->recordedFilePath:Ljava/lang/String;

    .line 989
    const-string v5, "VTManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "recordedFileName is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/vt/VTManager;->recordedFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/PhoneRecord/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 993
    .local v1, record_directory:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 996
    iget-object v5, p0, Lcom/mediatek/vt/VTManager;->recordedFilePath:Ljava/lang/String;

    invoke-static {p1, v5, p2, p3}, Lcom/mediatek/vt/VTelProvider;->startRecording(ILjava/lang/String;J)I

    move-result v2

    .line 997
    if-ne v8, v2, :cond_4

    .line 998
    const-string v5, "VTManager"

    const-string v6, "VT_RET_FROM_JNI_FALSE == ret in startRecording() in VTManager.java"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 999
    .end local v2           #ret:I
    .restart local v3       #ret:I
    goto/16 :goto_0

    .line 977
    .end local v1           #record_directory:Ljava/io/File;
    .end local v3           #ret:I
    .restart local v2       #ret:I
    :cond_1
    const/4 v5, 0x2

    if-ne v5, p1, :cond_2

    .line 978
    const-string v5, "VTManager"

    const-string v6, "type is wrong in startRecording() in VTManager.java"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 979
    .end local v2           #ret:I
    .restart local v3       #ret:I
    goto/16 :goto_0

    .line 981
    .end local v3           #ret:I
    .restart local v2       #ret:I
    :cond_2
    const/4 v5, 0x3

    if-ne v5, p1, :cond_3

    .line 982
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Only_Peer_Video_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/vt/VTManager;->recordedFileName:Ljava/lang/String;

    goto/16 :goto_1

    .line 985
    :cond_3
    const-string v5, "VTManager"

    const-string v6, "type is wrong in startRecording() in VTManager.java"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 986
    .end local v2           #ret:I
    .restart local v3       #ret:I
    goto/16 :goto_0

    .end local v3           #ret:I
    .restart local v1       #record_directory:Ljava/io/File;
    .restart local v2       #ret:I
    :cond_4
    move v3, v2

    .line 1002
    .end local v2           #ret:I
    .restart local v3       #ret:I
    goto/16 :goto_0
.end method

.method public stopRecording(I)I
    .locals 12
    .parameter "type"

    .prologue
    const/4 v11, 0x1

    .line 1006
    const-string v8, "VTManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "stopRecording() in VTManager.java, type is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const/4 v2, 0x0

    .line 1009
    .local v2, ret:I
    sget-object v8, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v9, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v8, v9, :cond_0

    .line 1010
    const-string v8, "VTManager"

    const-string v9, "stopRecording() in VTManager.java, State=CLOSE"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1057
    .end local v2           #ret:I
    .local v3, ret:I
    :goto_0
    return v3

    .line 1014
    .end local v3           #ret:I
    .restart local v2       #ret:I
    :cond_0
    if-eq v11, p1, :cond_1

    const/4 v8, 0x3

    if-eq v8, p1, :cond_1

    .line 1015
    const-string v8, "VTManager"

    const-string v9, "stopRecording() in VTManager.java, type is wrong"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1016
    .end local v2           #ret:I
    .restart local v3       #ret:I
    goto :goto_0

    .line 1019
    .end local v3           #ret:I
    .restart local v2       #ret:I
    :cond_1
    invoke-static {p1}, Lcom/mediatek/vt/VTelProvider;->stopRecording(I)I

    move-result v2

    .line 1020
    if-ne v11, v2, :cond_2

    .line 1021
    const-string v8, "VTManager"

    const-string v9, "VT_RET_FROM_JNI_FALSE == ret in stopRecording() in VTManager.java"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1022
    .end local v2           #ret:I
    .restart local v3       #ret:I
    goto :goto_0

    .line 1026
    .end local v3           #ret:I
    .restart local v2       #ret:I
    :cond_2
    iget-object v8, p0, Lcom/mediatek/vt/VTManager;->recordedFilePath:Ljava/lang/String;

    if-nez v8, :cond_3

    .line 1027
    const-string v8, "VTManager"

    const-string v9, "null == recordedFilePath in stopRecording() in VTManager.java"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1028
    .end local v2           #ret:I
    .restart local v3       #ret:I
    goto :goto_0

    .line 1030
    .end local v3           #ret:I
    .restart local v2       #ret:I
    :cond_3
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/mediatek/vt/VTManager;->recordedFilePath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1031
    .local v7, video_File:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1032
    const-string v8, "VTManager"

    const-string v9, "***video_File does not exist in stopRecording()***"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_4
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1036
    .local v6, values:Landroid/content/ContentValues;
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 1037
    .local v4, size:J
    const-string v8, "title"

    iget-object v9, p0, Lcom/mediatek/vt/VTManager;->recordedFileName:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    const-string v8, "_display_name"

    iget-object v9, p0, Lcom/mediatek/vt/VTManager;->recordedFileName:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    const-string v8, "datetaken"

    iget-wide v9, p0, Lcom/mediatek/vt/VTManager;->dateTakenRecording:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1040
    const-string v8, "mime_type"

    const-string v9, "video/3gpp"

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    const-string v8, "_size"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1042
    const-string v8, "_data"

    iget-object v9, p0, Lcom/mediatek/vt/VTManager;->recordedFilePath:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    iget-object v8, p0, Lcom/mediatek/vt/VTManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1052
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    sget-object v8, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v3, v2

    .line 1057
    .end local v2           #ret:I
    .restart local v3       #ret:I
    goto/16 :goto_0

    .line 1053
    .end local v3           #ret:I
    .restart local v2       #ret:I
    :catch_0
    move-exception v1

    .line 1054
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "VTManager"

    const-string v9, "insert fail in stopRecording()"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public switchCamera()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 620
    const/4 v0, 0x0

    .line 621
    .local v0, ret:I
    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mEndCallLock:Ljava/lang/Integer;

    monitor-enter v2

    .line 623
    :try_start_0
    sget-object v3, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v4, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v3, v4, :cond_1

    .line 624
    monitor-exit v2

    .line 629
    :cond_0
    :goto_0
    return v1

    .line 626
    :cond_1
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->switchCamera()I

    move-result v0

    .line 627
    iget-object v3, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v3}, Lcom/mediatek/vt/VTSettings;->getCameraSettings()V

    .line 628
    monitor-exit v2

    .line 629
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 628
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public switchDisplaySurface()V
    .locals 2

    .prologue
    .line 602
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->READY:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_0

    .line 603
    const-string v0, "VTManager"

    const-string v1, "switchDisplaySurface, error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :goto_0
    return-void

    .line 606
    :cond_0
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    iget-object v0, p0, Lcom/mediatek/vt/VTManager;->mSettings:Lcom/mediatek/vt/VTSettings;

    invoke-virtual {v0}, Lcom/mediatek/vt/VTSettings;->getIsSwitch()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/mediatek/vt/VTSettings;->setIsSwitch(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public turnOnSpeaker(Z)V
    .locals 3
    .parameter "isOn"

    .prologue
    .line 849
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mEndCallLock:Ljava/lang/Integer;

    monitor-enter v1

    .line 850
    :try_start_0
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v2, :cond_0

    .line 851
    monitor-exit v1

    .line 855
    :goto_0
    return-void

    .line 853
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/mediatek/vt/VTelProvider;->turnOnSpeaker(I)V

    .line 854
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 853
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public unlockPeerVideo()V
    .locals 2

    .prologue
    .line 943
    sget-object v0, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v0, v1, :cond_0

    .line 944
    const-string v0, "VTManager"

    const-string v1, "unlockPeerVideo, vtmanager state error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :goto_0
    return-void

    .line 947
    :cond_0
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->unlockPeerVideo()I

    goto :goto_0
.end method

.method public unregisterVTListener()V
    .locals 2

    .prologue
    .line 504
    iget-object v1, p0, Lcom/mediatek/vt/VTManager;->mVTListenerLock:Ljava/lang/Integer;

    monitor-enter v1

    .line 505
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/mediatek/vt/VTManager;->mVTListener:Landroid/os/Handler;

    .line 506
    monitor-exit v1

    .line 507
    return-void

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public userSelectYes(I)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 1078
    const-string v0, "VTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userSelectYes in VTManager.java, flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    invoke-static {p1}, Lcom/mediatek/vt/VTelProvider;->userSelectYes(I)I

    .line 1080
    return-void
.end method
