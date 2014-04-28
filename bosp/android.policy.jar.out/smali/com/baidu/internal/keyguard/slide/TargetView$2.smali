.class Lcom/baidu/internal/keyguard/slide/TargetView$2;
.super Ljava/lang/Object;
.source "TargetView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/internal/keyguard/slide/TargetView;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/TargetView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/TargetView$2;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    iput-object p2, p0, Lcom/baidu/internal/keyguard/slide/TargetView$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$2;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mPlugged:I
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$200(Lcom/baidu/internal/keyguard/slide/TargetView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$2;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TargetView$2;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mStateChargging:Lcom/baidu/internal/keyguard/slide/TargetView$State;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$300(Lcom/baidu/internal/keyguard/slide/TargetView;)Lcom/baidu/internal/keyguard/slide/TargetView$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TargetView;->setState(Lcom/baidu/internal/keyguard/slide/TargetView$State;)V

    .line 313
    :goto_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$2;->val$v:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TargetView$2;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mHandleLastX:I
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$500(Lcom/baidu/internal/keyguard/slide/TargetView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 314
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$2;->val$v:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TargetView$2;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mHandleLastY:I
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$600(Lcom/baidu/internal/keyguard/slide/TargetView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 315
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$2;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TargetView$2;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/slide/TargetView$State;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$400(Lcom/baidu/internal/keyguard/slide/TargetView;)Lcom/baidu/internal/keyguard/slide/TargetView$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TargetView;->setState(Lcom/baidu/internal/keyguard/slide/TargetView$State;)V

    goto :goto_0
.end method
