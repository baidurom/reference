.class public Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;
.super Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;
.source "AppRenderThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppRenderThread"


# instance fields
.field private mAlphaUniformHandle:I

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

.field private mStartTime:J

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
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;-><init>(Landroid/content/Context;Landroid/graphics/SurfaceTexture;II)V

    .line 31
    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mBytesPerFloat:I

    .line 32
    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mPositionDataSize:I

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureCoordinateDataSize:I

    .line 36
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSleep:J

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mContinuouslyDraw:Z

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mPast:F

    .line 40
    new-instance v0, Lcom/baidu/internal/keyguard/water/utils/TextureHelper;

    invoke-direct {v0}, Lcom/baidu/internal/keyguard/water/utils/TextureHelper;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureHelper:Lcom/baidu/internal/keyguard/water/utils/TextureHelper;

    .line 276
    const-string v0, "precision mediump float;\nuniform sampler2D u_Texture;    // The input texture.\nuniform float u_Alpha;    // The input alpha.\nvarying vec2 v_TexCoordinate;   // Interpolated texture coordinate per fragment.\nvoid main()\n{\n    gl_FragColor = (texture2D(u_Texture, v_TexCoordinate) * vec4(1.0, 1.0, 1.0, u_Alpha));\n}\n"

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mFragmentShaderSource:Ljava/lang/String;

    .line 280
    const-string v0, "precision mediump float;\nuniform mat4 u_MVPMatrix;       // A constant representing the combined model/view/projection matrix.\nuniform mat4 u_MVMatrix;        // A constant representing the combined model/view matrix.\nattribute vec4 a_Position;      // Per-vertex position information we will pass in.\nattribute vec2 a_TexCoordinate; // Per-vertex texture coordinate information we will pass in.\nvarying vec2 v_TexCoordinate;   // This will be passed into the fragment shader.\nvoid main()\n{\n    v_TexCoordinate = a_TexCoordinate;\n    gl_Position = u_MVPMatrix * a_Position;\n}\n"

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mVertexShaderSource:Ljava/lang/String;

    .line 287
    const-string v0, "precision mediump float;\nuniform sampler2D u_Texture;\nvarying vec2 v_TexCoordinate;\nuniform float u_Time;\nuniform float u_Amp;\nuniform float u_Alpha;\nvoid main()\n{\n    if(v_TexCoordinate.y < 0.5){\n        gl_FragColor = (texture2D(u_Texture, v_TexCoordinate) * vec4(1.0, 1.0, 1.0, u_Alpha));\n    }else{\n        float alpha = -0.4 / 0.75 * v_TexCoordinate.y * v_TexCoordinate.y + 0.6 + 0.4 / 0.75;\n        float dy = v_TexCoordinate.y;\n        float period = 10000.0;\n        float waveFreq = 20.0;\n        float tx = v_TexCoordinate.x + sin((dy + u_Time * 0.5 / period) * (2.0 * 3.14 * waveFreq)) * (dy - 0.5) * 0.02 * u_Amp;\n        float ty = v_TexCoordinate.y;\n        vec4 color = texture2D(u_Texture, vec2(tx, ty));\n        gl_FragColor = vec4(1.0, 1.0, 1.0, alpha) * color * vec4(1.0, 1.0, 1.0, u_Alpha);\n    }\n}\n"

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mWaterFragmentShaderSource:Ljava/lang/String;

    .line 308
    const-string v0, "precision mediump float;\nuniform mat4 u_MVPMatrix;       // A constant representing the combined model/view/projection matrix.\nuniform mat4 u_MVMatrix;        // A constant representing the combined model/view matrix.\nattribute vec4 a_Position;      // Per-vertex position information we will pass in.\nattribute vec2 a_TexCoordinate; // Per-vertex texture coordinate information we will pass in.\nvarying vec2 v_TexCoordinate;   // This will be passed into the fragment shader.\nvoid main()\n{\n    v_TexCoordinate = a_TexCoordinate;\n    gl_Position = u_MVPMatrix * a_Position;\n}\n"

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mWaterVertexShaderSource:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->initCoordinatesData()V

    .line 54
    return-void
.end method

.method private activeBindTexture(I)V
    .locals 2
    .parameter "index"

    .prologue
    const/16 v1, 0xde1

    .line 210
    packed-switch p1, :pswitch_data_0

    .line 254
    :goto_0
    return-void

    .line 212
    :pswitch_0
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 213
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle0:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 214
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureUniformHandle:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    .line 217
    :pswitch_1
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 218
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle1:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 219
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureUniformHandle:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    .line 222
    :pswitch_2
    const v0, 0x84c2

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 223
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle2:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 224
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureUniformHandle:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    .line 227
    :pswitch_3
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 228
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle3:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 229
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureUniformHandle:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    .line 232
    :pswitch_4
    const v0, 0x84c4

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 233
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle4:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 234
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureUniformHandle:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    .line 237
    :pswitch_5
    const v0, 0x84c5

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 238
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle5:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 239
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureUniformHandle:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    .line 242
    :pswitch_6
    const v0, 0x84c6

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 243
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle6:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 244
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureUniformHandle:I

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    .line 247
    :pswitch_7
    const v0, 0x84c7

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 248
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle7:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 249
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureUniformHandle:I

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto/16 :goto_0

    .line 210
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

    .line 260
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mObjectPositions:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 261
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mPositionHandle:I

    const/4 v1, 0x3

    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mObjectPositions:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 262
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 263
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mObjectTextureCoordinates:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 264
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureCoordinateHandle:I

    const/4 v1, 0x2

    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mObjectTextureCoordinates:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 265
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureCoordinateHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 269
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mMVPMatrix:[F

    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mViewMatrix:[F

    iget-object v6, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    move v5, v3

    move v7, v3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 270
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mMVMatrixHandle:I

    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mMVPMatrix:[F

    invoke-static {v0, v8, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 271
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mMVPMatrix:[F

    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mProjectionMatrix:[F

    iget-object v6, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mMVPMatrix:[F

    move v5, v3

    move v7, v3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 272
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mMVPMatrixHandle:I

    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mMVPMatrix:[F

    invoke-static {v0, v8, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 273
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 274
    return-void
.end method

.method private initShader()V
    .locals 5

    .prologue
    .line 317
    const v2, 0x8b31

    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mVertexShaderSource:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/water/utils/ShaderHelper;->compileShader(ILjava/lang/String;)I

    move-result v1

    .line 318
    .local v1, vertexShaderHandle:I
    const v2, 0x8b30

    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mFragmentShaderSource:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/water/utils/ShaderHelper;->compileShader(ILjava/lang/String;)I

    move-result v0

    .line 319
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

    .line 322
    return-void
.end method

.method private initWaterShader()V
    .locals 5

    .prologue
    .line 325
    const v2, 0x8b31

    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mWaterVertexShaderSource:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/water/utils/ShaderHelper;->compileShader(ILjava/lang/String;)I

    move-result v1

    .line 326
    .local v1, vertexShaderHandle:I
    const v2, 0x8b30

    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mWaterFragmentShaderSource:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/water/utils/ShaderHelper;->compileShader(ILjava/lang/String;)I

    move-result v0

    .line 327
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

    .line 330
    return-void
.end method

.method private switchToStaticProgram(F)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 73
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 75
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mProgram:I

    const-string v1, "u_MVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mMVPMatrixHandle:I

    .line 76
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mProgram:I

    const-string v1, "u_MVMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mMVMatrixHandle:I

    .line 77
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mProgram:I

    const-string v1, "u_Texture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureUniformHandle:I

    .line 78
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mWaterProgram:I

    const-string v1, "u_Alpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mAlphaUniformHandle:I

    .line 80
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mProgram:I

    const-string v1, "a_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mPositionHandle:I

    .line 81
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mProgram:I

    const-string v1, "a_TexCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureCoordinateHandle:I

    .line 82
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mAlphaUniformHandle:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 83
    return-void
.end method

.method private switchToWaterProgram(FF)V
    .locals 3
    .parameter "time"
    .parameter "alpha"

    .prologue
    .line 86
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mWaterProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 87
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mWaterProgram:I

    const-string v1, "u_MVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mMVPMatrixHandle:I

    .line 88
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mWaterProgram:I

    const-string v1, "u_MVMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mMVMatrixHandle:I

    .line 89
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mWaterProgram:I

    const-string v1, "u_Texture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureUniformHandle:I

    .line 90
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mWaterProgram:I

    const-string v1, "u_Time"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTimeUniformHandle:I

    .line 91
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mWaterProgram:I

    const-string v1, "u_Amp"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mAmpUniformHandle:I

    .line 92
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mWaterProgram:I

    const-string v1, "u_Alpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mAlphaUniformHandle:I

    .line 94
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mWaterProgram:I

    const-string v1, "a_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mPositionHandle:I

    .line 95
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mWaterProgram:I

    const-string v1, "a_TexCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureCoordinateHandle:I

    .line 97
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTimeUniformHandle:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 98
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mAmpUniformHandle:I

    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mPast:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 99
    iget v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mAlphaUniformHandle:I

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 100
    return-void
.end method


# virtual methods
.method protected initCoordinatesData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 57
    const/16 v2, 0x12

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    .line 60
    .local v0, objectPositionData:[F
    const/16 v2, 0xc

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    .line 65
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

    .line 66
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mObjectPositions:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 67
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

    .line 69
    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mObjectTextureCoordinates:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 70
    return-void

    .line 57
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

    .line 60
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
    .locals 11

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->initGL()V

    .line 105
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->initShader()V

    .line 106
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->checkGlError()V

    .line 107
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->initWaterShader()V

    .line 108
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->checkGlError()V

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v2, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v5, #drawable@baidu_keyguard_water_shake_layer0#t

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    const v5, #drawable@baidu_keyguard_water_shake_layer1#t

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    const v5, #drawable@baidu_keyguard_water_shake_layer2#t

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    const v5, #drawable@baidu_keyguard_water_shake_layer3#t

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    const v5, #drawable@baidu_keyguard_water_shake_layer4#t

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    const v5, #drawable@baidu_keyguard_water_shake_layer5#t

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    const v5, #drawable@baidu_keyguard_water_shake_layer6#t

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    const v5, #drawable@baidu_keyguard_water_shake_layer7#t

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureHelper:Lcom/baidu/internal/keyguard/water/utils/TextureHelper;

    iget-object v6, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v2}, Lcom/baidu/internal/keyguard/water/utils/TextureHelper;->decodeResource(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 119
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mContinuouslyDraw:Z

    .line 120
    const/4 v5, 0x0

    iput v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mPast:F

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mStartTime:J

    .line 122
    :goto_0
    iget-boolean v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mRun:Z

    if-eqz v5, :cond_b

    .line 123
    iget-boolean v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mContinuouslyDraw:Z

    if-eqz v5, :cond_9

    .line 124
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->checkCurrent()V

    .line 125
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mFpsCounter:Lcom/baidu/internal/keyguard/water/utils/FpsCounter;

    invoke-virtual {v5}, Lcom/baidu/internal/keyguard/water/utils/FpsCounter;->calculateFps()V

    .line 126
    const/16 v5, 0x4100

    invoke-static {v5}, Landroid/opengl/GLES20;->glClear(I)V

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x4e20

    rem-long v3, v5, v7

    .line 128
    .local v3, time:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mStartTime:J

    const-wide/16 v9, 0x7d0

    add-long/2addr v7, v9

    cmp-long v5, v5, v7

    if-lez v5, :cond_a

    const/high16 v0, 0x3f80

    .line 132
    .local v0, alpha:F
    :goto_1
    const/high16 v5, 0x3f80

    invoke-direct {p0, v5}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->switchToStaticProgram(F)V

    .line 133
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->checkGlError()V

    .line 134
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureHelper:Lcom/baidu/internal/keyguard/water/utils/TextureHelper;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/baidu/internal/keyguard/water/utils/TextureHelper;->loadTexture(I)I

    move-result v5

    iput v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle0:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->checkGlError()V

    .line 144
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureHelper:Lcom/baidu/internal/keyguard/water/utils/TextureHelper;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/baidu/internal/keyguard/water/utils/TextureHelper;->loadTexture(I)I

    move-result v5

    iput v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle1:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 145
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 146
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x3d5d2f1b

    iget v9, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorX:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const v8, 0x3ef5c28f

    const v9, 0x3d1374bc

    iget v10, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorY:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    const v9, -0x400147ae

    invoke-static {v5, v6, v7, v8, v9}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 147
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const/4 v6, 0x0

    const v7, 0x3fcccccd

    const v8, 0x3ecccccd

    const/high16 v9, 0x3f80

    invoke-static {v5, v6, v7, v8, v9}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 148
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->activeBindTexture(I)V

    .line 149
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->drawObject()V

    .line 151
    :cond_1
    long-to-float v5, v3

    invoke-direct {p0, v5, v0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->switchToWaterProgram(FF)V

    .line 152
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureHelper:Lcom/baidu/internal/keyguard/water/utils/TextureHelper;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/baidu/internal/keyguard/water/utils/TextureHelper;->loadTexture(I)I

    move-result v5

    iput v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle2:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 153
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 154
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const/4 v6, 0x0

    const v7, -0x40b33333

    const v8, 0x3d1374bc

    iget v9, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorX:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const v8, 0x3dcccccd

    const v9, 0x3cc49ba6

    iget v10, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorY:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    const v9, -0x40028f5c

    invoke-static {v5, v6, v7, v8, v9}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 155
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    const v8, 0x3f4ccccd

    const/high16 v9, 0x3f80

    invoke-static {v5, v6, v7, v8, v9}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 156
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->activeBindTexture(I)V

    .line 157
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->drawObject()V

    .line 159
    :cond_2
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureHelper:Lcom/baidu/internal/keyguard/water/utils/TextureHelper;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/baidu/internal/keyguard/water/utils/TextureHelper;->loadTexture(I)I

    move-result v5

    iput v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle3:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 160
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 161
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const/4 v6, 0x0

    const v7, 0x3e99999a

    const v8, 0x3c9374bc

    iget v9, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorX:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/4 v8, 0x0

    const v9, 0x3c449ba6

    iget v10, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorY:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    const v9, -0x4003d70a

    invoke-static {v5, v6, v7, v8, v9}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 162
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const/4 v6, 0x0

    const v7, 0x3f99999a

    const/high16 v8, 0x3f80

    const/high16 v9, 0x3f80

    invoke-static {v5, v6, v7, v8, v9}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 163
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->activeBindTexture(I)V

    .line 164
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->drawObject()V

    .line 166
    :cond_3
    invoke-direct {p0, v0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->switchToStaticProgram(F)V

    .line 167
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureHelper:Lcom/baidu/internal/keyguard/water/utils/TextureHelper;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/baidu/internal/keyguard/water/utils/TextureHelper;->loadTexture(I)I

    move-result v5

    iput v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle4:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 168
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 169
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x3c9374bc

    iget v9, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorX:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const v8, -0x40266666

    const v9, 0x3c449ba6

    iget v10, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorY:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    const v9, -0x40051eb8

    invoke-static {v5, v6, v7, v8, v9}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 170
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f00

    const/high16 v9, 0x3f80

    invoke-static {v5, v6, v7, v8, v9}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 171
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->activeBindTexture(I)V

    .line 172
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->drawObject()V

    .line 174
    :cond_4
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureHelper:Lcom/baidu/internal/keyguard/water/utils/TextureHelper;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/baidu/internal/keyguard/water/utils/TextureHelper;->loadTexture(I)I

    move-result v5

    iput v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle5:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    .line 175
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 176
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const/4 v6, 0x0

    const v7, -0x41666666

    const v8, 0x3d1374bc

    iget v9, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorX:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, -0x4080

    const v9, 0x3cc49ba6

    iget v10, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorY:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    const v9, -0x40066666

    invoke-static {v5, v6, v7, v8, v9}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 177
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f80

    const/high16 v9, 0x3f80

    invoke-static {v5, v6, v7, v8, v9}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 178
    const/4 v5, 0x5

    invoke-direct {p0, v5}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->activeBindTexture(I)V

    .line 179
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->drawObject()V

    .line 181
    :cond_5
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureHelper:Lcom/baidu/internal/keyguard/water/utils/TextureHelper;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/baidu/internal/keyguard/water/utils/TextureHelper;->loadTexture(I)I

    move-result v5

    iput v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle6:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    .line 182
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 183
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    const v8, 0x3d83126f

    iget v9, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorX:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const v8, -0x41666666

    const v9, 0x3d1374bc

    iget v10, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorY:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    const v9, -0x4007ae14

    invoke-static {v5, v6, v7, v8, v9}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 184
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const/4 v6, 0x0

    const v7, 0x3f19999a

    const/high16 v8, 0x3f80

    const/high16 v9, 0x3f80

    invoke-static {v5, v6, v7, v8, v9}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 185
    const/4 v5, 0x6

    invoke-direct {p0, v5}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->activeBindTexture(I)V

    .line 186
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->drawObject()V

    .line 188
    :cond_6
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureHelper:Lcom/baidu/internal/keyguard/water/utils/TextureHelper;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/baidu/internal/keyguard/water/utils/TextureHelper;->loadTexture(I)I

    move-result v5

    iput v5, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mTextureDataHandle7:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_7

    .line 189
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 190
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const/4 v6, 0x0

    const v7, -0x40e66666

    const v8, 0x3d9374bc

    iget v9, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorX:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const v8, -0x4059999a

    const v9, 0x3d449ba6

    iget v10, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorY:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    const v9, -0x4008f5c3

    invoke-static {v5, v6, v7, v8, v9}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 191
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mModelMatrix:[F

    const/4 v6, 0x0

    const v7, 0x3f4ccccd

    const v8, 0x3f4ccccd

    const/high16 v9, 0x3f80

    invoke-static {v5, v6, v7, v8, v9}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 192
    const/4 v5, 0x7

    invoke-direct {p0, v5}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->activeBindTexture(I)V

    .line 193
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->drawObject()V

    .line 195
    :cond_7
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, p0, Lcom/baidu/internal/keyguard/water/textureview/TemplateRenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 196
    const-string v5, "AppRenderThread"

    const-string v6, "cannot swap buffers!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_8
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->checkEglError()V

    .line 201
    .end local v0           #alpha:F
    .end local v3           #time:J
    :cond_9
    const-wide/16 v5, 0x1e

    :try_start_0
    invoke-static {v5, v6}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 128
    .end local v1           #e:Ljava/lang/InterruptedException;
    .restart local v3       #time:J
    :cond_a
    const/high16 v5, 0x3f80

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mStartTime:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    mul-float/2addr v5, v6

    const/high16 v6, 0x44fa

    div-float v0, v5, v6

    goto/16 :goto_1

    .line 206
    .end local v3           #time:J
    :cond_b
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->deinitGL()V

    .line 207
    return-void
.end method

.method public setPast(F)V
    .locals 0
    .parameter "past"

    .prologue
    .line 355
    iput p1, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mPast:F

    .line 356
    return-void
.end method

.method public setSensorValue(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v3, 0x40e0

    const/high16 v2, 0x4040

    const/high16 v1, -0x3fc0

    .line 333
    cmpl-float v0, p1, v2

    if-lez v0, :cond_0

    .line 334
    iput v2, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorX:F

    .line 340
    :goto_0
    cmpl-float v0, p2, v3

    if-lez v0, :cond_2

    .line 341
    iput v3, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorY:F

    .line 347
    :goto_1
    return-void

    .line 335
    :cond_0
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    .line 336
    iput v1, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorX:F

    goto :goto_0

    .line 338
    :cond_1
    iput p1, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorX:F

    goto :goto_0

    .line 342
    :cond_2
    cmpg-float v0, p2, v1

    if-gez v0, :cond_3

    .line 343
    iput v1, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorY:F

    goto :goto_1

    .line 345
    :cond_3
    iput p2, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mSensorY:F

    goto :goto_1
.end method

.method public stopRedraw()V
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/water/textureview/AppRenderThread;->mContinuouslyDraw:Z

    .line 351
    return-void
.end method
