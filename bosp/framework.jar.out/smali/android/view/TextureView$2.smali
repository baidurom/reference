.class Landroid/view/TextureView$2;
.super Ljava/lang/Object;
.source "TextureView.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/TextureView;->getHardwareLayer()Landroid/view/HardwareLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/TextureView;


# direct methods
.method constructor <init>(Landroid/view/TextureView;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Landroid/view/TextureView$2;->this$0:Landroid/view/TextureView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .parameter "surfaceTexture"

    .prologue
    .line 365
    iget-object v0, p0, Landroid/view/TextureView$2;->this$0:Landroid/view/TextureView;

    #calls: Landroid/view/TextureView;->updateLayer()V
    invoke-static {v0}, Landroid/view/TextureView;->access$100(Landroid/view/TextureView;)V

    .line 367
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 368
    iget-object v0, p0, Landroid/view/TextureView$2;->this$0:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->invalidate()V

    .line 372
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Landroid/view/TextureView$2;->this$0:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->postInvalidate()V

    goto :goto_0
.end method
