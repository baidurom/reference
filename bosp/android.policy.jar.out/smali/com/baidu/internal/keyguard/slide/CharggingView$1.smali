.class Lcom/baidu/internal/keyguard/slide/CharggingView$1;
.super Landroid/os/Handler;
.source "CharggingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/CharggingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/CharggingView;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$1;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 43
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 61
    :goto_0
    return-void

    .line 45
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 47
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$1;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    #getter for: Lcom/baidu/internal/keyguard/slide/CharggingView;->circle1:Lcom/baidu/internal/keyguard/slide/CharggingCircle;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/CharggingView;->access$100(Lcom/baidu/internal/keyguard/slide/CharggingView;)Lcom/baidu/internal/keyguard/slide/CharggingCircle;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$1;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    #getter for: Lcom/baidu/internal/keyguard/slide/CharggingView;->mCircleAnimation1:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/CharggingView;->access$000(Lcom/baidu/internal/keyguard/slide/CharggingView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/CharggingCircle;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 50
    :pswitch_2
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$1;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    #getter for: Lcom/baidu/internal/keyguard/slide/CharggingView;->circle2:Lcom/baidu/internal/keyguard/slide/CharggingCircle;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/CharggingView;->access$300(Lcom/baidu/internal/keyguard/slide/CharggingView;)Lcom/baidu/internal/keyguard/slide/CharggingCircle;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$1;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    #getter for: Lcom/baidu/internal/keyguard/slide/CharggingView;->mCircleAnimation2:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/CharggingView;->access$200(Lcom/baidu/internal/keyguard/slide/CharggingView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/CharggingCircle;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 53
    :pswitch_3
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$1;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    #getter for: Lcom/baidu/internal/keyguard/slide/CharggingView;->circle3:Lcom/baidu/internal/keyguard/slide/CharggingCircle;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/CharggingView;->access$500(Lcom/baidu/internal/keyguard/slide/CharggingView;)Lcom/baidu/internal/keyguard/slide/CharggingCircle;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$1;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    #getter for: Lcom/baidu/internal/keyguard/slide/CharggingView;->mCircleAnimation3:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/CharggingView;->access$400(Lcom/baidu/internal/keyguard/slide/CharggingView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/CharggingCircle;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 56
    :pswitch_4
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$1;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    #getter for: Lcom/baidu/internal/keyguard/slide/CharggingView;->circle4:Lcom/baidu/internal/keyguard/slide/CharggingCircle;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/CharggingView;->access$700(Lcom/baidu/internal/keyguard/slide/CharggingView;)Lcom/baidu/internal/keyguard/slide/CharggingCircle;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/CharggingView$1;->this$0:Lcom/baidu/internal/keyguard/slide/CharggingView;

    #getter for: Lcom/baidu/internal/keyguard/slide/CharggingView;->mCircleAnimation4:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/CharggingView;->access$600(Lcom/baidu/internal/keyguard/slide/CharggingView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/CharggingCircle;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 45
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
