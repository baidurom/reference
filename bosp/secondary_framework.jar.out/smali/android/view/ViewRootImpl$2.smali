.class Landroid/view/ViewRootImpl$2;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/InputHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 4042
    iput-object p1, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleKey(Landroid/view/KeyEvent;Landroid/view/InputQueue$FinishedCallback;)V
    .locals 2
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    .line 4044
    iget-object v0, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    #setter for: Landroid/view/ViewRootImpl;->mCurrentKeyEvent:Landroid/view/KeyEvent;
    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->access$102(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 4045
    iget-object v0, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    const-string v1, "1: Start event from input"

    #setter for: Landroid/view/ViewRootImpl;->mKeyEventStatus:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->access$202(Landroid/view/ViewRootImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 4046
    iget-object v0, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    #calls: Landroid/view/ViewRootImpl;->startInputEvent(Landroid/view/InputQueue$FinishedCallback;)V
    invoke-static {v0, p2}, Landroid/view/ViewRootImpl;->access$300(Landroid/view/ViewRootImpl;Landroid/view/InputQueue$FinishedCallback;)V

    .line 4047
    iget-object v0, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x1

    #calls: Landroid/view/ViewRootImpl;->dispatchKey(Landroid/view/KeyEvent;Z)V
    invoke-static {v0, p1, v1}, Landroid/view/ViewRootImpl;->access$400(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;Z)V

    .line 4048
    return-void
.end method

.method public handleMotion(Landroid/view/MotionEvent;Landroid/view/InputQueue$FinishedCallback;)V
    .locals 2
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    .line 4051
    invoke-static {}, Landroid/view/ViewRootImpl;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 4052
    const-string v0, "ViewRootImpl"

    const-string v1, "[AppLaunch] handleMotion() action_down event coming."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4054
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    #setter for: Landroid/view/ViewRootImpl;->mCurrentMotion:Landroid/view/MotionEvent;
    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->access$602(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 4055
    iget-object v0, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    const-string v1, "1: Start event from input"

    #setter for: Landroid/view/ViewRootImpl;->mMotionEventStatus:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->access$702(Landroid/view/ViewRootImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 4056
    iget-object v0, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    #calls: Landroid/view/ViewRootImpl;->startInputEvent(Landroid/view/InputQueue$FinishedCallback;)V
    invoke-static {v0, p2}, Landroid/view/ViewRootImpl;->access$300(Landroid/view/ViewRootImpl;Landroid/view/InputQueue$FinishedCallback;)V

    .line 4057
    iget-object v0, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x1

    #calls: Landroid/view/ViewRootImpl;->dispatchMotion(Landroid/view/MotionEvent;Z)V
    invoke-static {v0, p1, v1}, Landroid/view/ViewRootImpl;->access$800(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;Z)V

    .line 4058
    return-void
.end method
