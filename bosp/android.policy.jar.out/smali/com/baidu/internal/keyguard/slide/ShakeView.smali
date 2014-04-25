.class public Lcom/baidu/internal/keyguard/slide/ShakeView;
.super Landroid/view/View;
.source "ShakeView.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShakeView"


# instance fields
.field private mBitmapDecodeThread:Ljava/lang/Thread;

.field private mDecodeStartTime:J

.field private mDisplay:Landroid/view/Display;

.field private mLayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMoveParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;

.field private mSensorX:F

.field private mSensorY:F

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/ShakeView;->initContext(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/ShakeView;->initContext(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/ShakeView;->initContext(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/internal/keyguard/slide/ShakeView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mLayers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/baidu/internal/keyguard/slide/ShakeView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mDecodeStartTime:J

    return-wide p1
.end method

.method private getMoveDistance(Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;I)I
    .locals 3
    .parameter "moveParam"
    .parameter "direction"

    .prologue
    const/4 v2, -0x1

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, mDistance:I
    if-nez p2, :cond_3

    .line 92
    iget v1, p1, Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;->mXDirection:I

    if-ne v1, v2, :cond_1

    .line 93
    const/4 v0, 0x0

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    iget v1, p1, Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;->mXDirection:I

    if-nez v1, :cond_2

    .line 95
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mSensorX:F

    iget v2, p1, Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;->mMoveAmplitude:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_0

    .line 97
    :cond_2
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mSensorX:F

    iget v2, p1, Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;->mMoveAmplitude:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    neg-int v0, v1

    goto :goto_0

    .line 99
    :cond_3
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 100
    iget v1, p1, Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;->mYDirection:I

    if-ne v1, v2, :cond_4

    .line 101
    const/4 v0, 0x0

    goto :goto_0

    .line 102
    :cond_4
    iget v1, p1, Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;->mYDirection:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 103
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mSensorY:F

    iget v2, p1, Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;->mMoveAmplitude:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_0

    .line 105
    :cond_5
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mSensorY:F

    iget v2, p1, Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;->mMoveAmplitude:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    neg-int v0, v1

    goto :goto_0
.end method

.method private initContext(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mWindowManager:Landroid/view/WindowManager;

    .line 51
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mDisplay:Landroid/view/Display;

    .line 52
    return-void
.end method


# virtual methods
.method public declared-synchronized initParams(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, layers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, moveParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mLayers:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Lcom/baidu/internal/keyguard/slide/ShakeView$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/baidu/internal/keyguard/slide/ShakeView$1;-><init>(Lcom/baidu/internal/keyguard/slide/ShakeView;Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mBitmapDecodeThread:Ljava/lang/Thread;

    .line 78
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mBitmapDecodeThread:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SlideLockScreen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mBitmapDecodeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 80
    iput-object p3, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mMoveParams:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mMatrix:Landroid/graphics/Matrix;

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mPaint:Landroid/graphics/Paint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 141
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 114
    iget-object v9, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mLayers:Ljava/util/ArrayList;

    monitor-enter v9

    .line 115
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 116
    .local v2, currentTime:J
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v8, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_4

    .line 117
    iget-object v8, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mMoveParams:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;

    .line 118
    .local v5, moveParam:Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;
    iget-object v8, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 119
    .local v1, bmp:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_0

    if-nez v1, :cond_1

    .line 116
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 122
    :cond_1
    iget-wide v10, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mDecodeStartTime:J

    sub-long v10, v2, v10

    iget v8, v5, Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;->mDelay:I

    int-to-long v12, v8

    cmp-long v8, v10, v12

    if-ltz v8, :cond_0

    .line 125
    iget v8, v5, Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;->mDuration:I

    if-lez v8, :cond_0

    .line 128
    const/4 v8, 0x0

    invoke-direct {p0, v5, v8}, Lcom/baidu/internal/keyguard/slide/ShakeView;->getMoveDistance(Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;I)I

    move-result v6

    .line 129
    .local v6, moveX:I
    const/4 v8, 0x1

    invoke-direct {p0, v5, v8}, Lcom/baidu/internal/keyguard/slide/ShakeView;->getMoveDistance(Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;I)I

    move-result v7

    .line 130
    .local v7, moveY:I
    iget-object v8, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mMatrix:Landroid/graphics/Matrix;

    iget v10, v5, Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;->mXOriginal:I

    add-int/2addr v10, v6

    int-to-float v10, v10

    iget v11, v5, Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;->mYOriginal:I

    add-int/2addr v11, v7

    int-to-float v11, v11

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 131
    iget-wide v10, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mDecodeStartTime:J

    sub-long v10, v2, v10

    iget v8, v5, Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;->mDelay:I

    int-to-long v12, v8

    sub-long/2addr v10, v12

    long-to-int v8, v10

    mul-int/lit16 v8, v8, 0xff

    iget v10, v5, Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;->mDuration:I

    div-int v0, v8, v10

    .line 133
    .local v0, alpha:I
    iget-object v8, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mPaint:Landroid/graphics/Paint;

    const/16 v10, 0xff

    if-le v0, v10, :cond_3

    const/16 v0, 0xff

    .end local v0           #alpha:I
    :cond_2
    :goto_2
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 134
    iget-object v8, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v10, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v8, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 136
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    .end local v2           #currentTime:J
    .end local v4           #i:I
    .end local v5           #moveParam:Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;
    .end local v6           #moveX:I
    .end local v7           #moveY:I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 133
    .restart local v0       #alpha:I
    .restart local v1       #bmp:Landroid/graphics/Bitmap;
    .restart local v2       #currentTime:J
    .restart local v4       #i:I
    .restart local v5       #moveParam:Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;
    .restart local v6       #moveX:I
    .restart local v7       #moveY:I
    :cond_3
    if-gez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 136
    .end local v0           #alpha:I
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    .end local v5           #moveParam:Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;
    .end local v6           #moveX:I
    .end local v7           #moveY:I
    :cond_4
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 145
    monitor-enter p0

    .line 146
    :try_start_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 147
    monitor-exit p0

    .line 168
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 166
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/ShakeView;->postInvalidate()V

    .line 167
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 150
    :pswitch_0
    :try_start_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mSensorX:F

    .line 151
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mSensorY:F

    goto :goto_1

    .line 154
    :pswitch_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    neg-float v0, v0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mSensorX:F

    .line 155
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mSensorY:F

    goto :goto_1

    .line 158
    :pswitch_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    neg-float v0, v0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mSensorX:F

    .line 159
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    neg-float v0, v0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mSensorY:F

    goto :goto_1

    .line 162
    :pswitch_3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mSensorX:F

    .line 163
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    neg-float v0, v0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mSensorY:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public release()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/ShakeView;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 87
    return-void
.end method
