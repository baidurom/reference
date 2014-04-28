.class Lcom/baidu/internal/keyguard/space/TargetView$StateCameraHover;
.super Lcom/baidu/internal/keyguard/space/TargetView$State;
.source "TargetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/space/TargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateCameraHover"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/space/TargetView;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/space/TargetView;)V
    .locals 0
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/baidu/internal/keyguard/space/TargetView$StateCameraHover;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/space/TargetView$State;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$StateCameraHover;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/space/TargetView;->access$200(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_PRESSED:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView$StateCameraHover;->setIconState(Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/space/TargetView$IconState;)V

    .line 594
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$StateCameraHover;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/space/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/space/TargetView;->access$500(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_PRESSED:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView$StateCameraHover;->setIconState(Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/space/TargetView$IconState;)V

    .line 595
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$StateCameraHover;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/space/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/space/TargetView;->access$400(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView$StateCameraHover;->setIconState(Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/space/TargetView$IconState;)V

    .line 596
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$StateCameraHover;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/space/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/space/TargetView;->access$600(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView$StateCameraHover;->setIconState(Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/space/TargetView$IconState;)V

    .line 597
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$StateCameraHover;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/space/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/space/TargetView;->access$700(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView$StateCameraHover;->setIconState(Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/space/TargetView$IconState;)V

    .line 598
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$StateCameraHover;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/space/TargetView;->invalidate()V

    .line 599
    return-void
.end method

.method public enter(Lcom/baidu/internal/keyguard/space/TargetView$State;)V
    .locals 1
    .parameter "oldState"

    .prologue
    .line 588
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$StateCameraHover;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    #calls: Lcom/baidu/internal/keyguard/space/TargetView;->vibrate()V
    invoke-static {v0}, Lcom/baidu/internal/keyguard/space/TargetView;->access$800(Lcom/baidu/internal/keyguard/space/TargetView;)V

    .line 589
    return-void
.end method

.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter "context"

    .prologue
    .line 603
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 604
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 605
    return-object v0
.end method
