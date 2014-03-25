.class public Landroid/widget/VideoView;
.super Landroid/view/SurfaceView;
.source "VideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field private static final CLEAR_MOTION_DISABLE:I = 0x1

.field private static final CLEAR_MOTION_KEY:I = 0x6a4

.field protected static final STATE_ERROR:I = -0x1

.field protected static final STATE_IDLE:I = 0x0

.field protected static final STATE_PAUSED:I = 0x4

.field protected static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field protected static final STATE_PLAYING:I = 0x3

.field protected static final STATE_PREPARED:I = 0x2

.field protected static final STATE_PREPARING:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field protected mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field protected mCanPause:Z

.field protected mCanSeekBack:Z

.field protected mCanSeekForward:Z

.field protected mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field protected mCurrentBufferPercentage:I

.field protected mCurrentState:I

.field protected mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field protected mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mMediaController:Landroid/widget/MediaController;

.field protected mMediaPlayer:Landroid/media/MediaPlayer;

.field protected mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field protected mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field protected mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field protected mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field protected mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field protected mSeekWhenPrepared:I

.field protected mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field protected mSurfaceHeight:I

.field protected mSurfaceHolder:Landroid/view/SurfaceHolder;

.field protected mSurfaceWidth:I

.field protected mTargetState:I

.field protected mUri:Landroid/net/Uri;

.field protected mVideoHeight:I

.field protected mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 177
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 53
    const-string v0, "VideoView"

    iput-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    .line 101
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 105
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 111
    iput-object v2, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 115
    iput-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 373
    new-instance v0, Landroid/widget/VideoView$1;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$1;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 387
    new-instance v0, Landroid/widget/VideoView$2;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$2;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 467
    new-instance v0, Landroid/widget/VideoView$3;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$3;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 483
    new-instance v0, Landroid/widget/VideoView$4;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$4;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 537
    new-instance v0, Landroid/widget/VideoView$5;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$5;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 591
    new-instance v0, Landroid/widget/VideoView$6;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$6;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 178
    invoke-virtual {p0}, Landroid/widget/VideoView;->initVideoView()V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 183
    invoke-virtual {p0}, Landroid/widget/VideoView;->initVideoView()V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 187
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const-string v0, "VideoView"

    iput-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    .line 101
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 105
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 111
    iput-object v2, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 115
    iput-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 373
    new-instance v0, Landroid/widget/VideoView$1;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$1;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 387
    new-instance v0, Landroid/widget/VideoView$2;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$2;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 467
    new-instance v0, Landroid/widget/VideoView$3;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$3;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 483
    new-instance v0, Landroid/widget/VideoView$4;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$4;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 537
    new-instance v0, Landroid/widget/VideoView$5;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$5;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 591
    new-instance v0, Landroid/widget/VideoView$6;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$6;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 188
    invoke-virtual {p0}, Landroid/widget/VideoView;->initVideoView()V

    .line 189
    return-void
.end method

.method static synthetic access$000(Landroid/widget/VideoView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/VideoView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/VideoView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected attachMediaController()V
    .locals 3

    .prologue
    .line 362
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 364
    invoke-virtual {p0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 366
    .local v0, anchorView:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 367
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 369
    .end local v0           #anchorView:Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 364
    goto :goto_0
.end method

.method public canPause()Z
    .locals 1

    .prologue
    .line 779
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 783
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 787
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanSeekForward:Z

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 764
    iget v0, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    .line 766
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 743
    invoke-virtual {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 746
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 735
    invoke-virtual {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 739
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected initVideoView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 258
    iput v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    .line 259
    iput v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    .line 260
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 261
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 262
    invoke-virtual {p0, v3}, Landroid/widget/VideoView;->setFocusable(Z)V

    .line 263
    invoke-virtual {p0, v3}, Landroid/widget/VideoView;->setFocusableInTouchMode(Z)V

    .line 264
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 265
    iput v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 266
    iput v2, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 267
    return-void
.end method

.method public isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 772
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 759
    invoke-virtual {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 216
    const-class v0, Landroid/widget/VideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 217
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 221
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 222
    const-class v0, Landroid/widget/VideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 223
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 658
    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x18

    if-eq p1, v2, :cond_2

    const/16 v2, 0x19

    if-eq p1, v2, :cond_2

    const/16 v2, 0xa4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x52

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    const/16 v2, 0x1b

    if-eq p1, v2, :cond_2

    move v0, v1

    .line 666
    .local v0, isKeyCodeSupported:Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    iget-object v2, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_8

    .line 667
    const/16 v2, 0x4f

    if-eq p1, v2, :cond_0

    const/16 v2, 0x55

    if-ne p1, v2, :cond_4

    .line 669
    :cond_0
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 670
    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    .line 671
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 695
    :cond_1
    :goto_1
    return v1

    .line 658
    .end local v0           #isKeyCodeSupported:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 673
    .restart local v0       #isKeyCodeSupported:Z
    :cond_3
    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    .line 674
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 677
    :cond_4
    const/16 v2, 0x7e

    if-ne p1, v2, :cond_5

    .line 678
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    .line 679
    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    .line 680
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 683
    :cond_5
    const/16 v2, 0x56

    if-eq p1, v2, :cond_6

    const/16 v2, 0x7f

    if-ne p1, v2, :cond_7

    .line 685
    :cond_6
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 686
    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    .line 687
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    goto :goto_1

    .line 691
    :cond_7
    invoke-virtual {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 695
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 194
    iget v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    invoke-static {v2, p1}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result v1

    .line 195
    .local v1, width:I
    iget v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    invoke-static {v2, p2}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result v0

    .line 196
    .local v0, height:I
    iget v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    if-lez v2, :cond_0

    .line 197
    iget v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    .line 199
    iget v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Landroid/widget/VideoView;->mVideoWidth:I

    div-int v0, v2, v3

    .line 210
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/widget/VideoView;->setMeasuredDimension(II)V

    .line 211
    return-void

    .line 200
    :cond_1
    iget v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 202
    iget v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Landroid/widget/VideoView;->mVideoHeight:I

    div-int v1, v2, v3

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 641
    invoke-virtual {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 644
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 649
    invoke-virtual {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 650
    invoke-virtual {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 652
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected openVideo()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 302
    iget-object v2, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .local v1, i:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    iget-object v2, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 314
    invoke-virtual {p0, v8}, Landroid/widget/VideoView;->release(Z)V

    .line 316
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 317
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 318
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 319
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 320
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 321
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 322
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 323
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    .line 324
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Landroid/widget/VideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 325
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 326
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 327
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 329
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v3, 0x6a4

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setParameter(II)Z

    .line 331
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 334
    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 335
    invoke-virtual {p0}, Landroid/widget/VideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, ex:Ljava/io/IOException;
    iget-object v2, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    iput v7, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 339
    iput v7, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 340
    iget-object v2, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v6, v8}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 342
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 343
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    iput v7, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 345
    iput v7, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 346
    iget-object v2, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v6, v8}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 717
    invoke-virtual {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 720
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 723
    :cond_0
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 724
    return-void
.end method

.method protected release(Z)V
    .locals 2
    .parameter "cleartargetstate"

    .prologue
    const/4 v1, 0x0

    .line 628
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 630
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 631
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 632
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 633
    if-eqz p1, :cond_0

    .line 634
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 637
    :cond_0
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 3
    .parameter "desiredSize"
    .parameter "measureSpec"

    .prologue
    .line 226
    move v0, p1

    .line 227
    .local v0, result:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 228
    .local v1, specMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 230
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 251
    :goto_0
    return v0

    .line 235
    :sswitch_0
    move v0, p1

    .line 236
    goto :goto_0

    .line 243
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 244
    goto :goto_0

    .line 248
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 230
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 731
    invoke-virtual {p0}, Landroid/widget/VideoView;->openVideo()V

    .line 732
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .parameter "msec"

    .prologue
    .line 750
    invoke-virtual {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 752
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    .line 756
    :goto_0
    return-void

    .line 754
    :cond_0
    iput p1, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 352
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 355
    :cond_0
    iput-object p1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    .line 356
    invoke-virtual {p0}, Landroid/widget/VideoView;->attachMediaController()V

    .line 357
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 563
    iput-object p1, p0, Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 564
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 576
    iput-object p1, p0, Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 577
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 586
    iput-object p1, p0, Landroid/widget/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 587
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 552
    iput-object p1, p0, Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 553
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 270
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 271
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 275
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    .line 282
    iput-object p2, p0, Landroid/widget/VideoView;->mHeaders:Ljava/util/Map;

    .line 283
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    .line 284
    invoke-virtual {p0}, Landroid/widget/VideoView;->openVideo()V

    .line 285
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestLayout()V

    .line 286
    invoke-virtual {p0}, Landroid/widget/VideoView;->invalidate()V

    .line 287
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 709
    invoke-virtual {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 711
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 713
    :cond_0
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 714
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 290
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 292
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 294
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 295
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 297
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 727
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->release(Z)V

    .line 728
    return-void
.end method

.method protected toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 706
    :goto_0
    return-void

    .line 704
    :cond_0
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method
