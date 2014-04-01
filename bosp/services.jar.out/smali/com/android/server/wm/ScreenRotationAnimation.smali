.class Lcom/android/server/wm/ScreenRotationAnimation;
.super Ljava/lang/Object;
.source "ScreenRotationAnimation.java"


# static fields
.field static DEBUG:Z = false

.field static final FREEZE_LAYER:I = 0x1e8480

.field static final TAG:Ljava/lang/String; = "ScreenRotationAnimation"


# instance fields
.field mBlackFrame:Lcom/android/server/wm/BlackFrame;

.field final mContext:Landroid/content/Context;

.field mCurRotation:I

.field mEnterAnimation:Landroid/view/animation/Animation;

.field final mEnterTransformation:Landroid/view/animation/Transformation;

.field mExitAnimation:Landroid/view/animation/Animation;

.field final mExitTransformation:Landroid/view/animation/Transformation;

.field mHeight:I

.field mOriginalHeight:I

.field mOriginalRotation:I

.field mOriginalWidth:I

.field mSnapshotDeltaRotation:I

.field final mSnapshotFinalMatrix:Landroid/graphics/Matrix;

.field final mSnapshotInitialMatrix:Landroid/graphics/Matrix;

.field mSnapshotRotation:I

.field mStarted:Z

.field mSurface:Landroid/view/Surface;

.field final mTmpFloats:[F

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceSession;ZIII)V
    .locals 11
    .parameter "context"
    .parameter "session"
    .parameter "inTransaction"
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "originalRotation"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    .line 55
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    .line 58
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    .line 59
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    .line 60
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 61
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    .line 65
    iput-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    .line 68
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotRotation:I

    .line 69
    const/4 v1, 0x1

    move/from16 v0, p6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    move/from16 v0, p6

    if-ne v0, v1, :cond_5

    .line 71
    :cond_0
    move/from16 v0, p5

    iput v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    .line 72
    iput p4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    .line 78
    :goto_0
    move/from16 v0, p6

    iput v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    .line 79
    iput p4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    .line 80
    move/from16 v0, p5

    iput v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    .line 82
    if-nez p3, :cond_2

    .line 83
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_1

    const-string v1, "WindowManager"

    const-string v2, ">>> OPEN TRANSACTION ScreenRotationAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_1
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 90
    :cond_2
    :try_start_0
    new-instance v1, Landroid/view/Surface;

    const/4 v3, 0x0

    const-string v4, "FreezeSurface"

    const/4 v5, -0x1

    iget v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    const/4 v8, -0x1

    const v9, 0x30004

    move-object v2, p2

    invoke-direct/range {v1 .. v9}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    .line 92
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_6

    .line 94
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    if-nez p3, :cond_4

    .line 108
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 109
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_4

    const-string v1, "WindowManager"

    const-string v2, "<<< CLOSE TRANSACTION ScreenRotationAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_4
    :goto_1
    return-void

    .line 74
    :cond_5
    iput p4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    .line 75
    move/from16 v0, p5

    iput v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    goto :goto_0

    .line 97
    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    const v2, 0x1e8481

    invoke-virtual {v1, v2}, Landroid/view/Surface;->setLayer(I)V

    .line 98
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    :goto_2
    :try_start_2
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  FREEZE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": CREATE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    move/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    if-nez p3, :cond_4

    .line 108
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 109
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_4

    const-string v1, "WindowManager"

    const-string v2, "<<< CLOSE TRANSACTION ScreenRotationAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 99
    :catch_0
    move-exception v10

    .line 100
    .local v10, e:Landroid/view/Surface$OutOfResourcesException;
    :try_start_3
    const-string v1, "ScreenRotationAnimation"

    const-string v2, "Unable to allocate freeze surface"

    invoke-static {v1, v2, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 107
    .end local v10           #e:Landroid/view/Surface$OutOfResourcesException;
    :catchall_0
    move-exception v1

    if-nez p3, :cond_7

    .line 108
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 109
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v2, :cond_7

    const-string v2, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION ScreenRotationAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    throw v1
.end method

.method public static createRotationMatrix(IIILandroid/graphics/Matrix;)V
    .locals 2
    .parameter "rotation"
    .parameter "width"
    .parameter "height"
    .parameter "outMatrix"

    .prologue
    const/4 v1, 0x0

    .line 148
    packed-switch p0, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 150
    :pswitch_0
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0

    .line 153
    :pswitch_1
    const/high16 v0, 0x42b4

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 154
    int-to-float v0, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 157
    :pswitch_2
    const/high16 v0, 0x4334

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 158
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 161
    :pswitch_3
    const/high16 v0, 0x4387

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 162
    int-to-float v0, p1

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static deltaRotation(II)I
    .locals 1
    .parameter "oldRotation"
    .parameter "newRotation"

    .prologue
    .line 120
    sub-int v0, p1, p0

    .line 121
    .local v0, delta:I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 122
    :cond_0
    return v0
.end method


# virtual methods
.method public dismiss(Landroid/view/SurfaceSession;JFII)Z
    .locals 8
    .parameter "session"
    .parameter "maxAnimationDuration"
    .parameter "animationScale"
    .parameter "finalWidth"
    .parameter "finalHeight"

    .prologue
    const/4 v4, 0x0

    .line 186
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-nez v5, :cond_0

    .line 250
    :goto_0
    return v4

    .line 192
    :cond_0
    iget v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    iget v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-static {v5, v6}, Lcom/android/server/wm/ScreenRotationAnimation;->deltaRotation(II)I

    move-result v0

    .line 194
    .local v0, delta:I
    packed-switch v0, :pswitch_data_0

    .line 225
    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    iget v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v5, p5, p6, v6, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 226
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    iget v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v5, p5, p6, v6, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 227
    iput-boolean v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    .line 229
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, p2, p3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 230
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, p4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 231
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, p2, p3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 232
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, p4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 234
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v4, :cond_1

    const-string v4, "WindowManager"

    const-string v5, ">>> OPEN TRANSACTION ScreenRotationAnimation.dismiss"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_1
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 239
    :try_start_0
    new-instance v3, Landroid/graphics/Rect;

    neg-int v4, p5

    neg-int v5, p6

    mul-int/lit8 v6, p5, 0x2

    mul-int/lit8 v7, p6, 0x2

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 240
    .local v3, outer:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5, p5, p6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 241
    .local v2, inner:Landroid/graphics/Rect;
    new-instance v4, Lcom/android/server/wm/BlackFrame;

    const v5, 0x1e8480

    invoke-direct {v4, p1, v3, v2, v5}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceSession;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iput-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 246
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v4, :cond_2

    const-string v4, "WindowManager"

    const-string v5, "<<< CLOSE TRANSACTION ScreenRotationAnimation.dismiss"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .end local v2           #inner:Landroid/graphics/Rect;
    .end local v3           #outer:Landroid/graphics/Rect;
    :cond_2
    :goto_2
    const/4 v4, 0x1

    goto :goto_0

    .line 196
    :pswitch_0
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v6, #anim@screen_rotate_0_exit#t

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    .line 198
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v6, #anim@screen_rotate_0_enter#t

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_1

    .line 202
    :pswitch_1
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v6, #anim@screen_rotate_plus_90_exit#t

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    .line 204
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v6, #anim@screen_rotate_plus_90_enter#t

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1

    .line 208
    :pswitch_2
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v6, #anim@screen_rotate_180_exit#t

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    .line 210
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v6, #anim@screen_rotate_180_enter#t

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1

    .line 214
    :pswitch_3
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v6, #anim@screen_rotate_minus_90_exit#t

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    .line 216
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v6, #anim@screen_rotate_minus_90_enter#t

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, e:Landroid/view/Surface$OutOfResourcesException;
    :try_start_1
    const-string v4, "ScreenRotationAnimation"

    const-string v5, "Unable to allocate black surface"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 246
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v4, :cond_2

    const-string v4, "WindowManager"

    const-string v5, "<<< CLOSE TRANSACTION ScreenRotationAnimation.dismiss"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 245
    .end local v1           #e:Landroid/view/Surface$OutOfResourcesException;
    :catchall_0
    move-exception v4

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 246
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v5, :cond_3

    const-string v5, "WindowManager"

    const-string v6, "<<< CLOSE TRANSACTION ScreenRotationAnimation.dismiss"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    throw v4

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public enableDebugLog(Z)V
    .locals 0
    .parameter "en"

    .prologue
    .line 336
    sput-boolean p1, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG:Z

    .line 337
    return-void
.end method

.method public getEnterTransformation()Landroid/view/animation/Transformation;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method hasScreenshot()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public kill()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 254
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 255
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  FREEZE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": DESTROY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 257
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 264
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3

    .line 267
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 268
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    .line 270
    :cond_3
    return-void
.end method

.method public setRotation(I)V
    .locals 4
    .parameter "rotation"

    .prologue
    .line 169
    iput p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    .line 174
    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotRotation:I

    invoke-static {p1, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->deltaRotation(II)I

    move-result v0

    .line 175
    .local v0, delta:I
    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 177
    sget-boolean v1, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**** ROTATION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f80

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->setSnapshotTransform(Landroid/graphics/Matrix;F)V

    .line 179
    return-void
.end method

.method setSnapshotTransform(Landroid/graphics/Matrix;F)V
    .locals 12
    .parameter "matrix"
    .parameter "alpha"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 126
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 128
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    aget v3, v3, v9

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/view/Surface;->setPosition(FF)V

    .line 130
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    aget v3, v3, v7

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    aget v4, v4, v10

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    aget v6, v6, v11

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/Surface;->setMatrix(FFFF)V

    .line 133
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, p2}, Landroid/view/Surface;->setAlpha(F)V

    .line 134
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 135
    new-array v1, v11, [F

    const/4 v2, 0x0

    aput v2, v1, v7

    const/4 v2, 0x0

    aput v2, v1, v8

    iget v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    int-to-float v2, v2

    aput v2, v1, v9

    iget v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    int-to-float v2, v2

    aput v2, v1, v10

    .line 136
    .local v1, srcPnts:[F
    new-array v0, v11, [F

    .line 137
    .local v0, dstPnts:[F
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 138
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Original  : ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")-("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transformed: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")-("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .end local v0           #dstPnts:[F
    .end local v1           #srcPnts:[F
    :cond_0
    return-void
.end method

.method public stepAnimation(J)Z
    .locals 8
    .parameter "now"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 277
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    if-nez v4, :cond_1

    .line 328
    :cond_0
    :goto_0
    return v2

    .line 281
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v4, :cond_4

    .line 282
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_2

    .line 283
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 285
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_3

    .line 286
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 288
    :cond_3
    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    .line 291
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->clear()V

    .line 292
    const/4 v1, 0x0

    .line 293
    .local v1, moreExit:Z
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_7

    .line 294
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, p1, p2, v5}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v1

    .line 295
    sget-boolean v4, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stepped exit: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_5
    if-nez v1, :cond_7

    .line 297
    sget-boolean v4, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "WindowManager"

    const-string v5, "Exit animation done!"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_6
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->cancel()V

    .line 299
    iput-object v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimation:Landroid/view/animation/Animation;

    .line 300
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->clear()V

    .line 301
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_7

    .line 302
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->hide()V

    .line 307
    :cond_7
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->clear()V

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, moreEnter:Z
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_8

    .line 310
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, p1, p2, v5}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .line 311
    if-nez v0, :cond_a

    .line 312
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->cancel()V

    .line 313
    iput-object v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    .line 314
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->clear()V

    .line 315
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v4, :cond_8

    .line 316
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v4}, Lcom/android/server/wm/BlackFrame;->hide()V

    .line 325
    :cond_8
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 326
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/ScreenRotationAnimation;->setSnapshotTransform(Landroid/graphics/Matrix;F)V

    .line 328
    if-nez v0, :cond_9

    if-eqz v1, :cond_0

    :cond_9
    move v2, v3

    goto/16 :goto_0

    .line 319
    :cond_a
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v4, :cond_8

    .line 320
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_1
.end method
