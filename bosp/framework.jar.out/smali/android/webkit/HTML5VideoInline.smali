.class public Landroid/webkit/HTML5VideoInline;
.super Landroid/webkit/HTML5VideoView;
.source "HTML5VideoInline.java"


# static fields
.field private static final XLOGTAG:Ljava/lang/String; = "HTML5VideoInline"

.field private static mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private static mTextureNames:[I

.field private static mVideoLayerUsingSurfaceTexture:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    sput-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 40
    sput-object v0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    .line 43
    const/4 v0, -0x1

    sput v0, Landroid/webkit/HTML5VideoInline;->mVideoLayerUsingSurfaceTexture:I

    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 0
    .parameter "videoLayerId"
    .parameter "position"
    .parameter "skipPrepare"

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;-><init>()V

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Landroid/webkit/HTML5VideoInline;->init(IIZ)V

    .line 57
    return-void
.end method

.method public static cleanupSurfaceTexture()V
    .locals 2

    .prologue
    .line 119
    const-string v0, "HTML5VideoInline"

    const-string v1, "cleanupSurfaceTexture"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 121
    const/4 v0, -0x1

    sput v0, Landroid/webkit/HTML5VideoInline;->mVideoLayerUsingSurfaceTexture:I

    .line 122
    return-void
.end method

.method public static getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;
    .locals 3
    .parameter "videoLayerId"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    sget v0, Landroid/webkit/HTML5VideoInline;->mVideoLayerUsingSurfaceTexture:I

    if-ne p0, v0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    if-nez v0, :cond_1

    .line 98
    :cond_0
    new-array v0, v1, [I

    sput-object v0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    .line 99
    sget-object v0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 100
    new-instance v0, Landroid/graphics/SurfaceTexture;

    sget-object v1, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    aget v1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    sput-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 102
    :cond_1
    sput p0, Landroid/webkit/HTML5VideoInline;->mVideoLayerUsingSurfaceTexture:I

    .line 103
    const-string v0, "HTML5VideoInline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSurfaceTexture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method private setFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 135
    sget-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 138
    :cond_0
    return-void
.end method

.method public static surfaceTextureDeleted()Z
    .locals 3

    .prologue
    .line 108
    const-string v0, "HTML5VideoInline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "surfaceTextureDeleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public decideDisplayMode()V
    .locals 3

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoInline;->getVideoLayerId()I

    move-result v2

    invoke-static {v2}, Landroid/webkit/HTML5VideoInline;->getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 62
    .local v1, surfaceTexture:Landroid/graphics/SurfaceTexture;
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 63
    .local v0, surface:Landroid/view/Surface;
    sget-object v2, Landroid/webkit/HTML5VideoInline;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 64
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 65
    return-void
.end method

.method public deleteSurfaceTexture()V
    .locals 0

    .prologue
    .line 114
    invoke-static {}, Landroid/webkit/HTML5VideoInline;->cleanupSurfaceTexture()V

    .line 115
    return-void
.end method

.method public getTextureName()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 127
    sget-object v1, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    if-eqz v1, :cond_0

    .line 128
    sget-object v1, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    aget v0, v1, v0

    .line 130
    :cond_0
    return v0
.end method

.method public pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/webkit/HTML5VideoView;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 86
    return-void
.end method

.method public prepareDataAndDisplayMode(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 3
    .parameter "proxy"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/webkit/HTML5VideoView;->prepareDataAndDisplayMode(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 72
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoInline;->setFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 75
    iget-object v0, p0, Landroid/webkit/HTML5VideoInline;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 78
    sget-object v0, Landroid/webkit/HTML5VideoInline;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 80
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoInline;->getPauseDuringPreparing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-super {p0}, Landroid/webkit/HTML5VideoView;->start()V

    .line 53
    :cond_0
    return-void
.end method
