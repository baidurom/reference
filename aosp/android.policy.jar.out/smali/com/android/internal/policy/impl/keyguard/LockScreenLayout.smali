.class public Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;
.super Landroid/widget/FrameLayout;
.source "LockScreenLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final ANIMATE_BACK_DELAY:I = 0xc8

.field private static final ANIMATE_BACK_DURATION:I = 0xc8

.field private static final DEBUG:Z = false

.field protected static final INVALID_POINTER:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LockScreenLayout"

.field private static final TOUCH_DOWN_EMPTY:I = 0x1

.field private static final TOUCH_DOWN_ICON:I = 0x4

.field private static final TOUCH_MOVE_EMPTY:I = 0x2

.field private static final TOUCH_MOVE_ICON_DRAG_MOVE:I = 0x6

.field private static final TOUCH_MOVE_ICON_DRAG_START:I = 0x5

.field private static final TOUCH_MOVE_ICON_DRAG_TRIGGER:I = 0x7

.field private static final TOUCH_RESET:I = 0x0

.field private static final TOUCH_UP_EMPTY:I = 0x3

.field private static final TOUCH_UP_ICON:I = 0x8


# instance fields
.field final DRAG_BITMAP_PADDING:I

.field private mLockScreenX:F

.field private mLockScreenY:F

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchTriggered:Z

.field private mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

.field private mUnReadHintAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mTempRect:Landroid/graphics/Rect;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->DRAG_BITMAP_PADDING:I

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadHintAnimations:Ljava/util/ArrayList;

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mTempRect:Landroid/graphics/Rect;

    .line 54
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->DRAG_BITMAP_PADDING:I

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadHintAnimations:Ljava/util/ArrayList;

    .line 83
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->setMotionEventSplittingEnabled(Z)V

    .line 84
    return-void
.end method

.method private finishShakeAnimation()V
    .locals 4

    .prologue
    .line 152
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadHintAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 157
    .local v2, unReadAnimCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 158
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadHintAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;

    .line 159
    .local v1, shakeAnimation:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->completeAnimationImmediately()V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 161
    .end local v1           #shakeAnimation:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadHintAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F
    .locals 9
    .parameter "descendant"
    .parameter "coord"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 179
    const/high16 v1, 0x3f80

    .line 180
    .local v1, scale:F
    const/4 v4, 0x2

    new-array v0, v4, [F

    aget v4, p2, v7

    int-to-float v4, v4

    aput v4, v0, v7

    aget v4, p2, v8

    int-to-float v4, v4

    aput v4, v0, v8

    .line 181
    .local v0, pt:[F
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v1, v4

    .line 183
    aget v4, v0, v7

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    .line 184
    aget v4, v0, v8

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v8

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 186
    .local v3, viewParent:Landroid/view/ViewParent;
    :goto_0
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_0

    if-eq v3, p0, :cond_0

    move-object v2, v3

    .line 187
    check-cast v2, Landroid/view/View;

    .line 188
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 189
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v1, v4

    .line 190
    aget v4, v0, v7

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    .line 191
    aget v4, v0, v8

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v8

    .line 192
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 193
    goto :goto_0

    .line 194
    .end local v2           #view:Landroid/view/View;
    :cond_0
    aget v4, v0, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, p2, v7

    .line 195
    aget v4, v0, v8

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, p2, v8

    .line 196
    return v1
.end method


# virtual methods
.method beginShakeAnimation()V
    .locals 4

    .prologue
    .line 138
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 149
    :cond_0
    return-void

    .line 142
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->finishShakeAnimation()V

    .line 143
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v1

    .line 144
    .local v1, newEventViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 145
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-direct {v2, v3}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;-><init>(Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;)V

    .line 146
    .local v2, shakeAnimation:Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadHintAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/UnReadHintAnimation;->animate()V

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    if-nez v0, :cond_0

    .line 109
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 118
    :goto_0
    return v0

    .line 112
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    const/4 v0, 0x1

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 116
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getLocationInLockScreenLayout(Landroid/view/View;[I)V
    .locals 2
    .parameter "child"
    .parameter "loc"

    .prologue
    const/4 v1, 0x0

    .line 165
    aput v1, p2, v1

    .line 166
    const/4 v0, 0x1

    aput v1, p2, v0

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    .line 168
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 92
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->getChildCount()I

    move-result v1

    .line 94
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 95
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 97
    .local v2, flp:Landroid/widget/FrameLayout$LayoutParams;
    instance-of v5, v2, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$LayoutParams;

    if-eqz v5, :cond_0

    move-object v4, v2

    .line 98
    check-cast v4, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$LayoutParams;

    .line 99
    .local v4, lp:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$LayoutParams;
    iget-boolean v5, v4, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$LayoutParams;->customPosition:Z

    if-eqz v5, :cond_0

    .line 100
    iget v5, v4, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$LayoutParams;->x:I

    iget v6, v4, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$LayoutParams;->y:I

    iget v7, v4, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$LayoutParams;->x:I

    iget v8, v4, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$LayoutParams;->width:I

    add-int/2addr v7, v8

    iget v8, v4, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$LayoutParams;->y:I

    iget v9, v4, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$LayoutParams;->height:I

    add-int/2addr v8, v9

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 94
    .end local v4           #lp:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$LayoutParams;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    .end local v0           #child:Landroid/view/View;
    .end local v2           #flp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 125
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 133
    :goto_0
    return v1

    .line 127
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 128
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 133
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 130
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->beginShakeAnimation()V

    goto :goto_1

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setUnReadEventView(Lcom/android/internal/policy/impl/keyguard/UnReadEventView;)V
    .locals 0
    .parameter "unReadEventView"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    .line 88
    return-void
.end method
