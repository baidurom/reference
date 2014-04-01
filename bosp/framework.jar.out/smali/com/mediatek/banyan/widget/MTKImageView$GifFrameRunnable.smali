.class Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;
.super Ljava/lang/Object;
.source "MTKImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/banyan/widget/MTKImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GifFrameRunnable"
.end annotation


# instance fields
.field mFrame:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/mediatek/banyan/widget/MTKImageView;


# direct methods
.method constructor <init>(Lcom/mediatek/banyan/widget/MTKImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter "b"

    .prologue
    .line 742
    iput-object p1, p0, Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;->this$0:Lcom/mediatek/banyan/widget/MTKImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 743
    iput-object p2, p0, Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;->mFrame:Landroid/graphics/Bitmap;

    .line 744
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 747
    iget-object v0, p0, Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;->this$0:Lcom/mediatek/banyan/widget/MTKImageView;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/banyan/widget/MTKImageView;->mSetFromGif:Z
    invoke-static {v0, v1}, Lcom/mediatek/banyan/widget/MTKImageView;->access$502(Lcom/mediatek/banyan/widget/MTKImageView;Z)Z

    .line 748
    const-string v0, "MTKImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GifFrameRunnable:run:call setImageBitmap(mFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;->mFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v0, p0, Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;->this$0:Lcom/mediatek/banyan/widget/MTKImageView;

    iget-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;->mFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/mediatek/banyan/widget/MTKImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 751
    iget-object v0, p0, Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;->this$0:Lcom/mediatek/banyan/widget/MTKImageView;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/banyan/widget/MTKImageView;->mSetFromGif:Z
    invoke-static {v0, v1}, Lcom/mediatek/banyan/widget/MTKImageView;->access$502(Lcom/mediatek/banyan/widget/MTKImageView;Z)Z

    .line 752
    return-void
.end method
