.class public Lyi/support/v1/blend/BlendService;
.super Ljava/lang/Object;
.source "BlendService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/support/v1/blend/BlendService$BlendTask;,
        Lyi/support/v1/blend/BlendService$Observer;
    }
.end annotation


# static fields
.field private static mCurrentTask:Lyi/support/v1/blend/BlendService$BlendTask;

.field private static mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lyi/support/v1/blend/BlendService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method static synthetic access$000()Lyi/support/v1/blend/BlendService$BlendTask;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lyi/support/v1/blend/BlendService;->mCurrentTask:Lyi/support/v1/blend/BlendService$BlendTask;

    return-object v0
.end method

.method public static blur(Landroid/graphics/Bitmap;ILyi/support/v1/blend/BlendService$Observer;)V
    .locals 2
    .parameter "bitmap"
    .parameter "radius"
    .parameter "observer"

    .prologue
    .line 35
    invoke-static {}, Lyi/support/v1/blend/BlendService;->interrupt()V

    .line 36
    new-instance v0, Lyi/support/v1/blend/BlurBlend$Task;

    invoke-direct {v0, p0, p1, p2}, Lyi/support/v1/blend/BlurBlend$Task;-><init>(Landroid/graphics/Bitmap;ILyi/support/v1/blend/BlendService$Observer;)V

    sput-object v0, Lyi/support/v1/blend/BlendService;->mCurrentTask:Lyi/support/v1/blend/BlendService$BlendTask;

    .line 37
    sget-object v0, Lyi/support/v1/blend/BlendService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lyi/support/v1/blend/BlendService;->mCurrentTask:Lyi/support/v1/blend/BlendService$BlendTask;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 38
    return-void
.end method

.method public static interrupt()V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lyi/support/v1/blend/BlendService;->mCurrentTask:Lyi/support/v1/blend/BlendService$BlendTask;

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lyi/support/v1/blend/BlendService;->mCurrentTask:Lyi/support/v1/blend/BlendService$BlendTask;

    invoke-virtual {v0}, Lyi/support/v1/blend/BlendService$BlendTask;->interrupt()V

    .line 50
    :cond_0
    return-void
.end method

.method public static sketch(Landroid/graphics/Bitmap;ILyi/support/v1/blend/BlendService$Observer;)V
    .locals 2
    .parameter "bitmap"
    .parameter "shade"
    .parameter "observer"

    .prologue
    .line 41
    invoke-static {}, Lyi/support/v1/blend/BlendService;->interrupt()V

    .line 42
    new-instance v0, Lyi/support/v1/blend/SketchBlend$Task;

    invoke-direct {v0, p0, p1, p2}, Lyi/support/v1/blend/SketchBlend$Task;-><init>(Landroid/graphics/Bitmap;ILyi/support/v1/blend/BlendService$Observer;)V

    sput-object v0, Lyi/support/v1/blend/BlendService;->mCurrentTask:Lyi/support/v1/blend/BlendService$BlendTask;

    .line 43
    sget-object v0, Lyi/support/v1/blend/BlendService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lyi/support/v1/blend/BlendService;->mCurrentTask:Lyi/support/v1/blend/BlendService$BlendTask;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 44
    return-void
.end method
