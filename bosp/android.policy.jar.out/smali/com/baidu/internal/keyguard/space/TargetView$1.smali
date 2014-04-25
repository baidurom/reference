.class Lcom/baidu/internal/keyguard/space/TargetView$1;
.super Ljava/lang/Object;
.source "TargetView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/internal/keyguard/space/TargetView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/space/TargetView;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/space/TargetView;)V
    .locals 0
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/baidu/internal/keyguard/space/TargetView$1;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$1;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/space/TargetView;->access$200(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->endDrag()V

    .line 453
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$1;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/TargetView$1;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/space/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/space/TargetView$State;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/space/TargetView;->access$300(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView;->setState(Lcom/baidu/internal/keyguard/space/TargetView$State;)V

    .line 454
    return-void
.end method
