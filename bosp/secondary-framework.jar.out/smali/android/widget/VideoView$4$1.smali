.class Landroid/widget/VideoView$4$1;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/VideoView$4;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/VideoView$4;


# direct methods
.method constructor <init>(Landroid/widget/VideoView$4;)V
    .locals 0
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Landroid/widget/VideoView$4$1;->this$1:Landroid/widget/VideoView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 523
    iget-object v0, p0, Landroid/widget/VideoView$4$1;->this$1:Landroid/widget/VideoView$4;

    iget-object v0, v0, Landroid/widget/VideoView$4;->this$0:Landroid/widget/VideoView;

    iget-object v0, v0, Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Landroid/widget/VideoView$4$1;->this$1:Landroid/widget/VideoView$4;

    iget-object v0, v0, Landroid/widget/VideoView$4;->this$0:Landroid/widget/VideoView;

    iget-object v0, v0, Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v1, p0, Landroid/widget/VideoView$4$1;->this$1:Landroid/widget/VideoView$4;

    iget-object v1, v1, Landroid/widget/VideoView$4;->this$0:Landroid/widget/VideoView;

    iget-object v1, v1, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 526
    :cond_0
    return-void
.end method
