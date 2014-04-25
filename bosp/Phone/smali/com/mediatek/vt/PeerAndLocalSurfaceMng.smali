.class public Lcom/mediatek/vt/PeerAndLocalSurfaceMng;
.super Ljava/lang/Object;
.source "PeerAndLocalSurfaceMng.java"


# static fields
.field public static final QCIF_HEIGHT:I = 0x90

.field public static final QCIF_WIDTH:I = 0xb0


# instance fields
.field public camera:Landroid/hardware/Camera;

.field mBigOne:Landroid/view/SurfaceHolder;

.field mSmallOne:Landroid/view/SurfaceHolder;

.field surfaceCallback:Landroid/view/SurfaceHolder$Callback;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceHolder;Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "big"
    .parameter "small"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/mediatek/vt/PeerAndLocalSurfaceMng$1;

    invoke-direct {v0, p0}, Lcom/mediatek/vt/PeerAndLocalSurfaceMng$1;-><init>(Lcom/mediatek/vt/PeerAndLocalSurfaceMng;)V

    iput-object v0, p0, Lcom/mediatek/vt/PeerAndLocalSurfaceMng;->surfaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 17
    iput-object p1, p0, Lcom/mediatek/vt/PeerAndLocalSurfaceMng;->mBigOne:Landroid/view/SurfaceHolder;

    .line 18
    iput-object p2, p0, Lcom/mediatek/vt/PeerAndLocalSurfaceMng;->mSmallOne:Landroid/view/SurfaceHolder;

    .line 19
    invoke-virtual {p0}, Lcom/mediatek/vt/PeerAndLocalSurfaceMng;->openCamera()V

    .line 20
    return-void
.end method


# virtual methods
.method openCamera()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/vt/PeerAndLocalSurfaceMng;->mBigOne:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/mediatek/vt/PeerAndLocalSurfaceMng;->surfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 62
    iget-object v0, p0, Lcom/mediatek/vt/PeerAndLocalSurfaceMng;->mBigOne:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 63
    return-void
.end method
