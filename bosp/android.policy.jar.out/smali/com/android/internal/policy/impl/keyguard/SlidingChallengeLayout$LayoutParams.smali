.class public Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SlidingChallengeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final CHILD_TYPE_CHALLENGE:I = 0x2

.field public static final CHILD_TYPE_EXPAND_CHALLENGE_HANDLE:I = 0x6

.field public static final CHILD_TYPE_NONE:I = 0x0

.field public static final CHILD_TYPE_SCRIM:I = 0x4

.field public static final CHILD_TYPE_WIDGETS:I = 0x5


# instance fields
.field public childType:I

.field public maxHeight:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1219
    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;-><init>(II)V

    .line 1220
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1223
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1209
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    .line 1224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 1241
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1209
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    .line 1243
    sget-object v1, Lcom/android/internal/R$styleable;->SlidingChallengeLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1245
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    .line 1247
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->maxHeight:I

    .line 1249
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1250
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 1227
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1209
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    .line 1228
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 1231
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1209
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    .line 1232
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 1235
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1209
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    .line 1237
    iget v0, p1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    .line 1238
    return-void
.end method
