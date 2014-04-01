.class Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;
.super Landroid/app/ITransientNotification$Stub;
.source "SimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TN"
.end annotation


# instance fields
.field final mHide:Ljava/lang/Runnable;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field final mShow:Ljava/lang/Runnable;

.field mWM:Landroid/view/WindowManagerImpl;

.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x2

    .line 1438
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;

    invoke-direct {p0}, Landroid/app/ITransientNotification$Stub;-><init>()V

    .line 1422
    new-instance v1, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN$1;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;->mShow:Ljava/lang/Runnable;

    .line 1428
    new-instance v1, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN$2;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;->mHide:Ljava/lang/Runnable;

    .line 1434
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 1439
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 1440
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1441
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1442
    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1445
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1446
    const v1, #style@Animation.Toast#t

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1447
    const/16 v1, 0x7d9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1448
    const-string v1, "Toast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1449
    return-void
.end method


# virtual methods
.method public handleHide()V
    .locals 2

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1497
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1500
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 1503
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;->mView:Landroid/view/View;

    .line 1505
    :cond_1
    return-void
.end method

.method public handleShow()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    .line 1470
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;->mWM:Landroid/view/WindowManagerImpl;

    .line 1471
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;

    iget v0, v1, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;->mGravity:I

    .line 1472
    .local v0, gravity:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1473
    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 1474
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 1476
    :cond_0
    and-int/lit8 v1, v0, 0x70

    const/16 v2, 0x70

    if-ne v1, v2, :cond_1

    .line 1477
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 1479
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;

    iget v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;->mY:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1480
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;->mView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1481
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1484
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 1487
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1489
    :cond_3
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1465
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$Toast$TN;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1457
    return-void
.end method
