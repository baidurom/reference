.class Lcom/android/internal/policy/impl/keyguard/PagedView$10;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/PagedView;->onFlingToDelete(Landroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCount:I

.field private mOffset:F

.field private mStartTime:J

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/PagedView;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2413
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    iput-wide p2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$10;->val$startTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2414
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$10;->mCount:I

    .line 2418
    iget-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$10;->val$startTime:J

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$10;->mStartTime:J

    .line 2419
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5
    .parameter "t"

    .prologue
    .line 2423
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$10;->mCount:I

    if-gez v0, :cond_1

    .line 2424
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$10;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$10;->mCount:I

    .line 2430
    :cond_0
    :goto_0
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$10;->mOffset:F

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0

    .line 2425
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$10;->mCount:I

    if-nez v0, :cond_0

    .line 2426
    const/high16 v0, 0x3f00

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$10;->mStartTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->access$900(Lcom/android/internal/policy/impl/keyguard/PagedView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$10;->mOffset:F

    .line 2428
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$10;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$10;->mCount:I

    goto :goto_0
.end method
