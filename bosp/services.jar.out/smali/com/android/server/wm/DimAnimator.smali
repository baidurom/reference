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
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    .line 52
    :try_start_0
    new-instance v0, Landroid/view/Surface;

    const-string v2, "DimAnimator"

    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, -0x1

    const v6, 0x20004

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    .line 59
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v0, p2}, Landroid/view/Surface;->setLayerStack(I)V

    .line 60
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setAlpha(F)V

    .line 61
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v7

    .line 63
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "WindowManager"

    const-string v1, "Exception creating Dim surface"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public kill()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    .line 205
    :cond_0
    return-void
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "prefix"
    .parameter "pw"

    .prologue
    .line 208
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 209
    const-string v0, "mDimSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 210
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mLastDimWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " x "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 211
    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mLastDimHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 212
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 213
    const-string v0, "mDimShown="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 214
    const-string v0, " current="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 215
    const-string v0, " target="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 216
    const-string v0, " delta="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 217
    const-string v0, " lastAnimTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 218
    return-void
.end method

.method updateParameters(Landroid/content/res/Resources;Lcom/android/server/wm/DimAnimator$Parameters;J)V
    .locals 12
    .parameter "res"
    .parameter "params"
    .parameter "currentTime"

    .prologue
    .line 72
    iget-object v8, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    if-nez v8, :cond_1

    .line 73
    const-string v8, "DimAnimator"

    const-string v9, "updateParameters: no Surface"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget v8, p2, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWidth:I

    int-to-double v8, v8

    const-wide/high16 v10, 0x3ff8

    mul-double/2addr v8, v10

    double-to-int v3, v8

    .line 80
    .local v3, dw:I
    iget v8, p2, Lcom/android/server/wm/DimAnimator$Parameters;->mDimHeight:I

    int-to-double v8, v8

    const-wide/high16 v10, 0x3ff8

    mul-double/2addr v8, v10

    double-to-int v0, v8

    .line 81
    .local v0, dh:I
    iget-object v7, p2, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 82
    .local v7, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget v5, p2, Lcom/android/server/wm/DimAnimator$Parameters;->mDimTarget:F

    .line 83
    .local v5, target:F
    iget-boolean v8, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    if-nez v8, :cond_5

    .line 86
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    .line 88
    :try_start_0
    iput v3, p0, Lcom/android/server/wm/DimAnimator;->mLastDimWidth:I

    .line 89
    iput v0, p0, Lcom/android/server/wm/DimAnimator;->mLastDimHeight:I

    .line 91
    iget-object v8, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    mul-int/lit8 v9, v3, -0x1

    div-int/lit8 v9, v9, 0x6

    mul-int/lit8 v10, v0, -0x1

    div-int/lit8 v10, v10, 0x6

    invoke-virtual {v8, v9, v10}, Landroid/view/Surface;->setPosition(II)V

    .line 92
    iget-object v8, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v8, v3, v0}, Landroid/view/Surface;->setSize(II)V

    .line 93
    iget-object v8, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v8}, Landroid/view/Surface;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    iget v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Landroid/view/Surface;->setLayer(I)V

    .line 109
    iget v8, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpl-float v8, v8, v5

    if-eqz v8, :cond_0

    .line 112
    iput-wide p3, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    .line 113
    iget-boolean v8, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v8, :cond_7

    iget-object v8, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v8, :cond_7

    iget-object v8, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v8}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v1

    .line 116
    .local v1, duration:J
    :goto_2
    iget v8, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpl-float v8, v5, v8

    if-lez v8, :cond_3

    .line 117
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 118
    .local v6, tv:Landroid/util/TypedValue;
    const/high16 v8, 0x112

    const/4 v9, 0x1

    invoke-virtual {p1, v8, v6, v9}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 120
    iget v8, v6, Landroid/util/TypedValue;->type:I

    const/4 v9, 0x6

    if-ne v8, v9, :cond_8

    .line 121
    long-to-float v8, v1

    long-to-float v9, v1

    invoke-virtual {v6, v8, v9}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v8

    float-to-long v1, v8

    .line 127
    .end local v6           #tv:Landroid/util/TypedValue;
    :cond_3
    :goto_3
    const-wide/16 v8, 0x1

    cmp-long v8, v1, v8

    if-gez v8, :cond_4

    .line 129
    const-wide/16 v1, 0x1

    .line 131
    :cond_4
    iput v5, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    .line 132
    iget v8, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    iget v9, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    sub-float/2addr v8, v9

    long-to-float v9, v1

    div-float/2addr v8, v9

    iput v8, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    goto/16 :goto_0

    .line 94
    .end local v1           #duration:J
    :catch_0
    move-exception v4

    .line 95
    .local v4, e:Ljava/lang/RuntimeException;
    const-string v8, "WindowManager"

    const-string v9, "Failure showing dim surface"

    invoke-static {v8, v9, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 97
    .end local v4           #e:Ljava/lang/RuntimeException;
    :cond_5
    iget v8, p0, Lcom/android/server/wm/DimAnimator;->mLastDimWidth:I

    if-ne v8, v3, :cond_6

    iget v8, p0, Lcom/android/server/wm/DimAnimator;->mLastDimHeight:I

    if-eq v8, v0, :cond_2

    .line 98
    :cond_6
    iput v3, p0, Lcom/android/server/wm/DimAnimator;->mLastDimWidth:I

    .line 99
    iput v0, p0, Lcom/android/server/wm/DimAnimator;->mLastDimHeight:I

    .line 100
    iget-object v8, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v8, v3, v0}, Landroid/view/Surface;->setSize(II)V

    .line 102
    iget-object v8, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    mul-int/lit8 v9, v3, -0x1

    div-int/lit8 v9, v9, 0x6

    mul-int/lit8 v10, v0, -0x1

    div-int/lit8 v10, v10, 0x6

    invoke-virtual {v8, v9, v10}, Landroid/view/Surface;->setPosition(II)V

    goto :goto_1

    .line 113
    :cond_7
    const-wide/16 v1, 0xc8

    goto :goto_2

    .line 122
    .restart local v1       #duration:J
    .restart local v6       #tv:Landroid/util/TypedValue;
    :cond_8
    iget v8, v6, Landroid/util/TypedValue;->type:I

    const/16 v9, 0x10

    if-lt v8, v9, :cond_3

    iget v8, v6, Landroid/util/TypedValue;->type:I

    const/16 v9, 0x1f

    if-gt v8, v9, :cond_3

    .line 124
    iget v8, v6, Landroid/util/TypedValue;->data:I

    int-to-long v1, v8

    goto :goto_3
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

    .line 141
    iget-object v3, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    if-nez v3, :cond_1

    .line 142
    const-string v3, "DimAnimator"

    const-string v4, "updateSurface: no Surface"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 197
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    if-nez p1, :cond_2

    .line 147
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_2

    .line 148
    iput-wide p2, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    .line 149
    iput v7, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    .line 150
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    neg-float v3, v3

    const/high16 v4, 0x4348

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    .line 154
    :cond_2
    iget-wide v3, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    cmp-long v3, v3, v8

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    .line 155
    .local v0, animating:Z
    :goto_1
    if-eqz v0, :cond_0

    .line 156
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    iget-wide v5, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    sub-long v5, p2, v5

    long-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    .line 158
    if-eqz p4, :cond_5

    .line 160
    const/4 v0, 0x0

    .line 174
    :cond_3
    :goto_2
    if-eqz v0, :cond_8

    .line 177
    iput-wide p2, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    .line 178
    iget-object v2, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {v2, v3}, Landroid/view/Surface;->setAlpha(F)V

    goto :goto_0

    .end local v0           #animating:Z
    :cond_4
    move v0, v2

    .line 154
    goto :goto_1

    .line 161
    .restart local v0       #animating:Z
    :cond_5
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_6

    .line 162
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 163
    const/4 v0, 0x0

    goto :goto_2

    .line 165
    :cond_6
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    cmpg-float v3, v3, v7

    if-gez v3, :cond_7

    .line 166
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 167
    const/4 v0, 0x0

    goto :goto_2

    .line 170
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 180
    :cond_8
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    iput v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    .line 181
    iput-wide v8, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    .line 184
    iget-object v3, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {v3, v4}, Landroid/view/Surface;->setAlpha(F)V

    .line 185
    if-nez p1, :cond_0

    .line 189
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->hide()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_3
    iput-boolean v2, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    goto :goto_0

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "WindowManager"

    const-string v4, "Illegal argument exception hiding dim surface"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
