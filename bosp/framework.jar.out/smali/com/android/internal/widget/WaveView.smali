.class public Lcom/android/internal/widget/WaveView;
.super Landroid/view/View;
.source "WaveView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/WaveView$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DELAY_INCREMENT:J = 0xfL

.field private static final DELAY_INCREMENT2:J = 0xcL

.field private static final DURATION:J = 0x12cL

.field private static final FINAL_DELAY:J = 0xc8L

.field private static final FINAL_DURATION:J = 0xc8L

.field private static final GRAB_HANDLE_RADIUS_SCALE_ACCESSIBILITY_DISABLED:F = 0.5f

.field private static final GRAB_HANDLE_RADIUS_SCALE_ACCESSIBILITY_ENABLED:F = 1.0f

.field private static final RESET_TIMEOUT:J = 0xbb8L

.field private static final RING_DELAY:J = 0x514L

.field private static final SHORT_DELAY:J = 0x64L

.field private static final STATE_ATTEMPTING:I = 0x3

.field private static final STATE_READY:I = 0x1

.field private static final STATE_RESET_LOCK:I = 0x0

.field private static final STATE_START_ATTEMPT:I = 0x2

.field private static final STATE_UNLOCK_ATTEMPT:I = 0x4

.field private static final STATE_UNLOCK_SUCCESS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "WaveView"

.field private static final VIBRATE_LONG:J = 0x14L

.field private static final VIBRATE_SHORT:J = 0x14L

.field private static final WAVE_COUNT:I = 0x14

.field private static final WAVE_DELAY:J = 0x64L

.field private static final WAVE_DURATION:J = 0x7d0L


# instance fields
.field private final mAddWaveAction:Ljava/lang/Runnable;

.field private mCurrentWave:I

.field private mDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/DrawableHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mFingerDown:Z

.field private mFinishWaves:Z

.field private mGrabbedState:I

.field private mLightWaves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/DrawableHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mLockCenterX:F

.field private mLockCenterY:F

.field private mLockState:I

.field private final mLockTimerActions:Ljava/lang/Runnable;

.field private mMouseX:F

.field private mMouseY:F

.field private mOnTriggerListener:Lcom/android/internal/widget/WaveView$OnTriggerListener;

.field private mRingRadius:F

.field private mSnapRadius:I

.field private mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

.field private mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

.field private mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWaveCount:I

.field private mWaveTimerDelay:J

.field private mWavesRunning:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/WaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x0

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/WaveView;->mDrawables:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    .line 88
    iput-boolean v2, p0, Lcom/android/internal/widget/WaveView;->mFingerDown:Z

    .line 89
    const/high16 v0, 0x4336

    iput v0, p0, Lcom/android/internal/widget/WaveView;->mRingRadius:F

    .line 90
    const/16 v0, 0x88

    iput v0, p0, Lcom/android/internal/widget/WaveView;->mSnapRadius:I

    .line 91
    iput v3, p0, Lcom/android/internal/widget/WaveView;->mWaveCount:I

    .line 92
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    .line 93
    iput v2, p0, Lcom/android/internal/widget/WaveView;->mCurrentWave:I

    .line 101
    iput v2, p0, Lcom/android/internal/widget/WaveView;->mLockState:I

    .line 102
    iput v2, p0, Lcom/android/internal/widget/WaveView;->mGrabbedState:I

    .line 414
    new-instance v0, Lcom/android/internal/widget/WaveView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/WaveView$1;-><init>(Lcom/android/internal/widget/WaveView;)V

    iput-object v0, p0, Lcom/android/internal/widget/WaveView;->mLockTimerActions:Ljava/lang/Runnable;

    .line 431
    new-instance v0, Lcom/android/internal/widget/WaveView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/WaveView$2;-><init>(Lcom/android/internal/widget/WaveView;)V

    iput-object v0, p0, Lcom/android/internal/widget/WaveView;->mAddWaveAction:Ljava/lang/Runnable;

    .line 117
    invoke-direct {p0}, Lcom/android/internal/widget/WaveView;->initDrawables()V

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/WaveView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/widget/WaveView;->mLockState:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/widget/WaveView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/internal/widget/WaveView;->mLockState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/WaveView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/widget/WaveView;->mMouseX:F

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/WaveView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/internal/widget/WaveView;->mFinishWaves:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/widget/WaveView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/internal/widget/WaveView;->mWavesRunning:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/widget/WaveView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mAddWaveAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/WaveView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/WaveView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/widget/WaveView;->mMouseY:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/WaveView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/WaveView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/widget/WaveView;->mSnapRadius:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/WaveView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/internal/widget/WaveView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    return-wide p1
.end method

.method static synthetic access$614(Lcom/android/internal/widget/WaveView;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/WaveView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/widget/WaveView;->mCurrentWave:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/widget/WaveView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/internal/widget/WaveView;->mCurrentWave:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/widget/WaveView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/WaveView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/widget/WaveView;->mWaveCount:I

    return v0
.end method

.method private announceUnlockHandle()V
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x10404df

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/WaveView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 570
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/WaveView;->sendAccessibilityEvent(I)V

    .line 571
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/WaveView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 572
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 2
    .parameter "whichHandle"

    .prologue
    .line 604
    const-wide/16 v0, 0x14

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/WaveView;->vibrate(J)V

    .line 605
    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mOnTriggerListener:Lcom/android/internal/widget/WaveView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mOnTriggerListener:Lcom/android/internal/widget/WaveView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/WaveView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 608
    :cond_0
    return-void
.end method

.method private getScaledGrabHandleRadius()F
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    const/high16 v0, 0x3f80

    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v1}, Lcom/android/internal/widget/DrawableHolder;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 561
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f00

    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v1}, Lcom/android/internal/widget/DrawableHolder;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method private initDrawables()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x3dcccccd

    .line 168
    new-instance v3, Lcom/android/internal/widget/DrawableHolder;

    const v4, 0x1080607

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/WaveView;->createDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/DrawableHolder;-><init>(Landroid/graphics/drawable/BitmapDrawable;)V

    iput-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    .line 169
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    iget v4, p0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/DrawableHolder;->setX(F)V

    .line 170
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    iget v4, p0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/DrawableHolder;->setY(F)V

    .line 171
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleX(F)V

    .line 172
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleY(F)V

    .line 173
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    .line 174
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mDrawables:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v3, Lcom/android/internal/widget/DrawableHolder;

    const v4, 0x1080605

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/WaveView;->createDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/DrawableHolder;-><init>(Landroid/graphics/drawable/BitmapDrawable;)V

    iput-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    .line 177
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    iget v4, p0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/DrawableHolder;->setX(F)V

    .line 178
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    iget v4, p0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/DrawableHolder;->setY(F)V

    .line 179
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleX(F)V

    .line 180
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleY(F)V

    .line 181
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    .line 182
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mDrawables:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v3, Lcom/android/internal/widget/DrawableHolder;

    const v4, 0x1080606

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/WaveView;->createDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/DrawableHolder;-><init>(Landroid/graphics/drawable/BitmapDrawable;)V

    iput-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    .line 185
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    iget v4, p0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/DrawableHolder;->setX(F)V

    .line 186
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    iget v4, p0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/DrawableHolder;->setY(F)V

    .line 187
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleX(F)V

    .line 188
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleY(F)V

    .line 189
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    .line 190
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mDrawables:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    const v3, 0x1080608

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/WaveView;->createDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 193
    .local v2, wave:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/android/internal/widget/WaveView;->mWaveCount:I

    if-ge v1, v3, :cond_0

    .line 194
    new-instance v0, Lcom/android/internal/widget/DrawableHolder;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/DrawableHolder;-><init>(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 195
    .local v0, holder:Lcom/android/internal/widget/DrawableHolder;
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {v0, v6}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .end local v0           #holder:Lcom/android/internal/widget/DrawableHolder;
    :cond_0
    return-void
.end method

.method private setGrabbedState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 615
    iget v0, p0, Lcom/android/internal/widget/WaveView;->mGrabbedState:I

    if-eq p1, v0, :cond_0

    .line 616
    iput p1, p0, Lcom/android/internal/widget/WaveView;->mGrabbedState:I

    .line 617
    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mOnTriggerListener:Lcom/android/internal/widget/WaveView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mOnTriggerListener:Lcom/android/internal/widget/WaveView$OnTriggerListener;

    iget v1, p0, Lcom/android/internal/widget/WaveView;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/WaveView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 621
    :cond_0
    return-void
.end method

.method private tryTransitionToStartAttemptState(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 539
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v4}, Lcom/android/internal/widget/DrawableHolder;->getX()F

    move-result v4

    sub-float v1, v3, v4

    .line 540
    .local v1, dx:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v4}, Lcom/android/internal/widget/DrawableHolder;->getY()F

    move-result v4

    sub-float v2, v3, v4

    .line 541
    .local v2, dy:F
    float-to-double v3, v1

    float-to-double v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v0, v3

    .line 542
    .local v0, dist:F
    invoke-direct {p0}, Lcom/android/internal/widget/WaveView;->getScaledGrabHandleRadius()F

    move-result v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_0

    .line 543
    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/android/internal/widget/WaveView;->setGrabbedState(I)V

    .line 544
    iget v3, p0, Lcom/android/internal/widget/WaveView;->mLockState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 545
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/internal/widget/WaveView;->mLockState:I

    .line 546
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 547
    invoke-direct {p0}, Lcom/android/internal/widget/WaveView;->announceUnlockHandle()V

    .line 551
    :cond_0
    return-void
.end method

.method private declared-synchronized vibrate(J)V
    .locals 5
    .parameter "duration"

    .prologue
    const/4 v0, 0x1

    .line 578
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_2

    .line 581
    .local v0, hapticEnabled:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 582
    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_0

    .line 583
    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/internal/widget/WaveView;->mVibrator:Landroid/os/Vibrator;

    .line 586
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    :cond_1
    monitor-exit p0

    return-void

    .line 578
    .end local v0           #hapticEnabled:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private waveUpdateFrame(FFZ)V
    .locals 34
    .parameter "mouseX"
    .parameter "mouseY"
    .parameter "fingerDown"

    .prologue
    .line 201
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    sub-float v4, p1, v4

    float-to-double v0, v4

    move-wide/from16 v25, v0

    .line 202
    .local v25, distX:D
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    sub-float v4, p2, v4

    float-to-double v0, v4

    move-wide/from16 v27, v0

    .line 203
    .local v27, distY:D
    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v29, v0

    .line 204
    .local v29, dragDistance:I
    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v32

    .line 205
    .local v32, touchA:D
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    float-to-double v4, v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/widget/WaveView;->mRingRadius:F

    float-to-double v10, v8

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v4, v10

    double-to-float v9, v4

    .line 206
    .local v9, ringX:F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    float-to-double v4, v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/widget/WaveView;->mRingRadius:F

    float-to-double v10, v8

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v4, v10

    double-to-float v0, v4

    move/from16 v16, v0

    .line 208
    .local v16, ringY:F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/WaveView;->mLockState:I

    packed-switch v4, :pswitch_data_0

    .line 392
    .end local v9           #ringX:F
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/DrawableHolder;->startAnimations(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/DrawableHolder;->startAnimations(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/DrawableHolder;->startAnimations(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 395
    return-void

    .line 211
    .restart local v9       #ringX:F
    :pswitch_0
    const-wide/16 v4, 0x64

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    .line 212
    const/16 v30, 0x0

    .end local v9           #ringX:F
    .local v30, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_0

    .line 213
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/DrawableHolder;

    .line 214
    .local v2, holder:Lcom/android/internal/widget/DrawableHolder;
    const-wide/16 v3, 0x12c

    const-wide/16 v5, 0x0

    const-string v7, "alpha"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 212
    add-int/lit8 v30, v30, 0x1

    goto :goto_1

    .line 216
    .end local v2           #holder:Lcom/android/internal/widget/DrawableHolder;
    :cond_0
    const/16 v30, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_1

    .line 217
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/DrawableHolder;->startAnimations(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 216
    add-int/lit8 v30, v30, 0x1

    goto :goto_2

    .line 220
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x0

    const-string/jumbo v8, "x"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x0

    const-string/jumbo v8, "y"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x0

    const-string/jumbo v8, "scaleX"

    const v9, 0x3dcccccd

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x0

    const-string/jumbo v8, "scaleY"

    const v9, 0x3dcccccd

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x0

    const-string v8, "alpha"

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 226
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v5, "y"

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v5, "scaleX"

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v5, "scaleY"

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string v5, "alpha"

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->setX(F)V

    .line 232
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->setY(F)V

    .line 233
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const v5, 0x3dcccccd

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleX(F)V

    .line 234
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const v5, 0x3dcccccd

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleY(F)V

    .line 235
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    .line 236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x64

    const-string/jumbo v8, "scaleX"

    const/high16 v9, 0x3f80

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x64

    const-string/jumbo v8, "scaleY"

    const/high16 v9, 0x3f80

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x64

    const-string v8, "alpha"

    const/high16 v9, 0x3f80

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 240
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v5, "y"

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v5, "scaleX"

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v5, "scaleY"

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-string v5, "alpha"

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->setX(F)V

    .line 246
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->setY(F)V

    .line 247
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const v5, 0x3dcccccd

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleX(F)V

    .line 248
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const v5, 0x3dcccccd

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleY(F)V

    .line 249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    .line 250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x64

    const-string/jumbo v8, "x"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x64

    const-string/jumbo v8, "y"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x64

    const-string/jumbo v8, "scaleX"

    const/high16 v9, 0x3f80

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x64

    const-string/jumbo v8, "scaleY"

    const/high16 v9, 0x3f80

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x64

    const-string v8, "alpha"

    const/high16 v9, 0x3f80

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 256
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLockTimerActions:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/WaveView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 258
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/widget/WaveView;->mLockState:I

    goto/16 :goto_0

    .line 263
    .end local v30           #i:I
    .restart local v9       #ringX:F
    :pswitch_1
    const-wide/16 v4, 0x64

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    goto/16 :goto_0

    .line 268
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v5, "y"

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v5, "scaleX"

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v5, "scaleY"

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string v5, "alpha"

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    const/high16 v8, 0x4336

    add-float/2addr v5, v8

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->setX(F)V

    .line 274
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->setY(F)V

    .line 275
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const v5, 0x3dcccccd

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleX(F)V

    .line 276
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const v5, 0x3dcccccd

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleY(F)V

    .line 277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    .line 279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x64

    const-string/jumbo v8, "scaleX"

    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 280
    .end local v9           #ringX:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x64

    const-string/jumbo v8, "scaleY"

    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 281
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x64

    const-string v8, "alpha"

    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 283
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x0

    const-string/jumbo v8, "scaleX"

    const/high16 v9, 0x3f80

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 284
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x0

    const-string/jumbo v8, "scaleY"

    const/high16 v9, 0x3f80

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x0

    const-string v8, "alpha"

    const/high16 v9, 0x3f80

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 287
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/widget/WaveView;->mLockState:I

    goto/16 :goto_0

    .line 292
    .restart local v9       #ringX:F
    :pswitch_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/WaveView;->mSnapRadius:I

    move/from16 v0, v29

    if-le v0, v4, :cond_3

    .line 293
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/widget/WaveView;->mFinishWaves:Z

    .line 294
    if-eqz p3, :cond_2

    .line 295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-string/jumbo v8, "x"

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 296
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-string/jumbo v15, "y"

    const/16 v17, 0x1

    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-string/jumbo v22, "scaleX"

    const/high16 v23, 0x3f80

    const/16 v24, 0x1

    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-string/jumbo v22, "scaleY"

    const/high16 v23, 0x3f80

    const/16 v24, 0x1

    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-string v22, "alpha"

    const/high16 v23, 0x3f80

    const/16 v24, 0x1

    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    goto/16 :goto_0

    .line 302
    :cond_2
    const/4 v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/widget/WaveView;->mLockState:I

    goto/16 :goto_0

    .line 306
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/widget/WaveView;->mWavesRunning:Z

    if-nez v4, :cond_4

    .line 307
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/widget/WaveView;->mWavesRunning:Z

    .line 308
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/widget/WaveView;->mFinishWaves:Z

    .line 310
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mAddWaveAction:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/widget/WaveView;->mWaveTimerDelay:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10, v11}, Lcom/android/internal/widget/WaveView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 312
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-string/jumbo v22, "x"

    const/16 v24, 0x1

    move/from16 v23, p1

    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-string/jumbo v22, "y"

    const/16 v24, 0x1

    move/from16 v23, p2

    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-string/jumbo v22, "scaleX"

    const/high16 v23, 0x3f80

    const/16 v24, 0x1

    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-string/jumbo v22, "scaleY"

    const/high16 v23, 0x3f80

    const/16 v24, 0x1

    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-string v22, "alpha"

    const/high16 v23, 0x3f80

    const/16 v24, 0x1

    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    goto/16 :goto_0

    .line 322
    :pswitch_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/WaveView;->mSnapRadius:I

    move/from16 v0, v29

    if-le v0, v4, :cond_7

    .line 323
    const/16 v31, 0x0

    .local v31, n:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v31

    if-ge v0, v4, :cond_5

    .line 324
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/DrawableHolder;

    .line 325
    .local v3, wave:Lcom/android/internal/widget/DrawableHolder;
    const-wide/16 v4, 0x3e8

    add-int/lit8 v8, v31, 0x6

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/widget/WaveView;->mCurrentWave:I

    sub-int/2addr v8, v10

    int-to-long v10, v8

    mul-long/2addr v4, v10

    const-wide/16 v10, 0xa

    div-long v6, v4, v10

    .line 326
    .local v6, delay:J
    const-wide/16 v4, 0xc8

    const-string/jumbo v8, "x"

    const/4 v10, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 327
    const-wide/16 v11, 0xc8

    const-string/jumbo v15, "y"

    const/16 v17, 0x1

    move-object v10, v3

    move-wide v13, v6

    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 328
    const-wide/16 v18, 0xc8

    const-string/jumbo v22, "scaleX"

    const v23, 0x3dcccccd

    const/16 v24, 0x1

    move-object/from16 v17, v3

    move-wide/from16 v20, v6

    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 329
    const-wide/16 v18, 0xc8

    const-string/jumbo v22, "scaleY"

    const v23, 0x3dcccccd

    const/16 v24, 0x1

    move-object/from16 v17, v3

    move-wide/from16 v20, v6

    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 330
    const-wide/16 v18, 0xc8

    const-string v22, "alpha"

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v17, v3

    move-wide/from16 v20, v6

    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 323
    add-int/lit8 v31, v31, 0x1

    goto :goto_3

    .line 332
    .end local v3           #wave:Lcom/android/internal/widget/DrawableHolder;
    .end local v6           #delay:J
    :cond_5
    const/16 v30, 0x0

    .restart local v30       #i:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_6

    .line 333
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/DrawableHolder;->startAnimations(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 332
    add-int/lit8 v30, v30, 0x1

    goto :goto_4

    .line 336
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v17, v0

    const-wide/16 v18, 0xc8

    const-wide/16 v20, 0x0

    const-string/jumbo v22, "x"

    const/16 v24, 0x0

    move/from16 v23, v9

    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 337
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v11, 0xc8

    const-wide/16 v13, 0x0

    const-string/jumbo v15, "y"

    const/16 v17, 0x0

    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v17, v0

    const-wide/16 v18, 0xc8

    const-wide/16 v20, 0x0

    const-string/jumbo v22, "scaleX"

    const v23, 0x3dcccccd

    const/16 v24, 0x0

    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v17, v0

    const-wide/16 v18, 0xc8

    const-wide/16 v20, 0x0

    const-string/jumbo v22, "scaleY"

    const v23, 0x3dcccccd

    const/16 v24, 0x0

    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v17, v0

    const-wide/16 v18, 0xc8

    const-wide/16 v20, 0x0

    const-string v22, "alpha"

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v17, v0

    const-wide/16 v18, 0xc8

    const-wide/16 v20, 0xc8

    const-string v22, "alpha"

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 344
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v5, "y"

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v5, "scaleX"

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string/jumbo v5, "scaleY"

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-string v5, "alpha"

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->removeAnimationFor(Ljava/lang/String;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v4, v9}, Lcom/android/internal/widget/DrawableHolder;->setX(F)V

    .line 350
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/DrawableHolder;->setY(F)V

    .line 351
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const v5, 0x3dcccccd

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleX(F)V

    .line 352
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const v5, 0x3dcccccd

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->setScaleY(F)V

    .line 353
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/DrawableHolder;->setAlpha(F)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v17, v0

    const-wide/16 v18, 0xc8

    const-wide/16 v20, 0x0

    const-string/jumbo v22, "x"

    const/16 v24, 0x1

    move/from16 v23, v9

    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 356
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v11, 0xc8

    const-wide/16 v13, 0x0

    const-string/jumbo v15, "y"

    const/16 v17, 0x1

    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v17, v0

    const-wide/16 v18, 0xc8

    const-wide/16 v20, 0x0

    const-string/jumbo v22, "scaleX"

    const/high16 v23, 0x3f80

    const/16 v24, 0x1

    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v17, v0

    const-wide/16 v18, 0xc8

    const-wide/16 v20, 0x0

    const-string/jumbo v22, "scaleY"

    const/high16 v23, 0x3f80

    const/16 v24, 0x1

    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v17, v0

    const-wide/16 v18, 0xc8

    const-wide/16 v20, 0x0

    const-string v22, "alpha"

    const/high16 v23, 0x3f80

    const/16 v24, 0x1

    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v17, v0

    const-wide/16 v18, 0xc8

    const-wide/16 v20, 0xc8

    const-string/jumbo v22, "scaleX"

    const/high16 v23, 0x4040

    const/16 v24, 0x0

    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v17, v0

    const-wide/16 v18, 0xc8

    const-wide/16 v20, 0xc8

    const-string/jumbo v22, "scaleY"

    const/high16 v23, 0x4040

    const/16 v24, 0x0

    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockDefault:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v17, v0

    const-wide/16 v18, 0xc8

    const-wide/16 v20, 0xc8

    const-string v22, "alpha"

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v17, v0

    const-wide/16 v18, 0xc8

    const-wide/16 v20, 0x0

    const-string/jumbo v22, "x"

    const/16 v24, 0x0

    move/from16 v23, v9

    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 366
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    const-wide/16 v11, 0xc8

    const-wide/16 v13, 0x0

    const-string/jumbo v15, "y"

    const/16 v17, 0x0

    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v17, v0

    const-wide/16 v18, 0xc8

    const-wide/16 v20, 0xc8

    const-string/jumbo v22, "scaleX"

    const/high16 v23, 0x4040

    const/16 v24, 0x0

    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v17, v0

    const-wide/16 v18, 0xc8

    const-wide/16 v20, 0xc8

    const-string/jumbo v22, "scaleY"

    const/high16 v23, 0x4040

    const/16 v24, 0x0

    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    move-object/from16 v17, v0

    const-wide/16 v18, 0xc8

    const-wide/16 v20, 0xc8

    const-string v22, "alpha"

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/widget/DrawableHolder;->addAnimTo(JJLjava/lang/String;FZ)Landroid/animation/ObjectAnimator;

    .line 372
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLockTimerActions:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/WaveView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 374
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mLockTimerActions:Ljava/lang/Runnable;

    const-wide/16 v10, 0xbb8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10, v11}, Lcom/android/internal/widget/WaveView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 376
    const/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/widget/WaveView;->dispatchTriggerEvent(I)V

    .line 377
    const/4 v4, 0x5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/widget/WaveView;->mLockState:I

    goto/16 :goto_0

    .line 379
    .end local v30           #i:I
    .end local v31           #n:I
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/widget/WaveView;->mLockState:I

    goto/16 :goto_0

    .line 385
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/WaveView;->mAddWaveAction:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/WaveView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method createDrawable(I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .parameter "resId"

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 399
    .local v1, res:Landroid/content/res/Resources;
    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 400
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v0}, Lcom/android/internal/widget/DrawableHolder;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v1}, Lcom/android/internal/widget/DrawableHolder;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/internal/widget/WaveView;->mUnlockRing:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v0}, Lcom/android/internal/widget/DrawableHolder;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mUnlockHalo:Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v1}, Lcom/android/internal/widget/DrawableHolder;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 650
    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->invalidate()V

    .line 651
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 405
    iget v1, p0, Lcom/android/internal/widget/WaveView;->mMouseX:F

    iget v2, p0, Lcom/android/internal/widget/WaveView;->mMouseY:F

    iget-boolean v3, p0, Lcom/android/internal/widget/WaveView;->mFingerDown:Z

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/WaveView;->waveUpdateFrame(FFZ)V

    .line 406
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/DrawableHolder;->draw(Landroid/graphics/Canvas;)V

    .line 406
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 409
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 410
    iget-object v1, p0, Lcom/android/internal/widget/WaveView;->mLightWaves:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/DrawableHolder;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/DrawableHolder;->draw(Landroid/graphics/Canvas;)V

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 412
    :cond_1
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 472
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 474
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 485
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/WaveView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 486
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 488
    .end local v0           #action:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 476
    .restart local v0       #action:I
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 479
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 482
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v8, 0x4000

    const/high16 v7, -0x8000

    .line 141
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 142
    .local v4, widthSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 143
    .local v1, heightSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 144
    .local v5, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 148
    .local v2, heightSpecSize:I
    if-ne v4, v7, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->getSuggestedMinimumWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 156
    .local v3, width:I
    :goto_0
    if-ne v1, v7, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->getSuggestedMinimumWidth()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 164
    .local v0, height:I
    :goto_1
    invoke-virtual {p0, v3, v0}, Lcom/android/internal/widget/WaveView;->setMeasuredDimension(II)V

    .line 165
    return-void

    .line 150
    .end local v0           #height:I
    .end local v3           #width:I
    :cond_0
    if-ne v4, v8, :cond_1

    .line 151
    move v3, v5

    .restart local v3       #width:I
    goto :goto_0

    .line 153
    .end local v3           #width:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->getSuggestedMinimumWidth()I

    move-result v3

    .restart local v3       #width:I
    goto :goto_0

    .line 158
    :cond_2
    if-ne v1, v8, :cond_3

    .line 159
    move v0, v2

    .restart local v0       #height:I
    goto :goto_1

    .line 161
    .end local v0           #height:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->getSuggestedMinimumHeight()I

    move-result v0

    .restart local v0       #height:I
    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/high16 v1, 0x3f00

    .line 122
    int-to-float v0, p1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/WaveView;->mLockCenterX:F

    .line 123
    int-to-float v0, p2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/WaveView;->mLockCenterY:F

    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 125
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 493
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 494
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/WaveView;->mMouseX:F

    .line 495
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/WaveView;->mMouseY:F

    .line 496
    const/4 v1, 0x0

    .line 497
    .local v1, handled:Z
    packed-switch v0, :pswitch_data_0

    .line 529
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->invalidate()V

    .line 530
    if-eqz v1, :cond_0

    :goto_1
    return v2

    .line 499
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mLockTimerActions:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/WaveView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 500
    iput-boolean v2, p0, Lcom/android/internal/widget/WaveView;->mFingerDown:Z

    .line 501
    invoke-direct {p0, p1}, Lcom/android/internal/widget/WaveView;->tryTransitionToStartAttemptState(Landroid/view/MotionEvent;)V

    .line 502
    const/4 v1, 0x1

    .line 503
    goto :goto_0

    .line 506
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/WaveView;->tryTransitionToStartAttemptState(Landroid/view/MotionEvent;)V

    .line 507
    const/4 v1, 0x1

    .line 508
    goto :goto_0

    .line 512
    :pswitch_2
    iput-boolean v6, p0, Lcom/android/internal/widget/WaveView;->mFingerDown:Z

    .line 513
    iget-object v3, p0, Lcom/android/internal/widget/WaveView;->mLockTimerActions:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/widget/WaveView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 514
    invoke-direct {p0, v6}, Lcom/android/internal/widget/WaveView;->setGrabbedState(I)V

    .line 520
    iget v3, p0, Lcom/android/internal/widget/WaveView;->mMouseX:F

    iget v4, p0, Lcom/android/internal/widget/WaveView;->mMouseY:F

    iget-boolean v5, p0, Lcom/android/internal/widget/WaveView;->mFingerDown:Z

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/widget/WaveView;->waveUpdateFrame(FFZ)V

    .line 521
    const/4 v1, 0x1

    .line 522
    goto :goto_0

    .line 525
    :pswitch_3
    iput-boolean v6, p0, Lcom/android/internal/widget/WaveView;->mFingerDown:Z

    .line 526
    const/4 v1, 0x1

    goto :goto_0

    .line 530
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    .line 497
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 655
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/WaveView;->mLockState:I

    .line 656
    invoke-virtual {p0}, Lcom/android/internal/widget/WaveView;->invalidate()V

    .line 657
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/internal/widget/WaveView$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/internal/widget/WaveView;->mOnTriggerListener:Lcom/android/internal/widget/WaveView$OnTriggerListener;

    .line 597
    return-void
.end method
