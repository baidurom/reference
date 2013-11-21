.class Lcom/yi/internal/widget/GifImageView$1;
.super Landroid/os/Handler;
.source "GifImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yi/internal/widget/GifImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yi/internal/widget/GifImageView;


# direct methods
.method constructor <init>(Lcom/yi/internal/widget/GifImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lcom/yi/internal/widget/GifImageView$1;->this$0:Lcom/yi/internal/widget/GifImageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 576
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView$1;->this$0:Lcom/yi/internal/widget/GifImageView;

    #getter for: Lcom/yi/internal/widget/GifImageView;->currentImage:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/yi/internal/widget/GifImageView;->access$100(Lcom/yi/internal/widget/GifImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView$1;->this$0:Lcom/yi/internal/widget/GifImageView;

    iget-object v1, p0, Lcom/yi/internal/widget/GifImageView$1;->this$0:Lcom/yi/internal/widget/GifImageView;

    #getter for: Lcom/yi/internal/widget/GifImageView;->currentImage:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/yi/internal/widget/GifImageView;->access$100(Lcom/yi/internal/widget/GifImageView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yi/internal/widget/GifImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 578
    iget-object v0, p0, Lcom/yi/internal/widget/GifImageView$1;->this$0:Lcom/yi/internal/widget/GifImageView;

    invoke-virtual {v0}, Lcom/yi/internal/widget/GifImageView;->invalidate()V

    .line 580
    :cond_0
    return-void
.end method
