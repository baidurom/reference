.class Landroid/widget/VideoView$6;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 562
    iput-object p1, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 566
    iget-object v4, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    iput p3, v4, Landroid/widget/VideoView;->mSurfaceWidth:I

    .line 567
    iget-object v4, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    iput p4, v4, Landroid/widget/VideoView;->mSurfaceHeight:I

    .line 568
    iget-object v4, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    iget v4, v4, Landroid/widget/VideoView;->mTargetState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 569
    .local v1, isValidState:Z
    :goto_0
    iget-object v4, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    iget v4, v4, Landroid/widget/VideoView;->mVideoWidth:I

    if-ne v4, p3, :cond_3

    iget-object v4, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    iget v4, v4, Landroid/widget/VideoView;->mVideoHeight:I

    if-ne v4, p4, :cond_3

    move v0, v2

    .line 570
    .local v0, hasValidSize:Z
    :goto_1
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    iget-object v2, v2, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 571
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    iget v2, v2, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    if-eqz v2, :cond_0

    .line 572
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    iget-object v3, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    iget v3, v3, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->seekTo(I)V

    .line 574
    :cond_0
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 576
    :cond_1
    return-void

    .end local v0           #hasValidSize:Z
    .end local v1           #isValidState:Z
    :cond_2
    move v1, v3

    .line 568
    goto :goto_0

    .restart local v1       #isValidState:Z
    :cond_3
    move v0, v3

    .line 569
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 580
    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    iput-object p1, v0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 581
    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->openVideo()V

    .line 582
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 587
    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 588
    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    iget-object v0, v0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    iget-object v0, v0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 589
    :cond_0
    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->release(Z)V

    .line 590
    return-void
.end method
