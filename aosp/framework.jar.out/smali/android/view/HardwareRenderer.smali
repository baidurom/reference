.class public abstract Landroid/view/HardwareRenderer;
.super Ljava/lang/Object;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/HardwareRenderer$Gl20Renderer;,
        Landroid/view/HardwareRenderer$GlRenderer;,
        Landroid/view/HardwareRenderer$HardwareDrawCallbacks;
    }
.end annotation


# static fields
.field private static final CACHE_PATH_SHADERS:Ljava/lang/String; = "com.android.opengl.shaders_cache"

.field public static final DEBUG_DIRTY_REGIONS_PROPERTY:Ljava/lang/String; = "debug.hwui.show_dirty_regions"

.field public static final DEBUG_SHOW_LAYERS_UPDATES_PROPERTY:Ljava/lang/String; = "debug.hwui.show_layers_updates"

.field public static final DEBUG_SHOW_OVERDRAW_PROPERTY:Ljava/lang/String; = "debug.hwui.show_overdraw"

.field static final DISABLE_VSYNC_PROPERTY:Ljava/lang/String; = "debug.hwui.disable_vsync"

.field static final LOG_TAG:Ljava/lang/String; = "HardwareRenderer"

.field static final PRINT_CONFIG_PROPERTY:Ljava/lang/String; = "debug.hwui.print_config"

.field private static final PROFILE_FRAME_DATA_COUNT:I = 0x3

.field static final PROFILE_MAXFRAMES_PROPERTY:Ljava/lang/String; = "debug.hwui.profile.maxframes"

.field private static final PROFILE_MAX_FRAMES:I = 0x80

.field public static final PROFILE_PROPERTY:Ljava/lang/String; = "debug.hwui.profile"

.field public static final RENDER_DIRTY_REGIONS:Z = true

.field static final RENDER_DIRTY_REGIONS_PROPERTY:Ljava/lang/String; = "debug.hwui.render_dirty_regions"

.field public static sRendererDisabled:Z

.field public static sSystemRendererDisabled:Z


# instance fields
.field private mEnabled:Z

.field private mRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 169
    sput-boolean v0, Landroid/view/HardwareRenderer;->sRendererDisabled:Z

    .line 176
    sput-boolean v0, Landroid/view/HardwareRenderer;->sSystemRendererDisabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/HardwareRenderer;->mRequested:Z

    .line 1370
    return-void
.end method

.method static synthetic access$200([I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-static {p0}, Landroid/view/HardwareRenderer;->beginFrame([I)V

    return-void
.end method

.method private static beginFrame([I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 342
    invoke-static {p0}, Landroid/view/HardwareRenderer;->nBeginFrame([I)V

    .line 343
    return-void
.end method

.method static createGlRenderer(IZ)Landroid/view/HardwareRenderer;
    .locals 3
    .parameter "glVersion"
    .parameter "translucent"

    .prologue
    .line 537
    packed-switch p0, :pswitch_data_0

    .line 541
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown GL version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :pswitch_0
    invoke-static {p1}, Landroid/view/HardwareRenderer$Gl20Renderer;->create(Z)Landroid/view/HardwareRenderer;

    move-result-object v0

    return-object v0

    .line 537
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static disable(Z)V
    .locals 1
    .parameter "system"

    .prologue
    const/4 v0, 0x1

    .line 197
    sput-boolean v0, Landroid/view/HardwareRenderer;->sRendererDisabled:Z

    .line 198
    if-eqz p0, :cond_0

    .line 199
    sput-boolean v0, Landroid/view/HardwareRenderer;->sSystemRendererDisabled:Z

    .line 201
    :cond_0
    return-void
.end method

.method static disableVsync()V
    .locals 0

    .prologue
    .line 379
    invoke-static {}, Landroid/view/HardwareRenderer;->nDisableVsync()V

    .line 380
    return-void
.end method

.method static endTrimMemory()V
    .locals 0

    .prologue
    .line 574
    invoke-static {}, Landroid/view/HardwareRenderer$Gl20Renderer;->endTrimMemory()V

    .line 575
    return-void
.end method

.method public static isAvailable()Z
    .locals 1

    .prologue
    .line 211
    invoke-static {}, Landroid/view/GLES20Canvas;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static isBackBufferPreserved()Z
    .locals 1

    .prologue
    .line 370
    invoke-static {}, Landroid/view/HardwareRenderer;->nIsBackBufferPreserved()Z

    move-result v0

    return v0
.end method

.method private static native nBeginFrame([I)V
.end method

.method private static native nDisableVsync()V
.end method

.method private static native nIsBackBufferPreserved()Z
.end method

.method private static native nPreserveBackBuffer()Z
.end method

.method private static native nSetupShadersDiskCache(Ljava/lang/String;)V
.end method

.method static preserveBackBuffer()Z
    .locals 1

    .prologue
    .line 357
    invoke-static {}, Landroid/view/HardwareRenderer;->nPreserveBackBuffer()Z

    move-result v0

    return v0
.end method

.method public static setupDiskCache(Ljava/io/File;)V
    .locals 2
    .parameter "cacheDir"

    .prologue
    .line 332
    new-instance v0, Ljava/io/File;

    const-string v1, "com.android.opengl.shaders_cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/HardwareRenderer;->nSetupShadersDiskCache(Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method static startTrimMemory(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 566
    invoke-static {p0}, Landroid/view/HardwareRenderer$Gl20Renderer;->startTrimMemory(I)V

    .line 567
    return-void
.end method

.method static trimMemory(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 553
    invoke-static {p0}, Landroid/view/HardwareRenderer;->startTrimMemory(I)V

    .line 554
    invoke-static {}, Landroid/view/HardwareRenderer;->endTrimMemory()V

    .line 555
    return-void
.end method


# virtual methods
.method abstract attachFunctor(Landroid/view/View$AttachInfo;I)Z
.end method

.method public abstract createDisplayList(Ljava/lang/String;)Landroid/view/DisplayList;
.end method

.method abstract createHardwareLayer(IIZ)Landroid/view/HardwareLayer;
.end method

.method abstract createHardwareLayer(Z)Landroid/view/HardwareLayer;
.end method

.method abstract createSurfaceTexture(Landroid/view/HardwareLayer;)Landroid/graphics/SurfaceTexture;
.end method

.method abstract destroy(Z)V
.end method

.method abstract destroyHardwareResources(Landroid/view/View;)V
.end method

.method abstract destroyLayers(Landroid/view/View;)V
.end method

.method abstract detachFunctor(I)V
.end method

.method abstract draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;Landroid/graphics/Rect;)Z
.end method

.method abstract dumpGfxInfo(Ljava/io/PrintWriter;)V
.end method

.method abstract getCanvas()Landroid/view/HardwareCanvas;
.end method

.method abstract getFrameCount()J
.end method

.method abstract getHeight()I
.end method

.method abstract getWidth()I
.end method

.method abstract initialize(Landroid/view/Surface;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method initializeIfNeeded(IILandroid/view/Surface;)Z
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "surface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 516
    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    invoke-virtual {p0, p3}, Landroid/view/HardwareRenderer;->initialize(Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {p0, p1, p2}, Landroid/view/HardwareRenderer;->setup(II)V

    .line 521
    const/4 v0, 0x1

    .line 525
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract invalidate(Landroid/view/Surface;)V
.end method

.method isEnabled()Z
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Landroid/view/HardwareRenderer;->mEnabled:Z

    return v0
.end method

.method isRequested()Z
    .locals 1

    .prologue
    .line 602
    iget-boolean v0, p0, Landroid/view/HardwareRenderer;->mRequested:Z

    return v0
.end method

.method abstract pushLayerUpdate(Landroid/view/HardwareLayer;)V
.end method

.method abstract safelyRun(Ljava/lang/Runnable;)Z
.end method

.method setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 592
    iput-boolean p1, p0, Landroid/view/HardwareRenderer;->mEnabled:Z

    .line 593
    return-void
.end method

.method setRequested(Z)V
    .locals 0
    .parameter "requested"

    .prologue
    .line 612
    iput-boolean p1, p0, Landroid/view/HardwareRenderer;->mRequested:Z

    .line 613
    return-void
.end method

.method abstract setSurfaceTexture(Landroid/view/HardwareLayer;Landroid/graphics/SurfaceTexture;)V
.end method

.method abstract setup(II)V
.end method

.method abstract updateSurface(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method abstract validate()Z
.end method
