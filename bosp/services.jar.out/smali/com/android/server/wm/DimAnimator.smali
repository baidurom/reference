.class Lcom/android/server/wm/DimAnimator;
.super Ljava/lang/Object;
.source "DimAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DimAnimator$Parameters;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "DimAnimator"


# instance fields
.field mDimCurrentAlpha:F

.field mDimDeltaPerMs:F

.field mDimShown:Z

.field mDimSurface:Landroid/view/Surface;

.field mDimTargetAlpha:F

.field mLastDimAnimTime:J

.field mLastDimHeight:I

.field mLastDimWidth:I


# direct methods
.method constructor <init>(Landroid/view/SurfaceSession;I)V
    .locals 8
    .parameter "session"
    .parameter "layerStack"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    .line 46
    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-eqz v0, :cond_2

    .line 47
    new-instance v0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    const-string v2, "DimAnimator"

    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, -0x1

    const v6, 0x20004

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    .line 56
    :goto_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_SURFACE_ALLOC:Z

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  DIM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": CREATE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v0, p2}, Landroid/view/Surface;->setLayerStack(I)V

    .line 60
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setAlpha(F)V

    .line 61
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->show()V

    .line 65
    :goto_1
    return-void

    .line 52
    :cond_2
    new-instance v0, Landroid/view/Surface;

    const-string v2, "DimAnimator"

    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, -0x1

    const v6, 0x20004

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v7

    .line 63
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "WindowManager"

    const-string v1, "Exception creating Dim surface"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public kill()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    .line 207
    :cond_0
    return-void
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "prefix"
    .parameter "pw"

    .prologue
    .line 210
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 211
    const-string v0, "mDimSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 212
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mLastDimWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " x "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 213
    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mLastDimHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 214
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 215
    const-string v0, "mDimShown="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 216
    const-string v0, " current="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 217
    const-string v0, " target="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 218
    const-string v0, " delta="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 219
    const-string v0, " lastAnimTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 220
    return-void
.end method

.method updateParameters(Landroid/content/res/Resources;Lcom/android/server/wm/DimAnimator$Parameters;J)V
    .locals 15
    .parameter "res"
    .parameter "params"
    .parameter "currentTime"

    .prologue
    .line 72
    iget-object v11, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    if-nez v11, :cond_1

    .line 73
    const-string v11, "DimAnimator"

    const-string v12, "updateParameters: no Surface"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWidth:I

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimHeight:I

    if-le v11, v12, :cond_7

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWidth:I

    .line 81
    .local v3, dmax:I
    :goto_1
    int-to-double v11, v3

    const-wide/high16 v13, 0x3ff8

    mul-double/2addr v11, v13

    double-to-int v6, v11

    .line 82
    .local v6, dw:I
    int-to-double v11, v3

    const-wide/high16 v13, 0x3ff8

    mul-double/2addr v11, v13

    double-to-int v2, v11

    .line 83
    .local v2, dh:I
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 84
    .local v10, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, p2

    iget v8, v0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimTarget:F

    .line 85
    .local v8, target:F
    iget-boolean v11, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    if-nez v11, :cond_8

    .line 86
    sget-boolean v11, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v11, :cond_2

    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  DIM "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": SHOW pos=(0,0) ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_2
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    .line 90
    :try_start_0
    iput v6, p0, Lcom/android/server/wm/DimAnimator;->mLastDimWidth:I

    .line 91
    iput v2, p0, Lcom/android/server/wm/DimAnimator;->mLastDimHeight:I

    .line 93
    iget-object v11, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    mul-int/lit8 v12, v6, -0x1

    div-int/lit8 v12, v12, 0x6

    mul-int/lit8 v13, v2, -0x1

    div-int/lit8 v13, v13, 0x6

    invoke-virtual {v11, v12, v13}, Landroid/view/Surface;->setPosition(II)V

    .line 94
    iget-object v11, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v11, v6, v2}, Landroid/view/Surface;->setSize(II)V

    .line 95
    iget-object v11, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v11}, Landroid/view/Surface;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_3
    :goto_2
    iget-object v11, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    iget v12, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Landroid/view/Surface;->setLayer(I)V

    .line 109
    sget-boolean v11, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v11, :cond_4

    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  DIM "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": layer="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " target="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_4
    iget v11, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpl-float v11, v11, v8

    if-eqz v11, :cond_0

    .line 114
    move-wide/from16 v0, p3

    iput-wide v0, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    .line 115
    iget-boolean v11, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v11, :cond_a

    iget-object v11, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v11, :cond_a

    iget-object v11, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v11}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v4

    .line 118
    .local v4, duration:J
    :goto_3
    iget v11, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpl-float v11, v8, v11

    if-lez v11, :cond_5

    .line 119
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 120
    .local v9, tv:Landroid/util/TypedValue;
    const/high16 v11, 0x112

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v9, v12}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 122
    iget v11, v9, Landroid/util/TypedValue;->type:I

    const/4 v12, 0x6

    if-ne v11, v12, :cond_b

    .line 123
    long-to-float v11, v4

    long-to-float v12, v4

    invoke-virtual {v9, v11, v12}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v11

    float-to-long v4, v11

    .line 129
    .end local v9           #tv:Landroid/util/TypedValue;
    :cond_5
    :goto_4
    const-wide/16 v11, 0x1

    cmp-long v11, v4, v11

    if-gez v11, :cond_6

    .line 131
    const-wide/16 v4, 0x1

    .line 133
    :cond_6
    iput v8, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    .line 134
    iget v11, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    iget v12, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    sub-float/2addr v11, v12

    long-to-float v12, v4

    div-float/2addr v11, v12

    iput v11, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    goto/16 :goto_0

    .line 80
    .end local v2           #dh:I
    .end local v3           #dmax:I
    .end local v4           #duration:J
    .end local v6           #dw:I
    .end local v8           #target:F
    .end local v10           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_7
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimHeight:I

    goto/16 :goto_1

    .line 96
    .restart local v2       #dh:I
    .restart local v3       #dmax:I
    .restart local v6       #dw:I
    .restart local v8       #target:F
    .restart local v10       #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :catch_0
    move-exception v7

    .line 97
    .local v7, e:Ljava/lang/RuntimeException;
    const-string v11, "WindowManager"

    const-string v12, "Failure showing dim surface"

    invoke-static {v11, v12, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 99
    .end local v7           #e:Ljava/lang/RuntimeException;
    :cond_8
    iget v11, p0, Lcom/android/server/wm/DimAnimator;->mLastDimWidth:I

    if-ne v11, v6, :cond_9

    iget v11, p0, Lcom/android/server/wm/DimAnimator;->mLastDimHeight:I

    if-eq v11, v2, :cond_3

    .line 100
    :cond_9
    iput v6, p0, Lcom/android/server/wm/DimAnimator;->mLastDimWidth:I

    .line 101
    iput v2, p0, Lcom/android/server/wm/DimAnimator;->mLastDimHeight:I

    .line 102
    iget-object v11, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v11, v6, v2}, Landroid/view/Surface;->setSize(II)V

    .line 104
    iget-object v11, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    mul-int/lit8 v12, v6, -0x1

    div-int/lit8 v12, v12, 0x6

    mul-int/lit8 v13, v2, -0x1

    div-int/lit8 v13, v13, 0x6

    invoke-virtual {v11, v12, v13}, Landroid/view/Surface;->setPosition(II)V

    goto/16 :goto_2

    .line 115
    :cond_a
    const-wide/16 v4, 0xc8

    goto :goto_3

    .line 124
    .restart local v4       #duration:J
    .restart local v9       #tv:Landroid/util/TypedValue;
    :cond_b
    iget v11, v9, Landroid/util/TypedValue;->type:I

    const/16 v12, 0x10

    if-lt v11, v12, :cond_5

    iget v11, v9, Landroid/util/TypedValue;->type:I

    const/16 v12, 0x1f

    if-gt v11, v12, :cond_5

    .line 126
    iget v11, v9, Landroid/util/TypedValue;->data:I

    int-to-long v4, v11

    goto :goto_4
.end method

.method updateSurface(ZJZ)Z
    .locals 10
    .parameter "dimming"
    .parameter "currentTime"
    .parameter "displayFrozen"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 143
    iget-object v3, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    if-nez v3, :cond_1

    .line 144
    const-string v3, "DimAnimator"

    const-string v4, "updateSurface: no Surface"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 199
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    if-nez p1, :cond_2

    .line 149
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_2

    .line 150
    iput-wide p2, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    .line 151
    iput v7, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    .line 152
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    neg-float v3, v3

    const/high16 v4, 0x4348

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    .line 156
    :cond_2
    iget-wide v3, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    cmp-long v3, v3, v8

    if-eqz v3, :cond_5

    const/4 v0, 0x1

    .line 157
    .local v0, animating:Z
    :goto_1
    if-eqz v0, :cond_0

    .line 158
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    iget-wide v5, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    sub-long v5, p2, v5

    long-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    .line 160
    if-eqz p4, :cond_6

    .line 162
    const/4 v0, 0x0

    .line 176
    :cond_3
    :goto_2
    if-eqz v0, :cond_9

    .line 177
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v2, :cond_4

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  DIM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": alpha="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_4
    iput-wide p2, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    .line 180
    iget-object v2, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {v2, v3}, Landroid/view/Surface;->setAlpha(F)V

    goto :goto_0

    .end local v0           #animating:Z
    :cond_5
    move v0, v2

    .line 156
    goto :goto_1

    .line 163
    .restart local v0       #animating:Z
    :cond_6
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_7

    .line 164
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 165
    const/4 v0, 0x0

    goto :goto_2

    .line 167
    :cond_7
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    cmpg-float v3, v3, v7

    if-gez v3, :cond_8

    .line 168
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 169
    const/4 v0, 0x0

    goto :goto_2

    .line 172
    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    .line 182
    :cond_9
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    iput v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    .line 183
    iput-wide v8, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    .line 184
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v3, :cond_a

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  DIM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": final alpha="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_a
    iget-object v3, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {v3, v4}, Landroid/view/Surface;->setAlpha(F)V

    .line 187
    if-nez p1, :cond_0

    .line 188
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v3, :cond_b

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  DIM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": HIDE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_b
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->hide()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_3
    iput-boolean v2, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    goto/16 :goto_0

    .line 192
    :catch_0
    move-exception v1

    .line 193
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "WindowManager"

    const-string v4, "Illegal argument exception hiding dim surface"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
