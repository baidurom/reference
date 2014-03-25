.class public abstract Landroid/view/animation/Animation;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/Animation$AnimationListener;,
        Landroid/view/animation/Animation$Description;
    }
.end annotation


# static fields
.field public static final ABSOLUTE:I = 0x0

.field public static final INFINITE:I = -0x1

.field public static final RELATIVE_TO_PARENT:I = 0x2

.field public static final RELATIVE_TO_SELF:I = 0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field public static final START_ON_FIRST_FRAME:I = -0x1

#the value of this static final field might be set in the static constructor
.field private static final USE_CLOSEGUARD:Z = false

.field public static final ZORDER_BOTTOM:I = -0x1

.field public static final ZORDER_NORMAL:I = 0x0

.field public static final ZORDER_TOP:I = 0x1


# instance fields
.field private final guard:Ldalvik/system/CloseGuard;

.field private mBackgroundColor:I

.field mCycleFlip:Z

.field private mDetachWallpaper:Z

.field mDuration:J

.field mEnded:Z

.field mFillAfter:Z

.field mFillBefore:Z

.field mFillEnabled:Z

.field mInitialized:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mListener:Landroid/view/animation/Animation$AnimationListener;

.field private mListenerHandler:Landroid/os/Handler;

.field private mMore:Z

.field private mOnEnd:Ljava/lang/Runnable;

.field private mOnRepeat:Ljava/lang/Runnable;

.field private mOnStart:Ljava/lang/Runnable;

.field private mOneMoreTime:Z

.field mPreviousRegion:Landroid/graphics/RectF;

.field mPreviousTransformation:Landroid/view/animation/Transformation;

.field mRegion:Landroid/graphics/RectF;

.field mRepeatCount:I

.field mRepeatMode:I

.field mRepeated:I

.field private mScaleFactor:F

.field mStartOffset:J

.field mStartTime:J

.field mStarted:Z

.field mTransformation:Landroid/view/animation/Transformation;

.field private mZAdjustment:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 96
    const-string v0, "log.closeguard.Animation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/animation/Animation;->USE_CLOSEGUARD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 107
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 113
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 119
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 126
    iput-boolean v3, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 132
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 137
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    .line 142
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 159
    iput v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 164
    iput v2, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 171
    iput v3, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    .line 197
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    .line 202
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    .line 204
    iput-boolean v3, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 205
    iput-boolean v3, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 207
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 208
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 209
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 210
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 212
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    .line 224
    invoke-virtual {p0}, Landroid/view/animation/Animation;->ensureInterpolator()V

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 107
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 113
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 119
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 126
    iput-boolean v5, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 132
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 137
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    .line 142
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 159
    iput v4, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 164
    iput v4, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 171
    iput v5, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    .line 197
    const/high16 v2, 0x3f80

    iput v2, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    .line 202
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    .line 204
    iput-boolean v5, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 205
    iput-boolean v5, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 207
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 208
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 209
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 210
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 212
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v2

    iput-object v2, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    .line 235
    sget-object v2, Lcom/android/internal/R$styleable;->Animation:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 237
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 238
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 240
    const/16 v2, 0x9

    iget-boolean v3, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 241
    const/4 v2, 0x3

    iget-boolean v3, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 242
    const/4 v2, 0x4

    iget-boolean v3, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 244
    const/4 v2, 0x6

    iget v3, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 245
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 247
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 249
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setBackgroundColor(I)V

    .line 251
    const/16 v2, 0xa

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 253
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 255
    .local v1, resID:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 257
    if-lez v1, :cond_0

    .line 258
    invoke-virtual {p0, p1, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    .line 261
    :cond_0
    invoke-virtual {p0}, Landroid/view/animation/Animation;->ensureInterpolator()V

    .line 262
    return-void
.end method

.method private fireAnimationEnd()V
    .locals 2

    .prologue
    .line 926
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 928
    :cond_1
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/animation/Animation;->mOnEnd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private fireAnimationRepeat()V
    .locals 2

    .prologue
    .line 919
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    .line 923
    :cond_0
    :goto_0
    return-void

    .line 921
    :cond_1
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/animation/Animation;->mOnRepeat:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private fireAnimationStart()V
    .locals 2

    .prologue
    .line 912
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/animation/Animation;->mOnStart:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 0
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 981
    return-void
.end method

.method public cancel()V
    .locals 3

    .prologue
    .line 302
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    if-nez v0, :cond_0

    .line 303
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationEnd()V

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 305
    const-string v0, "Animation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel mEnded = true, this ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 309
    :cond_0
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 311
    return-void
.end method

.method protected clone()Landroid/view/animation/Animation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 267
    .local v0, animation:Landroid/view/animation/Animation;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 268
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 269
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 270
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 271
    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public computeDurationHint()J
    .locals 4

    .prologue
    .line 826
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getRepeatCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public detach()V
    .locals 3

    .prologue
    .line 317
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    if-nez v0, :cond_0

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 319
    const-string v0, "Animation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach mEnded = true, this ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 321
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationEnd()V

    .line 323
    :cond_0
    return-void
.end method

.method protected ensureInterpolator()V
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    .line 815
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 817
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1061
    :try_start_0
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1065
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1067
    return-void

    .line 1065
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 763
    iget v0, p0, Landroid/view/animation/Animation;->mBackgroundColor:I

    return v0
.end method

.method public getDetachWallpaper()Z
    .locals 1

    .prologue
    .line 771
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 689
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    return-wide v0
.end method

.method public getFillAfter()Z
    .locals 1

    .prologue
    .line 744
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    return v0
.end method

.method public getFillBefore()Z
    .locals 1

    .prologue
    .line 733
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getInvalidateRegion(IIIILandroid/graphics/RectF;Landroid/view/animation/Transformation;)V
    .locals 9
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "invalidate"
    .parameter "transformation"

    .prologue
    const/high16 v8, -0x4080

    .line 1020
    iget-object v2, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 1021
    .local v2, tempRegion:Landroid/graphics/RectF;
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 1023
    .local v0, previousRegion:Landroid/graphics/RectF;
    int-to-float v4, p1

    int-to-float v5, p2

    int-to-float v6, p3

    int-to-float v7, p4

    invoke-virtual {p5, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1024
    invoke-virtual {p6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1026
    invoke-virtual {p5, v8, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 1027
    invoke-virtual {v2, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1028
    invoke-virtual {p5, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 1030
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1032
    iget-object v3, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 1033
    .local v3, tempTransformation:Landroid/view/animation/Transformation;
    iget-object v1, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 1035
    .local v1, previousTransformation:Landroid/view/animation/Transformation;
    invoke-virtual {v3, p6}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 1036
    invoke-virtual {p6, v1}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 1037
    invoke-virtual {v1, v3}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 1038
    return-void
.end method

.method public getRepeatCount()I
    .locals 1

    .prologue
    .line 720
    iget v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 709
    iget v0, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    return v0
.end method

.method protected getScaleFactor()F
    .locals 1

    .prologue
    .line 645
    iget v0, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    return v0
.end method

.method public getStartOffset()J
    .locals 2

    .prologue
    .line 699
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 679
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    return-wide v0
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 11
    .parameter "currentTime"
    .parameter "outTransformation"

    .prologue
    .line 840
    iget-wide v7, p0, Landroid/view/animation/Animation;->mStartTime:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 841
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 844
    :cond_0
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v5

    .line 845
    .local v5, startOffset:J
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 847
    .local v0, duration:J
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-eqz v7, :cond_9

    .line 848
    iget-wide v7, p0, Landroid/view/animation/Animation;->mStartTime:J

    add-long/2addr v7, v5

    sub-long v7, p1, v7

    long-to-float v7, v7

    long-to-float v8, v0

    div-float v4, v7, v8

    .line 855
    .local v4, normalizedTime:F
    :goto_0
    const/high16 v7, 0x3f80

    cmpl-float v7, v4, v7

    if-ltz v7, :cond_b

    const/4 v2, 0x1

    .line 856
    .local v2, expired:Z
    :goto_1
    if-nez v2, :cond_c

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 858
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    if-nez v7, :cond_1

    const/high16 v7, 0x3f80

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 860
    :cond_1
    const/4 v7, 0x0

    cmpl-float v7, v4, v7

    if-gez v7, :cond_2

    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    if-eqz v7, :cond_7

    :cond_2
    const/high16 v7, 0x3f80

    cmpg-float v7, v4, v7

    if-lez v7, :cond_3

    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    if-eqz v7, :cond_7

    .line 861
    :cond_3
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mStarted:Z

    if-nez v7, :cond_4

    .line 862
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationStart()V

    .line 863
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 864
    sget-boolean v7, Landroid/view/animation/Animation;->USE_CLOSEGUARD:Z

    if-eqz v7, :cond_4

    .line 865
    iget-object v7, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    const-string v8, "cancel or detach or getTransformation"

    invoke-virtual {v7, v8}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 869
    :cond_4
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    if-eqz v7, :cond_5

    const/high16 v7, 0x3f80

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 871
    :cond_5
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    if-eqz v7, :cond_6

    .line 872
    const/high16 v7, 0x3f80

    sub-float v4, v7, v4

    .line 875
    :cond_6
    iget-object v7, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 876
    .local v3, interpolatedTime:F
    invoke-virtual {p0, v3, p3}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 879
    .end local v3           #interpolatedTime:F
    :cond_7
    if-eqz v2, :cond_8

    .line 880
    iget v7, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    iget v8, p0, Landroid/view/animation/Animation;->mRepeated:I

    if-ne v7, v8, :cond_d

    .line 881
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mEnded:Z

    if-nez v7, :cond_8

    .line 882
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 883
    const-string v7, "Animation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getTransformation mEnded = true, this ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v7, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v7}, Ldalvik/system/CloseGuard;->close()V

    .line 885
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationEnd()V

    .line 903
    :cond_8
    :goto_3
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    if-nez v7, :cond_11

    iget-boolean v7, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    if-eqz v7, :cond_11

    .line 904
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 905
    const/4 v7, 0x1

    .line 908
    :goto_4
    return v7

    .line 852
    .end local v2           #expired:Z
    .end local v4           #normalizedTime:F
    :cond_9
    iget-wide v7, p0, Landroid/view/animation/Animation;->mStartTime:J

    cmp-long v7, p1, v7

    if-gez v7, :cond_a

    const/4 v4, 0x0

    .restart local v4       #normalizedTime:F
    :goto_5
    goto/16 :goto_0

    .end local v4           #normalizedTime:F
    :cond_a
    const/high16 v4, 0x3f80

    goto :goto_5

    .line 855
    .restart local v4       #normalizedTime:F
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 856
    .restart local v2       #expired:Z
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 888
    :cond_d
    iget v7, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    if-lez v7, :cond_e

    .line 889
    iget v7, p0, Landroid/view/animation/Animation;->mRepeated:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 892
    :cond_e
    iget v7, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_f

    .line 893
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    if-nez v7, :cond_10

    const/4 v7, 0x1

    :goto_6
    iput-boolean v7, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 896
    :cond_f
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 897
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 899
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationRepeat()V

    goto :goto_3

    .line 893
    :cond_10
    const/4 v7, 0x0

    goto :goto_6

    .line 908
    :cond_11
    iget-boolean v7, p0, Landroid/view/animation/Animation;->mMore:Z

    goto :goto_4
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;F)Z
    .locals 1
    .parameter "currentTime"
    .parameter "outTransformation"
    .parameter "scale"

    .prologue
    .line 946
    iput p4, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    .line 947
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    return v0
.end method

.method public getZAdjustment()I
    .locals 1

    .prologue
    .line 756
    iget v0, p0, Landroid/view/animation/Animation;->mZAdjustment:I

    return v0
.end method

.method public hasAlpha()Z
    .locals 1

    .prologue
    .line 1075
    const/4 v0, 0x0

    return v0
.end method

.method public hasEnded()Z
    .locals 3

    .prologue
    .line 965
    const-string v0, "Animation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasEnded mEnded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/animation/Animation;->mEnded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    return v0
.end method

.method public hasStarted()Z
    .locals 1

    .prologue
    .line 956
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    return v0
.end method

.method public initialize(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 351
    invoke-virtual {p0}, Landroid/view/animation/Animation;->reset()V

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 353
    return-void
.end method

.method public initializeInvalidateRegion(IIII)V
    .locals 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/high16 v6, -0x4080

    .line 1049
    iget-object v1, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 1050
    .local v1, region:Landroid/graphics/RectF;
    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1052
    invoke-virtual {v1, v6, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 1053
    iget-boolean v2, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    if-eqz v2, :cond_0

    .line 1054
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 1055
    .local v0, previousTransformation:Landroid/view/animation/Transformation;
    iget-object v2, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    invoke-virtual {p0, v2, v0}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 1057
    .end local v0           #previousTransformation:Landroid/view/animation/Transformation;
    :cond_0
    return-void
.end method

.method public isFillEnabled()Z
    .locals 1

    .prologue
    .line 562
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 280
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 281
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 282
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 283
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 284
    iput v1, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 285
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 286
    iput-boolean v2, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    .line 288
    return-void
.end method

.method protected resolveSize(IFII)F
    .locals 1
    .parameter "type"
    .parameter "value"
    .parameter "size"
    .parameter "parentSize"

    .prologue
    .line 995
    packed-switch p1, :pswitch_data_0

    .line 1003
    .end local p2
    :goto_0
    :pswitch_0
    return p2

    .line 999
    .restart local p2
    :pswitch_1
    int-to-float v0, p3

    mul-float/2addr p2, v0

    goto :goto_0

    .line 1001
    :pswitch_2
    int-to-float v0, p4

    mul-float/2addr p2, v0

    goto :goto_0

    .line 995
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public restrictDuration(J)V
    .locals 9
    .parameter "durationMillis"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 450
    iget-wide v2, p0, Landroid/view/animation/Animation;->mStartOffset:J

    cmp-long v2, v2, p1

    if-lez v2, :cond_1

    .line 451
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 452
    iput-wide v7, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 453
    iput v6, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    iget-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    iget-wide v4, p0, Landroid/view/animation/Animation;->mStartOffset:J

    add-long v0, v2, v4

    .line 458
    .local v0, dur:J
    cmp-long v2, v0, p1

    if-lez v2, :cond_2

    .line 459
    iget-wide v2, p0, Landroid/view/animation/Animation;->mStartOffset:J

    sub-long v2, p1, v2

    iput-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 460
    move-wide v0, p1

    .line 463
    :cond_2
    iget-wide v2, p0, Landroid/view/animation/Animation;->mDuration:J

    cmp-long v2, v2, v7

    if-gtz v2, :cond_3

    .line 464
    iput-wide v7, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 465
    iput v6, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    goto :goto_0

    .line 471
    :cond_3
    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    if-ltz v2, :cond_4

    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-gtz v2, :cond_4

    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    cmp-long v2, v2, p1

    if-lez v2, :cond_0

    .line 475
    :cond_4
    div-long v2, p1, v0

    long-to-int v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 476
    iget v2, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    if-gez v2, :cond_0

    .line 477
    iput v6, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    goto :goto_0
.end method

.method public scaleCurrentDuration(F)V
    .locals 2
    .parameter "scale"

    .prologue
    .line 488
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 489
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 490
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 806
    iput-object p1, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 807
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .parameter "bg"

    .prologue
    .line 632
    iput p1, p0, Landroid/view/animation/Animation;->mBackgroundColor:I

    .line 633
    return-void
.end method

.method public setDetachWallpaper(Z)V
    .locals 0
    .parameter "detachWallpaper"

    .prologue
    .line 658
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    .line 659
    return-void
.end method

.method public setDuration(J)V
    .locals 2
    .parameter "durationMillis"

    .prologue
    .line 433
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 434
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Animation duration cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_0
    iput-wide p1, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 437
    return-void
.end method

.method public setFillAfter(Z)V
    .locals 0
    .parameter "fillAfter"

    .prologue
    .line 611
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 612
    return-void
.end method

.method public setFillBefore(Z)V
    .locals 0
    .parameter "fillBefore"

    .prologue
    .line 595
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 596
    return-void
.end method

.method public setFillEnabled(Z)V
    .locals 0
    .parameter "fillEnabled"

    .prologue
    .line 577
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    .line 578
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resID"

    .prologue
    .line 396
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 397
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "i"

    .prologue
    .line 407
    iput-object p1, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 408
    return-void
.end method

.method public setListenerHandler(Landroid/os/Handler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 361
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 362
    new-instance v0, Landroid/view/animation/Animation$1;

    invoke-direct {v0, p0}, Landroid/view/animation/Animation$1;-><init>(Landroid/view/animation/Animation;)V

    iput-object v0, p0, Landroid/view/animation/Animation;->mOnStart:Ljava/lang/Runnable;

    .line 369
    new-instance v0, Landroid/view/animation/Animation$2;

    invoke-direct {v0, p0}, Landroid/view/animation/Animation$2;-><init>(Landroid/view/animation/Animation;)V

    iput-object v0, p0, Landroid/view/animation/Animation;->mOnRepeat:Ljava/lang/Runnable;

    .line 376
    new-instance v0, Landroid/view/animation/Animation$3;

    invoke-direct {v0, p0}, Landroid/view/animation/Animation$3;-><init>(Landroid/view/animation/Animation;)V

    iput-object v0, p0, Landroid/view/animation/Animation;->mOnEnd:Ljava/lang/Runnable;

    .line 384
    :cond_0
    iput-object p1, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    .line 385
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0
    .parameter "repeatCount"

    .prologue
    .line 549
    if-gez p1, :cond_0

    .line 550
    const/4 p1, -0x1

    .line 552
    :cond_0
    iput p1, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 553
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0
    .parameter "repeatMode"

    .prologue
    .line 536
    iput p1, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    .line 537
    return-void
.end method

.method public setStartOffset(J)V
    .locals 0
    .parameter "startOffset"

    .prologue
    .line 420
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 421
    return-void
.end method

.method public setStartTime(J)V
    .locals 4
    .parameter "startTimeMillis"

    .prologue
    const/4 v3, 0x0

    .line 503
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 504
    iput-boolean v3, p0, Landroid/view/animation/Animation;->mEnded:Z

    iput-boolean v3, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 505
    const-string v0, "Animation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStartTime mEnded = false, this ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iput-boolean v3, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 507
    iput v3, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 508
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 509
    return-void
.end method

.method public setZAdjustment(I)V
    .locals 0
    .parameter "zAdjustment"

    .prologue
    .line 622
    iput p1, p0, Landroid/view/animation/Animation;->mZAdjustment:I

    .line 623
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 516
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 517
    return-void
.end method

.method public startNow()V
    .locals 2

    .prologue
    .line 524
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 525
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 795
    const/4 v0, 0x1

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 1

    .prologue
    .line 783
    const/4 v0, 0x1

    return v0
.end method
