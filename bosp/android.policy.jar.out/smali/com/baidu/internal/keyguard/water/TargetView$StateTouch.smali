.class Lcom/baidu/internal/keyguard/water/TargetView$StateTouch;
.super Lcom/baidu/internal/keyguard/water/TargetView$State;
.source "TargetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/water/TargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateTouch"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/water/TargetView;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/water/TargetView;)V
    .locals 0
    .parameter

    .prologue
    .line 509
    iput-object p1, p0, Lcom/baidu/internal/keyguard/water/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/water/TargetView$State;-><init>(Lcom/baidu/internal/keyguard/water/TargetView;)V

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/water/TargetView;->access$200(Lcom/baidu/internal/keyguard/water/TargetView;)Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->STATE_PRESSED:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/water/TargetView$StateTouch;->setIconState(Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/water/TargetView$IconState;)V

    .line 521
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/water/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/water/TargetView;->access$400(Lcom/baidu/internal/keyguard/water/TargetView;)Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/water/TargetView$StateTouch;->setIconState(Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/water/TargetView$IconState;)V

    .line 522
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/water/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/water/TargetView;->access$500(Lcom/baidu/internal/keyguard/water/TargetView;)Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/water/TargetView$StateTouch;->setIconState(Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/water/TargetView$IconState;)V

    .line 523
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/water/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/water/TargetView;->access$600(Lcom/baidu/internal/keyguard/water/TargetView;)Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/water/TargetView$StateTouch;->setIconState(Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/water/TargetView$IconState;)V

    .line 524
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/water/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/water/TargetView;->access$700(Lcom/baidu/internal/keyguard/water/TargetView;)Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/water/TargetView$StateTouch;->setIconState(Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/water/TargetView$IconState;)V

    .line 525
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/water/TargetView;->invalidate()V

    .line 526
    return-void
.end method

.method public enter(Lcom/baidu/internal/keyguard/water/TargetView$State;)V
    .locals 1
    .parameter "oldState"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/water/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/water/TargetView$State;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/water/TargetView;->access$300(Lcom/baidu/internal/keyguard/water/TargetView;)Lcom/baidu/internal/keyguard/water/TargetView$State;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    #calls: Lcom/baidu/internal/keyguard/water/TargetView;->vibrate()V
    invoke-static {v0}, Lcom/baidu/internal/keyguard/water/TargetView;->access$800(Lcom/baidu/internal/keyguard/water/TargetView;)V

    .line 516
    :cond_0
    return-void
.end method
