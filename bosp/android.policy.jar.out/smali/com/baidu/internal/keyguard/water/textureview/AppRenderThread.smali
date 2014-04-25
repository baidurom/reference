.class public Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;
.super Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;
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

.field private mTextureDataHandle4:I

.field private mTextureDataHandle5:I

.field private mTextureDataHandle6:I

.field private mTextureDataHandle7:I

.field private mTextureHelper:Lcom/baidu/internal/keyguard/water/utils/TextureHelper;

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
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;-><init>(Landroid/content/Context;Landroid/graphics/SurfaceTexture;II)V

    .line 30
    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mBytesPerFloat:I

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mPositionDataSize:I

    .line 32
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureCoordinateDataSize:I

    .line 35
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSleep:J

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mContinuouslyDraw:Z

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mPast:F

    .line 39
    new-instance v0, Lcom/baidu/internal/keyguard/water/utils/TextureHelper;

    invoke-direct {v0}, Lcom/baidu/internal/keyguard/water/utils/TextureHelper;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureHelper:Lcom/baidu/internal/keyguard/water/utils/TextureHelper;

    .line 267
    const-string v0, "precision mediump float;\nuniform sampler2D u_Texture;    // The input texture.\nvarying vec2 v_TexCoordinate;   // Interpolated texture coordinate per fragment.\nvoid main()\n{\n    gl_FragColor = (texture2D(u_Texture, v_TexCoordinate));\n}\n"

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mFragmentShaderSource:Ljava/lang/String;

    .line 270
    const-string v0, "precision mediump float;\nuniform mat4 u_MVPMatrix;       // A constant representing the combined model/view/projection matrix.\nuniform mat4 u_MVMatrix;        // A constant representing the combined model/view matrix.\nattribute vec4 a_Position;      // Per-vertex position information we will pass in.\nattribute vec2 a_TexCoordinate; // Per-vertex texture coordinate information we will pass in.\nvarying vec2 v_TexCoordinate;   // This will be passed into the fragment shader.\nvoid main()\n{\n    v_TexCoordinate = a_TexCoordinate;\n    gl_Position = u_MVPMatrix * a_Position;\n}\n"

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mVertexShaderSource:Ljava/lang/String;

    .line 277
    const-string v0, "precision mediump float;\nuniform sampler2D u_Texture;\nvarying vec2 v_TexCoordinate;\nuniform float u_Time;\nuniform float u_Amp;\nvoid main()\n{\n    if(v_TexCoordinate.y < 0.5){\n        gl_FragColor = (texture2D(u_Texture, v_TexCoordinate));\n    }else{\n        float alpha = -0.4 / 0.75 * v_TexCoordinate.y * v_TexCoordinate.y + 0.6 + 0.4 / 0.75;\n        float dy = v_TexCoordinate.y;\n        float period = 10000.0;\n        float waveFreq = 20.0;\n        float tx = v_TexCoordinate.x + sin((dy + u_Time * 0.5 / period) * (2.0 * 3.14 * waveFreq)) * (dy - 0.5) * 0.02 * u_Amp;\n        float ty = v_TexCoordinate.y;\n        vec4 color = texture2D(u_Texture, vec2(tx, ty));\n        gl_FragColor = vec4(1.0, 1.0, 1.0, alpha) * color;\n    }\n}\n"

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mWaterFragmentShaderSource:Ljava/lang/String;

    .line 297
    const-string v0, "precision mediump float;\nuniform mat4 u_MVPMatrix;       // A constant representing the combined model/view/projection matrix.\nuniform mat4 u_MVMatrix;        // A constant representing the combined model/view matrix.\nattribute vec4 a_Position;      // Per-vertex position information we will pass in.\nattribute vec2 a_TexCoordinate; // Per-vertex texture coordinate information we will pass in.\nvarying vec2 v_TexCoordinate;   // This will be passed into the fragment shader.\nvoid main()\n{\n    v_TexCoordinate = a_TexCoordinate;\n    gl_Position = u_MVPMatrix * a_Position;\n}\n"

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mWaterVertexShaderSource:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->initCoordinatesData()V

    .line 52
    return-void
.end method

.method private activeBindTexture(I)V
    .locals 2
    .parameter "index"

    .prologue
    const/16 v1, 0xde1

    .line 201
    packed-switch p1, :pswitch_data_0

    .line 245
    :goto_0
    return-void

    .line 203
    :pswitch_0
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 204
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle0:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 205
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureUniformHandle:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    .line 208
    :pswitch_1
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 209
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle1:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 210
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureUniformHandle:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    .line 213
    :pswitch_2
    const v0, 0x84c2

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 214
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle2:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 215
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureUniformHandle:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    .line 218
    :pswitch_3
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 219
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle3:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 220
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureUniformHandle:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    .line 223
    :pswitch_4
    const v0, 0x84c4

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 224
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle4:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 225
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureUniformHandle:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    .line 228
    :pswitch_5
    const v0, 0x84c5

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 229
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle5:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 230
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureUniformHandle:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    .line 233
    :pswitch_6
    const v0, 0x84c6

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 234
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle6:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 235
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureUniformHandle:I

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    .line 238
    :pswitch_7
    const v0, 0x84c7

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 239
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle7:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 240
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureUniformHandle:I

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto/16 :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private drawObject()V
    .locals 9

    .prologue
    const/16 v2, 0x1406

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 251
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mObjectPositions:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 252
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mPositionHandle:I

    const/4 v1, 0x3

    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mObjectPositions:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 253
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 254
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mObjectTextureCoordinates:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 255
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureCoordinateHandle:I

    const/4 v1, 0x2

    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mObjectTextureCoordinates:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 256
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureCoordinateHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 260
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mMVPMatrix:[F

    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mViewMatrix:[F

    iget-object v6, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    move v5, v3

    move v7, v3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 261
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mMVMatrixHandle:I

    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mMVPMatrix:[F

    invoke-static {v0, v8, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 262
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mMVPMatrix:[F

    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mProjectionMatrix:[F

    iget-object v6, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mMVPMatrix:[F

    move v5, v3

    move v7, v3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 263
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mMVPMatrixHandle:I

    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mMVPMatrix:[F

    invoke-static {v0, v8, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 264
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 265
    return-void
.end method

.method private initShader()V
    .locals 5

    .prologue
    .line 306
    const v2, 0x8b31

    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mVertexShaderSource:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/water/utils/ShaderHelper;->compileShader(ILjava/lang/String;)I

    move-result v1

    .line 307
    .local v1, vertexShaderHandle:I
    const v2, 0x8b30

    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mFragmentShaderSource:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/water/utils/ShaderHelper;->compileShader(ILjava/lang/String;)I

    move-result v0

    .line 308
    .local v0, fragmentShaderHandle:I
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "a_Position"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "a_TexCoordinate"

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/baidu/internal/keyguard/water/utils/ShaderHelper;->createAndLinkProgram(II[Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mProgram:I

    .line 311
    return-void
.end method

.method private initWaterShader()V
    .locals 5

    .prologue
    .line 314
    const v2, 0x8b31

    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mWaterVertexShaderSource:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/water/utils/ShaderHelper;->compileShader(ILjava/lang/String;)I

    move-result v1

    .line 315
    .local v1, vertexShaderHandle:I
    const v2, 0x8b30

    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mWaterFragmentShaderSource:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/water/utils/ShaderHelper;->compileShader(ILjava/lang/String;)I

    move-result v0

    .line 316
    .local v0, fragmentShaderHandle:I
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "a_Position"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "a_TexCoordinate"

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/baidu/internal/keyguard/water/utils/ShaderHelper;->createAndLinkProgram(II[Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mWaterProgram:I

    .line 319
    return-void
.end method

.method private switchToStaticProgram()V
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 73
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mProgram:I

    const-string v1, "u_MVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mMVPMatrixHandle:I

    .line 74
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mProgram:I

    const-string v1, "u_MVMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mMVMatrixHandle:I

    .line 75
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mProgram:I

    const-string v1, "u_Texture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureUniformHandle:I

    .line 77
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mProgram:I

    const-string v1, "a_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mPositionHandle:I

    .line 78
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mProgram:I

    const-string v1, "a_TexCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureCoordinateHandle:I

    .line 79
    return-void
.end method

.method private switchToWaterProgram(F)V
    .locals 3
    .parameter "time"

    .prologue
    .line 82
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mWaterProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 83
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mWaterProgram:I

    const-string v1, "u_MVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mMVPMatrixHandle:I

    .line 84
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mWaterProgram:I

    const-string v1, "u_MVMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mMVMatrixHandle:I

    .line 85
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mWaterProgram:I

    const-string v1, "u_Texture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureUniformHandle:I

    .line 86
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mWaterProgram:I

    const-string v1, "u_Time"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTimeUniformHandle:I

    .line 87
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mWaterProgram:I

    const-string v1, "u_Amp"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mAmpUniformHandle:I

    .line 89
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mWaterProgram:I

    const-string v1, "a_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mPositionHandle:I

    .line 90
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mWaterProgram:I

    const-string v1, "a_TexCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureCoordinateHandle:I

    .line 92
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTimeUniformHandle:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 93
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mAmpUniformHandle:I

    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mPast:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 94
    return-void
.end method


# virtual methods
.method protected initCoordinatesData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 55
    const/16 v2, 0x12

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    .line 58
    .local v0, objectPositionData:[F
    const/16 v2, 0xc

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    .line 63
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

    iput-object v2, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mObjectPositions:Ljava/nio/FloatBuffer;

    .line 64
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mObjectPositions:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 65
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

    iput-object v2, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mObjectTextureCoordinates:Ljava/nio/FloatBuffer;

    .line 67
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mObjectTextureCoordinates:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 68
    return-void

    .line 55
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

    .line 58
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
    const v14, 0x3c449ba6

    const v13, -0x41666666

    const/4 v12, -0x1

    const/high16 v11, 0x3f80

    const/4 v10, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->initGL()V

    .line 99
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->initShader()V

    .line 100
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->checkGlError()V

    .line 101
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->initWaterShader()V

    .line 102
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->checkGlError()V

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v2, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v5, #drawable@baidu_keyguard_water_shake_layer0#t

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    const v5, #drawable@baidu_keyguard_water_shake_layer1#t

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    const v5, #drawable@baidu_keyguard_water_shake_layer2#t

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    const v5, #drawable@baidu_keyguard_water_shake_layer3#t

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    const v5, #drawable@baidu_keyguard_water_shake_layer4#t

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    const v5, #drawable@baidu_keyguard_water_shake_layer5#t

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    const v5, #drawable@baidu_keyguard_water_shake_layer6#t

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    const v5, #drawable@baidu_keyguard_water_shake_layer7#t

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureHelper:Lcom/baidu/internal/keyguard/water/utils/TextureHelper;

    iget-object v6, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v2}, Lcom/baidu/internal/keyguard/water/utils/TextureHelper;->decodeResource(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 113
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mContinuouslyDraw:Z

    .line 114
    const/4 v5, 0x0

    iput v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mPast:F

    .line 115
    :goto_0
    iget-boolean v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mRun:Z

    if-eqz v5, :cond_a

    .line 116
    iget-boolean v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mContinuouslyDraw:Z

    if-eqz v5, :cond_9

    .line 117
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->checkCurrent()V

    .line 118
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mFpsCounter:Lcom/baidu/internal/keyguard/water/utils/FpsCounter;

    invoke-virtual {v5}, Lcom/baidu/internal/keyguard/water/utils/FpsCounter;->calculateFps()V

    .line 119
    const/16 v5, 0x4100

    invoke-static {v5}, Landroid/opengl/GLES20;->glClear(I)V

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x4e20

    rem-long v3, v5, v7

    .line 121
    .local v3, time:J
    const v5, 0x3c9374bc

    long-to-int v6, v3

    int-to-float v6, v6

    mul-float v0, v5, v6

    .line 125
    .local v0, angleInDegrees:F
    long-to-float v5, v3

    invoke-direct {p0, v5}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->switchToWaterProgram(F)V

    .line 126
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->checkGlError()V

    .line 127
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureHelper:Lcom/baidu/internal/keyguard/water/utils/TextureHelper;

    invoke-virtual {v5, v10}, Lcom/baidu/internal/keyguard/water/utils/TextureHelper;->loadTexture(I)I

    move-result v5

    iput v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle0:I

    if-eq v5, v12, :cond_0

    .line 128
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    invoke-static {v5, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 129
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const/4 v6, 0x0

    const v7, 0x3d1ba5e3

    iget v8, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorX:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    const v7, 0x3f19999a

    const v8, 0x3c75c28f

    iget v9, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorY:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/high16 v8, -0x4000

    invoke-static {v5, v10, v6, v7, v8}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 130
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const/high16 v6, 0x3fc0

    const v7, 0x3ecccccd

    invoke-static {v5, v10, v6, v7, v11}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 131
    invoke-direct {p0, v10}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->activeBindTexture(I)V

    .line 132
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->drawObject()V

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->checkGlError()V

    .line 135
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureHelper:Lcom/baidu/internal/keyguard/water/utils/TextureHelper;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/baidu/internal/keyguard/water/utils/TextureHelper;->loadTexture(I)I

    move-result v5

    iput v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle1:I

    if-eq v5, v12, :cond_1

    .line 136
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    invoke-static {v5, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 137
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const v6, 0x3cf5c28f

    iget v7, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorX:F

    mul-float/2addr v6, v7

    sub-float v6, v13, v6

    const v7, 0x3ef5c28f

    iget v8, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorY:F

    mul-float/2addr v8, v14

    add-float/2addr v7, v8

    const v8, -0x400147ae

    invoke-static {v5, v10, v6, v7, v8}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 138
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const v6, 0x3f99999a

    const v7, 0x3ecccccd

    invoke-static {v5, v10, v6, v7, v11}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 139
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->activeBindTexture(I)V

    .line 140
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->drawObject()V

    .line 142
    :cond_1
    long-to-float v5, v3

    invoke-direct {p0, v5}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->switchToWaterProgram(F)V

    .line 143
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureHelper:Lcom/baidu/internal/keyguard/water/utils/TextureHelper;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/baidu/internal/keyguard/water/utils/TextureHelper;->loadTexture(I)I

    move-result v5

    iput v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle2:I

    if-eq v5, v12, :cond_2

    .line 144
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    invoke-static {v5, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 145
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const v6, -0x40b33333

    const v7, 0x3ccccccd

    iget v8, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorX:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    const v7, 0x3dcccccd

    const v8, 0x3c23d70a

    iget v9, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorY:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const v8, -0x40028f5c

    invoke-static {v5, v10, v6, v7, v8}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 146
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const v6, 0x3f4ccccd

    invoke-static {v5, v10, v11, v6, v11}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 147
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->activeBindTexture(I)V

    .line 148
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->drawObject()V

    .line 150
    :cond_2
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureHelper:Lcom/baidu/internal/keyguard/water/utils/TextureHelper;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/baidu/internal/keyguard/water/utils/TextureHelper;->loadTexture(I)I

    move-result v5

    iput v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle3:I

    if-eq v5, v12, :cond_3

    .line 151
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    invoke-static {v5, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 152
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const v6, 0x3ecccccd

    const v7, 0x3ca3d70a

    iget v8, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorX:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    const v7, -0x42333333

    const v8, 0x3bc49ba6

    iget v9, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorY:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const v8, -0x4003d70a

    invoke-static {v5, v10, v6, v7, v8}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 153
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const v6, 0x3f99999a

    invoke-static {v5, v10, v6, v11, v11}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 154
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->activeBindTexture(I)V

    .line 155
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->drawObject()V

    .line 157
    :cond_3
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->switchToStaticProgram()V

    .line 158
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureHelper:Lcom/baidu/internal/keyguard/water/utils/TextureHelper;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/baidu/internal/keyguard/water/utils/TextureHelper;->loadTexture(I)I

    move-result v5

    iput v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle4:I

    if-eq v5, v12, :cond_4

    .line 159
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    invoke-static {v5, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 160
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const v6, 0x3ca3d70a

    iget v7, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorX:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v13

    const v7, -0x40266666

    const v8, 0x3bc49ba6

    iget v9, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorY:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const v8, -0x40051eb8

    invoke-static {v5, v10, v6, v7, v8}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 161
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const/high16 v6, 0x3f00

    invoke-static {v5, v10, v11, v6, v11}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 162
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->activeBindTexture(I)V

    .line 163
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->drawObject()V

    .line 165
    :cond_4
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureHelper:Lcom/baidu/internal/keyguard/water/utils/TextureHelper;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/baidu/internal/keyguard/water/utils/TextureHelper;->loadTexture(I)I

    move-result v5

    iput v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle5:I

    if-eq v5, v12, :cond_5

    .line 166
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    invoke-static {v5, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 167
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const v6, 0x3ccccccd

    iget v7, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorX:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v13

    const v7, -0x4059999a

    const v8, 0x3c23d70a

    iget v9, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorY:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const v8, -0x40066666

    invoke-static {v5, v10, v6, v7, v8}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 168
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    invoke-static {v5, v10, v11, v11, v11}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 169
    const/4 v5, 0x5

    invoke-direct {p0, v5}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->activeBindTexture(I)V

    .line 170
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->drawObject()V

    .line 172
    :cond_5
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureHelper:Lcom/baidu/internal/keyguard/water/utils/TextureHelper;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/baidu/internal/keyguard/water/utils/TextureHelper;->loadTexture(I)I

    move-result v5

    iput v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle6:I

    if-eq v5, v12, :cond_6

    .line 173
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    invoke-static {v5, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 174
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const v6, 0x3f8ccccd

    const v7, 0x3cf5c28f

    iget v8, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorX:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorY:F

    mul-float/2addr v7, v14

    sub-float v7, v13, v7

    const v8, -0x4007ae14

    invoke-static {v5, v10, v6, v7, v8}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 175
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const v6, 0x3f19999a

    invoke-static {v5, v10, v6, v11, v11}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 176
    const/4 v5, 0x6

    invoke-direct {p0, v5}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->activeBindTexture(I)V

    .line 177
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->drawObject()V

    .line 179
    :cond_6
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureHelper:Lcom/baidu/internal/keyguard/water/utils/TextureHelper;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/baidu/internal/keyguard/water/utils/TextureHelper;->loadTexture(I)I

    move-result v5

    iput v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle7:I

    if-eq v5, v12, :cond_7

    .line 180
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    invoke-static {v5, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 181
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const v6, -0x41333333

    const v7, 0x3d1ba5e3

    iget v8, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorX:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    const v7, -0x404ccccd

    iget v8, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorY:F

    mul-float/2addr v8, v14

    sub-float/2addr v7, v8

    const v8, -0x4008f5c3

    invoke-static {v5, v10, v6, v7, v8}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 182
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const v6, 0x3f666666

    const v7, 0x3f666666

    invoke-static {v5, v10, v6, v7, v11}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 183
    const/4 v5, 0x7

    invoke-direct {p0, v5}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->activeBindTexture(I)V

    .line 184
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->drawObject()V

    .line 186
    :cond_7
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 187
    const-string v5, "AppRenderThread"

    const-string v6, "cannot swap buffers!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_8
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->checkEglError()V

    .line 192
    .end local v0           #angleInDegrees:F
    .end local v3           #time:J
    :cond_9
    const-wide/16 v5, 0x1e

    :try_start_0
    invoke-static {v5, v6}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 197
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_a
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->deinitGL()V

    .line 198
    return-void
.end method

.method public setPast(F)V
    .locals 0
    .parameter "past"

    .prologue
    .line 332
    iput p1, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mPast:F

    .line 333
    return-void
.end method

.method public setSensorValue(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 322
    iput p1, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorX:F

    .line 323
    iput p2, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorY:F

    .line 324
    return-void
.end method

.method public stopRedraw()V
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mContinuouslyDraw:Z

    .line 328
    return-void
.end method
