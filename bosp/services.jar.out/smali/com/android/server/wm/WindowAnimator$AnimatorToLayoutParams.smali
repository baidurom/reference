.class Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimatorToLayoutParams"
.end annotation


# instance fields
.field mBulkUpdateParams:I

.field mPendingLayoutChanges:Landroid/util/SparseIntArray;

.field mUpdateQueued:Z

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
