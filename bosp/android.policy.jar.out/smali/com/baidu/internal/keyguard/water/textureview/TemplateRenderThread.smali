.class public abstract Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;
.super Ljava/lang/Thread;
.source "TemplateRenderThread.java"


# static fields
.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "TemplateRenderThread"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field protected mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field protected mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field protected mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field protected mFpsCounter:Lcom/baidu/internal/keyguard/water/utils/FpsCounter;

.field protected mGl:Ljavax/microedition/khronos/opengles/GL11;

.field protected mMVMatrixHandle:I

.field protected mMVPMatrix:[F

.field protected mMVPMatrixHandle:I

.field protected mModelMatrix:[F

.field protected mProjectionMatrix:[F

.field protected mRun:Z

.field protected mSurface:Landroid/graphics/SurfaceTexture;

.field protected mViewMatrix:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .parameter "context"
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v1, 0x10

    .line 40
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 31
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    .line 32
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mViewMatrix:[F

    .line 33
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mProjectionMatrix:[F

    .line 34
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mMVPMatrix:[F

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mRun:Z

    .line 38
    new-instance v0, Lcom/baidu/internal/keyguard/water/utils/FpsCounter;

    invoke-direct {v0}, Lcom/baidu/internal/keyguard/water/utils/FpsCounter;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mFpsCounter:Lcom/baidu/internal/keyguard/water/utils/FpsCounter;

    .line 41
    const-string v0, "TemplateRenderThread"

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->setName(Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 44
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->initViewMatrix()V

    .line 45
    invoke-virtual {p0, p3, p4}, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->initProjectMatrix(II)V

    .line 46
    return-void
.end method


# virtual methods
.method protected final checkCurrent()V
    .locals 5

    .prologue
    .line 150
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v2, 0x3059

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->checkEglError()V

    .line 152
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglMakeCurrent failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->checkEglError()V

    .line 157
    :cond_2
    return-void
.end method

.method protected final checkEglError()V
    .locals 4

    .prologue
    .line 160
    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 161
    .local v0, error:I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 162
    const-string v1, "TemplateRenderThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EGL error = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    :cond_0
    return-void
.end method

.method protected final checkGlError()V
    .locals 4

    .prologue
    .line 167
    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mGl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL11;->glGetError()I

    move-result v0

    .line 168
    .local v0, error:I
    if-eqz v0, :cond_0

    .line 169
    const-string v1, "TemplateRenderThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GL error = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    return-void
.end method

.method protected deinitGL()V
    .locals 5

    .prologue
    .line 86
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 87
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 88
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 89
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 90
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->checkGlError()V

    .line 91
    const-string v0, "TemplateRenderThread"

    const-string v1, "quit render thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method protected getFragmentShader(I)Ljava/lang/String;
    .locals 1
    .parameter "fragmentShader"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/baidu/internal/keyguard/water/utils/RawResourceReader;->readTextFileFromRawResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getVertexShader(I)Ljava/lang/String;
    .locals 1
    .parameter "vertexShader"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/baidu/internal/keyguard/water/utils/RawResourceReader;->readTextFileFromRawResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract initCoordinatesData()V
.end method

.method protected initGL()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x1

    .line 95
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 96
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 97
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglGetDisplay failed "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 101
    .local v9, version:[I
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglInitialize failed "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    new-array v5, v4, [I

    .line 105
    .local v5, configsCount:[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 106
    .local v3, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v0, 0xf

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 110
    .local v2, configSpec:[I
    const/4 v7, 0x0

    .line 111
    .local v7, eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglChooseConfig failed "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_2
    aget v0, v5, v10

    if-lez v0, :cond_3

    .line 114
    aget-object v7, v3, v10

    .line 116
    :cond_3
    if-nez v7, :cond_4

    .line 117
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_4
    const/4 v0, 0x3

    new-array v6, v0, [I

    fill-array-data v6, :array_1

    .line 122
    .local v6, attrib_list:[I
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v7, v4, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 123
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->checkEglError()V

    .line 124
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    const/4 v10, 0x0

    invoke-interface {v0, v1, v7, v4, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 125
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->checkEglError()V

    .line 126
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_7

    .line 127
    :cond_5
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v8

    .line 128
    .local v8, error:I
    const/16 v0, 0x300b

    if-ne v8, v0, :cond_6

    .line 129
    const-string v0, "TemplateRenderThread"

    const-string v1, "eglCreateWindowSurface returned EGL10.EGL_BAD_NATIVE_WINDOW"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v8           #error:I
    :goto_0
    return-void

    .line 132
    .restart local v8       #error:I
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglCreateWindowSurface failed "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    .end local v8           #error:I
    :cond_7
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v10, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v11, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v4, v10, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 135
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglMakeCurrent failed "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_8
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->checkEglError()V

    .line 138
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mGl:Ljavax/microedition/khronos/opengles/GL11;

    .line 139
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->checkEglError()V

    .line 140
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->setGLFeature()V

    goto :goto_0

    .line 106
    nop

    :array_0
    .array-data 0x4
        0x40t 0x30t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x24t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x21t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x25t 0x30t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x26t 0x30t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data

    .line 119
    :array_1
    .array-data 0x4
        0x98t 0x30t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method protected initProjectMatrix(II)V
    .locals 13
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v5, 0x3f80

    const/4 v1, 0x0

    .line 61
    invoke-static {v1, v1, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 62
    int-to-float v0, p1

    int-to-float v4, p2

    div-float v11, v0, v4

    .line 63
    .local v11, ratio:F
    neg-float v2, v11

    .line 64
    .local v2, left:F
    move v3, v11

    .line 65
    .local v3, right:F
    const/high16 v8, -0x4080

    .line 66
    .local v8, bottom:F
    const/high16 v12, 0x3f80

    .line 67
    .local v12, top:F
    const/high16 v10, 0x3f80

    .line 68
    .local v10, near:F
    const/high16 v9, 0x4120

    .line 69
    .local v9, far:F
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mProjectionMatrix:[F

    const/high16 v4, -0x4080

    const/high16 v7, 0x4120

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 70
    return-void
.end method

.method protected initViewMatrix()V
    .locals 21

    .prologue
    .line 73
    const/4 v12, 0x0

    .line 74
    .local v12, eyeX:F
    const/4 v13, 0x0

    .line 75
    .local v13, eyeY:F
    const/high16 v14, 0x3f80

    .line 76
    .local v14, eyeZ:F
    const/4 v15, 0x0

    .line 77
    .local v15, lookX:F
    const/16 v16, 0x0

    .line 78
    .local v16, lookY:F
    const/16 v17, 0x0

    .line 79
    .local v17, lookZ:F
    const/16 v18, 0x0

    .line 80
    .local v18, upX:F
    const/high16 v19, 0x3f80

    .line 81
    .local v19, upY:F
    const/16 v20, 0x0

    .line 82
    .local v20, upZ:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mViewMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 83
    return-void
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 182
    invoke-virtual {p0, p2, p3}, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->initProjectMatrix(II)V

    .line 183
    return-void
.end method

.method public final quit()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mRun:Z

    .line 58
    return-void
.end method

.method public abstract run()V
.end method

.method protected setGLFeature()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 145
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 146
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 147
    return-void
.end method
