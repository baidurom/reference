.class public Lcom/baidu/internal/keyguard/slide/SpectrumView;
.super Landroid/widget/ImageView;
.source "SpectrumView.java"

# interfaces
.implements Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;,
        Lcom/baidu/internal/keyguard/slide/SpectrumView$WaveThread;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_ROTATE_ANGLE:I = 0x1

.field private static final MSG_UPDATE_WAVE:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field endColor:I

.field lastAngle:F

.field lastX:F

.field mDensity:F

.field mEnergy:F

.field mFftData:[B

.field mHandler:Landroid/os/Handler;

.field mHeight:I

.field mLg:Landroid/graphics/LinearGradient;

.field mPaint:Landroid/graphics/Paint;

.field mPath:Landroid/graphics/Path;

.field mShaderData:[F

.field protected mVisualizer:Landroid/media/audiofx/Visualizer;

.field mWidth:I

.field maxRatateAngle:D

.field newAngle:F

.field rotateAnim:Landroid/view/animation/RotateAnimation;

.field sineWaveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;",
            ">;"
        }
    .end annotation
.end field

.field startColor:I

.field t_waveThread:Lcom/baidu/internal/keyguard/slide/SpectrumView$WaveThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "SpectrumView"

    sput-object v0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xff

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mEnergy:F

    .line 32
    const/16 v0, 0x7f

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->startColor:I

    .line 33
    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->endColor:I

    .line 35
    iput v2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mWidth:I

    .line 36
    iput v2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mHeight:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->maxRatateAngle:D

    .line 88
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SpectrumView$1;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/SpectrumView$1;-><init>(Lcom/baidu/internal/keyguard/slide/SpectrumView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mHandler:Landroid/os/Handler;

    .line 53
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SpectrumView;->init(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xff

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mEnergy:F

    .line 32
    const/16 v0, 0x7f

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->startColor:I

    .line 33
    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->endColor:I

    .line 35
    iput v2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mWidth:I

    .line 36
    iput v2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mHeight:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->maxRatateAngle:D

    .line 88
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SpectrumView$1;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/SpectrumView$1;-><init>(Lcom/baidu/internal/keyguard/slide/SpectrumView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mHandler:Landroid/os/Handler;

    .line 58
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SpectrumView;->init(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xff

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mEnergy:F

    .line 32
    const/16 v0, 0x7f

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->startColor:I

    .line 33
    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->endColor:I

    .line 35
    iput v2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mWidth:I

    .line 36
    iput v2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mHeight:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->maxRatateAngle:D

    .line 88
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SpectrumView$1;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/SpectrumView$1;-><init>(Lcom/baidu/internal/keyguard/slide/SpectrumView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mHandler:Landroid/os/Handler;

    .line 63
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SpectrumView;->init(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/internal/keyguard/slide/SpectrumView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SpectrumView;->updateData()V

    return-void
.end method

.method private drawShader(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 171
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 172
    .local v9, p:Landroid/graphics/Paint;
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mLg:Landroid/graphics/LinearGradient;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v3, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->startColor:I

    iget v6, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->endColor:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mLg:Landroid/graphics/LinearGradient;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mLg:Landroid/graphics/LinearGradient;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 176
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mLg:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 177
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 178
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mShaderData:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 179
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mWidth:I

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mShaderData:[F

    array-length v1, v1

    div-int v10, v0, v1

    .line 180
    .local v10, xStep:I
    const/4 v8, 0x1

    .local v8, i:I
    :goto_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mShaderData:[F

    array-length v0, v0

    if-ge v8, v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mPath:Landroid/graphics/Path;

    mul-int v1, v8, v10

    int-to-float v1, v1

    iget v3, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mShaderData:[F

    aget v4, v4, v8

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 180
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mWidth:I

    int-to-float v1, v1

    iget v3, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mHeight:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 184
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 185
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 186
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 187
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mPaint:Landroid/graphics/Paint;

    .line 68
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mPath:Landroid/graphics/Path;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mDensity:F

    .line 70
    return-void
.end method

.method private initWaveListData()V
    .locals 11

    .prologue
    .line 73
    sget-object v4, Lcom/baidu/internal/keyguard/slide/SpectrumView;->TAG:Ljava/lang/String;

    const-string v5, "initWaveListData()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 75
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    .line 77
    :cond_0
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 78
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;

    const/high16 v2, 0x4120

    const v3, 0x3e4ccccd

    const/high16 v4, 0x4080

    const/high16 v5, 0x3e80

    const/high16 v6, 0x3f00

    iget v7, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mDensity:F

    mul-float/2addr v6, v7

    const/4 v7, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;-><init>(Lcom/baidu/internal/keyguard/slide/SpectrumView;FFFFFI)V

    .line 79
    .local v0, sineWave1:Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;
    new-instance v1, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;

    const/high16 v3, 0x41a0

    const v4, 0x3f19999a

    const/high16 v5, 0x4040

    const/high16 v6, 0x3f00

    const v7, 0x3e99999a

    iget v8, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mDensity:F

    mul-float/2addr v7, v8

    const/4 v8, 0x4

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;-><init>(Lcom/baidu/internal/keyguard/slide/SpectrumView;FFFFFI)V

    .line 80
    .local v1, sineWave2:Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;
    new-instance v2, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;

    const/high16 v4, 0x41c8

    const v5, 0x3f4ccccd

    const/high16 v6, 0x4000

    const/high16 v7, 0x3f80

    const v8, 0x3e4ccccd

    iget v9, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mDensity:F

    mul-float/2addr v8, v9

    const/4 v9, 0x6

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;-><init>(Lcom/baidu/internal/keyguard/slide/SpectrumView;FFFFFI)V

    .line 81
    .local v2, sineWave3:Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;
    new-instance v3, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;

    const/high16 v5, 0x4170

    const v6, 0x3ecccccd

    const/high16 v7, 0x4040

    const/high16 v8, 0x3f80

    const v4, 0x3f19999a

    iget v9, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mDensity:F

    mul-float/2addr v9, v4

    const/4 v10, 0x1

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;-><init>(Lcom/baidu/internal/keyguard/slide/SpectrumView;FFFFFI)V

    .line 82
    .local v3, sineWave4:Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method private updateData()V
    .locals 3

    .prologue
    .line 257
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 258
    :cond_0
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SpectrumView;->initWaveListData()V

    .line 260
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 261
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;

    iget v2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mEnergy:F

    invoke-virtual {v1, v2}, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->updateWaveParams(F)V

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_2
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SpectrumView;->updateShaderData()V

    .line 265
    return-void
.end method

.method private updateShaderData()V
    .locals 5

    .prologue
    .line 190
    sget-object v3, Lcom/baidu/internal/keyguard/slide/SpectrumView;->TAG:Ljava/lang/String;

    const-string v4, "updateShaderData()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mWidth:I

    if-nez v3, :cond_1

    .line 207
    :cond_0
    return-void

    .line 194
    :cond_1
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mShaderData:[F

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mShaderData:[F

    array-length v3, v3

    if-nez v3, :cond_3

    .line 195
    :cond_2
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;

    iget v3, v3, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->waveLenth:I

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mShaderData:[F

    .line 198
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mShaderData:[F

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 199
    const v2, 0x7f7fffff

    .line 200
    .local v2, minData:F
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 201
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;

    iget-object v3, v3, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->waveData:[F

    aget v3, v3, v0

    cmpg-float v3, v3, v2

    if-gez v3, :cond_4

    .line 202
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;

    iget-object v3, v3, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->waveData:[F

    aget v2, v3, v0

    .line 200
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 205
    :cond_5
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mShaderData:[F

    aput v2, v3, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 140
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SpectrumView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->t_waveThread:Lcom/baidu/internal/keyguard/slide/SpectrumView$WaveThread;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->t_waveThread:Lcom/baidu/internal/keyguard/slide/SpectrumView$WaveThread;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/SpectrumView$WaveThread;->cancel()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->t_waveThread:Lcom/baidu/internal/keyguard/slide/SpectrumView$WaveThread;

    .line 145
    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 368
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 149
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mWidth:I

    if-nez v1, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SpectrumView;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mWidth:I

    .line 151
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SpectrumView;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mHeight:I

    .line 152
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    const-wide v3, 0x4066800000000000L

    mul-double/2addr v1, v3

    const-wide v3, 0x400921fb54442d18L

    div-double/2addr v1, v3

    iput-wide v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->maxRatateAngle:D

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mShaderData:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mShaderData:[F

    array-length v1, v1

    if-eqz v1, :cond_0

    .line 162
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 163
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2}, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->drawSelf(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 165
    :cond_2
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SpectrumView;->drawShader(Landroid/graphics/Canvas;)V

    .line 166
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 5
    .parameter "arg0"
    .parameter "fft"
    .parameter "samplingRate"

    .prologue
    .line 232
    iget v3, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mWidth:I

    if-nez v3, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SpectrumView;->postInvalidate()V

    .line 248
    :goto_0
    return-void

    .line 236
    :cond_0
    array-length v3, p2

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mFftData:[B

    .line 237
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_1

    .line 238
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mFftData:[B

    aget-byte v4, p2, v0

    aput-byte v4, v3, v0

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 241
    :cond_1
    const-wide/16 v1, 0x0

    .line 242
    .local v1, sum:D
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mFftData:[B

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 243
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mFftData:[B

    aget-byte v3, v3, v0

    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mFftData:[B

    aget-byte v4, v4, v0

    mul-int/2addr v3, v4

    int-to-double v3, v3

    add-double/2addr v1, v3

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 245
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mEnergy:F

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    .line 373
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v1, v2

    .line 374
    .local v0, x:F
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->lastX:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_1

    .line 375
    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->lastX:F

    .line 376
    iput v5, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->lastAngle:F

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    const/high16 v1, 0x4110

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->newAngle:F

    .line 379
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->newAngle:F

    iget v2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->lastAngle:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 380
    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->lastX:F

    .line 382
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->newAngle:F

    iget v2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->lastAngle:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 383
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->lastAngle:F

    add-float/2addr v1, v6

    iput v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->lastAngle:F

    .line 387
    :goto_1
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->lastAngle:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    iget-wide v3, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->maxRatateAngle:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    .line 388
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->lastAngle:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_4

    .line 389
    iget-wide v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->maxRatateAngle:D

    double-to-float v1, v1

    iput v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->lastAngle:F

    .line 393
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 385
    :cond_3
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->lastAngle:F

    sub-float/2addr v1, v6

    iput v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->lastAngle:F

    goto :goto_1

    .line 391
    :cond_4
    iget-wide v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->maxRatateAngle:D

    double-to-float v1, v1

    neg-float v1, v1

    iput v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->lastAngle:F

    goto :goto_2
.end method

.method public onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 254
    return-void
.end method

.method public setVisualizer(Landroid/media/audiofx/Visualizer;)V
    .locals 3
    .parameter "visualizer"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 214
    if-eqz p1, :cond_2

    .line 215
    invoke-virtual {p1}, Landroid/media/audiofx/Visualizer;->getEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    invoke-static {}, Landroid/media/audiofx/Visualizer;->getCaptureSizeRange()[I

    move-result-object v0

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    .line 218
    :cond_0
    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v0

    invoke-virtual {p1, p0, v0, v2, v2}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    .line 227
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 228
    return-void

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 224
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->release()V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SpectrumView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->t_waveThread:Lcom/baidu/internal/keyguard/slide/SpectrumView$WaveThread;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SpectrumView$WaveThread;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/SpectrumView$WaveThread;-><init>(Lcom/baidu/internal/keyguard/slide/SpectrumView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->t_waveThread:Lcom/baidu/internal/keyguard/slide/SpectrumView$WaveThread;

    .line 135
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView;->t_waveThread:Lcom/baidu/internal/keyguard/slide/SpectrumView$WaveThread;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/SpectrumView$WaveThread;->start()V

    .line 137
    :cond_0
    return-void
.end method
