.class public Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;
.super Lcom/baidu/internal/keyguard/space/textureview/TemplateRenderThread;
.source "AppRenderThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppRenderThread"


# instance fields
.field private mAmpUniformHandle:I

.field private final mBytesPerFloat:I

.field private mContinuouslyDraw:Z

.field private mFragmentShaderSource:Ljava/lang/String;

.field private mObjectPositions:Ljava/nio/FloatBuffer;

.field private mObjectTextureCoordinates:Ljava/nio/FloatBuffer;

.field private mPast:F

.field private final mPositionDataSize:I

.field private mPositionHandle:I

.field private mProgram:I

.field private mSensorX:F

.field private mSensorY:F

.field private mSleep:J

.field private mSleepAdjustTime:J

.field private final mTextureCoordinateDataSize:I

.field private mTextureCoordinateHandle:I

.field private mTextureDataHandle0:I

.field private mTextureDataHandle1:I

.field private mTextureDataHandle2:I

.field private mTextureDataHandle3:I

.field private mTextureHelper:Lcom/baidu/internal/keyguard/space/utils/TextureHelper;

.field private mTextureUniformHandle:I

.field private mTimeUniformHandle:I

.field private mVertexShaderSource:Ljava/lang/String;

.field private mWaterFragmentShaderSource:Ljava/lang/String;

.field private mWaterProgram:I

.field private mWaterVertexShaderSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .parameter "context"
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/internal/keyguard/space/textureview/TemplateRenderThread;-><init>(Landroid/content/Context;Landroid/graphics/SurfaceTexture;II)V

    .line 30
    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mBytesPerFloat:I

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mPositionDataSize:I

    .line 32
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mTextureCoordinateDataSize:I

    .line 35
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mSleep:J

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mContinuouslyDraw:Z

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mPast:F

    .line 39
    new-instance v0, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;

    invoke-direct {v0}, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mTextureHelper:Lcom/baidu/internal/keyguard/space/utils/TextureHelper;

    .line 218
    const-string v0, "precision mediump float;\nuniform sampler2D u_Texture;    // The input texture.\nvarying vec2 v_TexCoordinate;   // Interpolated texture coordinate per fragment.\nvoid main()\n{\n    gl_FragColor = (texture2D(u_Texture, v_TexCoordinate));\n}\n"

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mFragmentShaderSource:Ljava/lang/String;

    .line 221
    const-string v0, "precision mediump float;\nuniform mat4 u_MVPMatrix;       // A constant representing the combined model/view/projection matrix.\nuniform mat4 u_MVMatrix;        // A constant representing the combined model/view matrix.\nattribute vec4 a_Position;      // Per-vertex position information we will pass in.\nattribute vec2 a_TexCoordinate; // Per-vertex texture coordinate information we will pass in.\nvarying vec2 v_TexCoordinate;   // This will be passed into the fragment shader.\nvoid main()\n{\n    v_TexCoordinate = a_TexCoordinate;\n    gl_Position = u_MVPMatrix * a_Position;\n}\n"

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mVertexShaderSource:Ljava/lang/String;

    .line 228
    const-string v0, "precision mediump float;\nuniform sampler2D u_Texture;    // The input texture.\nvarying vec2 v_TexCoordinate;   // Interpolated texture coordinate per fragment.\nuniform float u_Time;           // The current time.\nuniform float u_Amp;           // The current amp.\nvoid main()\n{\n    if(v_TexCoordinate.y < 0.5){\n        gl_FragColor = (texture2D(u_Texture, v_TexCoordinate));\n    }else{\n        float alpha = 1.7 - 1.4 * v_TexCoordinate.y;\n        float dy = 1.0 - v_TexCoordinate.y;\n        //very strange, on arm mali gpu, max value limits to 32767 / 2\n        float period = 10000.0;\n        float waveFreq = 35.0;\n        gl_FragColor = vec4(alpha, alpha, alpha, alpha) *\n                            (texture2D(u_Texture,\n                            vec2(v_TexCoordinate.x + sin((dy + 0.5 * u_Time / period) * (2.0 * 3.14 * waveFreq)) * (dy - 0.5) * 0.2 * u_Amp\n                                ,v_TexCoordinate.y\n                            )));\n    }\n}\n"

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mWaterFragmentShaderSource:Ljava/lang/String;

    .line 250
    const-string v0, "precision mediump float;\nuniform mat4 u_MVPMatrix;       // A constant representing the combined model/view/projection matrix.\nuniform mat4 u_MVMatrix;        // A constant representing the combined model/view matrix.\nattribute vec4 a_Position;      // Per-vertex position information we will pass in.\nattribute vec2 a_TexCoordinate; // Per-vertex texture coordinate information we will pass in.\nvarying vec2 v_TexCoordinate;   // This will be passed into the fragment shader.\nvoid main()\n{\n    v_TexCoordinate = a_TexCoordinate;\n    gl_Position = u_MVPMatrix * a_Position;\n}\n"

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mWaterVertexShaderSource:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->initCoordinatesData()V

    .line 48
    return-void
.end method

.method private activeBindTexture(I)V
    .locals 2
    .parameter "index"

    .prologue
    const/16 v1, 0xde1

    .line 172
    packed-switch p1, :pswitch_data_0

    .line 196
    :goto_0
    return-void

    .line 174
    :pswitch_0
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 175
    iget v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mTextureDataHandle0:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 176
    iget v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mTextureUniformHandle:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    .line 179
    :pswitch_1
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 180
    iget v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mTextureDataHandle1:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 181
    iget v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mTextureUniformHandle:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    .line 184
    :pswitch_2
    const v0, 0x84c2

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 185
    iget v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mTextureDataHandle2:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 186
    iget v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mTextureUniformHandle:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    .line 189
    :pswitch_3
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 190
    iget v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mTextureDataHandle3:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 191
    iget v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mTextureUniformHandle:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private drawObject()V
    .locals 9

    .prologue
    const/16 v2, 0x1406

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 202
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mObjectPositions:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 203
    iget v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mPositionHandle:I

    const/4 v1, 0x3

    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mObjectPositions:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 204
    iget v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 205
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mObjectTextureCoordinates:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 206
    iget v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mTextureCoordinateHandle:I

    const/4 v1, 0x2

    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mObjectTextureCoordinates:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 207
    iget v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mTextureCoordinateHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 211
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mMVPMatrix:[F

    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mViewMatrix:[F

    iget-object v6, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mModelMatrix:[F

    move v5, v3

    move v7, v3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 212
    iget v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mMVMatrixHandle:I

    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mMVPMatrix:[F

    invoke-static {v0, v8, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 213
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mMVPMatrix:[F

    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mProjectionMatrix:[F

    iget-object v6, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mMVPMatrix:[F

    move v5, v3

    move v7, v3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 214
    iget v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mMVPMatrixHandle:I

    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mMVPMatrix:[F

    invoke-static {v0, v8, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 215
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 216
    return-void
.end method

.method private initShader()V
    .locals 5

    .prologue
    .line 259
    const v2, 0x8b31

    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mVertexShaderSource:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/space/utils/ShaderHelper;->compileShader(ILjava/lang/String;)I

    move-result v1

    .line 260
    .local v1, vertexShaderHandle:I
    const v2, 0x8b30

    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mFragmentShaderSource:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/space/utils/ShaderHelper;->compileShader(ILjava/lang/String;)I

    move-result v0

    .line 261
    .local v0, fragmentShaderHandle:I
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "a_Position"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "a_TexCoordinate"

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/baidu/internal/keyguard/space/utils/ShaderHelper;->createAndLinkProgram(II[Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mProgram:I

    .line 264
    return-void
.end method

.method private initWaterShader()V
    .locals 5

    .prologue
    .line 267
    const v2, 0x8b31

    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mWaterVertexShaderSource:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/space/utils/ShaderHelper;->compileShader(ILjava/lang/String;)I

    move-result v1

    .line 268
    .local v1, vertexShaderHandle:I
    const v2, 0x8b30

    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mWaterFragmentShaderSource:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/space/utils/ShaderHelper;->compileShader(ILjava/lang/String;)I

    move-result v0

    .line 269
    .local v0, fragmentShaderHandle:I
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "a_Position"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "a_TexCoordinate"

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/baidu/internal/keyguard/space/utils/ShaderHelper;->createAndLinkProgram(II[Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mWaterProgram:I

    .line 272
    return-void
.end method

.method private switchToStaticProgram()V
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 69
    iget v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mProgram:I

    const-string v1, "u_MVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mMVPMatrixHandle:I

    .line 70
    iget v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mProgram:I

    const-string v1, "u_MVMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mMVMatrixHandle:I

    .line 71
    iget v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mProgram:I

    const-string v1, "u_Texture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mTextureUniformHandle:I

    .line 73
    iget v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mProgram:I

    const-string v1, "a_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mPositionHandle:I

    .line 74
    iget v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mProgram:I

    const-string v1, "a_TexCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mTextureCoordinateHandle:I

    .line 75
    return-void
.end method

.method private switchToWaterProgram(F)V
    .locals 3
    .parameter "time"

    .prologue
    .line 78
    iget v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mWaterProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 79
    iget v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mWaterProgram:I

    const-string v1, "u_MVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mMVPMatrixHandle:I

    .line 80
    iget v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mWaterProgram:I

    const-string v1, "u_MVMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mMVMatrixHandle:I

    .line 81
    iget v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mWaterProgram:I

    const-string v1, "u_Texture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mTextureUniformHandle:I

    .line 82
    iget v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mWaterProgram:I

    const-string v1, "u_Time"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mTimeUniformHandle:I

    .line 83
    iget v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mWaterProgram:I

    const-string v1, "u_Amp"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mAmpUniformHandle:I

    .line 85
    iget v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mWaterProgram:I

    const-string v1, "a_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mPositionHandle:I

    .line 86
    iget v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mWaterProgram:I

    const-string v1, "a_TexCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mTextureCoordinateHandle:I

    .line 88
    iget v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mTimeUniformHandle:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 89
    iget v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mAmpUniformHandle:I

    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mPast:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 90
    return-void
.end method


# virtual methods
.method protected initCoordinatesData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 51
    const/16 v2, 0x12

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    .line 54
    .local v0, objectPositionData:[F
    const/16 v2, 0xc

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    .line 59
    .local v1, objectTextureCoordinateData:[F
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mObjectPositions:Ljava/nio/FloatBuffer;

    .line 60
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mObjectPositions:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 61
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mObjectTextureCoordinates:Ljava/nio/FloatBuffer;

    .line 63
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mObjectTextureCoordinates:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 64
    return-void

    .line 51
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 54
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public run()V
    .locals 15

    .prologue
    const v14, 0x3e99999a

    const v13, 0x3ccccccd

    const/4 v12, -0x1

    const/high16 v11, 0x3f80

    const/4 v10, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->initGL()V

    .line 95
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->initShader()V

    .line 96
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->checkGlError()V

    .line 97
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->initWaterShader()V

    .line 98
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->checkGlError()V

    .line 99
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v2, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v5, #drawable@baidu_keyguard_space_shake_layer0#t

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    const v5, #drawable@baidu_keyguard_space_shake_layer1#t

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    const v5, #drawable@baidu_keyguard_space_shake_layer2#t

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    const v5, #drawable@baidu_keyguard_space_shake_layer3#t

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mTextureHelper:Lcom/baidu/internal/keyguard/space/utils/TextureHelper;

    iget-object v6, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v2}, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->decodeResource(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 105
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mContinuouslyDraw:Z

    .line 106
    const/4 v5, 0x0

    iput v5, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mPast:F

    .line 107
    :goto_0
    iget-boolean v5, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mRun:Z

    if-eqz v5, :cond_6

    .line 108
    iget-boolean v5, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mContinuouslyDraw:Z

    if-eqz v5, :cond_5

    .line 109
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->checkCurrent()V

    .line 110
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mFpsCounter:Lcom/baidu/internal/keyguard/space/utils/FpsCounter;

    invoke-virtual {v5}, Lcom/baidu/internal/keyguard/space/utils/FpsCounter;->calculateFps()V

    .line 111
    const/16 v5, 0x4100

    invoke-static {v5}, Landroid/opengl/GLES20;->glClear(I)V

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x4e20

    rem-long v3, v5, v7

    .line 113
    .local v3, time:J
    const v5, 0x3c9374bc

    long-to-int v6, v3

    int-to-float v6, v6

    mul-float v0, v5, v6

    .line 117
    .local v0, angleInDegrees:F
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->switchToStaticProgram()V

    .line 118
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->checkGlError()V

    .line 119
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mTextureHelper:Lcom/baidu/internal/keyguard/space/utils/TextureHelper;

    invoke-virtual {v5, v10}, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->loadTexture(I)I

    move-result v5

    iput v5, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mTextureDataHandle0:I

    if-eq v5, v12, :cond_0

    .line 120
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mModelMatrix:[F

    invoke-static {v5, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 121
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mModelMatrix:[F

    const v6, -0x430a3d71

    iget v7, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mSensorX:F

    mul-float/2addr v6, v7

    const v7, -0x430a3d71

    iget v8, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mSensorY:F

    mul-float/2addr v7, v8

    const v8, -0x40266666

    invoke-static {v5, v10, v6, v7, v8}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 122
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mModelMatrix:[F

    const v6, 0x3ff33333

    invoke-static {v5, v10, v11, v6, v11}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 123
    invoke-direct {p0, v10}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->activeBindTexture(I)V

    .line 124
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->drawObject()V

    .line 126
    :cond_0
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mTextureHelper:Lcom/baidu/internal/keyguard/space/utils/TextureHelper;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->loadTexture(I)I

    move-result v5

    iput v5, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mTextureDataHandle1:I

    if-eq v5, v12, :cond_1

    .line 127
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mModelMatrix:[F

    invoke-static {v5, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 128
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mModelMatrix:[F

    const/high16 v6, -0x4180

    iget v7, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mSensorX:F

    mul-float/2addr v7, v13

    add-float/2addr v6, v7

    const/high16 v7, 0x3e80

    iget v8, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mSensorY:F

    mul-float/2addr v8, v13

    add-float/2addr v7, v8

    const v8, -0x404ccccd

    invoke-static {v5, v10, v6, v7, v8}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 129
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mModelMatrix:[F

    invoke-static {v5, v10, v14, v14, v11}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 130
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->activeBindTexture(I)V

    .line 131
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->drawObject()V

    .line 136
    :cond_1
    long-to-float v5, v3

    invoke-direct {p0, v5}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->switchToWaterProgram(F)V

    .line 137
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->checkGlError()V

    .line 138
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mTextureHelper:Lcom/baidu/internal/keyguard/space/utils/TextureHelper;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->loadTexture(I)I

    move-result v5

    iput v5, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mTextureDataHandle2:I

    if-eq v5, v12, :cond_2

    .line 139
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mModelMatrix:[F

    invoke-static {v5, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 140
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mModelMatrix:[F

    const v6, -0x42333333

    iget v7, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mSensorX:F

    mul-float/2addr v7, v13

    add-float/2addr v6, v7

    const v7, -0x407851ec

    const v8, -0x4051eb85

    invoke-static {v5, v10, v6, v7, v8}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 141
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mModelMatrix:[F

    const v6, 0x3fe66666

    const v7, 0x3ed1eb85

    invoke-static {v5, v10, v6, v7, v11}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 142
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->activeBindTexture(I)V

    .line 143
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->drawObject()V

    .line 148
    :cond_2
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->switchToStaticProgram()V

    .line 149
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->checkGlError()V

    .line 150
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mTextureHelper:Lcom/baidu/internal/keyguard/space/utils/TextureHelper;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->loadTexture(I)I

    move-result v5

    iput v5, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mTextureDataHandle3:I

    if-eq v5, v12, :cond_3

    .line 151
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mModelMatrix:[F

    invoke-static {v5, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 152
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mModelMatrix:[F

    const/4 v6, 0x0

    const v7, 0x3c449ba6

    iget v8, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mSensorX:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    const v7, -0x40666666

    const v8, 0x3c449ba6

    iget v9, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mSensorY:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const v8, -0x4059999a

    invoke-static {v5, v10, v6, v7, v8}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 153
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mModelMatrix:[F

    invoke-static {v5, v10, v11, v14, v11}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 154
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->activeBindTexture(I)V

    .line 155
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->drawObject()V

    .line 157
    :cond_3
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 158
    const-string v5, "AppRenderThread"

    const-string v6, "cannot swap buffers!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_4
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->checkEglError()V

    .line 163
    .end local v0           #angleInDegrees:F
    .end local v3           #time:J
    :cond_5
    const-wide/16 v5, 0x1e

    :try_start_0
    invoke-static {v5, v6}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 168
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_6
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->deinitGL()V

    .line 169
    return-void
.end method

.method public setPast(F)V
    .locals 0
    .parameter "past"

    .prologue
    .line 285
    iput p1, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mPast:F

    .line 286
    return-void
.end method

.method public setSensorValue(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 275
    iput p1, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mSensorX:F

    .line 276
    iput p2, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mSensorY:F

    .line 277
    return-void
.end method

.method public stopRedraw()V
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/space/textureview/AppRenderThread;->mContinuouslyDraw:Z

    .line 281
    return-void
.end method
