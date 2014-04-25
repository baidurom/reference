.class public Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;
.super Landroid/widget/ListView;
.source "SlideListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveListener;,
        Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;
    }
.end annotation


# static fields
.field private static final SNAP_VELOCITY:I = 0x258


# instance fields
.field private downX:I

.field private downY:I

.field private isSlide:Z

.field public itemView:Landroid/view/View;

.field private mRemoveListener:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveListener;

.field private mTouchSlop:I

.field public removeDirection:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;

.field private screenWidth:I

.field private scroller:Landroid/widget/Scroller;

.field private slidePosition:I

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->isSlide:Z

    .line 78
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->screenWidth:I

    .line 79
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->scroller:Landroid/widget/Scroller;

    .line 80
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->mTouchSlop:I

    .line 81
    return-void
.end method

.method private addVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 237
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 240
    return-void
.end method

.method private getScrollVelocity()I
    .locals 3

    .prologue
    .line 258
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 259
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    float-to-int v0, v1

    .line 260
    .local v0, velocity:I
    return v0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 250
    :cond_0
    return-void
.end method

.method private scrollByDistanceX()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->screenWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x64

    if-lt v0, v1, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->scrollLeft()V

    .line 169
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->screenWidth:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x64

    if-gt v0, v1, :cond_1

    .line 164
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->scrollRight()V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->scrollTo(II)V

    goto :goto_0
.end method

.method private scrollLeft()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 149
    sget-object v0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;->LEFT:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->removeDirection:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;

    .line 150
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->screenWidth:I

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    .line 152
    .local v3, delta:I
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->scroller:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 153
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->postInvalidate()V

    .line 154
    return-void
.end method

.method private scrollRight()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 138
    sget-object v0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;->RIGHT:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->removeDirection:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;

    .line 139
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->screenWidth:I

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    add-int v6, v0, v1

    .line 141
    .local v6, delta:I
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->scroller:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    neg-int v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 142
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->postInvalidate()V

    .line 143
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 215
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 218
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->postInvalidate()V

    .line 220
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->mRemoveListener:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveListener;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "RemoveListener is null, we should called setRemoveListener()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->mRemoveListener:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveListener;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->removeDirection:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;

    iget v2, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->slidePosition:I

    invoke-interface {v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveListener;->removeItem(Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;I)V

    .line 225
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->itemView:Landroid/view/View;

    invoke-virtual {v0, v3, v3}, Landroid/view/View;->scrollTo(II)V

    .line 228
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 131
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 99
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->addVelocityTracker(Landroid/view/MotionEvent;)V

    .line 101
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 104
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->downX:I

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->downY:I

    .line 106
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->downX:I

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->downY:I

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->slidePosition:I

    .line 108
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->slidePosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 109
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 112
    :cond_2
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->slidePosition:I

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->itemView:Landroid/view/View;

    goto :goto_0

    .line 116
    :pswitch_1
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->getScrollVelocity()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x258

    if-gt v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->downX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->downY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->mTouchSlop:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 118
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->isSlide:Z

    goto :goto_0

    .line 123
    :pswitch_2
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->recycleVelocityTracker()V

    .line 124
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->getFirstVisiblePosition()I

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->getFirstVisiblePosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->setSelection(I)V

    goto/16 :goto_0

    .line 127
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->setSelection(I)V

    goto/16 :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 176
    iget-boolean v6, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->isSlide:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->slidePosition:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 177
    invoke-virtual {p0, v5}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 178
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->addVelocityTracker(Landroid/view/MotionEvent;)V

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 180
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 181
    .local v4, x:I
    packed-switch v0, :pswitch_data_0

    .line 209
    .end local v0           #action:I
    .end local v4           #x:I
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_1
    return v5

    .line 185
    .restart local v0       #action:I
    .restart local v4       #x:I
    :pswitch_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 186
    .local v1, cancelEvent:Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    or-int/lit8 v6, v6, 0x3

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 187
    invoke-virtual {p0, v1}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 188
    iget v6, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->downX:I

    sub-int v2, v6, v4

    .line 189
    .local v2, deltaX:I
    iput v4, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->downX:I

    .line 191
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->itemView:Landroid/view/View;

    invoke-virtual {v6, v2, v8}, Landroid/view/View;->scrollBy(II)V

    goto :goto_1

    .line 194
    .end local v1           #cancelEvent:Landroid/view/MotionEvent;
    .end local v2           #deltaX:I
    :pswitch_2
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->getScrollVelocity()I

    move-result v3

    .line 195
    .local v3, velocityX:I
    const/16 v5, 0x258

    if-le v3, v5, :cond_1

    .line 196
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->scrollRight()V

    .line 202
    :goto_2
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->recycleVelocityTracker()V

    .line 204
    iput-boolean v8, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->isSlide:Z

    goto :goto_0

    .line 197
    :cond_1
    const/16 v5, -0x258

    if-ge v3, v5, :cond_2

    .line 198
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->scrollLeft()V

    goto :goto_2

    .line 200
    :cond_2
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->scrollByDistanceX()V

    goto :goto_2

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public resumeItemViewState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 272
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->itemView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->scrollTo(II)V

    .line 275
    :cond_0
    return-void
.end method

.method public setRemoveListener(Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveListener;)V
    .locals 0
    .parameter "removeListener"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->mRemoveListener:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveListener;

    .line 90
    return-void
.end method
