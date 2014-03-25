.class Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$5;
.super Ljava/lang/Object;
.source "SmartMultiUnlockView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->doFinish()V
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
    .line 375
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$5;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$5;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->access$300(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$5;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterX:F
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->access$000(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setX(F)V

    .line 378
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$5;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mHandleDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->access$300(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$5;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->mWaveCenterY:F
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->access$100(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setY(F)V

    .line 379
    return-void
.end method
