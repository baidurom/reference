.class public Lcom/baidu/multiwaveview/SpectrumView$SineWave;
.super Ljava/lang/Object;
.source "SpectrumView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/multiwaveview/SpectrumView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SineWave"
.end annotation


# instance fields
.field forwordX:I

.field mAmplifier:F

.field mAmplifierFactor:F

.field mForwordSpeed:I

.field mFrequency:F

.field mLineWidth:I

.field mPath:Landroid/graphics/Path;

.field mPhase:F

.field final synthetic this$0:Lcom/baidu/multiwaveview/SpectrumView;

.field waveData:[F

.field waveLenth:I


# direct methods
.method public constructor <init>(Lcom/baidu/multiwaveview/SpectrumView;FFFFII)V
    .locals 1
    .parameter
    .parameter "amplifier"
    .parameter "amplifierFactor"
    .parameter "frequency"
    .parameter "phase"
    .parameter "forwordSpeed"
    .parameter "lineWidth"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->this$0:Lcom/baidu/multiwaveview/SpectrumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mAmplifier:F

    .line 251
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mAmplifierFactor:F

    .line 252
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mFrequency:F

    .line 253
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mPhase:F

    .line 254
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mForwordSpeed:I

    .line 255
    const/16 v0, 0x80

    iput v0, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->waveLenth:I

    .line 256
    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mLineWidth:I

    .line 257
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mPath:Landroid/graphics/Path;

    .line 258
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->forwordX:I

    .line 268
    iput p2, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mAmplifier:F

    .line 269
    iput p3, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mAmplifierFactor:F

    .line 270
    iput p4, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mFrequency:F

    .line 271
    iput p5, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mPhase:F

    .line 272
    iput p6, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mForwordSpeed:I

    .line 273
    iput p7, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mLineWidth:I

    .line 274
    invoke-virtual {p0}, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->initWaveData()V

    .line 275
    return-void
.end method

.method public constructor <init>(Lcom/baidu/multiwaveview/SpectrumView;I)V
    .locals 1
    .parameter
    .parameter "lineWidth"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->this$0:Lcom/baidu/multiwaveview/SpectrumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mAmplifier:F

    .line 251
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mAmplifierFactor:F

    .line 252
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mFrequency:F

    .line 253
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mPhase:F

    .line 254
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mForwordSpeed:I

    .line 255
    const/16 v0, 0x80

    iput v0, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->waveLenth:I

    .line 256
    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mLineWidth:I

    .line 257
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mPath:Landroid/graphics/Path;

    .line 258
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->forwordX:I

    .line 262
    iput p2, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mLineWidth:I

    .line 263
    invoke-virtual {p0}, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->initWaveData()V

    .line 264
    return-void
.end method


# virtual methods
.method public drawSelf(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7
    .parameter "canvas"
    .parameter "paint"

    .prologue
    .line 332
    const-string v2, "#FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 333
    iget v2, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mLineWidth:I

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 334
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 335
    const/16 v2, 0x14

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 336
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 337
    iget-object v2, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->waveData:[F

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->waveData:[F

    array-length v2, v2

    if-eqz v2, :cond_1

    .line 338
    iget-object v2, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 339
    iget-object v2, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mPath:Landroid/graphics/Path;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->this$0:Lcom/baidu/multiwaveview/SpectrumView;

    iget v4, v4, Lcom/baidu/multiwaveview/SpectrumView;->mHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->waveData:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 340
    iget-object v2, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->this$0:Lcom/baidu/multiwaveview/SpectrumView;

    iget v2, v2, Lcom/baidu/multiwaveview/SpectrumView;->mWidth:I

    iget-object v3, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->waveData:[F

    array-length v3, v3

    div-int v1, v2, v3

    .line 341
    .local v1, xStep:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->waveData:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 342
    iget-object v2, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mPath:Landroid/graphics/Path;

    mul-int v3, v0, v1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->this$0:Lcom/baidu/multiwaveview/SpectrumView;

    iget v4, v4, Lcom/baidu/multiwaveview/SpectrumView;->mHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->waveData:[F

    aget v5, v5, v0

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    :cond_0
    iget-object v2, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 346
    .end local v0           #i:I
    .end local v1           #xStep:I
    :cond_1
    return-void
.end method

.method public initWaveData()V
    .locals 9

    .prologue
    .line 290
    iget-object v1, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->this$0:Lcom/baidu/multiwaveview/SpectrumView;

    iget v1, v1, Lcom/baidu/multiwaveview/SpectrumView;->mWidth:I

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->waveLenth:I

    .line 291
    iget v1, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->waveLenth:I

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->waveData:[F

    .line 292
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->waveData:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->waveData:[F

    iget v2, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mAmplifier:F

    iget v3, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mPhase:F

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    const v4, 0x40490fdb

    mul-float/2addr v3, v4

    const/high16 v4, 0x43b4

    div-float/2addr v3, v4

    float-to-double v3, v3

    const-wide v5, 0x400921fb54442d18L

    iget v7, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mFrequency:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    int-to-double v7, v0

    mul-double/2addr v5, v7

    iget v7, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->waveLenth:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    aput v2, v1, v0

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_0
    return-void
.end method

.method public setAmplifier(F)V
    .locals 0
    .parameter "amplifier"

    .prologue
    .line 278
    iput p1, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mAmplifier:F

    .line 279
    return-void
.end method

.method public setFrequency(F)V
    .locals 0
    .parameter "frequency"

    .prologue
    .line 282
    iput p1, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mFrequency:F

    .line 283
    return-void
.end method

.method public setPhase(F)V
    .locals 0
    .parameter "phase"

    .prologue
    .line 286
    iput p1, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mPhase:F

    .line 287
    return-void
.end method

.method public updateWaveParams(F)V
    .locals 9
    .parameter "energy"

    .prologue
    const/high16 v2, 0x4080

    .line 302
    iget-object v1, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->waveData:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->waveData:[F

    array-length v1, v1

    if-nez v1, :cond_1

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->initWaveData()V

    .line 312
    :cond_1
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_2

    .line 313
    iget v1, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mAmplifier:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    .line 314
    iget v1, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mAmplifier:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mAmplifier:F

    .line 320
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->waveData:[F

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 321
    iget-object v1, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->waveData:[F

    iget v2, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mAmplifier:F

    iget v3, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mAmplifierFactor:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mPhase:F

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    const v4, 0x40490fdb

    mul-float/2addr v3, v4

    const/high16 v4, 0x43b4

    div-float/2addr v3, v4

    float-to-double v3, v3

    const-wide v5, 0x400921fb54442d18L

    iget v7, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mFrequency:F

    float-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->forwordX:I

    add-int/2addr v7, v0

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->waveLenth:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    aput v2, v1, v0

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 316
    .end local v0           #i:I
    :cond_3
    iget v1, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mAmplifier:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mAmplifier:F

    goto :goto_0

    .line 325
    .restart local v0       #i:I
    :cond_4
    iget v1, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->forwordX:I

    iget v2, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->mForwordSpeed:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->forwordX:I

    .line 326
    iget v1, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->forwordX:I

    iget-object v2, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->this$0:Lcom/baidu/multiwaveview/SpectrumView;

    iget v2, v2, Lcom/baidu/multiwaveview/SpectrumView;->mWidth:I

    mul-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_5

    .line 327
    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/multiwaveview/SpectrumView$SineWave;->forwordX:I

    .line 329
    :cond_5
    return-void
.end method
