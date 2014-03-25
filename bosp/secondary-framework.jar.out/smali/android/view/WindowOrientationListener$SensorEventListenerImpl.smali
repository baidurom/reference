.class final Landroid/view/WindowOrientationListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SensorEventListenerImpl"
.end annotation


# static fields
.field private static final ACCELERATION_TOLERANCE:F = 4.0f

.field private static final ACCELEROMETER_DATA_X:I = 0x0

.field private static final ACCELEROMETER_DATA_Y:I = 0x1

.field private static final ACCELEROMETER_DATA_Z:I = 0x2

.field private static final ADJACENT_ORIENTATION_ANGLE_GAP:I = 0x2d

.field private static final FILTER_TIME_CONSTANT_MS:F = 200.0f

.field private static final FLAT_ANGLE:F = 75.0f

.field private static final FLAT_TIME_NANOS:J = 0x3b9aca00L

.field private static final MAX_ACCELERATION_MAGNITUDE:F = 13.80665f

.field private static final MAX_FILTER_DELTA_TIME_NANOS:J = 0x3b9aca00L

.field private static final MAX_TILT:I = 0x4b

.field private static final MIN_ACCELERATION_MAGNITUDE:F = 5.80665f

.field private static final NANOS_PER_MS:J = 0xf4240L

.field private static final NEAR_ZERO_MAGNITUDE:F = 1.0f

.field private static final PROPOSAL_MIN_TIME_SINCE_ACCELERATION_ENDED_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_MIN_TIME_SINCE_FLAT_ENDED_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_MIN_TIME_SINCE_SWING_ENDED_NANOS:J = 0x11e1a300L

.field private static final PROPOSAL_SETTLE_TIME_NANOS:J = 0x2625a00L

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

.field private static final SWING_AWAY_ANGLE_DELTA:F = 20.0f

.field private static final SWING_TIME_NANOS:J = 0x11e1a300L

.field private static final TILT_HISTORY_SIZE:I = 0x28

.field private static final TILT_TOLERANCE:[[I


# instance fields
.field private mAccelerationTimestampNanos:J

.field private mFlatTimestampNanos:J

.field private mLastFilteredTimestampNanos:J

.field private mLastFilteredX:F

.field private mLastFilteredY:F

.field private mLastFilteredZ:F

.field private final mOrientationListener:Landroid/view/WindowOrientationListener;

.field private mPredictedRotation:I

.field private mPredictedRotationTimestampNanos:J

.field private mProposedRotation:I

.field private mSwingTimestampNanos:J

.field private mTiltHistory:[F

.field private mTiltHistoryIndex:I

.field private mTiltHistoryTimestampNanos:[J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 330
    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    return-void

    :array_0
    .array-data 0x4
        0xe7t 0xfft 0xfft 0xfft
        0x46t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0xe7t 0xfft 0xfft 0xfft
        0x41t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0xe7t 0xfft 0xfft 0xfft
        0x3ct 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0xe7t 0xfft 0xfft 0xfft
        0x41t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/view/WindowOrientationListener;)V
    .locals 2
    .parameter "orientationListener"

    .prologue
    const/16 v1, 0x28

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    .line 369
    new-array v0, v1, [J

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    .line 373
    iput-object p1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    .line 374
    invoke-direct {p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->reset()V

    .line 375
    return-void
.end method

.method static synthetic access$000(Landroid/view/WindowOrientationListener$SensorEventListenerImpl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 212
    invoke-direct {p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->reset()V

    return-void
.end method

.method private addTiltHistoryEntry(JF)V
    .locals 4
    .parameter "now"
    .parameter "tilt"

    .prologue
    .line 698
    iget-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    iget v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    aput p3, v0, v1

    .line 699
    iget-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    iget v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    aput-wide p1, v0, v1

    .line 700
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x28

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .line 701
    iget-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    iget v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    const-wide/high16 v2, -0x8000

    aput-wide v2, v0, v1

    .line 702
    return-void
.end method

.method private clearPredictedRotation()V
    .locals 2

    .prologue
    .line 676
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    .line 677
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    .line 678
    return-void
.end method

.method private clearTiltHistory()V
    .locals 4

    .prologue
    .line 693
    iget-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000

    aput-wide v2, v0, v1

    .line 694
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .line 695
    return-void
.end method

.method private isAccelerating(F)Z
    .locals 1
    .parameter "magnitude"

    .prologue
    .line 688
    const v0, 0x40b9d014

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x415ce80a

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFlat(J)Z
    .locals 5
    .parameter "now"

    .prologue
    .line 705
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .local v0, i:I
    :cond_0
    invoke-direct {p0, v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->nextTiltHistoryIndex(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 706
    iget-object v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x4296

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 714
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 709
    :cond_2
    iget-object v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    aget-wide v1, v1, v0

    const-wide/32 v3, 0x3b9aca00

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gtz v1, :cond_0

    .line 711
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isOrientationAngleAcceptable(II)Z
    .locals 5
    .parameter "rotation"
    .parameter "orientationAngle"

    .prologue
    const/4 v3, 0x0

    .line 591
    iget-object v4, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    iget v0, v4, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    .line 592
    .local v0, currentRotation:I
    if-ltz v0, :cond_5

    .line 597
    if-eq p1, v0, :cond_0

    add-int/lit8 v4, v0, 0x1

    rem-int/lit8 v4, v4, 0x4

    if-ne p1, v4, :cond_3

    .line 599
    :cond_0
    mul-int/lit8 v4, p1, 0x5a

    add-int/lit8 v4, v4, -0x2d

    add-int/lit8 v1, v4, 0x16

    .line 601
    .local v1, lowerBound:I
    if-nez p1, :cond_2

    .line 602
    const/16 v4, 0x13b

    if-lt p2, v4, :cond_3

    add-int/lit16 v4, v1, 0x168

    if-ge p2, v4, :cond_3

    .line 631
    .end local v1           #lowerBound:I
    :cond_1
    :goto_0
    return v3

    .line 606
    .restart local v1       #lowerBound:I
    :cond_2
    if-lt p2, v1, :cond_1

    .line 616
    .end local v1           #lowerBound:I
    :cond_3
    if-eq p1, v0, :cond_4

    add-int/lit8 v4, v0, 0x3

    rem-int/lit8 v4, v4, 0x4

    if-ne p1, v4, :cond_5

    .line 618
    :cond_4
    mul-int/lit8 v4, p1, 0x5a

    add-int/lit8 v4, v4, 0x2d

    add-int/lit8 v2, v4, -0x16

    .line 620
    .local v2, upperBound:I
    if-nez p1, :cond_6

    .line 621
    const/16 v4, 0x2d

    if-gt p2, v4, :cond_5

    if-gt p2, v2, :cond_1

    .line 631
    .end local v2           #upperBound:I
    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    .line 625
    .restart local v2       #upperBound:I
    :cond_6
    if-le p2, v2, :cond_5

    goto :goto_0
.end method

.method private isPredictedRotationAcceptable(J)Z
    .locals 7
    .parameter "now"

    .prologue
    const-wide/32 v5, 0x1dcd6500

    const/4 v0, 0x0

    .line 640
    iget-wide v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    const-wide/32 v3, 0x2625a00

    add-long/2addr v1, v3

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    .line 662
    :cond_0
    :goto_0
    return v0

    .line 645
    :cond_1
    iget-wide v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    add-long/2addr v1, v5

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 651
    iget-wide v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    const-wide/32 v3, 0x11e1a300

    add-long/2addr v1, v3

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 656
    iget-wide v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    add-long/2addr v1, v5

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 662
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSwinging(JF)Z
    .locals 5
    .parameter "now"
    .parameter "tilt"

    .prologue
    .line 718
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .local v0, i:I
    :cond_0
    invoke-direct {p0, v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->nextTiltHistoryIndex(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 719
    iget-object v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    aget-wide v1, v1, v0

    const-wide/32 v3, 0x11e1a300

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gez v1, :cond_2

    .line 727
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 722
    :cond_2
    iget-object v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x41a0

    add-float/2addr v1, v2

    cmpg-float v1, v1, p3

    if-gtz v1, :cond_0

    .line 724
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isTiltAngleAcceptable(II)Z
    .locals 3
    .parameter "rotation"
    .parameter "tiltAngle"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 577
    sget-object v2, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    aget-object v2, v2, p1

    aget v2, v2, v1

    if-lt p2, v2, :cond_0

    sget-object v2, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    aget-object v2, v2, p1

    aget v2, v2, v0

    if-gt p2, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private nextTiltHistoryIndex(I)I
    .locals 4
    .parameter "index"

    .prologue
    .line 731
    if-nez p1, :cond_0

    const/16 p1, 0x28

    .end local p1
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 732
    .restart local p1
    iget-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    aget-wide v0, v0, p1

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_1
    const/4 p1, -0x1

    goto :goto_0
.end method

.method private static remainingMS(JJ)F
    .locals 2
    .parameter "now"
    .parameter "until"

    .prologue
    .line 736
    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sub-long v0, p2, p0

    long-to-float v0, v0

    const v1, 0x358637bd

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    const-wide/high16 v1, -0x8000

    .line 666
    iput-wide v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredTimestampNanos:J

    .line 667
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    .line 668
    iput-wide v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    .line 669
    iput-wide v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    .line 670
    iput-wide v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    .line 671
    invoke-direct {p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotation()V

    .line 672
    invoke-direct {p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearTiltHistory()V

    .line 673
    return-void
.end method

.method private updatePredictedRotation(JI)V
    .locals 1
    .parameter "now"
    .parameter "rotation"

    .prologue
    .line 681
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    if-eq v0, p3, :cond_0

    .line 682
    iput p3, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    .line 683
    iput-wide p1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    .line 685
    :cond_0
    return-void
.end method


# virtual methods
.method public getProposedRotation()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 383
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 26
    .parameter "event"

    .prologue
    .line 389
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v17, v20, v21

    .line 390
    .local v17, x:F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v18, v20, v21

    .line 391
    .local v18, y:F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v19, v20, v21

    .line 393
    .local v19, z:F
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$100()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 394
    const-string v20, "WindowOrientationListener"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Raw acceleration vector: x="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", y="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", z="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", magnitude="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    mul-float v22, v17, v17

    mul-float v23, v18, v18

    add-float v22, v22, v23

    mul-float v23, v19, v19

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    move-object/from16 v0, p1

    iget-wide v8, v0, Landroid/hardware/SensorEvent;->timestamp:J

    .line 404
    .local v8, now:J
    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredTimestampNanos:J

    .line 405
    .local v13, then:J
    sub-long v20, v8, v13

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x358637bd

    mul-float v16, v20, v21

    .line 407
    .local v16, timeDeltaMS:F
    cmp-long v20, v8, v13

    if-ltz v20, :cond_1

    const-wide/32 v20, 0x3b9aca00

    add-long v20, v20, v13

    cmp-long v20, v8, v20

    if-gtz v20, :cond_1

    const/16 v20, 0x0

    cmpl-float v20, v17, v20

    if-nez v20, :cond_9

    const/16 v20, 0x0

    cmpl-float v20, v18, v20

    if-nez v20, :cond_9

    const/16 v20, 0x0

    cmpl-float v20, v19, v20

    if-nez v20, :cond_9

    .line 410
    :cond_1
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$100()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 411
    const-string v20, "WindowOrientationListener"

    const-string v21, "Resetting orientation listener."

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->reset()V

    .line 414
    const/4 v12, 0x1

    .line 434
    .local v12, skipSample:Z
    :goto_0
    move-object/from16 v0, p0

    iput-wide v8, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredTimestampNanos:J

    .line 435
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    .line 436
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    .line 437
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    .line 439
    const/4 v3, 0x0

    .line 440
    .local v3, isAccelerating:Z
    const/4 v4, 0x0

    .line 441
    .local v4, isFlat:Z
    const/4 v5, 0x0

    .line 442
    .local v5, isSwinging:Z
    if-nez v12, :cond_4

    .line 444
    mul-float v20, v17, v17

    mul-float v21, v18, v18

    add-float v20, v20, v21

    mul-float v21, v19, v19

    add-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v6

    .line 445
    .local v6, magnitude:F
    const/high16 v20, 0x3f80

    cmpg-float v20, v6, v20

    if-gez v20, :cond_d

    .line 446
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$100()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 447
    const-string v20, "WindowOrientationListener"

    const-string v21, "Ignoring sensor data, magnitude too close to zero."

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotation()V

    .line 529
    .end local v6           #magnitude:F
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    .line 530
    .local v10, oldProposedRotation:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v20, v0

    if-ltz v20, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->isPredictedRotationAcceptable(J)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 531
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    .line 535
    :cond_6
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$100()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 536
    const-string v20, "WindowOrientationListener"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Result: currentRotation="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", proposedRotation="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", predictedRotation="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", timeDeltaMS="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", isAccelerating="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", isFlat="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", isSwinging="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", timeUntilSettledMS="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    move-wide/from16 v22, v0

    const-wide/32 v24, 0x2625a00

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    invoke-static {v8, v9, v0, v1}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", timeUntilAccelerationDelayExpiredMS="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    move-wide/from16 v22, v0

    const-wide/32 v24, 0x1dcd6500

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    invoke-static {v8, v9, v0, v1}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", timeUntilFlatDelayExpiredMS="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    move-wide/from16 v22, v0

    const-wide/32 v24, 0x1dcd6500

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    invoke-static {v8, v9, v0, v1}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", timeUntilSwingDelayExpiredMS="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    move-wide/from16 v22, v0

    const-wide/32 v24, 0x11e1a300

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    invoke-static {v8, v9, v0, v1}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v10, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    move/from16 v20, v0

    if-ltz v20, :cond_8

    .line 556
    const-string v20, "WindowOrientationListener"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Proposed rotation changed!  proposedRotation="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", oldProposedRotation="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const-string v20, "WindowOrientationListener"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Result: currentRotation="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", proposedRotation="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", predictedRotation="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", timeDeltaMS="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", isAccelerating="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", isFlat="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", isSwinging="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", x, y, z:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 569
    const-string v20, "WindowOrientationListener"

    const-string v21, "onProposedRotationChanged finish"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_8
    return-void

    .line 416
    .end local v3           #isAccelerating:Z
    .end local v4           #isFlat:Z
    .end local v5           #isSwinging:Z
    .end local v10           #oldProposedRotation:I
    .end local v12           #skipSample:Z
    :cond_9
    const/high16 v20, 0x4348

    add-float v20, v20, v16

    div-float v2, v16, v20

    .line 417
    .local v2, alpha:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->isNaN(F)Z

    move-result v20

    if-nez v20, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->isNaN(F)Z

    move-result v20

    if-nez v20, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->isNaN(F)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 419
    :cond_a
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    .line 420
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    .line 421
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    .line 424
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    move/from16 v20, v0

    sub-float v20, v17, v20

    mul-float v20, v20, v2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    move/from16 v21, v0

    add-float v17, v20, v21

    .line 425
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    move/from16 v20, v0

    sub-float v20, v18, v20

    mul-float v20, v20, v2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    move/from16 v21, v0

    add-float v18, v20, v21

    .line 426
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    move/from16 v20, v0

    sub-float v20, v19, v20

    mul-float v20, v20, v2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    move/from16 v21, v0

    add-float v19, v20, v21

    .line 427
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$100()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 428
    const-string v20, "WindowOrientationListener"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Filtered acceleration vector: x="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", y="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", z="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", magnitude="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    mul-float v22, v17, v17

    mul-float v23, v18, v18

    add-float v22, v22, v23

    mul-float v23, v19, v19

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_c
    const/4 v12, 0x0

    .restart local v12       #skipSample:Z
    goto/16 :goto_0

    .line 452
    .end local v2           #alpha:F
    .restart local v3       #isAccelerating:Z
    .restart local v4       #isFlat:Z
    .restart local v5       #isSwinging:Z
    .restart local v6       #magnitude:F
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->isAccelerating(F)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 453
    const/4 v3, 0x1

    .line 454
    move-object/from16 v0, p0

    iput-wide v8, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    .line 463
    :cond_e
    div-float v20, v19, v6

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->asin(D)D

    move-result-wide v20

    const-wide v22, 0x404ca5dc20000000L

    mul-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v15, v0

    .line 465
    .local v15, tiltAngle:I
    int-to-float v0, v15

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v8, v9, v1}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->addTiltHistoryEntry(JF)V

    .line 468
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->isFlat(J)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 469
    const/4 v4, 0x1

    .line 470
    move-object/from16 v0, p0

    iput-wide v8, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    .line 472
    :cond_f
    int-to-float v0, v15

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v8, v9, v1}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->isSwinging(JF)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 473
    const/4 v5, 0x1

    .line 474
    move-object/from16 v0, p0

    iput-wide v8, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    .line 479
    :cond_10
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v20

    const/16 v21, 0x4b

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_12

    .line 480
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$100()Z

    move-result v20

    if-eqz v20, :cond_11

    .line 481
    const-string v20, "WindowOrientationListener"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Ignoring sensor data, tilt angle too high: tiltAngle="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_11
    invoke-direct/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotation()V

    goto/16 :goto_1

    .line 489
    :cond_12
    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x404ca5dc20000000L

    mul-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v11, v0

    .line 491
    .local v11, orientationAngle:I
    if-gez v11, :cond_13

    .line 493
    add-int/lit16 v11, v11, 0x168

    .line 497
    :cond_13
    add-int/lit8 v20, v11, 0x2d

    div-int/lit8 v7, v20, 0x5a

    .line 498
    .local v7, nearestRotation:I
    const/16 v20, 0x4

    move/from16 v0, v20

    if-ne v7, v0, :cond_14

    .line 499
    const/4 v7, 0x0

    .line 503
    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v15}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->isTiltAngleAcceptable(II)Z

    move-result v20

    if-eqz v20, :cond_15

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->isOrientationAngleAcceptable(II)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 506
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v7}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->updatePredictedRotation(JI)V

    .line 507
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$100()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 508
    const-string v20, "WindowOrientationListener"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Predicted: tiltAngle="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", orientationAngle="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", predictedRotation="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", predictedRotationAgeMS="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    move-wide/from16 v22, v0

    sub-long v22, v8, v22

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    const v23, 0x358637bd

    mul-float v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 517
    :cond_15
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$100()Z

    move-result v20

    if-eqz v20, :cond_16

    .line 518
    const-string v20, "WindowOrientationListener"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Ignoring sensor data, no predicted rotation: tiltAngle="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", orientationAngle="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_16
    invoke-direct/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotation()V

    goto/16 :goto_1
.end method
