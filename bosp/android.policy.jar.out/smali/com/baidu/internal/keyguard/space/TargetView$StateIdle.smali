.class Lcom/baidu/internal/keyguard/space/TargetView$StateIdle;
.super Lcom/baidu/internal/keyguard/space/TargetView$State;
.source "TargetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/space/TargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateIdle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/space/TargetView;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/space/TargetView;)V
    .locals 0
    .parameter

    .prologue
    .line 524
    iput-object p1, p0, Lcom/baidu/internal/keyguard/space/TargetView$StateIdle;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/space/TargetView$State;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$StateIdle;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/space/TargetView;->access$200(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView$StateIdle;->setIconState(Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/space/TargetView$IconState;)V

    .line 533
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$StateIdle;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/space/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/space/TargetView;->access$400(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_GONE:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView$StateIdle;->setIconState(Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/space/TargetView$IconState;)V

    .line 534
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$StateIdle;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/space/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/space/TargetView;->access$500(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_GONE:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView$StateIdle;->setIconState(Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/space/TargetView$IconState;)V

    .line 535
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$StateIdle;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/space/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/space/TargetView;->access$600(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_GONE:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView$StateIdle;->setIconState(Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/space/TargetView$IconState;)V

    .line 536
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$StateIdle;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/space/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/space/TargetView;->access$700(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_GONE:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView$StateIdle;->setIconState(Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/space/TargetView$IconState;)V

    .line 537
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$StateIdle;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/space/TargetView;->invalidate()V

    .line 538
    return-void
.end method

.method public enter(Lcom/baidu/internal/keyguard/space/TargetView$State;)V
    .locals 0
    .parameter "oldState"

    .prologue
    .line 528
    return-void
.end method
