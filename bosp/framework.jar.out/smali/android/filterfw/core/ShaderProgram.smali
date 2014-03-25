.class public Landroid/filterfw/core/ShaderProgram;
.super Landroid/filterfw/core/Program;
.source "ShaderProgram.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShaderProgram"


# instance fields
.field private mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

.field private final mLogVerbose:Z

.field private mMaxTileSize:I

.field private mTimer:Landroid/filterfw/core/StopWatchMap;

.field private shaderProgramId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 255
    const-string v0, "filterfw"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/filterfw/core/Program;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    .line 311
    const-string v0, "ShaderProgram"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterfw/core/ShaderProgram;->mLogVerbose:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "fragmentShader"

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Landroid/filterfw/core/Program;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    .line 46
    iput-object v2, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    .line 311
    const-string v0, "ShaderProgram"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterfw/core/ShaderProgram;->mLogVerbose:Z

    .line 60
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->getGLEnvironment(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    iput-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    .line 61
    iget-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    invoke-direct {p0, v0, v2, p2}, Landroid/filterfw/core/ShaderProgram;->allocate(Landroid/filterfw/core/GLEnvironment;Ljava/lang/String;Ljava/lang/String;)Z

    .line 62
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->compileAndLink()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not compile and link shader!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->setTimer()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "vertexShader"
    .parameter "fragmentShader"

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/filterfw/core/Program;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    .line 311
    const-string v0, "ShaderProgram"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterfw/core/ShaderProgram;->mLogVerbose:Z

    .line 69
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->getGLEnvironment(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    iput-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    .line 70
    iget-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    invoke-direct {p0, v0, p2, p3}, Landroid/filterfw/core/ShaderProgram;->allocate(Landroid/filterfw/core/GLEnvironment;Ljava/lang/String;Ljava/lang/String;)Z

    .line 71
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->compileAndLink()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not compile and link shader!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->setTimer()V

    .line 75
    return-void
.end method

.method private constructor <init>(Landroid/filterfw/core/NativeAllocatorTag;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/filterfw/core/Program;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    .line 311
    const-string v0, "ShaderProgram"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterfw/core/ShaderProgram;->mLogVerbose:Z

    .line 57
    return-void
.end method

.method private native allocate(Landroid/filterfw/core/GLEnvironment;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native beginShaderDrawing()Z
.end method

.method private native compileAndLink()Z
.end method

.method public static createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;
    .locals 2
    .parameter "context"

    .prologue
    .line 78
    invoke-static {p0}, Landroid/filterfw/core/ShaderProgram;->getGLEnvironment(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/GLEnvironment;

    move-result-object v1

    invoke-static {v1}, Landroid/filterfw/core/ShaderProgram;->nativeCreateIdentity(Landroid/filterfw/core/GLEnvironment;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    .line 79
    .local v0, program:Landroid/filterfw/core/ShaderProgram;
    invoke-direct {v0}, Landroid/filterfw/core/ShaderProgram;->setTimer()V

    .line 80
    return-object v0
.end method

.method private native deallocate()Z
.end method

.method private explainObject(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .parameter "obj"

    .prologue
    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    instance-of v5, p1, [F

    if-eqz v5, :cond_0

    .line 323
    check-cast p1, [F

    .end local p1
    move-object v0, p1

    check-cast v0, [F

    .local v0, arr$:[F
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_3

    aget v3, v0, v1

    .line 324
    .local v3, one:F
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 325
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 327
    .end local v0           #arr$:[F
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #one:F
    .restart local p1
    :cond_0
    instance-of v5, p1, [I

    if-eqz v5, :cond_1

    .line 328
    check-cast p1, [I

    .end local p1
    move-object v0, p1

    check-cast v0, [I

    .local v0, arr$:[I
    array-length v2, v0

    .restart local v2       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget v3, v0, v1

    .line 329
    .local v3, one:I
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 330
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 332
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #one:I
    .restart local p1
    :cond_1
    instance-of v5, p1, [B

    if-eqz v5, :cond_2

    .line 333
    check-cast p1, [B

    .end local p1
    move-object v0, p1

    check-cast v0, [B

    .local v0, arr$:[B
    array-length v2, v0

    .restart local v2       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_2
    if-ge v1, v2, :cond_3

    aget-byte v3, v0, v1

    .line 334
    .local v3, one:B
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 338
    .end local v0           #arr$:[B
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #one:B
    .restart local p1
    :cond_2
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 340
    .end local p1
    :cond_3
    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static getGLEnvironment(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/GLEnvironment;
    .locals 3
    .parameter "context"

    .prologue
    .line 246
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    .line 247
    .local v0, result:Landroid/filterfw/core/GLEnvironment;
    :goto_0
    if-nez v0, :cond_1

    .line 248
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Attempting to create ShaderProgram with no GL environment in place!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    .end local v0           #result:Landroid/filterfw/core/GLEnvironment;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 251
    .restart local v0       #result:Landroid/filterfw/core/GLEnvironment;
    :cond_1
    return-object v0
.end method

.method private native getUniformValue(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method private static native nativeCreateIdentity(Landroid/filterfw/core/GLEnvironment;)Landroid/filterfw/core/ShaderProgram;
.end method

.method private native setShaderAttributeValues(Ljava/lang/String;[FI)Z
.end method

.method private native setShaderAttributeVertexFrame(Ljava/lang/String;Landroid/filterfw/core/VertexFrame;IIIIZ)Z
.end method

.method private native setShaderBlendEnabled(Z)Z
.end method

.method private native setShaderBlendFunc(II)Z
.end method

.method private native setShaderClearColor(FFF)Z
.end method

.method private native setShaderClearsOutput(Z)Z
.end method

.method private native setShaderDrawMode(I)Z
.end method

.method private native setShaderTileCounts(II)Z
.end method

.method private native setShaderVertexCount(I)Z
.end method

.method private native setTargetRegion(FFFFFFFF)Z
.end method

.method private setTimer()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Landroid/filterfw/core/StopWatchMap;

    invoke-direct {v0}, Landroid/filterfw/core/StopWatchMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    .line 50
    return-void
.end method

.method private native setUniformValue(Ljava/lang/String;Ljava/lang/Object;)Z
.end method

.method private native shaderProcess([Landroid/filterfw/core/GLFrame;Landroid/filterfw/core/GLFrame;)Z
.end method

.method private wait3DReady()V
    .locals 2

    .prologue
    .line 314
    iget-boolean v0, p0, Landroid/filterfw/core/ShaderProgram;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "debug.effect.wait"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 315
    invoke-static {}, Landroid/filterfw/core/Frame;->wait3DReady()V

    .line 317
    :cond_0
    return-void
.end method


# virtual methods
.method public beginDrawing()V
    .locals 2

    .prologue
    .line 240
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->beginShaderDrawing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not prepare shader-program for drawing!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->deallocate()Z

    .line 86
    return-void
.end method

.method public getGLEnvironment()Landroid/filterfw/core/GLEnvironment;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    return-object v0
.end method

.method public getHostValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "variableName"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Landroid/filterfw/core/ShaderProgram;->getUniformValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V
    .locals 8
    .parameter "inputs"
    .parameter "output"

    .prologue
    .line 94
    iget-object v5, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    iget-boolean v5, v5, Landroid/filterfw/core/StopWatchMap;->LOG_MFF_RUNNING_TIMES:Z

    if-eqz v5, :cond_0

    .line 95
    iget-object v5, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    const-string v6, "glFinish"

    invoke-virtual {v5, v6}, Landroid/filterfw/core/StopWatchMap;->start(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 97
    iget-object v5, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    const-string v6, "glFinish"

    invoke-virtual {v5, v6}, Landroid/filterfw/core/StopWatchMap;->stop(Ljava/lang/String;)V

    .line 102
    :cond_0
    array-length v5, p1

    new-array v0, v5, [Landroid/filterfw/core/GLFrame;

    .line 103
    .local v0, glInputs:[Landroid/filterfw/core/GLFrame;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_2

    .line 104
    aget-object v5, p1, v2

    instance-of v5, v5, Landroid/filterfw/core/GLFrame;

    if-eqz v5, :cond_1

    .line 105
    aget-object v5, p1, v2

    check-cast v5, Landroid/filterfw/core/GLFrame;

    aput-object v5, v0, v2

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ShaderProgram got non-GL frame as input "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 112
    :cond_2
    const/4 v1, 0x0

    .line 113
    .local v1, glOutput:Landroid/filterfw/core/GLFrame;
    instance-of v5, p2, Landroid/filterfw/core/GLFrame;

    if-eqz v5, :cond_4

    move-object v1, p2

    .line 114
    check-cast v1, Landroid/filterfw/core/GLFrame;

    .line 120
    iget v5, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    if-lez v5, :cond_3

    .line 121
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v5

    invoke-virtual {v5}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v5

    iget v6, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    div-int v3, v5, v6

    .line 122
    .local v3, xTiles:I
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v5

    invoke-virtual {v5}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v5

    iget v6, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    div-int v4, v5, v6

    .line 123
    .local v4, yTiles:I
    invoke-direct {p0, v3, v4}, Landroid/filterfw/core/ShaderProgram;->setShaderTileCounts(II)Z

    .line 127
    .end local v3           #xTiles:I
    .end local v4           #yTiles:I
    :cond_3
    invoke-direct {p0, v0, v1}, Landroid/filterfw/core/ShaderProgram;->shaderProcess([Landroid/filterfw/core/GLFrame;Landroid/filterfw/core/GLFrame;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 128
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Error executing ShaderProgram!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 116
    :cond_4
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "ShaderProgram got non-GL output frame!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 131
    :cond_5
    iget-object v5, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    iget-boolean v5, v5, Landroid/filterfw/core/StopWatchMap;->LOG_MFF_RUNNING_TIMES:Z

    if-eqz v5, :cond_6

    .line 132
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->wait3DReady()V

    .line 133
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 135
    :cond_6
    return-void
.end method

.method public setAttributeValues(Ljava/lang/String;Landroid/filterfw/core/VertexFrame;IIIIZ)V
    .locals 3
    .parameter "attributeName"
    .parameter "vertexData"
    .parameter "type"
    .parameter "componentCount"
    .parameter "strideInBytes"
    .parameter "offsetInBytes"
    .parameter "normalize"

    .prologue
    .line 165
    invoke-direct/range {p0 .. p7}, Landroid/filterfw/core/ShaderProgram;->setShaderAttributeVertexFrame(Ljava/lang/String;Landroid/filterfw/core/VertexFrame;IIIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error setting attribute value for attribute \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    return-void
.end method

.method public setAttributeValues(Ljava/lang/String;[FI)V
    .locals 3
    .parameter "attributeName"
    .parameter "data"
    .parameter "componentCount"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/filterfw/core/ShaderProgram;->setShaderAttributeValues(Ljava/lang/String;[FI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error setting attribute value for attribute \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    return-void
.end method

.method public setBlendEnabled(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 212
    invoke-direct {p0, p1}, Landroid/filterfw/core/ShaderProgram;->setShaderBlendEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set Blending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    return-void
.end method

.method public setBlendFunc(II)V
    .locals 3
    .parameter "sfactor"
    .parameter "dfactor"

    .prologue
    .line 218
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/ShaderProgram;->setShaderBlendFunc(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set BlendFunc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    return-void
.end method

.method public setClearColor(FFF)V
    .locals 3
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 206
    invoke-direct {p0, p1, p2, p3}, Landroid/filterfw/core/ShaderProgram;->setShaderClearColor(FFF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set clear color to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    return-void
.end method

.method public setClearsOutput(Z)V
    .locals 3
    .parameter "clears"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/filterfw/core/ShaderProgram;->setShaderClearsOutput(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set clears-output flag to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    return-void
.end method

.method public setDrawMode(I)V
    .locals 3
    .parameter "drawMode"

    .prologue
    .line 224
    invoke-direct {p0, p1}, Landroid/filterfw/core/ShaderProgram;->setShaderDrawMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set GL draw-mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    return-void
.end method

.method public setHostValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "variableName"
    .parameter "value"

    .prologue
    .line 139
    iget-boolean v0, p0, Landroid/filterfw/core/ShaderProgram;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "ShaderProgram"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHostValue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Landroid/filterfw/core/ShaderProgram;->explainObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/ShaderProgram;->setUniformValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error setting uniform value for variable \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_1
    return-void
.end method

.method public setMaximumTileSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 236
    iput p1, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    .line 237
    return-void
.end method

.method public setSourceRect(FFFF)V
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 192
    add-float v3, p1, p3

    add-float v6, p2, p4

    add-float v7, p1, p3

    add-float v8, p2, p4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p2

    move v5, p1

    invoke-virtual/range {v0 .. v8}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(FFFFFFFF)Z

    .line 193
    return-void
.end method

.method public setSourceRegion(Landroid/filterfw/geometry/Quad;)V
    .locals 9
    .parameter "region"

    .prologue
    .line 178
    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget v1, v0, Landroid/filterfw/geometry/Point;->x:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget v2, v0, Landroid/filterfw/geometry/Point;->y:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget v3, v0, Landroid/filterfw/geometry/Point;->x:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget v4, v0, Landroid/filterfw/geometry/Point;->y:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget v5, v0, Landroid/filterfw/geometry/Point;->x:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget v6, v0, Landroid/filterfw/geometry/Point;->y:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iget v7, v0, Landroid/filterfw/geometry/Point;->x:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iget v8, v0, Landroid/filterfw/geometry/Point;->y:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(FFFFFFFF)Z

    .line 182
    return-void
.end method

.method public native setSourceRegion(FFFFFFFF)Z
.end method

.method public setTargetRect(FFFF)V
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 196
    add-float v3, p1, p3

    add-float v6, p2, p4

    add-float v7, p1, p3

    add-float v8, p2, p4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p2

    move v5, p1

    invoke-direct/range {v0 .. v8}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(FFFFFFFF)Z

    .line 197
    return-void
.end method

.method public setTargetRegion(Landroid/filterfw/geometry/Quad;)V
    .locals 9
    .parameter "region"

    .prologue
    .line 185
    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget v1, v0, Landroid/filterfw/geometry/Point;->x:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget v2, v0, Landroid/filterfw/geometry/Point;->y:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget v3, v0, Landroid/filterfw/geometry/Point;->x:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget v4, v0, Landroid/filterfw/geometry/Point;->y:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget v5, v0, Landroid/filterfw/geometry/Point;->x:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget v6, v0, Landroid/filterfw/geometry/Point;->y:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iget v7, v0, Landroid/filterfw/geometry/Point;->x:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iget v8, v0, Landroid/filterfw/geometry/Point;->y:F

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(FFFFFFFF)Z

    .line 189
    return-void
.end method

.method public setVertexCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 230
    invoke-direct {p0, p1}, Landroid/filterfw/core/ShaderProgram;->setShaderVertexCount(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set GL vertex count to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    return-void
.end method
