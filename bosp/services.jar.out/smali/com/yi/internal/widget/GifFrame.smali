.class Lcom/yi/internal/widget/GifFrame;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# instance fields
.field public delay:I

.field public image:Landroid/graphics/Bitmap;

.field public index:I

.field public nextFrame:Lcom/yi/internal/widget/GifFrame;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 1
    .parameter "image"
    .parameter "delay"
    .parameter "index"

    .prologue
    .line 1005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 999
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yi/internal/widget/GifFrame;->nextFrame:Lcom/yi/internal/widget/GifFrame;

    .line 1006
    iput-object p1, p0, Lcom/yi/internal/widget/GifFrame;->image:Landroid/graphics/Bitmap;

    .line 1007
    iput p2, p0, Lcom/yi/internal/widget/GifFrame;->delay:I

    .line 1008
    iput p3, p0, Lcom/yi/internal/widget/GifFrame;->index:I

    .line 1009
    return-void
.end method
