.class public Lcom/baidu/multiwaveview/SpectrumView;
.super Landroid/widget/ImageView;
.source "SpectrumView.java"

# interfaces
.implements Landroid/media/audiofx/Visualizer$OnDataCaptureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/multiwaveview/SpectrumView$SineWave;,
        Lcom/baidu/multiwaveview/SpectrumView$WaveThread;
    }
.end annotation


# static fields
.field private static DBG:Z

.field private static SINEWAVE_NUM:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field endColor:I

.field lastTime:J

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

.field sineWaveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/multiwaveview/SpectrumView$SineWave;",
            ">;"
        }
    .end annotation
.end field

.field startColor:I

.field t_waveThread:Lcom/baidu/multiwaveview/SpectrumView$WaveThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/multiwaveview/SpectrumView;->DBG:Z

    .line 24
    const-string v0, "SpectrumView"

    sput-object v0, Lcom/baidu/multiwaveview/SpectrumView;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x3

    sput v0, Lcom/baidu/multiwaveview/SpectrumView;->SINEWAVE_NUM:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xff

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/multiwaveview/SpectrumView;->mEnergy:F

    .line 29
    const/16 v0, 0x7f

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/baidu/multiwaveview/SpectrumView;->startColor:I

    .line 30
    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/baidu/multiwaveview/SpectrumView;->endColor:I

    .line 32
    iput v2, p0, Lcom/baidu/multiwaveview/SpectrumView;->mWidth:I

    .line 33
    iput v2, p0, Lcom/baidu/multiwaveview/SpectrumView;->mHeight:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/multiwaveview/SpectrumView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 78
    new-instance v0, Lcom/baidu/multiwaveview/SpectrumView$1;

    invoke-direct {v0, p0}, Lcom/baidu/multiwaveview/SpectrumView$1;-><init>(Lcom/baidu/multiwaveview/SpectrumView;)V

    iput-object v0, p0, Lcom/baidu/multiwaveview/SpectrumView;->mHandler:Landroid/os/Handler;

    .line 44
    invoke-direct {p0}, Lcom/baidu/multiwaveview/SpectrumView;->init()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xff

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/multiwaveview/SpectrumView;->mEnergy:F

    .line 29
    const/16 v0, 0x7f

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/baidu/multiwaveview/SpectrumView;->startColor:I

    .line 30
    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/baidu/multiwaveview/SpectrumView;->endColor:I

    .line 32
    iput v2, p0, Lcom/baidu/multiwaveview/SpectrumView;->mWidth:I

    .line 33
    iput v2, p0, Lcom/baidu/multiwaveview/SpectrumView;->mHeight:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/multiwaveview/SpectrumView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 78
    new-instance v0, Lcom/baidu/multiwaveview/SpectrumView$1;

    invoke-direct {v0, p0}, Lcom/baidu/multiwaveview/SpectrumView$1;-><init>(Lcom/baidu/multiwaveview/SpectrumView;)V

    iput-object v0, p0, Lcom/baidu/multiwaveview/SpectrumView;->mHandler:Landroid/os/Handler;

    .line 49
    invoke-direct {p0}, Lcom/baidu/multiwaveview/SpectrumView;->init()V

    .line 50
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

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/multiwaveview/SpectrumView;->mEnergy:F

    .line 29
    const/16 v0, 0x7f

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/baidu/multiwaveview/SpectrumView;->startColor:I

    .line 30
    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/baidu/multiwaveview/SpectrumView;->endColor:I

    .line 32
    iput v2, p0, Lcom/baidu/multiwaveview/SpectrumView;->mWidth:I

    .line 33
    iput v2, p0, Lcom/baidu/multiwaveview/SpectrumView;->mHeight:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/multiwaveview/SpectrumView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 78
    new-instance v0, Lcom/baidu/multiwaveview/SpectrumView$1;

    invoke-direct {v0, p0}, Lcom/baidu/multiwaveview/SpectrumView$1;-><init>(Lcom/baidu/multiwaveview/SpectrumView;)V

    iput-object v0, p0, Lcom/baidu/multiwaveview/SpectrumView;->mHandler:Landroid/os/Handler;

    .line 54
    invoke-direct {p0}, Lcom/baidu/multiwaveview/SpectrumView;->init()V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/multiwaveview/SpectrumView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/baidu/multiwaveview/SpectrumView;->updateData()V

    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/multiwaveview/SpectrumView;->mPaint:Landroid/graphics/Paint;

    .line 59
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/baidu/multiwaveview/SpectrumView;->mPath:Landroid/graphics/Path;

    .line 60
    return-void
.end method

.method private initWaveListData()V
    .locals 10

    .prologue
    .line 63
    sget-boolean v3, Lcom/baidu/multiwaveview/SpectrumView;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/baidu/multiwaveview/SpectrumView;->TAG:Ljava/lang/String;

    const-string v4, "initWaveListData()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    iget-object v3, p0, Lcom/baidu/multiwaveview/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 65
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/baidu/multiwaveview/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    .line 67
    :cond_1
    iget-object v3, p0, Lcom/baidu/multiwaveview/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 68
    new-instance v0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;

    const/high16 v2, 0x4120

    const v3, 0x3d4ccccd

    const/high16 v4, 0x4040

    const/high16 v5, 0x3e80

    const/4 v6, 0x1

    const/4 v7, 0x4

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/baidu/multiwaveview/SpectrumView$SineWave;-><init>(Lcom/baidu/multiwaveview/SpectrumView;FFFFII)V

    .line 69
    .local v0, sineWave1:Lcom/baidu/multiwaveview/SpectrumView$SineWave;
    new-instance v1, Lcom/baidu/multiwaveview/SpectrumView$SineWave;

    const/high16 v3, 0x4120

    const v4, 0x3dcccccd

    const/high16 v5, 0x4000

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/4 v8, 0x3

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/baidu/multiwaveview/SpectrumView$SineWave;-><init>(Lcom/baidu/multiwaveview/SpectrumView;FFFFII)V

    .line 70
    .local v1, sineWave2:Lcom/baidu/multiwaveview/SpectrumView$SineWave;
    new-instance v2, Lcom/baidu/multiwaveview/SpectrumView$SineWave;

    const/high16 v4, 0x4120

    const v5, 0x3e4ccccd

    const/high16 v6, 0x4000

    const v7, 0x3f19999a

    const/4 v8, 0x1

    const/4 v9, 0x2

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/baidu/multiwaveview/SpectrumView$SineWave;-><init>(Lcom/baidu/multiwaveview/SpectrumView;FFFFII)V

    .line 72
    .local v2, sineWave3:Lcom/baidu/multiwaveview/SpectrumView$SineWave;
    iget-object v3, p0, Lcom/baidu/multiwaveview/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v3, p0, Lcom/baidu/multiwaveview/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v3, p0, Lcom/baidu/multiwaveview/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method private updateData()V
    .locals 3

    .prologue
    .line 238
    sget-boolean v1, Lcom/baidu/multiwaveview/SpectrumView;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/baidu/multiwaveview/SpectrumView;->TAG:Ljava/lang/String;

    const-string v2, "updateData()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/baidu/multiwaveview/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/multiwaveview/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 240
    :cond_1
    invoke-direct {p0}, Lcom/baidu/multiwaveview/SpectrumView;->initWaveListData()V

    .line 242
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/multiwaveview/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 243
    iget-object v1, p0, Lcom/baidu/multiwaveview/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/multiwaveview/SpectrumView$SineWave;

    iget v2, p0, Lcom/baidu/multiwaveview/SpectrumView;->mEnergy:F

    invoke-virtual {v1, v2}, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->updateWaveParams(F)V

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_3
    invoke-direct {p0}, Lcom/baidu/multiwaveview/SpectrumView;->updateShaderData()V

    .line 247
    return-void
.end method

.method private updateShaderData()V
    .locals 5

    .prologue
    .line 155
    sget-boolean v3, Lcom/baidu/multiwaveview/SpectrumView;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/baidu/multiwaveview/SpectrumView;->TAG:Ljava/lang/String;

    const-string v4, "updateShaderData()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    iget-object v3, p0, Lcom/baidu/multiwaveview/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/baidu/multiwaveview/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/baidu/multiwaveview/SpectrumView;->mWidth:I

    if-nez v3, :cond_2

    .line 172
    :cond_1
    return-void

    .line 159
    :cond_2
    iget-object v3, p0, Lcom/baidu/multiwaveview/SpectrumView;->mShaderData:[F

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/baidu/multiwaveview/SpectrumView;->mShaderData:[F

    array-length v3, v3

    if-nez v3, :cond_4

    .line 160
    :cond_3
    iget-object v3, p0, Lcom/baidu/multiwaveview/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/multiwaveview/SpectrumView$SineWave;

    iget v3, v3, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->waveLenth:I

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/baidu/multiwaveview/SpectrumView;->mShaderData:[F

    .line 163
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/baidu/multiwaveview/SpectrumView;->mShaderData:[F

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 164
    const v2, 0x7f7fffff

    .line 165
    .local v2, minData:F
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget-object v3, p0, Lcom/baidu/multiwaveview/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 166
    iget-object v3, p0, Lcom/baidu/multiwaveview/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/multiwaveview/SpectrumView$SineWave;

    iget-object v3, v3, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->waveData:[F

    aget v3, v3, v0

    cmpg-float v3, v3, v2

    if-gez v3, :cond_5

    .line 167
    iget-object v3, p0, Lcom/baidu/multiwaveview/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/multiwaveview/SpectrumView$SineWave;

    iget-object v3, v3, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->waveData:[F

    aget v2, v3, v0

    .line 165
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 170
    :cond_6
    iget-object v3, p0, Lcom/baidu/multiwaveview/SpectrumView;->mShaderData:[F

    aput v2, v3, v0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 124
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/baidu/multiwaveview/SpectrumView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/baidu/multiwaveview/SpectrumView;->t_waveThread:Lcom/baidu/multiwaveview/SpectrumView$WaveThread;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/baidu/multiwaveview/SpectrumView;->t_waveThread:Lcom/baidu/multiwaveview/SpectrumView$WaveThread;

    invoke-virtual {v0}, Lcom/baidu/multiwaveview/SpectrumView$WaveThread;->cancel()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/multiwaveview/SpectrumView;->t_waveThread:Lcom/baidu/multiwaveview/SpectrumView$WaveThread;

    .line 129
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 133
    sget-boolean v1, Lcom/baidu/multiwaveview/SpectrumView;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/baidu/multiwaveview/SpectrumView;->TAG:Ljava/lang/String;

    const-string v2, "onDraw()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    iget v1, p0, Lcom/baidu/multiwaveview/SpectrumView;->mWidth:I

    if-nez v1, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/baidu/multiwaveview/SpectrumView;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/baidu/multiwaveview/SpectrumView;->mWidth:I

    .line 136
    invoke-virtual {p0}, Lcom/baidu/multiwaveview/SpectrumView;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/baidu/multiwaveview/SpectrumView;->mHeight:I

    .line 152
    :cond_1
    :goto_0
    return-void

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/baidu/multiwaveview/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/multiwaveview/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/baidu/multiwaveview/SpectrumView;->mShaderData:[F

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/multiwaveview/SpectrumView;->mShaderData:[F

    array-length v1, v1

    if-eqz v1, :cond_1

    .line 146
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/baidu/multiwaveview/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 147
    iget-object v1, p0, Lcom/baidu/multiwaveview/SpectrumView;->sineWaveList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/multiwaveview/SpectrumView$SineWave;

    iget-object v2, p0, Lcom/baidu/multiwaveview/SpectrumView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2}, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->drawSelf(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 150
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 10
    .parameter "arg0"
    .parameter "fft"
    .parameter "samplingRate"

    .prologue
    .line 203
    sget-boolean v4, Lcom/baidu/multiwaveview/SpectrumView;->DBG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/baidu/multiwaveview/SpectrumView;->TAG:Ljava/lang/String;

    const-string v5, "onFftDataCapture()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    if-eqz p2, :cond_1

    array-length v4, p2

    if-nez v4, :cond_1

    .line 205
    sget-object v4, Lcom/baidu/multiwaveview/SpectrumView;->TAG:Ljava/lang/String;

    const-string v5, "fft is zero()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_1
    iget-wide v4, p0, Lcom/baidu/multiwaveview/SpectrumView;->lastTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/multiwaveview/SpectrumView;->lastTime:J

    .line 213
    :goto_0
    iget v4, p0, Lcom/baidu/multiwaveview/SpectrumView;->mWidth:I

    if-nez v4, :cond_3

    .line 214
    invoke-virtual {p0}, Lcom/baidu/multiwaveview/SpectrumView;->postInvalidate()V

    .line 230
    :goto_1
    return-void

    .line 210
    :cond_2
    sget-object v4, Lcom/baidu/multiwaveview/SpectrumView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/baidu/multiwaveview/SpectrumView;->lastTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/multiwaveview/SpectrumView;->lastTime:J

    goto :goto_0

    .line 217
    :cond_3
    array-length v4, p2

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/baidu/multiwaveview/SpectrumView;->mFftData:[B

    .line 218
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v4, p2

    if-ge v1, v4, :cond_4

    .line 219
    iget-object v4, p0, Lcom/baidu/multiwaveview/SpectrumView;->mFftData:[B

    aget-byte v5, p2, v1

    aput-byte v5, v4, v1

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 222
    :cond_4
    const-wide/16 v2, 0x0

    .line 223
    .local v2, sum:D
    const/4 v0, 0x0

    .line 224
    .local v0, count:I
    const/4 v1, 0x0

    :goto_3
    iget-object v4, p0, Lcom/baidu/multiwaveview/SpectrumView;->mFftData:[B

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 225
    iget-object v4, p0, Lcom/baidu/multiwaveview/SpectrumView;->mFftData:[B

    aget-byte v4, v4, v1

    iget-object v5, p0, Lcom/baidu/multiwaveview/SpectrumView;->mFftData:[B

    aget-byte v5, v5, v1

    mul-int/2addr v4, v5

    int-to-double v4, v4

    add-double/2addr v2, v4

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 227
    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lcom/baidu/multiwaveview/SpectrumView;->mEnergy:F

    goto :goto_1
.end method

.method public onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 234
    sget-boolean v0, Lcom/baidu/multiwaveview/SpectrumView;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/multiwaveview/SpectrumView;->TAG:Ljava/lang/String;

    const-string v1, "onWaveFormDataCapture()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    return-void
.end method

.method public setVisualizer(Landroid/media/audiofx/Visualizer;)V
    .locals 3
    .parameter "visualizer"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 181
    if-eqz p1, :cond_2

    .line 182
    invoke-virtual {p1}, Landroid/media/audiofx/Visualizer;->getEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    invoke-static {}, Landroid/media/audiofx/Visualizer;->getCaptureSizeRange()[I

    move-result-object v0

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    .line 185
    :cond_0
    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v0

    invoke-virtual {p1, p0, v0, v2, v2}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    .line 195
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/baidu/multiwaveview/SpectrumView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 196
    return-void

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/baidu/multiwaveview/SpectrumView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/baidu/multiwaveview/SpectrumView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 192
    iget-object v0, p0, Lcom/baidu/multiwaveview/SpectrumView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->release()V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/multiwaveview/SpectrumView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/baidu/multiwaveview/SpectrumView;->t_waveThread:Lcom/baidu/multiwaveview/SpectrumView$WaveThread;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/baidu/multiwaveview/SpectrumView$WaveThread;

    invoke-direct {v0, p0}, Lcom/baidu/multiwaveview/SpectrumView$WaveThread;-><init>(Lcom/baidu/multiwaveview/SpectrumView;)V

    iput-object v0, p0, Lcom/baidu/multiwaveview/SpectrumView;->t_waveThread:Lcom/baidu/multiwaveview/SpectrumView$WaveThread;

    .line 119
    iget-object v0, p0, Lcom/baidu/multiwaveview/SpectrumView;->t_waveThread:Lcom/baidu/multiwaveview/SpectrumView$WaveThread;

    invoke-virtual {v0}, Lcom/baidu/multiwaveview/SpectrumView$WaveThread;->start()V

    .line 121
    :cond_0
    return-void
.end method
