.class Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods$2;
.super Ljava/lang/Object;
.source "SmartLockScreen.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->onDragReleased()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods$2;->this$1:Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 420
    const-string v0, "SmartLockScreen"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods$2;->this$1:Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->setAlpha(F)V

    .line 422
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 415
    const-string v0, "SmartLockScreen"

    const-string v1, "onAnimationRepeat"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 410
    const-string v0, "SmartLockScreen"

    const-string v1, "onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void
.end method
