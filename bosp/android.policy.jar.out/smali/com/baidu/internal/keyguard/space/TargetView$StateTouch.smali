.class Lcom/baidu/internal/keyguard/space/TargetView$StateTouch;
.super Lcom/baidu/internal/keyguard/space/TargetView$State;
.source "TargetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/space/TargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateTouch"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/space/TargetView;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/space/TargetView;)V
    .locals 0
    .parameter

    .prologue
    .line 540
    iput-object p1, p0, Lcom/baidu/internal/keyguard/space/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/space/TargetView$State;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/space/TargetView;->access$200(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_PRESSED:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView$StateTouch;->setIconState(Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/space/TargetView$IconState;)V

    .line 552
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/space/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/space/TargetView;->access$400(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView$StateTouch;->setIconState(Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/space/TargetView$IconState;)V

    .line 553
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/space/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/space/TargetView;->access$500(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView$StateTouch;->setIconState(Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/space/TargetView$IconState;)V

    .line 554
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/space/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/space/TargetView;->access$600(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView$StateTouch;->setIconState(Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/space/TargetView$IconState;)V

    .line 555
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/space/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/space/TargetView;->access$700(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView$StateTouch;->setIconState(Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/space/TargetView$IconState;)V

    .line 556
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/space/TargetView;->invalidate()V

    .line 557
    return-void
.end method

.method public enter(Lcom/baidu/internal/keyguard/space/TargetView$State;)V
    .locals 1
    .parameter "oldState"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/space/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/space/TargetView$State;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/space/TargetView;->access$300(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$State;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$StateTouch;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    #calls: Lcom/baidu/internal/keyguard/space/TargetView;->vibrate()V
    invoke-static {v0}, Lcom/baidu/internal/keyguard/space/TargetView;->access$800(Lcom/baidu/internal/keyguard/space/TargetView;)V

    .line 547
    :cond_0
    return-void
.end method
