.class Lcom/yi/internal/widget/GifImageView$DrawThread;
.super Ljava/lang/Thread;
.source "GifImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yi/internal/widget/GifImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yi/internal/widget/GifImageView;


# direct methods
.method private constructor <init>(Lcom/yi/internal/widget/GifImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 586
    iput-object p1, p0, Lcom/yi/internal/widget/GifImageView$DrawThread;->this$0:Lcom/yi/internal/widget/GifImageView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yi/internal/widget/GifImageView;Lcom/yi/internal/widget/GifImageView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 586
    invoke-direct {p0, p1}, Lcom/yi/internal/widget/GifImageView$DrawThread;-><init>(Lcom/yi/internal/widget/GifImageView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 588
    iget-object v4, p0, Lcom/yi/internal/widget/GifImageView$DrawThread;->this$0:Lcom/yi/internal/widget/GifImageView;

    #getter for: Lcom/yi/internal/widget/GifImageView;->gifDecoder:Lcom/yi/internal/widget/GifDecoder;
    invoke-static {v4}, Lcom/yi/internal/widget/GifImageView;->access$200(Lcom/yi/internal/widget/GifImageView;)Lcom/yi/internal/widget/GifDecoder;

    move-result-object v4

    if-nez v4, :cond_1

    .line 626
    :cond_0
    return-void

    .line 591
    :cond_1
    iget-object v4, p0, Lcom/yi/internal/widget/GifImageView$DrawThread;->this$0:Lcom/yi/internal/widget/GifImageView;

    const/4 v5, 0x1

    #setter for: Lcom/yi/internal/widget/GifImageView;->isRun:Z
    invoke-static {v4, v5}, Lcom/yi/internal/widget/GifImageView;->access$302(Lcom/yi/internal/widget/GifImageView;Z)Z

    .line 592
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/yi/internal/widget/GifImageView$DrawThread;->this$0:Lcom/yi/internal/widget/GifImageView;

    #getter for: Lcom/yi/internal/widget/GifImageView;->isRun:Z
    invoke-static {v4}, Lcom/yi/internal/widget/GifImageView;->access$300(Lcom/yi/internal/widget/GifImageView;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 593
    iget-object v4, p0, Lcom/yi/internal/widget/GifImageView$DrawThread;->this$0:Lcom/yi/internal/widget/GifImageView;

    #getter for: Lcom/yi/internal/widget/GifImageView;->gifDecoder:Lcom/yi/internal/widget/GifDecoder;
    invoke-static {v4}, Lcom/yi/internal/widget/GifImageView;->access$200(Lcom/yi/internal/widget/GifImageView;)Lcom/yi/internal/widget/GifDecoder;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 596
    iget-object v4, p0, Lcom/yi/internal/widget/GifImageView$DrawThread;->this$0:Lcom/yi/internal/widget/GifImageView;

    #getter for: Lcom/yi/internal/widget/GifImageView;->pause:Z
    invoke-static {v4}, Lcom/yi/internal/widget/GifImageView;->access$400(Lcom/yi/internal/widget/GifImageView;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 597
    iget-object v4, p0, Lcom/yi/internal/widget/GifImageView$DrawThread;->this$0:Lcom/yi/internal/widget/GifImageView;

    #getter for: Lcom/yi/internal/widget/GifImageView;->gifDecoder:Lcom/yi/internal/widget/GifDecoder;
    invoke-static {v4}, Lcom/yi/internal/widget/GifImageView;->access$200(Lcom/yi/internal/widget/GifImageView;)Lcom/yi/internal/widget/GifDecoder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yi/internal/widget/GifDecoder;->next()Lcom/yi/internal/widget/GifFrame;

    move-result-object v0

    .line 598
    .local v0, frame:Lcom/yi/internal/widget/GifFrame;
    if-eqz v0, :cond_2

    .line 601
    iget-object v4, p0, Lcom/yi/internal/widget/GifImageView$DrawThread;->this$0:Lcom/yi/internal/widget/GifImageView;

    iget-object v5, v0, Lcom/yi/internal/widget/GifFrame;->image:Landroid/graphics/Bitmap;

    #setter for: Lcom/yi/internal/widget/GifImageView;->currentImage:Landroid/graphics/Bitmap;
    invoke-static {v4, v5}, Lcom/yi/internal/widget/GifImageView;->access$102(Lcom/yi/internal/widget/GifImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 602
    iget v4, v0, Lcom/yi/internal/widget/GifFrame;->delay:I

    int-to-long v2, v4

    .line 603
    .local v2, sp:J
    iget-object v4, p0, Lcom/yi/internal/widget/GifImageView$DrawThread;->this$0:Lcom/yi/internal/widget/GifImageView;

    #getter for: Lcom/yi/internal/widget/GifImageView;->redrawHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/yi/internal/widget/GifImageView;->access$500(Lcom/yi/internal/widget/GifImageView;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 604
    iget-object v4, p0, Lcom/yi/internal/widget/GifImageView$DrawThread;->this$0:Lcom/yi/internal/widget/GifImageView;

    #getter for: Lcom/yi/internal/widget/GifImageView;->redrawHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/yi/internal/widget/GifImageView;->access$500(Lcom/yi/internal/widget/GifImageView;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 605
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/yi/internal/widget/GifImageView$DrawThread;->this$0:Lcom/yi/internal/widget/GifImageView;

    #getter for: Lcom/yi/internal/widget/GifImageView;->redrawHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/yi/internal/widget/GifImageView;->access$500(Lcom/yi/internal/widget/GifImageView;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 609
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 610
    :catch_0
    move-exception v4

    goto :goto_0

    .line 619
    .end local v0           #frame:Lcom/yi/internal/widget/GifFrame;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #sp:J
    :cond_3
    const-wide/16 v4, 0xa

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 620
    :catch_1
    move-exception v4

    goto :goto_0
.end method
