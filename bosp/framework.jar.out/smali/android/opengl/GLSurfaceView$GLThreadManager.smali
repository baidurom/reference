.class Landroid/opengl/GLSurfaceView$GLThreadManager;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final kADRENO:Ljava/lang/String; = "Adreno"

.field private static final kGLES_20:I = 0x20000

.field private static final kMSM7K_RENDERER_PREFIX:Ljava/lang/String; = "Q3Dimension MSM7500 "


# instance fields
.field private mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mLimitedGLESContexts:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1732
    const-string v0, "GLThreadManager"

    sput-object v0, Landroid/opengl/GLSurfaceView$GLThreadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/opengl/GLSurfaceView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1731
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1815
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_1

    .line 1816
    const-string/jumbo v0, "ro.opengles.version"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    .line 1819
    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1820
    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1826
    :cond_0
    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    .line 1828
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .parameter "gl"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1796
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v3, :cond_3

    .line 1797
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1798
    const/16 v3, 0x1f01

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 1799
    .local v0, renderer:Ljava/lang/String;
    iget v3, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 1800
    const-string v3, "Q3Dimension MSM7500 "

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v2

    :goto_0
    iput-boolean v3, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1802
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1804
    :cond_0
    iget-boolean v3, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-eqz v3, :cond_1

    const-string v3, "Adreno"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mLimitedGLESContexts:Z

    .line 1810
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1812
    .end local v0           #renderer:Ljava/lang/String;
    :cond_3
    monitor-exit p0

    return-void

    .restart local v0       #renderer:Ljava/lang/String;
    :cond_4
    move v3, v1

    .line 1800
    goto :goto_0

    .line 1796
    .end local v0           #renderer:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V
    .locals 1
    .parameter "thread"

    .prologue
    .line 1777
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1778
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    .line 1780
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1781
    return-void
.end method

.method public declared-synchronized shouldReleaseEGLContextWhenPausing()Z
    .locals 1

    .prologue
    .line 1787
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mLimitedGLESContexts:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldTerminateEGLWhenPausing()Z
    .locals 1

    .prologue
    .line 1791
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1792
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1791
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V
    .locals 1
    .parameter "thread"

    .prologue
    .line 1738
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    #setter for: Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    invoke-static {p1, v0}, Landroid/opengl/GLSurfaceView$GLThread;->access$1202(Landroid/opengl/GLSurfaceView$GLThread;Z)Z

    .line 1739
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1740
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    .line 1742
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1743
    monitor-exit p0

    return-void

    .line 1738
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryAcquireEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)Z
    .locals 2
    .parameter "thread"

    .prologue
    const/4 v0, 0x1

    .line 1753
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    if-nez v1, :cond_2

    .line 1754
    :cond_0
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    .line 1755
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1769
    :cond_1
    :goto_0
    return v0

    .line 1758
    :cond_2
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1759
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v1, :cond_1

    .line 1766
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    if-eqz v0, :cond_3

    .line 1767
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->requestReleaseEglContextLocked()V

    .line 1769
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
