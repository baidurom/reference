.class public Lcom/yi/internal/media/AudioFadeController;
.super Ljava/lang/Object;
.source "AudioFadeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yi/internal/media/AudioFadeController$OnFadeCompleteListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_INTERVAL:I = 0x3e8

.field public static final FADE_IN:I = 0x0

.field public static final FADE_OUT:I = 0x1

.field private static final MIN_VOLUME_INDEX:I = 0x1

.field private static final STREAM_FLAG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioFadeController"

.field private static final VOLUME_FADE_STEP:I = 0x1

.field private static mListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/yi/internal/media/AudioFadeController$OnFadeCompleteListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mVolumeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/yi/internal/media/AudioFadeController;

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mFadeInOutHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yi/internal/media/AudioFadeController;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/yi/internal/media/AudioFadeController$1;

    invoke-direct {v0, p0}, Lcom/yi/internal/media/AudioFadeController$1;-><init>(Lcom/yi/internal/media/AudioFadeController;)V

    iput-object v0, p0, Lcom/yi/internal/media/AudioFadeController;->mFadeInOutHandler:Landroid/os/Handler;

    .line 45
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/yi/internal/media/AudioFadeController;->mAudioManager:Landroid/media/AudioManager;

    .line 46
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/yi/internal/media/AudioFadeController;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/yi/internal/media/AudioFadeController;->mVolumeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/yi/internal/media/AudioFadeController;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/yi/internal/media/AudioFadeController;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/yi/internal/media/AudioFadeController;->mListenerMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/yi/internal/media/AudioFadeController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/yi/internal/media/AudioFadeController;->mFadeInOutHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initMaps(ILcom/yi/internal/media/AudioFadeController$OnFadeCompleteListener;)V
    .locals 5
    .parameter "streamType"
    .parameter "listener"

    .prologue
    .line 80
    sget-object v2, Lcom/yi/internal/media/AudioFadeController;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 81
    :try_start_0
    sget-object v1, Lcom/yi/internal/media/AudioFadeController;->mVolumeMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 82
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/yi/internal/media/AudioFadeController;->mVolumeMap:Ljava/util/HashMap;

    .line 84
    :cond_0
    sget-object v1, Lcom/yi/internal/media/AudioFadeController;->mListenerMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 85
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/yi/internal/media/AudioFadeController;->mListenerMap:Ljava/util/HashMap;

    .line 88
    :cond_1
    sget-object v1, Lcom/yi/internal/media/AudioFadeController;->mVolumeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    sget-object v1, Lcom/yi/internal/media/AudioFadeController;->mVolumeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_2
    sget-object v1, Lcom/yi/internal/media/AudioFadeController;->mListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 92
    sget-object v1, Lcom/yi/internal/media/AudioFadeController;->mListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_3
    iget-object v1, p0, Lcom/yi/internal/media/AudioFadeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 95
    .local v0, volume:I
    const-string v1, "AudioFadeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stream type is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,volume is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object v1, Lcom/yi/internal/media/AudioFadeController;->mVolumeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v1, Lcom/yi/internal/media/AudioFadeController;->mListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    monitor-exit v2

    .line 100
    return-void

    .line 99
    .end local v0           #volume:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static instance(Landroid/content/Context;)Lcom/yi/internal/media/AudioFadeController;
    .locals 2
    .parameter "context"

    .prologue
    .line 33
    sget-object v0, Lcom/yi/internal/media/AudioFadeController;->sInstance:Lcom/yi/internal/media/AudioFadeController;

    if-nez v0, :cond_1

    .line 34
    sget-object v1, Lcom/yi/internal/media/AudioFadeController;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lcom/yi/internal/media/AudioFadeController;->sInstance:Lcom/yi/internal/media/AudioFadeController;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/yi/internal/media/AudioFadeController;

    invoke-direct {v0, p0}, Lcom/yi/internal/media/AudioFadeController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yi/internal/media/AudioFadeController;->sInstance:Lcom/yi/internal/media/AudioFadeController;

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    sget-object v0, Lcom/yi/internal/media/AudioFadeController;->sInstance:Lcom/yi/internal/media/AudioFadeController;

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancelFade(I)V
    .locals 4
    .parameter "streamType"

    .prologue
    .line 66
    const/4 v0, -0x1

    .line 67
    .local v0, volume:I
    sget-object v2, Lcom/yi/internal/media/AudioFadeController;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 68
    :try_start_0
    sget-object v1, Lcom/yi/internal/media/AudioFadeController;->mVolumeMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yi/internal/media/AudioFadeController;->mVolumeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    sget-object v1, Lcom/yi/internal/media/AudioFadeController;->mVolumeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 71
    :cond_0
    sget-object v1, Lcom/yi/internal/media/AudioFadeController;->mListenerMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/yi/internal/media/AudioFadeController;->mListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    sget-object v1, Lcom/yi/internal/media/AudioFadeController;->mListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 75
    iget-object v1, p0, Lcom/yi/internal/media/AudioFadeController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 76
    :cond_2
    monitor-exit v2

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public fadeStream(IIILcom/yi/internal/media/AudioFadeController$OnFadeCompleteListener;)V
    .locals 4
    .parameter "streamType"
    .parameter "fadeDirection"
    .parameter "fadeInterval"
    .parameter "listener"

    .prologue
    const/4 v3, 0x1

    .line 55
    invoke-direct {p0, p1, p4}, Lcom/yi/internal/media/AudioFadeController;->initMaps(ILcom/yi/internal/media/AudioFadeController$OnFadeCompleteListener;)V

    .line 57
    if-ne p2, v3, :cond_0

    .line 58
    iget-object v1, p0, Lcom/yi/internal/media/AudioFadeController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/yi/internal/media/AudioFadeController;->mFadeInOutHandler:Landroid/os/Handler;

    invoke-virtual {v1, p2, p1, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 62
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/yi/internal/media/AudioFadeController;->mFadeInOutHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    return-void
.end method

.method public fadeStream(IILcom/yi/internal/media/AudioFadeController$OnFadeCompleteListener;)V
    .locals 1
    .parameter "streamType"
    .parameter "fadeDirection"
    .parameter "listener"

    .prologue
    .line 50
    const/16 v0, 0x3e8

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/yi/internal/media/AudioFadeController;->fadeStream(IIILcom/yi/internal/media/AudioFadeController$OnFadeCompleteListener;)V

    .line 51
    return-void
.end method
