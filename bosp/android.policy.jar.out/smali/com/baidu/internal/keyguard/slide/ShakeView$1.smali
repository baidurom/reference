.class Lcom/baidu/internal/keyguard/slide/ShakeView$1;
.super Ljava/lang/Thread;
.source "ShakeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/internal/keyguard/slide/ShakeView;->initParams(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/ShakeView;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$layers:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/ShakeView;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/ShakeView$1;->this$0:Lcom/baidu/internal/keyguard/slide/ShakeView;

    iput-object p2, p0, Lcom/baidu/internal/keyguard/slide/ShakeView$1;->val$layers:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/baidu/internal/keyguard/slide/ShakeView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 61
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 62
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/ShakeView$1;->this$0:Lcom/baidu/internal/keyguard/slide/ShakeView;

    #getter for: Lcom/baidu/internal/keyguard/slide/ShakeView;->mLayers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/baidu/internal/keyguard/slide/ShakeView;->access$000(Lcom/baidu/internal/keyguard/slide/ShakeView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 63
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/ShakeView$1;->this$0:Lcom/baidu/internal/keyguard/slide/ShakeView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    #setter for: Lcom/baidu/internal/keyguard/slide/ShakeView;->mDecodeStartTime:J
    invoke-static {v4, v5, v6}, Lcom/baidu/internal/keyguard/slide/ShakeView;->access$102(Lcom/baidu/internal/keyguard/slide/ShakeView;J)J

    .line 64
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/ShakeView$1;->val$layers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 65
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/ShakeView$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/ShakeView$1;->val$layers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 66
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 69
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 71
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 72
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/ShakeView$1;->this$0:Lcom/baidu/internal/keyguard/slide/ShakeView;

    #getter for: Lcom/baidu/internal/keyguard/slide/ShakeView;->mLayers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/baidu/internal/keyguard/slide/ShakeView;->access$000(Lcom/baidu/internal/keyguard/slide/ShakeView;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 73
    :try_start_0
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/ShakeView$1;->this$0:Lcom/baidu/internal/keyguard/slide/ShakeView;

    #getter for: Lcom/baidu/internal/keyguard/slide/ShakeView;->mLayers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/baidu/internal/keyguard/slide/ShakeView;->access$000(Lcom/baidu/internal/keyguard/slide/ShakeView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    monitor-exit v5

    .line 64
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 76
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method
