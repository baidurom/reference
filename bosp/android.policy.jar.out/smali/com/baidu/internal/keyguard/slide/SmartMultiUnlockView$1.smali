.class Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SmartMultiUnlockView.java"


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
    .line 121
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$1;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animator"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$1;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$1;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterX:F
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->access$000(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)F

    move-result v2

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$1;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F
    invoke-static {v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->access$100(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)F

    move-result v3

    #calls: Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->switchToState(IFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->access$200(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;IFF)V

    .line 124
    return-void
.end method
