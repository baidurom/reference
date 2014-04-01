.class Lyi/support/v1/menu/HybridMenu$ContentMask;
.super Ljava/lang/Object;
.source "HybridMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/menu/HybridMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentMask"
.end annotation


# static fields
.field private static final BLUR_RADIUS:I = 0x3


# instance fields
.field private final mBlurMask:Landroid/widget/ImageView;

.field private final mDimmedMask:Landroid/widget/ImageView;

.field final synthetic this$0:Lyi/support/v1/menu/HybridMenu;


# direct methods
.method constructor <init>(Lyi/support/v1/menu/HybridMenu;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter "menu"

    .prologue
    .line 289
    iput-object p1, p0, Lyi/support/v1/menu/HybridMenu$ContentMask;->this$0:Lyi/support/v1/menu/HybridMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    const v0, 0x4020040

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenu$ContentMask;->mBlurMask:Landroid/widget/ImageView;

    .line 291
    const v0, 0x4020041

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lyi/support/v1/menu/HybridMenu$ContentMask;->mDimmedMask:Landroid/widget/ImageView;

    .line 292
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ContentMask;->mDimmedMask:Landroid/widget/ImageView;

    new-instance v1, Lyi/support/v1/menu/HybridMenu$ContentMask$1;

    invoke-direct {v1, p0, p1}, Lyi/support/v1/menu/HybridMenu$ContentMask$1;-><init>(Lyi/support/v1/menu/HybridMenu$ContentMask;Lyi/support/v1/menu/HybridMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    return-void
.end method

.method static synthetic access$200(Lyi/support/v1/menu/HybridMenu$ContentMask;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 284
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ContentMask;->mDimmedMask:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lyi/support/v1/menu/HybridMenu$ContentMask;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 284
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ContentMask;->mBlurMask:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lyi/support/v1/menu/HybridMenu$ContentMask;Landroid/view/View;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 284
    invoke-direct {p0, p1, p2}, Lyi/support/v1/menu/HybridMenu$ContentMask;->getAnimationAlpha(Landroid/view/View;F)F

    move-result v0

    return v0
.end method

.method private cancelBlurMask()V
    .locals 0

    .prologue
    .line 375
    invoke-static {}, Lyi/support/v1/blend/BlendService;->interrupt()V

    .line 376
    return-void
.end method

.method private getAnimationAlpha(Landroid/view/View;F)F
    .locals 1
    .parameter "view"
    .parameter "defValue"

    .prologue
    .line 324
    invoke-static {p1, p2}, Lyi/support/v1/utils/Animatable;->getCurrent(Landroid/view/View;F)F

    move-result v0

    return v0
.end method

.method private hideBlurMask()V
    .locals 8

    .prologue
    const/high16 v2, 0x3f80

    .line 349
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenu$ContentMask;->cancelBlurMask()V

    .line 351
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ContentMask;->mBlurMask:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v7, p0, Lyi/support/v1/menu/HybridMenu$ContentMask;->mBlurMask:Landroid/widget/ImageView;

    new-instance v0, Lyi/support/v1/menu/HybridMenu$ContentMask$5;

    const/4 v3, 0x0

    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ContentMask;->mBlurMask:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lyi/support/v1/menu/HybridMenu$ContentMask;->getAnimationAlpha(Landroid/view/View;F)F

    move-result v4

    const-wide/16 v5, 0xe1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lyi/support/v1/menu/HybridMenu$ContentMask$5;-><init>(Lyi/support/v1/menu/HybridMenu$ContentMask;FFFJ)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 362
    :cond_0
    return-void
.end method

.method private showBlurMask()V
    .locals 2

    .prologue
    .line 328
    new-instance v0, Lyi/support/v1/menu/HybridMenu$ContentMask$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lyi/support/v1/menu/HybridMenu$ContentMask$4;-><init>(Lyi/support/v1/menu/HybridMenu$ContentMask;Landroid/os/Handler;)V

    invoke-direct {p0, v0}, Lyi/support/v1/menu/HybridMenu$ContentMask;->startBlurMask(Lyi/support/v1/blend/BlendService$Observer;)V

    .line 346
    return-void
.end method

.method private startBlurMask(Lyi/support/v1/blend/BlendService$Observer;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 367
    invoke-direct {p0}, Lyi/support/v1/menu/HybridMenu$ContentMask;->cancelBlurMask()V

    .line 368
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ContentMask;->mDimmedMask:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 369
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ContentMask;->mBlurMask:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lyi/support/v1/utils/ViewCapturer;->snapshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 370
    .local v0, snapshot:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ContentMask;->mDimmedMask:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 371
    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lyi/support/v1/blend/BlendService;->blur(Landroid/graphics/Bitmap;ILyi/support/v1/blend/BlendService$Observer;)V

    .line 372
    return-void
.end method


# virtual methods
.method fadeIn()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 301
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ContentMask;->mDimmedMask:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    iget-object v7, p0, Lyi/support/v1/menu/HybridMenu$ContentMask;->mDimmedMask:Landroid/widget/ImageView;

    new-instance v0, Lyi/support/v1/menu/HybridMenu$ContentMask$2;

    const/high16 v3, 0x3f80

    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ContentMask;->mDimmedMask:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lyi/support/v1/menu/HybridMenu$ContentMask;->getAnimationAlpha(Landroid/view/View;F)F

    move-result v4

    const-wide/16 v5, 0xe1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lyi/support/v1/menu/HybridMenu$ContentMask$2;-><init>(Lyi/support/v1/menu/HybridMenu$ContentMask;FFFJ)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 309
    return-void
.end method

.method fadeOut()V
    .locals 8

    .prologue
    const/high16 v2, 0x3f80

    .line 312
    iget-object v0, p0, Lyi/support/v1/menu/HybridMenu$ContentMask;->mDimmedMask:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 313
    iget-object v7, p0, Lyi/support/v1/menu/HybridMenu$ContentMask;->mDimmedMask:Landroid/widget/ImageView;

    new-instance v0, Lyi/support/v1/menu/HybridMenu$ContentMask$3;

    const/4 v3, 0x0

    iget-object v1, p0, Lyi/support/v1/menu/HybridMenu$ContentMask;->mDimmedMask:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lyi/support/v1/menu/HybridMenu$ContentMask;->getAnimationAlpha(Landroid/view/View;F)F

    move-result v4

    const-wide/16 v5, 0xe1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lyi/support/v1/menu/HybridMenu$ContentMask$3;-><init>(Lyi/support/v1/menu/HybridMenu$ContentMask;FFFJ)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 321
    return-void
.end method
