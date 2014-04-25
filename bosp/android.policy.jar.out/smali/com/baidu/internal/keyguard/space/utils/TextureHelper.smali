.class public Lcom/baidu/internal/keyguard/space/utils/TextureHelper;
.super Ljava/lang/Object;
.source "TextureHelper.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDecodeFlag:Ljava/lang/Object;

.field private mResourceDecodeThread:Ljava/lang/Thread;

.field private mResourceIdsReady:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "TextureHelper"

    sput-object v0, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->mDecodeFlag:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/internal/keyguard/space/utils/TextureHelper;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->mDecodeFlag:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/baidu/internal/keyguard/space/utils/TextureHelper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/baidu/internal/keyguard/space/utils/TextureHelper;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->mResourceIdsReady:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized decodeResource(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, resourceIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->mResourceIdsReady:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Lcom/baidu/internal/keyguard/space/utils/TextureHelper$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/baidu/internal/keyguard/space/utils/TextureHelper$1;-><init>(Lcom/baidu/internal/keyguard/space/utils/TextureHelper;Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->mResourceDecodeThread:Ljava/lang/Thread;

    .line 45
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->mResourceDecodeThread:Ljava/lang/Thread;

    sget-object v1, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->mResourceDecodeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadTexture(I)I
    .locals 6
    .parameter "i"

    .prologue
    const/4 v2, -0x1

    .line 51
    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->mResourceIdsReady:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p1, :cond_3

    .line 53
    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->mResourceIdsReady:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 54
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->mDecodeFlag:Ljava/lang/Object;

    monitor-enter v2

    .line 55
    const/4 v1, 0x1

    :try_start_0
    new-array v0, v1, [I

    .line 56
    .local v0, textureHandle:[I
    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 57
    const/4 v1, 0x0

    aget v1, v0, v1

    if-eqz v1, :cond_0

    .line 59
    const/16 v1, 0xde1

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 61
    const/16 v1, 0xde1

    const/16 v3, 0x2801

    const/16 v4, 0x2600

    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 62
    const/16 v1, 0xde1

    const/16 v3, 0x2800

    const/16 v4, 0x2601

    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 64
    const/16 v1, 0xde1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 67
    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 69
    :cond_0
    const/4 v1, 0x0

    aget v1, v0, v1

    if-nez v1, :cond_1

    .line 70
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Error loading texture."

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    .end local v0           #textureHandle:[I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 72
    .restart local v0       #textureHandle:[I
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->mResourceIdsReady:Ljava/util/ArrayList;

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v1, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish update texture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->mDecodeFlag:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 75
    const/4 v1, 0x0

    aget v1, v0, v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .end local v0           #textureHandle:[I
    :goto_0
    return v1

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/utils/TextureHelper;->mResourceIdsReady:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 81
    goto :goto_0
.end method
