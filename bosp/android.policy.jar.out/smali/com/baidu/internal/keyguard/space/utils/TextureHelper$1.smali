.class Lcom/baidu/internal/keyguard/space/utils/TextureHelper$1;
.super Ljava/lang/Thread;
.source "TextureHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->decodeResource(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/space/utils/TextureHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resourceIds:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/space/utils/TextureHelper;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/baidu/internal/keyguard/space/utils/TextureHelper$1;->this$0:Lcom/baidu/internal/keyguard/space/utils/TextureHelper;

    iput-object p2, p0, Lcom/baidu/internal/keyguard/space/utils/TextureHelper$1;->val$resourceIds:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/baidu/internal/keyguard/space/utils/TextureHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 26
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 27
    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/utils/TextureHelper$1;->this$0:Lcom/baidu/internal/keyguard/space/utils/TextureHelper;

    #getter for: Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->mDecodeFlag:Ljava/lang/Object;
    invoke-static {v3}, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->access$000(Lcom/baidu/internal/keyguard/space/utils/TextureHelper;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 28
    :try_start_0
    invoke-static {}, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v5, "begin decode textures"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/utils/TextureHelper$1;->val$resourceIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 30
    invoke-static {}, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decode texture "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 32
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 33
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/utils/TextureHelper$1;->this$0:Lcom/baidu/internal/keyguard/space/utils/TextureHelper;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/utils/TextureHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/utils/TextureHelper$1;->val$resourceIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v6, v3, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    #setter for: Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5, v3}, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->access$202(Lcom/baidu/internal/keyguard/space/utils/TextureHelper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 34
    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/utils/TextureHelper$1;->this$0:Lcom/baidu/internal/keyguard/space/utils/TextureHelper;

    #getter for: Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->mResourceIdsReady:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->access$300(Lcom/baidu/internal/keyguard/space/utils/TextureHelper;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :try_start_1
    invoke-static {}, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wait update texture "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/utils/TextureHelper$1;->this$0:Lcom/baidu/internal/keyguard/space/utils/TextureHelper;

    #getter for: Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->mDecodeFlag:Ljava/lang/Object;
    invoke-static {v3}, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->access$000(Lcom/baidu/internal/keyguard/space/utils/TextureHelper;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 29
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decode texture fail "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 42
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #i:I
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #i:I
    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    return-void
.end method
