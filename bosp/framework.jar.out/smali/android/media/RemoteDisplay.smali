.class public final Landroid/media/RemoteDisplay;
.super Ljava/lang/Object;
.source "RemoteDisplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteDisplay$Listener;
    }
.end annotation


# static fields
.field public static final DISPLAY_ERROR_CONNECTION_DROPPED:I = 0x2

.field public static final DISPLAY_ERROR_UNKOWN:I = 0x1

.field public static final DISPLAY_FLAG_SECURE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RemoteDisplay"

.field private static isDispose:Z

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private final mGuard:Ldalvik/system/CloseGuard;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/media/RemoteDisplay$Listener;

.field private mPtr:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Landroid/media/RemoteDisplay;->isDispose:Z

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/RemoteDisplay;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;)V
    .locals 1
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    .line 60
    iput-object p1, p0, Landroid/media/RemoteDisplay;->mListener:Landroid/media/RemoteDisplay$Listener;

    .line 61
    iput-object p2, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    .line 62
    return-void
.end method

.method static synthetic access$000(Landroid/media/RemoteDisplay;)Landroid/media/RemoteDisplay$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mListener:Landroid/media/RemoteDisplay$Listener;

    return-object v0
.end method

.method private dispose(Z)V
    .locals 3
    .parameter "finalized"

    .prologue
    const/4 v2, 0x0

    .line 115
    const-string v0, "RemoteDisplay"

    const-string v1, "dispose"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget v0, p0, Landroid/media/RemoteDisplay;->mPtr:I

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 118
    if-eqz p1, :cond_2

    .line 119
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 125
    :cond_0
    :goto_0
    iget v0, p0, Landroid/media/RemoteDisplay;->mPtr:I

    invoke-direct {p0, v0}, Landroid/media/RemoteDisplay;->nativeDispose(I)V

    .line 126
    iput v2, p0, Landroid/media/RemoteDisplay;->mPtr:I

    .line 129
    :cond_1
    sget-object v1, Landroid/media/RemoteDisplay;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    :try_start_0
    const-string v0, "RemoteDisplay"

    const-string v2, "dispose finish"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v0, 0x0

    sput-boolean v0, Landroid/media/RemoteDisplay;->isDispose:Z

    .line 133
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    return-void

    .line 121
    :cond_2
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;)Landroid/media/RemoteDisplay;
    .locals 3
    .parameter "iface"
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 81
    const-string v1, "RemoteDisplay"

    const-string/jumbo v2, "listen"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-nez p0, :cond_0

    .line 83
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "iface must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_0
    if-nez p1, :cond_1

    .line 86
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "listener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_1
    if-nez p2, :cond_2

    .line 89
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "handler must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_2
    new-instance v0, Landroid/media/RemoteDisplay;

    invoke-direct {v0, p1, p2}, Landroid/media/RemoteDisplay;-><init>(Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;)V

    .line 93
    .local v0, display:Landroid/media/RemoteDisplay;
    invoke-direct {v0, p0}, Landroid/media/RemoteDisplay;->startListening(Ljava/lang/String;)V

    .line 94
    return-object v0
.end method

.method private native nativeDispose(I)V
.end method

.method private native nativeGetWfdParam(II)I
.end method

.method private native nativeListen(Ljava/lang/String;)I
.end method

.method private native nativeSetWfdLevel(II)V
.end method

.method private notifyDisplayConnected(Landroid/view/Surface;III)V
    .locals 7
    .parameter "surface"
    .parameter "width"
    .parameter "height"
    .parameter "flags"

    .prologue
    .line 168
    const-string v0, "RemoteDisplay"

    const-string/jumbo v1, "notifyDisplayConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v6, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/media/RemoteDisplay$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/RemoteDisplay$1;-><init>(Landroid/media/RemoteDisplay;Landroid/view/Surface;III)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    return-void
.end method

.method private notifyDisplayDisconnected()V
    .locals 2

    .prologue
    .line 179
    const-string v0, "RemoteDisplay"

    const-string/jumbo v1, "notifyDisplayDisconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/RemoteDisplay$2;

    invoke-direct {v1, p0}, Landroid/media/RemoteDisplay$2;-><init>(Landroid/media/RemoteDisplay;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    return-void
.end method

.method private notifyDisplayError(I)V
    .locals 2
    .parameter "error"

    .prologue
    .line 190
    const-string v0, "RemoteDisplay"

    const-string/jumbo v1, "notifyDisplayError"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/RemoteDisplay$3;

    invoke-direct {v1, p0, p1}, Landroid/media/RemoteDisplay$3;-><init>(Landroid/media/RemoteDisplay;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    return-void
.end method

.method private notifyDisplayGenericMsgEvent(I)V
    .locals 2
    .parameter "event"

    .prologue
    .line 221
    const-string v0, "RemoteDisplay"

    const-string/jumbo v1, "notifyDisplayGenericMsgEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/RemoteDisplay$6;

    invoke-direct {v1, p0, p1}, Landroid/media/RemoteDisplay$6;-><init>(Landroid/media/RemoteDisplay;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    return-void
.end method

.method private notifyDisplayKeyEvent(II)V
    .locals 2
    .parameter "keyCode"
    .parameter "flags"

    .prologue
    .line 201
    const-string v0, "RemoteDisplay"

    const-string/jumbo v1, "notifyDisplayKeyEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/RemoteDisplay$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/RemoteDisplay$4;-><init>(Landroid/media/RemoteDisplay;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    return-void
.end method

.method private notifyDisplayTouchEvent(III)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "flags"

    .prologue
    .line 211
    const-string v0, "RemoteDisplay"

    const-string/jumbo v1, "notifyDisplayTouchEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/RemoteDisplay$5;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/media/RemoteDisplay$5;-><init>(Landroid/media/RemoteDisplay;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    return-void
.end method

.method private startListening(Ljava/lang/String;)V
    .locals 3
    .parameter "iface"

    .prologue
    .line 137
    const-string v0, "RemoteDisplay"

    const-string/jumbo v1, "startListening"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0, p1}, Landroid/media/RemoteDisplay;->nativeListen(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/RemoteDisplay;->mPtr:I

    .line 139
    iget v0, p0, Landroid/media/RemoteDisplay;->mPtr:I

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not start listening for remote display connection on \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    const-string v1, "dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 144
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 101
    const-string v0, "RemoteDisplay"

    const-string v1, "dispose"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object v1, Landroid/media/RemoteDisplay;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_0
    sget-boolean v0, Landroid/media/RemoteDisplay;->isDispose:Z

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "RemoteDisplay"

    const-string v2, "dispose done"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    monitor-exit v1

    .line 112
    :goto_0
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Landroid/media/RemoteDisplay;->isDispose:Z

    .line 110
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/RemoteDisplay;->dispose(Z)V

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/media/RemoteDisplay;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 71
    return-void

    .line 69
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getWfdParam(I)I
    .locals 1
    .parameter "paramType"

    .prologue
    .line 161
    iget v0, p0, Landroid/media/RemoteDisplay;->mPtr:I

    invoke-direct {p0, v0, p1}, Landroid/media/RemoteDisplay;->nativeGetWfdParam(II)I

    move-result v0

    return v0
.end method

.method public setWfdLevel(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 152
    iget v0, p0, Landroid/media/RemoteDisplay;->mPtr:I

    invoke-direct {p0, v0, p1}, Landroid/media/RemoteDisplay;->nativeSetWfdLevel(II)V

    .line 153
    return-void
.end method
