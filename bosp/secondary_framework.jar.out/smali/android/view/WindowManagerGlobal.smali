.class public final Landroid/view/WindowManagerGlobal;
.super Ljava/lang/Object;
.source "WindowManagerGlobal.java"


# static fields
.field public static final ADD_APP_EXITING:I = -0x4

.field public static final ADD_BAD_APP_TOKEN:I = -0x1

.field public static final ADD_BAD_SUBWINDOW_TOKEN:I = -0x2

.field public static final ADD_DUPLICATE_ADD:I = -0x5

.field public static final ADD_FLAG_APP_VISIBLE:I = 0x2

.field public static final ADD_FLAG_IN_TOUCH_MODE:I = 0x1

.field public static final ADD_INVALID_DISPLAY:I = -0x9

.field public static final ADD_MULTIPLE_SINGLETON:I = -0x7

.field public static final ADD_NOT_APP_TOKEN:I = -0x3

.field public static final ADD_OKAY:I = 0x0

.field public static final ADD_PERMISSION_DENIED:I = -0x8

.field public static final ADD_STARTING_NOT_NEEDED:I = -0x6

.field public static final RELAYOUT_DEFER_SURFACE_DESTROY:I = 0x2

.field public static final RELAYOUT_INSETS_PENDING:I = 0x1

.field public static final RELAYOUT_RES_ANIMATING:I = 0x8

.field public static final RELAYOUT_RES_FIRST_TIME:I = 0x2

.field public static final RELAYOUT_RES_IN_TOUCH_MODE:I = 0x1

.field public static final RELAYOUT_RES_SURFACE_CHANGED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

.field private static sWindowManagerService:Landroid/view/IWindowManager;

.field private static sWindowSession:Landroid/view/IWindowSession;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mNeedsEglTerminate:Z

.field private mParams:[Landroid/view/WindowManager$LayoutParams;

.field private mRoots:[Landroid/view/ViewRootImpl;

.field private mSystemPropertyUpdater:Ljava/lang/Runnable;

.field private mViews:[Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 120
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    .line 121
    return-void
.end method

.method static synthetic access$000(Landroid/view/WindowManagerGlobal;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/WindowManagerGlobal;)[Landroid/view/ViewRootImpl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    return-object v0
.end method

.method private findViewLocked(Landroid/view/View;Z)I
    .locals 4
    .parameter "view"
    .parameter "required"

    .prologue
    .line 396
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    if-eqz v2, :cond_1

    .line 397
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    array-length v0, v2

    .line 398
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 399
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 407
    .end local v0           #count:I
    .end local v1           #i:I
    :goto_1
    return v1

    .line 398
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    if-eqz p2, :cond_2

    .line 405
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "View not attached to window manager"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 407
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static getInstance()Landroid/view/WindowManagerGlobal;
    .locals 2

    .prologue
    .line 124
    const-class v1, Landroid/view/WindowManagerGlobal;

    monitor-enter v1

    .line 125
    :try_start_0
    sget-object v0, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Landroid/view/WindowManagerGlobal;

    invoke-direct {v0}, Landroid/view/WindowManagerGlobal;-><init>()V

    sput-object v0, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    .line 128
    :cond_0
    sget-object v0, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    monitor-exit v1

    return-object v0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getWindowManagerService()Landroid/view/IWindowManager;
    .locals 2

    .prologue
    .line 133
    const-class v1, Landroid/view/WindowManagerGlobal;

    monitor-enter v1

    .line 134
    :try_start_0
    sget-object v0, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    .line 135
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    sput-object v0, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    .line 138
    :cond_0
    sget-object v0, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    monitor-exit v1

    return-object v0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;
    .locals 2
    .parameter "root"

    .prologue
    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;
    .locals 7
    .parameter "mainLooper"

    .prologue
    .line 143
    const-class v5, Landroid/view/WindowManagerGlobal;

    monitor-enter v5

    .line 144
    :try_start_0
    sget-object v4, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 146
    :try_start_1
    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 147
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    .line 148
    .local v3, windowManager:Landroid/view/IWindowManager;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getClient()Lcom/android/internal/view/IInputMethodClient;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getInputContext()Lcom/android/internal/view/IInputContext;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Landroid/view/IWindowManager;->openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v4

    sput-object v4, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;

    .line 150
    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v0

    .line 151
    .local v0, animatorScale:F
    invoke-static {v0}, Landroid/animation/ValueAnimator;->setDurationScale(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    .end local v0           #animatorScale:F
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v3           #windowManager:Landroid/view/IWindowManager;
    :cond_0
    :goto_0
    :try_start_2
    sget-object v4, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;

    monitor-exit v5

    return-object v4

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v6, "Failed to open window session"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 157
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public static peekWindowSession()Landroid/view/IWindowSession;
    .locals 2

    .prologue
    .line 161
    const-class v1, Landroid/view/WindowManagerGlobal;

    monitor-enter v1

    .line 162
    :try_start_0
    sget-object v0, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;

    monitor-exit v1

    return-object v0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 2
    .parameter "dst"
    .parameter "src"
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 385
    array-length v0, p0

    if-lez v0, :cond_1

    .line 386
    if-lez p2, :cond_0

    .line 387
    invoke-static {p1, v1, p0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    :cond_0
    array-length v0, p0

    if-ge p2, v0, :cond_1

    .line 390
    add-int/lit8 v0, p2, 0x1

    array-length v1, p1

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v0, p0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    :cond_1
    return-void
.end method

.method private removeViewLocked(IZ)Landroid/view/View;
    .locals 8
    .parameter "index"
    .parameter "immediate"

    .prologue
    .line 349
    iget-object v7, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v2, v7, p1

    .line 350
    .local v2, root:Landroid/view/ViewRootImpl;
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v6

    .line 352
    .local v6, view:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 353
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 354
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 355
    iget-object v7, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/inputmethod/InputMethodManager;->windowDismissed(Landroid/os/IBinder;)V

    .line 358
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-virtual {v2, p2}, Landroid/view/ViewRootImpl;->die(Z)V

    .line 360
    iget-object v7, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    array-length v0, v7

    .line 363
    .local v0, count:I
    add-int/lit8 v7, v0, -0x1

    new-array v5, v7, [Landroid/view/View;

    .line 364
    .local v5, tmpViews:[Landroid/view/View;
    iget-object v7, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    invoke-static {v5, v7, p1}, Landroid/view/WindowManagerGlobal;->removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 365
    iput-object v5, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    .line 367
    add-int/lit8 v7, v0, -0x1

    new-array v4, v7, [Landroid/view/ViewRootImpl;

    .line 368
    .local v4, tmpRoots:[Landroid/view/ViewRootImpl;
    iget-object v7, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    invoke-static {v4, v7, p1}, Landroid/view/WindowManagerGlobal;->removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 369
    iput-object v4, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    .line 371
    add-int/lit8 v7, v0, -0x1

    new-array v3, v7, [Landroid/view/WindowManager$LayoutParams;

    .line 373
    .local v3, tmpParams:[Landroid/view/WindowManager$LayoutParams;
    iget-object v7, p0, Landroid/view/WindowManagerGlobal;->mParams:[Landroid/view/WindowManager$LayoutParams;

    invoke-static {v3, v7, p1}, Landroid/view/WindowManagerGlobal;->removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 374
    iput-object v3, p0, Landroid/view/WindowManagerGlobal;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 376
    if-eqz v6, :cond_1

    .line 377
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 381
    :cond_1
    return-object v6
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;)V
    .locals 20
    .parameter "view"
    .parameter "params"
    .parameter "display"
    .parameter "parentWindow"

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 169
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "view must not be null"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 171
    :cond_0
    if-nez p3, :cond_1

    .line 172
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "display must not be null"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 174
    :cond_1
    move-object/from16 v0, p2

    instance-of v15, v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v15, :cond_2

    .line 175
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "Params must be WindowManager.LayoutParams"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_2
    move-object/from16 v14, p2

    .line 178
    check-cast v14, Landroid/view/WindowManager$LayoutParams;

    .line 179
    .local v14, wparams:Landroid/view/WindowManager$LayoutParams;
    if-eqz p4, :cond_3

    .line 180
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/view/Window;->adjustLayoutParamsForSubWindow(Landroid/view/WindowManager$LayoutParams;)V

    .line 184
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 185
    .local v10, packageName:Ljava/lang/String;
    if-eqz v10, :cond_5

    const-string v15, "com.qihoo360"

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    iget v15, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7d7

    move/from16 v0, v16

    if-le v15, v0, :cond_5

    .line 186
    const/4 v7, 0x0

    .line 188
    .local v7, incomingRinging:Z
    :try_start_0
    const-string v15, "phone"

    invoke-static {v15}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v13

    .line 190
    .local v13, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v13, :cond_4

    .line 191
    invoke-interface {v13}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 196
    .end local v13           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_4
    :goto_0
    if-eqz v7, :cond_5

    .line 279
    .end local v7           #incomingRinging:Z
    :goto_1
    return-void

    .line 193
    .restart local v7       #incomingRinging:Z
    :catch_0
    move-exception v5

    .line 194
    .local v5, ex:Landroid/os/RemoteException;
    const-string v15, "WindowManager"

    const-string v16, "RemoteException from getPhoneInterface()"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 203
    .end local v5           #ex:Landroid/os/RemoteException;
    .end local v7           #incomingRinging:Z
    :cond_5
    const/4 v11, 0x0

    .line 205
    .local v11, panelParentView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 207
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    if-nez v15, :cond_6

    .line 208
    new-instance v15, Landroid/view/WindowManagerGlobal$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/view/WindowManagerGlobal$1;-><init>(Landroid/view/WindowManagerGlobal;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    .line 217
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    invoke-static {v15}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 220
    :cond_6
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v8

    .line 221
    .local v8, index:I
    if-ltz v8, :cond_7

    .line 222
    new-instance v15, Ljava/lang/IllegalStateException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "View "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " has already been added to the window manager."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 264
    .end local v8           #index:I
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v15

    .line 228
    .restart local v8       #index:I
    :cond_7
    :try_start_2
    iget v15, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v17, 0x3e8

    move/from16 v0, v17

    if-lt v15, v0, :cond_a

    iget v15, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v17, 0x7cf

    move/from16 v0, v17

    if-gt v15, v0, :cond_a

    .line 230
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    array-length v3, v15

    .line 231
    .local v3, count:I
    :goto_2
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3
    if-ge v6, v3, :cond_a

    .line 232
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v15, v15, v6

    iget-object v15, v15, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v15}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v15

    iget-object v0, v14, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v15, v0, :cond_8

    .line 233
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    aget-object v11, v15, v6

    .line 231
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 230
    .end local v3           #count:I
    .end local v6           #i:I
    :cond_9
    const/4 v3, 0x0

    goto :goto_2

    .line 238
    :cond_a
    new-instance v12, Landroid/view/ViewRootImpl;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-direct {v12, v15, v0}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 240
    .local v12, root:Landroid/view/ViewRootImpl;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    if-nez v15, :cond_c

    .line 243
    const/4 v8, 0x1

    .line 244
    const/4 v15, 0x1

    new-array v15, v15, [Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    .line 245
    const/4 v15, 0x1

    new-array v15, v15, [Landroid/view/ViewRootImpl;

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    .line 246
    const/4 v15, 0x1

    new-array v15, v15, [Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/view/WindowManagerGlobal;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 259
    :goto_4
    add-int/lit8 v8, v8, -0x1

    .line 261
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    aput-object p1, v15, v8

    .line 262
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    aput-object v12, v15, v8

    .line 263
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/WindowManagerGlobal;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aput-object v14, v15, v8

    .line 264
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 268
    :try_start_3
    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v14, v11}, Landroid/view/ViewRootImpl;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 269
    :catch_1
    move-exception v4

    .line 271
    .local v4, e:Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 272
    const/4 v15, 0x0

    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v8

    .line 273
    if-ltz v8, :cond_b

    .line 274
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v15}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)Landroid/view/View;

    .line 276
    :cond_b
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 277
    throw v4

    .line 248
    .end local v4           #e:Ljava/lang/RuntimeException;
    :cond_c
    :try_start_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    array-length v15, v15

    add-int/lit8 v8, v15, 0x1

    .line 249
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    .line 250
    .local v9, old:[Ljava/lang/Object;
    new-array v15, v8, [Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    .line 251
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    add-int/lit8 v19, v8, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v9, v15, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    .line 253
    new-array v15, v8, [Landroid/view/ViewRootImpl;

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    .line 254
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    add-int/lit8 v19, v8, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v9, v15, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/WindowManagerGlobal;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 256
    new-array v15, v8, [Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/view/WindowManagerGlobal;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 257
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowManagerGlobal;->mParams:[Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    add-int/lit8 v19, v8, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v9, v15, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    .line 276
    .end local v9           #old:[Ljava/lang/Object;
    .restart local v4       #e:Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v15

    :try_start_6
    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v15
.end method

.method public closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "token"
    .parameter "who"
    .parameter "what"

    .prologue
    .line 319
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 320
    :try_start_0
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    if-nez v4, :cond_0

    .line 321
    monitor-exit v5

    .line 346
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    array-length v0, v4

    .line 325
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 328
    if-eqz p1, :cond_1

    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aget-object v4, v4, v1

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v4, p1, :cond_3

    .line 329
    :cond_1
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v3, v4, v1

    .line 332
    .local v3, root:Landroid/view/ViewRootImpl;
    if-eqz p2, :cond_2

    .line 333
    new-instance v2, Landroid/view/WindowLeaked;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " has leaked window "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " that was originally added here"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    .line 336
    .local v2, leak:Landroid/view/WindowLeaked;
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getLocation()Landroid/view/WindowLeaked;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/WindowLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 337
    const-string v4, "WindowManager"

    invoke-virtual {v2}, Landroid/view/WindowLeaked;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    .end local v2           #leak:Landroid/view/WindowLeaked;
    :cond_2
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)Landroid/view/View;

    .line 341
    add-int/lit8 v1, v1, -0x1

    .line 342
    add-int/lit8 v0, v0, -0x1

    .line 325
    .end local v3           #root:Landroid/view/ViewRootImpl;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 345
    :cond_4
    monitor-exit v5

    goto :goto_0

    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public dumpGfxInfo(Ljava/io/FileDescriptor;)V
    .locals 17
    .parameter "fd"

    .prologue
    .line 456
    new-instance v3, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 457
    .local v3, fout:Ljava/io/FileOutputStream;
    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 459
    .local v7, pw:Ljava/io/PrintWriter;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 460
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    if-eqz v11, :cond_4

    .line 461
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    array-length v1, v11

    .line 463
    .local v1, count:I
    const-string v11, "Profile data in ms:"

    invoke-virtual {v7, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 465
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 466
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v9, v11, v4

    .line 467
    .local v9, root:Landroid/view/ViewRootImpl;
    invoke-static {v9}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v6

    .line 468
    .local v6, name:Ljava/lang/String;
    const-string v11, "\n\t%s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 470
    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v11

    iget-object v11, v11, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v11, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 472
    .local v8, renderer:Landroid/view/HardwareRenderer;
    if-eqz v8, :cond_0

    .line 473
    invoke-virtual {v8, v7}, Landroid/view/HardwareRenderer;->dumpGfxInfo(Ljava/io/PrintWriter;)V

    .line 465
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 477
    .end local v6           #name:Ljava/lang/String;
    .end local v8           #renderer:Landroid/view/HardwareRenderer;
    .end local v9           #root:Landroid/view/ViewRootImpl;
    :cond_1
    const-string v11, "\nView hierarchy:\n"

    invoke-virtual {v7, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    const/4 v10, 0x0

    .line 480
    .local v10, viewsCount:I
    const/4 v2, 0x0

    .line 481
    .local v2, displayListsSize:I
    const/4 v11, 0x2

    new-array v5, v11, [I

    .line 483
    .local v5, info:[I
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    .line 484
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v9, v11, v4

    .line 485
    .restart local v9       #root:Landroid/view/ViewRootImpl;
    invoke-virtual {v9, v5}, Landroid/view/ViewRootImpl;->dumpGfxInfo([I)V

    .line 487
    invoke-static {v9}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v6

    .line 488
    .restart local v6       #name:Ljava/lang/String;
    const-string v11, "  %s\n  %d views, %.2f kB of display lists"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x0

    aget v15, v5, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const/4 v15, 0x1

    aget v15, v5, v15

    int-to-float v15, v15

    const/high16 v16, 0x4480

    div-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 490
    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v11

    iget-object v11, v11, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v11, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 492
    .restart local v8       #renderer:Landroid/view/HardwareRenderer;
    if-eqz v8, :cond_2

    .line 493
    const-string v11, ", %d frames rendered"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v8}, Landroid/view/HardwareRenderer;->getFrameCount()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 495
    :cond_2
    const-string v11, "\n\n"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v7, v11, v13}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 497
    const/4 v11, 0x0

    aget v11, v5, v11

    add-int/2addr v10, v11

    .line 498
    const/4 v11, 0x1

    aget v11, v5, v11

    add-int/2addr v2, v11

    .line 483
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 501
    .end local v6           #name:Ljava/lang/String;
    .end local v8           #renderer:Landroid/view/HardwareRenderer;
    .end local v9           #root:Landroid/view/ViewRootImpl;
    :cond_3
    const-string v11, "\nTotal ViewRootImpl: %d\n"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 502
    const-string v11, "Total Views:        %d\n"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 503
    const-string v11, "Total DisplayList:  %.2f kB\n\n"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    int-to-float v15, v2

    const/high16 v16, 0x4480

    div-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 505
    .end local v1           #count:I
    .end local v2           #displayListsSize:I
    .end local v4           #i:I
    .end local v5           #info:[I
    .end local v10           #viewsCount:I
    :cond_4
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 507
    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    .line 509
    return-void

    .line 505
    :catchall_0
    move-exception v11

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 507
    :catchall_1
    move-exception v11

    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    throw v11
.end method

.method public endTrimMemory()V
    .locals 1

    .prologue
    .line 437
    invoke-static {}, Landroid/view/HardwareRenderer;->endTrimMemory()V

    .line 439
    iget-boolean v0, p0, Landroid/view/WindowManagerGlobal;->mNeedsEglTerminate:Z

    if-eqz v0, :cond_0

    .line 440
    invoke-static {}, Landroid/opengl/ManagedEGLContext;->doTerminate()Z

    .line 441
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowManagerGlobal;->mNeedsEglTerminate:Z

    .line 443
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;Z)V
    .locals 6
    .parameter "view"
    .parameter "immediate"

    .prologue
    .line 302
    if-nez p1, :cond_0

    .line 303
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "view must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 306
    :cond_0
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 307
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v2}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v1

    .line 308
    .local v1, index:I
    invoke-direct {p0, v1, p2}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)Landroid/view/View;

    move-result-object v0

    .line 309
    .local v0, curView:Landroid/view/View;
    if-ne v0, p1, :cond_1

    .line 310
    monitor-exit v3

    return-void

    .line 313
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling with view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but the ViewAncestor is attached to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 315
    .end local v0           #curView:Landroid/view/View;
    .end local v1           #index:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public reportNewConfiguration(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "config"

    .prologue
    .line 531
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 532
    :try_start_0
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    if-eqz v4, :cond_1

    .line 533
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    array-length v1, v4

    .line 534
    .local v1, count:I
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    .end local p1
    .local v0, config:Landroid/content/res/Configuration;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 536
    :try_start_1
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v3, v4, v2

    .line 537
    .local v3, root:Landroid/view/ViewRootImpl;
    invoke-virtual {v3, v0}, Landroid/view/ViewRootImpl;->requestUpdateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 535
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3           #root:Landroid/view/ViewRootImpl;
    :cond_0
    move-object p1, v0

    .line 540
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #count:I
    .end local v2           #i:I
    .restart local p1
    :cond_1
    :try_start_2
    monitor-exit v5

    .line 541
    return-void

    .line 540
    :catchall_0
    move-exception v4

    :goto_1
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .end local p1
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v1       #count:I
    .restart local v2       #i:I
    :catchall_1
    move-exception v4

    move-object p1, v0

    .end local v0           #config:Landroid/content/res/Configuration;
    .restart local p1
    goto :goto_1
.end method

.method public setStoppedState(Landroid/os/IBinder;Z)V
    .locals 5
    .parameter "token"
    .parameter "stopped"

    .prologue
    .line 517
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 518
    :try_start_0
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    if-eqz v3, :cond_2

    .line 519
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    array-length v0, v3

    .line 520
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 521
    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aget-object v3, v3, v1

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v3, p1, :cond_1

    .line 522
    :cond_0
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v2, v3, v1

    .line 523
    .local v2, root:Landroid/view/ViewRootImpl;
    invoke-virtual {v2, p2}, Landroid/view/ViewRootImpl;->setStopped(Z)V

    .line 520
    .end local v2           #root:Landroid/view/ViewRootImpl;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 527
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_2
    monitor-exit v4

    .line 528
    return-void

    .line 527
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public startTrimMemory(I)V
    .locals 5
    .parameter "level"

    .prologue
    const/16 v4, 0x50

    .line 411
    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 414
    if-ge p1, v4, :cond_0

    const/16 v2, 0x3c

    if-lt p1, v2, :cond_4

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-nez v2, :cond_4

    .line 419
    :cond_0
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 420
    :try_start_0
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    if-nez v2, :cond_2

    monitor-exit v3

    .line 434
    :cond_1
    :goto_0
    return-void

    .line 421
    :cond_2
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    array-length v0, v2

    .line 422
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 423
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->terminateHardwareResources()V

    .line 422
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 425
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/WindowManagerGlobal;->mNeedsEglTerminate:Z

    .line 428
    invoke-static {v4}, Landroid/view/HardwareRenderer;->startTrimMemory(I)V

    goto :goto_0

    .line 425
    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 432
    :cond_4
    invoke-static {p1}, Landroid/view/HardwareRenderer;->startTrimMemory(I)V

    goto :goto_0
.end method

.method public trimLocalMemory()V
    .locals 4

    .prologue
    .line 446
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 447
    :try_start_0
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    if-nez v2, :cond_0

    monitor-exit v3

    .line 453
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    array-length v0, v2

    .line 449
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 450
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->destroyHardwareLayers()V

    .line 449
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 452
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5
    .parameter "view"
    .parameter "params"

    .prologue
    .line 282
    if-nez p1, :cond_0

    .line 283
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "view must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 285
    :cond_0
    instance-of v3, p2, Landroid/view/WindowManager$LayoutParams;

    if-nez v3, :cond_1

    .line 286
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Params must be WindowManager.LayoutParams"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move-object v2, p2

    .line 289
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 291
    .local v2, wparams:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 294
    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, p1, v3}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v0

    .line 295
    .local v0, index:I
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v1, v3, v0

    .line 296
    .local v1, root:Landroid/view/ViewRootImpl;
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aput-object v2, v3, v0

    .line 297
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewRootImpl;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 298
    monitor-exit v4

    .line 299
    return-void

    .line 298
    .end local v0           #index:I
    .end local v1           #root:Landroid/view/ViewRootImpl;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
