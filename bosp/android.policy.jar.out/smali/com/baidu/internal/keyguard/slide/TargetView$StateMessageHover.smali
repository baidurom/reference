.class Lcom/baidu/internal/keyguard/slide/TargetView$StateMessageHover;
.super Lcom/baidu/internal/keyguard/slide/TargetView$State;
.source "TargetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/TargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateMessageHover"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/TargetView;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V
    .locals 0
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateMessageHover;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/TargetView$State;-><init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 3

    .prologue
    .line 481
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateMessageHover;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetHandle:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$1000(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_INVISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/slide/TargetView$StateMessageHover;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;)V

    .line 482
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateMessageHover;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetMessage:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$1400(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/TargetView$StateMessageHover;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;Z)V

    .line 483
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateMessageHover;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetCamera:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$1500(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/slide/TargetView$StateMessageHover;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;)V

    .line 484
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateMessageHover;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetUnlock:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$1600(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/slide/TargetView$StateMessageHover;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;)V

    .line 485
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateMessageHover;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetPhone:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$1700(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/slide/TargetView$StateMessageHover;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;)V

    .line 488
    return-void
.end method

.method public enter(Lcom/baidu/internal/keyguard/slide/TargetView$State;)V
    .locals 1
    .parameter "oldState"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateMessageHover;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #calls: Lcom/baidu/internal/keyguard/slide/TargetView;->vibrate()V
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$2100(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    .line 476
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$StateMessageHover;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetCallback:Lcom/baidu/internal/keyguard/slide/TargetCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$900(Lcom/baidu/internal/keyguard/slide/TargetView;)Lcom/baidu/internal/keyguard/slide/TargetCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/internal/keyguard/slide/TargetCallback;->requestHide()V

    .line 477
    return-void
.end method

.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter "context"

    .prologue
    .line 492
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 493
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    const/high16 v1, 0x3400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 495
    return-object v0
.end method
