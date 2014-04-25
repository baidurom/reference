.class Lcom/baidu/multiwaveview/MultiWaveView$3;
.super Ljava/lang/Object;
.source "MultiWaveView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/multiwaveview/MultiWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/multiwaveview/MultiWaveView;


# direct methods
.method constructor <init>(Lcom/baidu/multiwaveview/MultiWaveView;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/baidu/multiwaveview/MultiWaveView$3;->this$0:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView$3;->this$0:Lcom/baidu/multiwaveview/MultiWaveView;

    iget-object v1, p0, Lcom/baidu/multiwaveview/MultiWaveView$3;->this$0:Lcom/baidu/multiwaveview/MultiWaveView;

    #getter for: Lcom/baidu/multiwaveview/MultiWaveView;->mHandleDrawable:Lcom/baidu/multiwaveview/TargetDrawable;
    invoke-static {v1}, Lcom/baidu/multiwaveview/MultiWaveView;->access$300(Lcom/baidu/multiwaveview/MultiWaveView;)Lcom/baidu/multiwaveview/TargetDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/multiwaveview/MultiWaveView;->invalidateGlobalRegion(Lcom/baidu/multiwaveview/TargetDrawable;)V

    .line 134
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView$3;->this$0:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-virtual {v0}, Lcom/baidu/multiwaveview/MultiWaveView;->invalidate()V

    .line 135
    return-void
.end method
