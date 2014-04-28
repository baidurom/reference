.class public Lyi/support/v1/blend/BlurBlend;
.super Ljava/lang/Object;
.source "BlurBlend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/support/v1/blend/BlurBlend$Task;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static blur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "bitmap"
    .parameter "radius"

    .prologue
    .line 16
    new-instance v0, Lyi/support/v1/blend/BlurBlend$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lyi/support/v1/blend/BlurBlend$Task;-><init>(Landroid/graphics/Bitmap;ILyi/support/v1/blend/BlendService$Observer;)V

    .line 17
    .local v0, blurTask:Lyi/support/v1/blend/BlurBlend$Task;
    invoke-virtual {v0}, Lyi/support/v1/blend/BlurBlend$Task;->run()V

    .line 18
    iget-object v1, v0, Lyi/support/v1/blend/BlurBlend$Task;->mSrcBitmap:Landroid/graphics/Bitmap;

    return-object v1
.end method
