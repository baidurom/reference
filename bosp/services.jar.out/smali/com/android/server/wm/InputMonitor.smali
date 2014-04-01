.class final Lcom/android/server/wm/InputMonitor;
.super Ljava/lang/Object;
.source "InputMonitor.java"


# instance fields
.field private mInputDevicesReady:Z

.field private final mInputDevicesReadyMonitor:Ljava/lang/Object;

.field private mInputDispatchEnabled:Z

.field private mInputDispatchFrozen:Z

.field private mInputFocus:Lcom/android/server/wm/WindowState;

.field private mInputWindowHandleCount:I

.field private mInputWindowHandles:[Lcom/android/server/wm/InputWindowHandle;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mUpdateInputWindowsNeeded:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .parameter "service"

    .prologue
    const/4 v0, 0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    .line 43
    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    .line 55
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 56
    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/wm/InputWindowHandle;)V
    .locals 3
    .parameter "windowHandle"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/wm/InputWindowHandle;

    if-nez v0, :cond_0

    .line 130
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/server/wm/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/wm/InputWindowHandle;

    .line 132
    :cond_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/wm/InputWindowHandle;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/wm/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wm/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/wm/InputWindowHandle;

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/wm/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    aput-object p1, v0, v1

    .line 137
    return-void
.end method

.method private clearInputWindowHandlesLw()V
    .locals 3

    .prologue
    .line 140
    :goto_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/wm/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method private updateInputDispatchModeLw()V
    .locals 3

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/InputManager;->setInputDispatchMode(ZZ)V

    .line 408
    return-void
.end method


# virtual methods
.method public dispatchUnhandledKey(Lcom/android/server/wm/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 2
    .parameter "focus"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 309
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/InputWindowHandle;->windowState:Landroid/view/WindowManagerPolicy$WindowState;

    check-cast v1, Lcom/android/server/wm/WindowState;

    move-object v0, v1

    .line 310
    .local v0, windowState:Lcom/android/server/wm/WindowState;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    return-object v1

    .line 309
    .end local v0           #windowState:Lcom/android/server/wm/WindowState;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public freezeInputDispatchingLw()V
    .locals 2

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-nez v0, :cond_1

    .line 375
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 376
    const-string v0, "WindowManager"

    const-string v1, "Freezing input dispatching"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 380
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 382
    :cond_1
    return-void
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/wm/InputWindowHandle;Landroid/view/KeyEvent;I)J
    .locals 3
    .parameter "focus"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 301
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/InputWindowHandle;->windowState:Landroid/view/WindowManagerPolicy$WindowState;

    check-cast v1, Lcom/android/server/wm/WindowState;

    move-object v0, v1

    .line 302
    .local v0, windowState:Lcom/android/server/wm/WindowState;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v1

    return-wide v1

    .line 301
    .end local v0           #windowState:Lcom/android/server/wm/WindowState;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 1
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v0

    return v0
.end method

.method public interceptMotionBeforeQueueingWhenScreenOff(I)I
    .locals 1
    .parameter "policyFlags"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->interceptMotionBeforeQueueingWhenScreenOff(I)I

    move-result v0

    return v0
.end method

.method public notifyANR(Lcom/android/server/wm/InputApplicationHandle;Lcom/android/server/wm/InputWindowHandle;)J
    .locals 8
    .parameter "inputApplicationHandle"
    .parameter "inputWindowHandle"

    .prologue
    .line 83
    const/4 v1, 0x0

    .line 84
    .local v1, appWindowToken:Lcom/android/server/wm/AppWindowToken;
    if-eqz p2, :cond_1

    .line 85
    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 86
    :try_start_0
    iget-object v3, p2, Lcom/android/server/wm/InputWindowHandle;->windowState:Landroid/view/WindowManagerPolicy$WindowState;

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 87
    .local v3, windowState:Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_0

    .line 88
    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Input event dispatching timed out sending to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v1, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :try_start_1
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v4}, Landroid/view/IWindow;->dumpInputDispatchingStatus()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    .end local v3           #windowState:Lcom/android/server/wm/WindowState;
    :cond_1
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 103
    iget-object v1, p1, Lcom/android/server/wm/InputApplicationHandle;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 104
    if-eqz v1, :cond_2

    .line 105
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Input event dispatching timed out sending to application "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_2
    if-eqz v1, :cond_3

    iget-object v4, v1, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v4, :cond_3

    .line 116
    :try_start_3
    iget-object v4, v1, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v4}, Landroid/view/IApplicationToken;->keyDispatchingTimedOut()Z

    move-result v0

    .line 117
    .local v0, abort:Z
    if-nez v0, :cond_3

    .line 120
    iget-wide v4, v1, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 125
    .end local v0           #abort:Z
    :goto_1
    return-wide v4

    .line 95
    .restart local v3       #windowState:Lcom/android/server/wm/WindowState;
    :catch_0
    move-exception v2

    .line 96
    .local v2, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v4, "WindowManager"

    const-string v6, "Error dump input dispatching status."

    invoke-static {v4, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 99
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #windowState:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 122
    :catch_1
    move-exception v4

    .line 125
    :cond_3
    const-wide/16 v4, 0x0

    goto :goto_1
.end method

.method public notifyConfigurationChanged()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    .line 257
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 258
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    if-nez v0, :cond_0

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    .line 260
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 262
    :cond_0
    monitor-exit v1

    .line 263
    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyInputChannelBroken(Lcom/android/server/wm/InputWindowHandle;)V
    .locals 5
    .parameter "inputWindowHandle"

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 68
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wm/InputWindowHandle;->windowState:Landroid/view/WindowManagerPolicy$WindowState;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 69
    .local v0, windowState:Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_1

    .line 70
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WINDOW DIED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v1, v3, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    .line 73
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0           #windowState:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 1
    .parameter "whenNanos"
    .parameter "lidOpen"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyLidSwitchChanged(JZ)V

    .line 281
    return-void
.end method

.method public pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 4
    .parameter "window"

    .prologue
    const/4 v3, 0x1

    .line 352
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-nez v0, :cond_1

    .line 353
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 354
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pausing WindowToken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    iput-boolean v3, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 358
    invoke-virtual {p0, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 360
    :cond_1
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 3
    .parameter "window"

    .prologue
    .line 363
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_1

    .line 364
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 365
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resuming WindowToken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 369
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 371
    :cond_1
    return-void
.end method

.method public setEventDispatchingLw(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    if-eq v0, p1, :cond_1

    .line 397
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 398
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting event dispatching to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    .line 402
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 404
    :cond_1
    return-void
.end method

.method public setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V
    .locals 3
    .parameter "newApp"

    .prologue
    .line 340
    if-nez p1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputManager;->setFocusedApplication(Lcom/android/server/wm/InputApplicationHandle;)V

    .line 349
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/wm/InputApplicationHandle;

    .line 344
    .local v0, handle:Lcom/android/server/wm/InputApplicationHandle;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/InputApplicationHandle;->name:Ljava/lang/String;

    .line 345
    iget-wide v1, p1, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    iput-wide v1, v0, Lcom/android/server/wm/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 347
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/InputManager;->setFocusedApplication(Lcom/android/server/wm/InputApplicationHandle;)V

    goto :goto_0
.end method

.method public setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V
    .locals 4
    .parameter "newWindow"
    .parameter "updateInputWindows"

    .prologue
    const/4 v3, 0x0

    .line 317
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 318
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input focus has changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_2

    .line 322
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v3, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 329
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    .line 330
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 332
    if-eqz p2, :cond_2

    .line 333
    invoke-virtual {p0, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 336
    :cond_2
    return-void
.end method

.method public setUpdateInputWindowsNeededLw()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 147
    return-void
.end method

.method public thawInputDispatchingLw()V
    .locals 2

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-eqz v0, :cond_1

    .line 386
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 387
    const-string v0, "WindowManager"

    const-string v1, "Thawing input dispatching"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 391
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 393
    :cond_1
    return-void
.end method

.method public updateInputWindowsLw(Z)V
    .locals 19
    .parameter "force"

    .prologue
    .line 151
    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 251
    :goto_0
    return-void

    .line 154
    :cond_0
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 166
    .local v16, windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    const/4 v11, 0x1

    .line 167
    .local v11, inDrag:Z
    :goto_1
    if-eqz v11, :cond_2

    .line 168
    sget-boolean v17, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v17, :cond_1

    .line 169
    const-string v17, "WindowManager"

    const-string v18, "Inserting drag window"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    .line 172
    .local v5, dragWindowHandle:Lcom/android/server/wm/InputWindowHandle;
    if-eqz v5, :cond_4

    .line 173
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/wm/InputWindowHandle;)V

    .line 180
    .end local v5           #dragWindowHandle:Lcom/android/server/wm/InputWindowHandle;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 181
    .local v3, NFW:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3
    if-ge v10, v3, :cond_5

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/FakeWindowImpl;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/wm/InputWindowHandle;)V

    .line 181
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 166
    .end local v3           #NFW:I
    .end local v10           #i:I
    .end local v11           #inDrag:Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 175
    .restart local v5       #dragWindowHandle:Lcom/android/server/wm/InputWindowHandle;
    .restart local v11       #inDrag:Z
    :cond_4
    const-string v17, "WindowManager"

    const-string v18, "Drag is in progress but there is no drag window handle."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 185
    .end local v5           #dragWindowHandle:Lcom/android/server/wm/InputWindowHandle;
    .restart local v3       #NFW:I
    .restart local v10       #i:I
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 186
    .local v2, N:I
    add-int/lit8 v10, v2, -0x1

    :goto_4
    if-ltz v10, :cond_d

    .line 187
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 188
    .local v4, child:Lcom/android/server/wm/WindowState;
    iget-object v12, v4, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 189
    .local v12, inputChannel:Landroid/view/InputChannel;
    iget-object v13, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    .line 190
    .local v13, inputWindowHandle:Lcom/android/server/wm/InputWindowHandle;
    if-eqz v12, :cond_6

    if-eqz v13, :cond_6

    iget-boolean v0, v4, Lcom/android/server/wm/WindowState;->mRemoved:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 186
    :cond_6
    :goto_5
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    .line 195
    :cond_7
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 196
    .local v6, flags:I
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v15, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 198
    .local v15, type:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v4, v0, :cond_9

    const/4 v8, 0x1

    .line 199
    .local v8, hasFocus:Z
    :goto_6
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v14

    .line 200
    .local v14, isVisible:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v4, v0, :cond_a

    const/16 v17, 0x7d4

    move/from16 v0, v17

    if-eq v15, v0, :cond_a

    const/4 v9, 0x1

    .line 205
    .local v9, hasWallpaper:Z
    :goto_7
    if-eqz v11, :cond_8

    if-eqz v14, :cond_8

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLw(Lcom/android/server/wm/WindowState;)V

    .line 210
    :cond_8
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/android/server/wm/InputWindowHandle;->name:Ljava/lang/String;

    .line 211
    iput v6, v13, Lcom/android/server/wm/InputWindowHandle;->layoutParamsFlags:I

    .line 212
    iput v15, v13, Lcom/android/server/wm/InputWindowHandle;->layoutParamsType:I

    .line 213
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getInputDispatchingTimeoutNanos()J

    move-result-wide v17

    move-wide/from16 v0, v17

    iput-wide v0, v13, Lcom/android/server/wm/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 214
    iput-boolean v14, v13, Lcom/android/server/wm/InputWindowHandle;->visible:Z

    .line 215
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v17

    move/from16 v0, v17

    iput-boolean v0, v13, Lcom/android/server/wm/InputWindowHandle;->canReceiveKeys:Z

    .line 216
    iput-boolean v8, v13, Lcom/android/server/wm/InputWindowHandle;->hasFocus:Z

    .line 217
    iput-boolean v9, v13, Lcom/android/server/wm/InputWindowHandle;->hasWallpaper:Z

    .line 218
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->paused:Z

    move/from16 v17, v0

    :goto_8
    move/from16 v0, v17

    iput-boolean v0, v13, Lcom/android/server/wm/InputWindowHandle;->paused:Z

    .line 219
    iget v0, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/wm/InputWindowHandle;->layer:I

    .line 220
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/wm/InputWindowHandle;->ownerPid:I

    .line 221
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wm/Session;->mUid:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/wm/InputWindowHandle;->ownerUid:I

    .line 222
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/wm/InputWindowHandle;->inputFeatures:I

    .line 224
    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 225
    .local v7, frame:Landroid/graphics/Rect;
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/wm/InputWindowHandle;->frameLeft:I

    .line 226
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/wm/InputWindowHandle;->frameTop:I

    .line 227
    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/wm/InputWindowHandle;->frameRight:I

    .line 228
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/wm/InputWindowHandle;->frameBottom:I

    .line 230
    iget v0, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v17, v0

    const/high16 v18, 0x3f80

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_c

    .line 234
    const/high16 v17, 0x3f80

    iget v0, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/wm/InputWindowHandle;->scaleFactor:F

    .line 239
    :goto_9
    iget-object v0, v13, Lcom/android/server/wm/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 241
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/wm/InputWindowHandle;)V

    goto/16 :goto_5

    .line 198
    .end local v7           #frame:Landroid/graphics/Rect;
    .end local v8           #hasFocus:Z
    .end local v9           #hasWallpaper:Z
    .end local v14           #isVisible:Z
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 200
    .restart local v8       #hasFocus:Z
    .restart local v14       #isVisible:Z
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 218
    .restart local v9       #hasWallpaper:Z
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_8

    .line 236
    .restart local v7       #frame:Landroid/graphics/Rect;
    :cond_c
    const/high16 v17, 0x3f80

    move/from16 v0, v17

    iput v0, v13, Lcom/android/server/wm/InputWindowHandle;->scaleFactor:F

    goto :goto_9

    .line 245
    .end local v4           #child:Lcom/android/server/wm/WindowState;
    .end local v6           #flags:I
    .end local v7           #frame:Landroid/graphics/Rect;
    .end local v8           #hasFocus:Z
    .end local v9           #hasWallpaper:Z
    .end local v12           #inputChannel:Landroid/view/InputChannel;
    .end local v13           #inputWindowHandle:Lcom/android/server/wm/InputWindowHandle;
    .end local v14           #isVisible:Z
    .end local v15           #type:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/wm/InputWindowHandle;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wm/InputManager;->setInputWindows([Lcom/android/server/wm/InputWindowHandle;)V

    .line 248
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/InputMonitor;->clearInputWindowHandlesLw()V

    goto/16 :goto_0
.end method

.method public waitForInputDevicesReady(J)Z
    .locals 2
    .parameter "timeoutMillis"

    .prologue
    .line 267
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 268
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 270
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 274
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    monitor-exit v1

    return v0

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 271
    :catch_0
    move-exception v0

    goto :goto_0
.end method
