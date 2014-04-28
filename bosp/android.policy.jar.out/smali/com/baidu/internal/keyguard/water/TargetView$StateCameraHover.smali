.class Lcom/baidu/internal/keyguard/water/TargetView$StateCameraHover;
.super Lcom/baidu/internal/keyguard/water/TargetView$State;
.source "TargetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/water/TargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateCameraHover"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/water/TargetView;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/water/TargetView;)V
    .locals 0
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lcom/baidu/internal/keyguard/water/TargetView$StateCameraHover;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/water/TargetView$State;-><init>(Lcom/baidu/internal/keyguard/water/TargetView;)V

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$StateCameraHover;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/water/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/water/TargetView;->access$200(Lcom/baidu/internal/keyguard/water/TargetView;)Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->STATE_PRESSED:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/water/TargetView$StateCameraHover;->setIconState(Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/water/TargetView$IconState;)V

    .line 563
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$StateCameraHover;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/water/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/water/TargetView;->access$500(Lcom/baidu/internal/keyguard/water/TargetView;)Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->STATE_PRESSED:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/water/TargetView$StateCameraHover;->setIconState(Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/water/TargetView$IconState;)V

    .line 564
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$StateCameraHover;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/water/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/water/TargetView;->access$400(Lcom/baidu/internal/keyguard/water/TargetView;)Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/water/TargetView$StateCameraHover;->setIconState(Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/water/TargetView$IconState;)V

    .line 565
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$StateCameraHover;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/water/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/water/TargetView;->access$600(Lcom/baidu/internal/keyguard/water/TargetView;)Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/water/TargetView$StateCameraHover;->setIconState(Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/water/TargetView$IconState;)V

    .line 566
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$StateCameraHover;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/water/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/water/TargetView;->access$700(Lcom/baidu/internal/keyguard/water/TargetView;)Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/water/TargetView$IconState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/water/TargetView$IconState;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/water/TargetView$StateCameraHover;->setIconState(Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/water/TargetView$IconState;)V

    .line 567
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$StateCameraHover;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/water/TargetView;->invalidate()V

    .line 568
    return-void
.end method

.method public enter(Lcom/baidu/internal/keyguard/water/TargetView$State;)V
    .locals 1
    .parameter "oldState"

    .prologue
    .line 557
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$StateCameraHover;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    #calls: Lcom/baidu/internal/keyguard/water/TargetView;->vibrate()V
    invoke-static {v0}, Lcom/baidu/internal/keyguard/water/TargetView;->access$800(Lcom/baidu/internal/keyguard/water/TargetView;)V

    .line 558
    return-void
.end method

.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter "context"

    .prologue
    .line 572
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 573
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 574
    return-object v0
.end method
