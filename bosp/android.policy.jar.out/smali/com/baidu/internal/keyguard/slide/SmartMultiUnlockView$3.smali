.class Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$3;
.super Ljava/lang/Object;
.source "SmartMultiUnlockView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$3;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$3;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$3;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->access$300(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->invalidateGlobalRegion(Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;)V

    .line 137
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$3;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->invalidate()V

    .line 138
    return-void
.end method
