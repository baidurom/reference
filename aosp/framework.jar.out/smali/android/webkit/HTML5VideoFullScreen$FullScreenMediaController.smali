.class Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;
.super Landroid/widget/MediaController;
.source "HTML5VideoFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FullScreenMediaController"
.end annotation


# instance fields
.field mVideoView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .parameter "context"
    .parameter "video"

    .prologue
    .line 368
    invoke-direct {p0, p1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 369
    iput-object p2, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    .line 370
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 386
    :cond_0
    invoke-super {p0}, Landroid/widget/MediaController;->hide()V

    .line 387
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 374
    invoke-super {p0}, Landroid/widget/MediaController;->show()V

    .line 375
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 378
    :cond_0
    return-void
.end method
