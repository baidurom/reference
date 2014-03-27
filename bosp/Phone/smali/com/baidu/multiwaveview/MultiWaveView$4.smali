.class Lcom/baidu/multiwaveview/MultiWaveView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiWaveView.java"


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
    .line 139
    iput-object p1, p0, Lcom/baidu/multiwaveview/MultiWaveView$4;->this$0:Lcom/baidu/multiwaveview/MultiWaveView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animator"

    .prologue
    const/4 v2, 0x0

    .line 141
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView$4;->this$0:Lcom/baidu/multiwaveview/MultiWaveView;

    #getter for: Lcom/baidu/multiwaveview/MultiWaveView;->mNewTargetResources:I
    invoke-static {v0}, Lcom/baidu/multiwaveview/MultiWaveView;->access$400(Lcom/baidu/multiwaveview/MultiWaveView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView$4;->this$0:Lcom/baidu/multiwaveview/MultiWaveView;

    iget-object v1, p0, Lcom/baidu/multiwaveview/MultiWaveView$4;->this$0:Lcom/baidu/multiwaveview/MultiWaveView;

    #getter for: Lcom/baidu/multiwaveview/MultiWaveView;->mNewTargetResources:I
    invoke-static {v1}, Lcom/baidu/multiwaveview/MultiWaveView;->access$400(Lcom/baidu/multiwaveview/MultiWaveView;)I

    move-result v1

    #calls: Lcom/baidu/multiwaveview/MultiWaveView;->internalSetTargetResources(I)V
    invoke-static {v0, v1}, Lcom/baidu/multiwaveview/MultiWaveView;->access$500(Lcom/baidu/multiwaveview/MultiWaveView;I)V

    .line 143
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView$4;->this$0:Lcom/baidu/multiwaveview/MultiWaveView;

    #setter for: Lcom/baidu/multiwaveview/MultiWaveView;->mNewTargetResources:I
    invoke-static {v0, v2}, Lcom/baidu/multiwaveview/MultiWaveView;->access$402(Lcom/baidu/multiwaveview/MultiWaveView;I)I

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/baidu/multiwaveview/MultiWaveView$4;->this$0:Lcom/baidu/multiwaveview/MultiWaveView;

    #setter for: Lcom/baidu/multiwaveview/MultiWaveView;->mAnimatingTargets:Z
    invoke-static {v0, v2}, Lcom/baidu/multiwaveview/MultiWaveView;->access$602(Lcom/baidu/multiwaveview/MultiWaveView;Z)Z

    .line 147
    return-void
.end method
