.class Lcom/baidu/internal/keyguard/water/TargetView$1;
.super Ljava/lang/Object;
.source "TargetView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/internal/keyguard/water/TargetView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/water/TargetView;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/water/TargetView;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/baidu/internal/keyguard/water/TargetView$1;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$1;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/water/TargetView;->access$200(Lcom/baidu/internal/keyguard/water/TargetView;)Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->endDrag()V

    .line 422
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$1;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/TargetView$1;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/water/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/water/TargetView$State;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/water/TargetView;->access$300(Lcom/baidu/internal/keyguard/water/TargetView;)Lcom/baidu/internal/keyguard/water/TargetView$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/water/TargetView;->setState(Lcom/baidu/internal/keyguard/water/TargetView$State;)V

    .line 423
    return-void
.end method
