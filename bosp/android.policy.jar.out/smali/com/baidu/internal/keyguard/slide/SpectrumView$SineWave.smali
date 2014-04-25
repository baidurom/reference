.class public Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;
.super Ljava/lang/Object;
.source "SpectrumView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/SpectrumView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SineWave"
.end annotation


# instance fields
.field forwordX:F

.field mAmplifier:F

.field mAmplifierFactor:F

.field mForwordSpeed:F

.field mFrequency:F

.field mLineWidth:I

.field mPath:Landroid/graphics/Path;

.field mPhase:F

.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/SpectrumView;

.field waveData:[F

.field waveLenth:I


# direct methods
.method public constructor <init>(Lcom/baidu/internal/keyguard/slide/SpectrumView;FFFFFI)V
    .locals 3
    .parameter
    .parameter "amplifier"
    .parameter "amplifierFactor"
    .parameter "frequency"
    .parameter "phase"
    .parameter "forwordSpeed"
    .parameter "lineWidth"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 284
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->this$0:Lcom/baidu/internal/keyguard/slide/SpectrumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mAmplifier:F

    .line 269
    iput v2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mAmplifierFactor:F

    .line 270
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mFrequency:F

    .line 271
    iput v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mPhase:F

    .line 272
    iput v2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mForwordSpeed:F

    .line 273
    const/16 v0, 0x80

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->waveLenth:I

    .line 274
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mLineWidth:I

    .line 275
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mPath:Landroid/graphics/Path;

    .line 276
    iput v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->forwordX:F

    .line 285
    iput p2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mAmplifier:F

    .line 286
    iput p3, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mAmplifierFactor:F

    .line 287
    iput p4, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mFrequency:F

    .line 288
    iput p5, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mPhase:F

    .line 289
    iput p6, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mForwordSpeed:F

    .line 290
    iput p7, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mLineWidth:I

    .line 291
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->initWaveData()V

    .line 292
    return-void
.end method

.method public constructor <init>(Lcom/baidu/internal/keyguard/slide/SpectrumView;I)V
    .locals 3
    .parameter
    .parameter "lineWidth"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 279
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->this$0:Lcom/baidu/internal/keyguard/slide/SpectrumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mAmplifier:F

    .line 269
    iput v2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mAmplifierFactor:F

    .line 270
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mFrequency:F

    .line 271
    iput v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mPhase:F

    .line 272
    iput v2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mForwordSpeed:F

    .line 273
    const/16 v0, 0x80

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->waveLenth:I

    .line 274
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mLineWidth:I

    .line 275
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mPath:Landroid/graphics/Path;

    .line 276
    iput v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->forwordX:F

    .line 280
    iput p2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mLineWidth:I

    .line 281
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->initWaveData()V

    .line 282
    return-void
.end method


# virtual methods
.method public drawSelf(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7
    .parameter "canvas"
    .parameter "paint"

    .prologue
    .line 349
    const v2, -0xff0100

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 350
    iget v2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mLineWidth:I

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 351
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 352
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 353
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->waveData:[F

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->waveData:[F

    array-length v2, v2

    if-eqz v2, :cond_1

    .line 354
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 355
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mPath:Landroid/graphics/Path;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->this$0:Lcom/baidu/internal/keyguard/slide/SpectrumView;

    iget v4, v4, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->waveData:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 356
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->this$0:Lcom/baidu/internal/keyguard/slide/SpectrumView;

    iget v2, v2, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mWidth:I

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->waveData:[F

    array-length v3, v3

    div-int v1, v2, v3

    .line 357
    .local v1, xStep:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->waveData:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 358
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mPath:Landroid/graphics/Path;

    mul-int v3, v0, v1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->this$0:Lcom/baidu/internal/keyguard/slide/SpectrumView;

    iget v4, v4, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->waveData:[F

    aget v5, v5, v0

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    :cond_0
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 362
    .end local v0           #i:I
    .end local v1           #xStep:I
    :cond_1
    return-void
.end method

.method public initWaveData()V
    .locals 9

    .prologue
    .line 305
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->this$0:Lcom/baidu/internal/keyguard/slide/SpectrumView;

    iget v1, v1, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mWidth:I

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->waveLenth:I

    .line 306
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->waveLenth:I

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->waveData:[F

    .line 307
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->waveData:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->waveData:[F

    iget v2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mAmplifier:F

    iget v3, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mPhase:F

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    const v4, 0x40490fdb

    mul-float/2addr v3, v4

    const/high16 v4, 0x43b4

    div-float/2addr v3, v4

    float-to-double v3, v3

    const-wide v5, 0x400921fb54442d18L

    iget v7, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mFrequency:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    int-to-double v7, v0

    mul-double/2addr v5, v7

    iget v7, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->waveLenth:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    aput v2, v1, v0

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_0
    return-void
.end method

.method public setAmplifier(F)V
    .locals 0
    .parameter "amplifier"

    .prologue
    .line 295
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mAmplifier:F

    .line 296
    return-void
.end method

.method public setFrequency(F)V
    .locals 0
    .parameter "frequency"

    .prologue
    .line 298
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mFrequency:F

    .line 299
    return-void
.end method

.method public setPhase(F)V
    .locals 0
    .parameter "phase"

    .prologue
    .line 301
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mPhase:F

    .line 302
    return-void
.end method

.method public updateWaveParams(F)V
    .locals 10
    .parameter "energy"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v9, 0x0

    .line 317
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->waveData:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->waveData:[F

    array-length v1, v1

    if-nez v1, :cond_1

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->initWaveData()V

    .line 331
    :cond_1
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->this$0:Lcom/baidu/internal/keyguard/slide/SpectrumView;

    iget v1, v1, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mDensity:F

    mul-float/2addr v1, p1

    const/high16 v2, 0x40c0

    div-float/2addr v1, v2

    iget v2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mAmplifier:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 332
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mAmplifier:F

    add-float/2addr v1, v3

    iput v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mAmplifier:F

    .line 339
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->waveData:[F

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 340
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->waveData:[F

    iget v2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mAmplifier:F

    iget v3, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mAmplifierFactor:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mPhase:F

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    const v4, 0x40490fdb

    mul-float/2addr v3, v4

    const/high16 v4, 0x43b4

    div-float/2addr v3, v4

    float-to-double v3, v3

    const-wide v5, 0x400921fb54442d18L

    iget v7, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mFrequency:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    int-to-float v7, v0

    iget v8, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->forwordX:F

    add-float/2addr v7, v8

    float-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->waveLenth:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    aput v2, v1, v0

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 334
    .end local v0           #i:I
    :cond_3
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mAmplifier:F

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mAmplifier:F

    .line 335
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mAmplifier:F

    cmpg-float v1, v1, v9

    if-gez v1, :cond_2

    iput v9, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mAmplifier:F

    goto :goto_0

    .line 342
    .restart local v0       #i:I
    :cond_4
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->forwordX:F

    iget v2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->mForwordSpeed:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->forwordX:F

    .line 343
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->forwordX:F

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->this$0:Lcom/baidu/internal/keyguard/slide/SpectrumView;

    iget v2, v2, Lcom/baidu/internal/keyguard/slide/SpectrumView;->mWidth:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 344
    iput v9, p0, Lcom/baidu/internal/keyguard/slide/SpectrumView$SineWave;->forwordX:F

    .line 346
    :cond_5
    return-void
.end method
