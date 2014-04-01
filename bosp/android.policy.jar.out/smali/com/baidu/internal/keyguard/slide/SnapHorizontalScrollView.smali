.class public Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "SnapHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView$OnHorizontalScrollListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MIN_FLING_VELOCITY:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "SnapHorizontalScrollView"

.field private static sFirstFlipperViewId:I


# instance fields
.field private mAlbumView:Landroid/widget/ImageView;

.field private mCurrentScrollx:I

.field private mCurrentScrollxRange:I

.field private mFlipperTransportView:Landroid/widget/RelativeLayout;

.field private mFlipperWeatherView:Landroid/widget/RelativeLayout;

.field private mMemoModeInMusicPlaying:Z

.field private mOnHorizontalScrollListener:Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView$OnHorizontalScrollListener;

.field private mPrevScrollX:I

.field private mScreenWidth:I

.field private mShadeView:Landroid/widget/ImageView;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const v0, #id@weather_view#t

    sput v0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->sFirstFlipperViewId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 26
    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mPrevScrollX:I

    .line 40
    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mMemoModeInMusicPlaying:Z

    .line 127
    const/16 v0, 0x46

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mCurrentScrollxRange:I

    .line 64
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->init()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mPrevScrollX:I

    .line 40
    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mMemoModeInMusicPlaying:Z

    .line 127
    const/16 v0, 0x46

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mCurrentScrollxRange:I

    .line 59
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->init()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mPrevScrollX:I

    .line 40
    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mMemoModeInMusicPlaying:Z

    .line 127
    const/16 v0, 0x46

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mCurrentScrollxRange:I

    .line 54
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->init()V

    .line 55
    return-void
.end method

.method private getFlipperViewId(I)I
    .locals 2
    .parameter "scrollX"

    .prologue
    .line 195
    const v0, #id@weather_view#t

    .line 196
    .local v0, id:I
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mScreenWidth:I

    div-int v1, p1, v1

    packed-switch v1, :pswitch_data_0

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 198
    :pswitch_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mFlipperTransportView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 199
    const v0, #id@media_view#t

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private init()V
    .locals 3

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mScreenWidth:I

    .line 69
    const-string v0, "SnapHorizontalScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: mScreenWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mScreenWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method private isMusicPlaying(I)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 212
    packed-switch p1, :pswitch_data_0

    .line 222
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 220
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private scrollToFlipperViewById(I)V
    .locals 4
    .parameter "flipperViewId"

    .prologue
    .line 175
    const-string v1, "SnapHorizontalScrollView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrollToFlipperViewById: 16909239, 16909242, : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v0, 0x0

    .line 179
    .local v0, scrollX:I
    const v1, #id@media_view#t

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mOnHorizontalScrollListener:Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView$OnHorizontalScrollListener;

    if-eqz v1, :cond_0

    .line 180
    const-string v1, "SnapHorizontalScrollView"

    const-string v2, "scrollToFlipperViewById:setBackgroundColor(black)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mFlipperTransportView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mOnHorizontalScrollListener:Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView$OnHorizontalScrollListener;

    const/high16 v2, -0x100

    invoke-interface {v1, v2}, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView$OnHorizontalScrollListener;->setBackgroundColor(I)V

    .line 186
    :cond_0
    const v1, #id@weather_view#t

    if-ne p1, v1, :cond_1

    .line 187
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mScreenWidth:I

    .line 188
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mOnHorizontalScrollListener:Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView$OnHorizontalScrollListener;

    const/high16 v2, 0x2900

    invoke-interface {v1, v2}, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView$OnHorizontalScrollListener;->setBackgroundColor(I)V

    .line 190
    :cond_1
    const-string v1, "SnapHorizontalScrollView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrollToFlipperViewById:scrollX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", range="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->computeHorizontalScrollRange()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->smoothScrollTo(II)V

    .line 192
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 253
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mOnHorizontalScrollListener:Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView$OnHorizontalScrollListener;

    if-eqz v0, :cond_0

    .line 254
    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mOnHorizontalScrollListener:Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView$OnHorizontalScrollListener;

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mFlipperTransportView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mFlipperTransportView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 258
    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mFlipperTransportView:Landroid/widget/RelativeLayout;

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mFlipperWeatherView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mFlipperWeatherView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 262
    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mFlipperWeatherView:Landroid/widget/RelativeLayout;

    .line 264
    :cond_2
    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mAlbumView:Landroid/widget/ImageView;

    .line 265
    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mShadeView:Landroid/widget/ImageView;

    .line 266
    return-void
.end method

.method public computeScroll()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 133
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->computeScroll()V

    .line 134
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mOnHorizontalScrollListener:Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView$OnHorizontalScrollListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mFlipperTransportView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->getScrollX()I

    move-result v3

    .line 139
    .local v3, scrollX:I
    iget v4, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mPrevScrollX:I

    if-eq v3, v4, :cond_0

    .line 142
    const-string v4, "SnapHorizontalScrollView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Screen width is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; curr scroll pos = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget v4, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mScreenWidth:I

    if-lt v3, v4, :cond_2

    .line 144
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mOnHorizontalScrollListener:Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView$OnHorizontalScrollListener;

    const/high16 v5, 0x2900

    invoke-interface {v4, v5}, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView$OnHorizontalScrollListener;->setBackgroundColor(I)V

    .line 168
    :goto_1
    iput v3, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mPrevScrollX:I

    goto :goto_0

    .line 146
    :cond_2
    iget v4, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mCurrentScrollx:I

    iget v5, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mCurrentScrollxRange:I

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_3

    iget v4, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mCurrentScrollx:I

    iget v5, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mCurrentScrollxRange:I

    add-int/2addr v4, v5

    if-le v3, v4, :cond_5

    .line 147
    :cond_3
    iput v3, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mCurrentScrollx:I

    .line 148
    iget v4, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mScreenWidth:I

    sub-int/2addr v4, v3

    mul-int/lit16 v4, v4, 0xff

    iget v5, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mScreenWidth:I

    div-int v0, v4, v5

    .line 149
    .local v0, alpha:I
    const/16 v4, 0x29

    if-le v0, v4, :cond_5

    .line 150
    const/16 v4, 0xdc

    if-lt v0, v4, :cond_4

    .line 151
    const/16 v0, 0xff

    .line 153
    :cond_4
    invoke-static {v0, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 154
    .local v2, color:I
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mOnHorizontalScrollListener:Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView$OnHorizontalScrollListener;

    invoke-interface {v4, v2}, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView$OnHorizontalScrollListener;->setBackgroundColor(I)V

    .line 159
    .end local v0           #alpha:I
    .end local v2           #color:I
    :cond_5
    iget v4, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mScreenWidth:I

    div-int/lit8 v4, v4, 0x3

    if-lt v3, v4, :cond_6

    .line 160
    mul-int/lit8 v4, v3, 0x60

    iget v5, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mScreenWidth:I

    div-int/2addr v4, v5

    rsub-int/lit8 v1, v4, 0x60

    .line 164
    .local v1, alphaAlbum:I
    :goto_2
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mAlbumView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 165
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mShadeView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_1

    .line 162
    .end local v1           #alphaAlbum:I
    :cond_6
    mul-int/lit16 v4, v3, 0x23d

    iget v5, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mScreenWidth:I

    div-int/2addr v4, v5

    rsub-int v1, v4, 0xff

    .restart local v1       #alphaAlbum:I
    goto :goto_2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 110
    .local v1, retVal:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 111
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 123
    :goto_0
    return v1

    .line 113
    :pswitch_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 114
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 117
    :pswitch_1
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 120
    :pswitch_2
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->snap()V

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 228
    const-string v0, "SnapHorizontalScrollView"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    .line 231
    const v0, #id@media_view#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mFlipperTransportView:Landroid/widget/RelativeLayout;

    .line 232
    const v0, #id@weather_view#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mFlipperWeatherView:Landroid/widget/RelativeLayout;

    .line 233
    const v0, #id@album_view#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mAlbumView:Landroid/widget/ImageView;

    .line 234
    const v0, #id@shade#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mShadeView:Landroid/widget/ImageView;

    .line 235
    return-void
.end method

.method public onPlayStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    const v3, #id@weather_view#t

    .line 240
    const-string v0, "SnapHorizontalScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    if-nez p1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mOnHorizontalScrollListener:Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView$OnHorizontalScrollListener;

    const/high16 v1, 0x2900

    invoke-interface {v0, v1}, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView$OnHorizontalScrollListener;->setBackgroundColor(I)V

    .line 243
    invoke-direct {p0, v3}, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->scrollToFlipperViewById(I)V

    .line 249
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mMemoModeInMusicPlaying:Z

    .line 250
    return-void

    .line 244
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->isMusicPlaying(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    const v0, #id@media_view#t

    invoke-direct {p0, v0}, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->scrollToFlipperViewById(I)V

    goto :goto_0

    .line 247
    :cond_1
    invoke-direct {p0, v3}, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->scrollToFlipperViewById(I)V

    goto :goto_0
.end method

.method public setOnHorizontalScrollListener(Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView$OnHorizontalScrollListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mOnHorizontalScrollListener:Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView$OnHorizontalScrollListener;

    .line 50
    return-void
.end method

.method public snap()V
    .locals 6

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->getScrollX()I

    move-result v2

    .line 74
    .local v2, scrollX:I
    iget v4, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mScreenWidth:I

    div-int v4, v2, v4

    iget v5, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mScreenWidth:I

    mul-int v0, v4, v5

    .line 77
    .local v0, leftPos:I
    const/4 v3, 0x0

    .line 78
    .local v3, xVelocity:F
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_0

    .line 79
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 80
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    .line 83
    :cond_0
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x437a

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 84
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    .line 85
    move v1, v0

    .line 98
    .local v1, scrollToX:I
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->smoothScrollTo(II)V

    .line 100
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mOnHorizontalScrollListener:Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView$OnHorizontalScrollListener;

    if-eqz v4, :cond_1

    .line 101
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mOnHorizontalScrollListener:Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView$OnHorizontalScrollListener;

    invoke-interface {v4}, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView$OnHorizontalScrollListener;->pokeWakelock()V

    .line 104
    :cond_1
    invoke-direct {p0, v1}, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->getFlipperViewId(I)I

    move-result v4

    sput v4, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->sFirstFlipperViewId:I

    .line 105
    return-void

    .line 87
    .end local v1           #scrollToX:I
    :cond_2
    iget v4, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mScreenWidth:I

    add-int v1, v0, v4

    .restart local v1       #scrollToX:I
    goto :goto_0

    .line 90
    .end local v1           #scrollToX:I
    :cond_3
    sub-int v4, v0, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mScreenWidth:I

    div-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_4

    .line 91
    move v1, v0

    .restart local v1       #scrollToX:I
    goto :goto_0

    .line 93
    .end local v1           #scrollToX:I
    :cond_4
    iget v4, p0, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->mScreenWidth:I

    add-int v1, v0, v4

    .restart local v1       #scrollToX:I
    goto :goto_0
.end method
