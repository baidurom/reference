.class Lyi/support/v1/utils/FpsCounter$FpsView;
.super Landroid/view/View;
.source "FpsCounter.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/utils/FpsCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FpsView"
.end annotation


# static fields
.field private static final COMB_CHART_GRANULARITY:I = 0x4

.field private static final COMB_CHART_X:I = 0x0

.field static final ONE_SECOND:I = 0x3e8

.field static final TEXT_SIZE_DIP:I = 0x10

.field private static final mPaint:Landroid/graphics/Paint;


# instance fields
.field private COMB_CHART_Y:I

.field private mAverageFps:I

.field private mFpsCombChart:[F

.field private mFpsCounter:I

.field private mFpsTime:J

.field private mLastDrawTime:J

.field private final mText:Ljava/lang/StringBuilder;

.field private mText_Y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lyi/support/v1/utils/FpsCounter$FpsView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mText:Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {p0, p1}, Lyi/support/v1/utils/FpsCounter$FpsView;->init(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mText:Ljava/lang/StringBuilder;

    .line 90
    invoke-direct {p0, p1}, Lyi/support/v1/utils/FpsCounter$FpsView;->init(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mText:Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {p0, p1}, Lyi/support/v1/utils/FpsCounter$FpsView;->init(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method private appendFpsToChart(J)V
    .locals 10
    .parameter "interval"

    .prologue
    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 194
    invoke-virtual {p0}, Lyi/support/v1/utils/FpsCounter$FpsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 195
    .local v2, widthPixels:I
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v1, v3, 0x0

    .line 198
    .local v1, max_x:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mFpsCombChart:[F

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 199
    iget-object v3, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mFpsCombChart:[F

    add-int/lit8 v4, v0, 0x0

    aget v5, v3, v4

    add-float/2addr v5, v9

    aput v5, v3, v4

    int-to-float v3, v1

    cmpl-float v3, v5, v3

    if-lez v3, :cond_0

    .line 201
    iget-object v3, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mFpsCombChart:[F

    add-int/lit8 v4, v0, 0x0

    aput v8, v3, v4

    .line 202
    iget-object v3, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mFpsCombChart:[F

    add-int/lit8 v4, v0, 0x2

    aput v8, v3, v4

    .line 203
    iget-object v3, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mFpsCombChart:[F

    add-int/lit8 v4, v0, 0x3

    iget v5, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->COMB_CHART_Y:I

    const/4 v6, 0x1

    shr-long v6, p1, v6

    long-to-float v6, v6

    invoke-direct {p0, v6}, Lyi/support/v1/utils/FpsCounter$FpsView;->dipToPixels(F)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    aput v5, v3, v4

    .line 198
    :goto_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 205
    :cond_0
    iget-object v3, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mFpsCombChart:[F

    add-int/lit8 v4, v0, 0x2

    aget v5, v3, v4

    add-float/2addr v5, v9

    aput v5, v3, v4

    goto :goto_1

    .line 208
    :cond_1
    return-void
.end method

.method private calculateFps()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v9, 0x0

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 141
    .local v5, now:J
    iget-wide v7, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mLastDrawTime:J

    sub-long v3, v5, v7

    .line 142
    .local v3, interval:J
    iget-wide v7, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mFpsTime:J

    sub-long v0, v5, v7

    .line 144
    .local v0, elapsed:J
    iget v7, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mFpsCounter:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mFpsCounter:I

    .line 145
    iput-wide v5, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mLastDrawTime:J

    .line 147
    div-long v7, v10, v3

    long-to-int v2, v7

    .line 148
    .local v2, instantFps:I
    cmp-long v7, v0, v10

    if-lez v7, :cond_0

    .line 149
    iput-wide v5, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mFpsTime:J

    .line 150
    iget v7, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mFpsCounter:I

    iput v7, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mAverageFps:I

    .line 151
    iput v9, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mFpsCounter:I

    .line 154
    :cond_0
    invoke-direct {p0, v3, v4}, Lyi/support/v1/utils/FpsCounter$FpsView;->appendFpsToChart(J)V

    .line 156
    iget-object v7, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mText:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 157
    iget-object v7, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mText:Ljava/lang/StringBuilder;

    const-string v8, "fps:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mAverageFps:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mFpsCounter:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    return-void
.end method

.method private dipToPixels(F)I
    .locals 3
    .parameter "dips"

    .prologue
    .line 119
    invoke-virtual {p0}, Lyi/support/v1/utils/FpsCounter$FpsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 120
    .local v0, density:F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getStatusBarHeight()I
    .locals 5

    .prologue
    .line 114
    invoke-virtual {p0}, Lyi/support/v1/utils/FpsCounter$FpsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 115
    .local v0, resourceId:I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lyi/support/v1/utils/FpsCounter$FpsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x41c8

    invoke-direct {p0, v1}, Lyi/support/v1/utils/FpsCounter$FpsView;->dipToPixels(F)I

    move-result v1

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 99
    const v1, 0x5020022

    invoke-virtual {p0, v1}, Lyi/support/v1/utils/FpsCounter$FpsView;->setId(I)V

    .line 101
    invoke-virtual {p0}, Lyi/support/v1/utils/FpsCounter$FpsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 102
    .local v0, widthPixels:I
    mul-int/lit8 v1, v0, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mFpsCombChart:[F

    .line 104
    sget-object v1, Lyi/support/v1/utils/FpsCounter$FpsView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 105
    sget-object v1, Lyi/support/v1/utils/FpsCounter$FpsView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4180

    invoke-direct {p0, v2}, Lyi/support/v1/utils/FpsCounter$FpsView;->dipToPixels(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 107
    invoke-direct {p0}, Lyi/support/v1/utils/FpsCounter$FpsView;->getStatusBarHeight()I

    move-result v1

    iput v1, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->COMB_CHART_Y:I

    .line 109
    iget v1, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->COMB_CHART_Y:I

    int-to-float v1, v1

    sget-object v2, Lyi/support/v1/utils/FpsCounter$FpsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mText_Y:F

    .line 110
    invoke-direct {p0}, Lyi/support/v1/utils/FpsCounter$FpsView;->resetFpsChart()V

    .line 111
    return-void
.end method

.method private resetFpsChart()V
    .locals 5

    .prologue
    .line 183
    const/4 v1, 0x0

    .line 184
    .local v1, x:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mFpsCombChart:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 185
    iget-object v2, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mFpsCombChart:[F

    add-int/lit8 v3, v0, 0x0

    aput v1, v2, v3

    .line 186
    iget-object v2, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mFpsCombChart:[F

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->COMB_CHART_Y:I

    int-to-float v4, v4

    aput v4, v2, v3

    .line 187
    iget-object v2, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mFpsCombChart:[F

    add-int/lit8 v3, v0, 0x2

    aput v1, v2, v3

    .line 188
    iget-object v2, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mFpsCombChart:[F

    add-int/lit8 v3, v0, 0x3

    iget v4, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->COMB_CHART_Y:I

    int-to-float v4, v4

    aput v4, v2, v3

    .line 189
    const/high16 v2, 0x4000

    add-float/2addr v1, v2

    .line 184
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 191
    :cond_0
    return-void
.end method

.method private static setDirty(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 165
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 166
    .local v3, parent:Landroid/view/ViewParent;
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_0

    .line 167
    const-class v4, Landroid/view/View;

    const-string v5, "mParent"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 168
    .local v2, field:Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    .line 169
    .local v0, accessible:Z
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 170
    const/4 v4, 0x0

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 174
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v0           #accessible:Z
    .end local v2           #field:Ljava/lang/reflect/Field;
    .end local v3           #parent:Landroid/view/ViewParent;
    :cond_0
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v1

    .line 178
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "FpsCounter"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 212
    invoke-virtual {p0}, Lyi/support/v1/utils/FpsCounter$FpsView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 213
    invoke-virtual {p0}, Lyi/support/v1/utils/FpsCounter$FpsView;->bringToFront()V

    .line 215
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 220
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 125
    invoke-direct {p0}, Lyi/support/v1/utils/FpsCounter$FpsView;->calculateFps()V

    .line 127
    sget-object v0, Lyi/support/v1/utils/FpsCounter$FpsView;->mPaint:Landroid/graphics/Paint;

    const v1, -0xff0001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    iget-object v0, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mFpsCombChart:[F

    sget-object v1, Lyi/support/v1/utils/FpsCounter$FpsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 130
    sget-object v0, Lyi/support/v1/utils/FpsCounter$FpsView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget-object v0, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mText:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x4040

    iget v2, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mText_Y:F

    const/high16 v3, 0x3f80

    add-float/2addr v2, v3

    sget-object v3, Lyi/support/v1/utils/FpsCounter$FpsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 133
    sget-object v0, Lyi/support/v1/utils/FpsCounter$FpsView;->mPaint:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iget-object v0, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mText:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x4000

    iget v2, p0, Lyi/support/v1/utils/FpsCounter$FpsView;->mText_Y:F

    sget-object v3, Lyi/support/v1/utils/FpsCounter$FpsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 136
    invoke-static {p0}, Lyi/support/v1/utils/FpsCounter$FpsView;->setDirty(Landroid/view/View;)V

    .line 137
    return-void
.end method
