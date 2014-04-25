.class Lcom/baidu/internal/keyguard/slide/TargetView$1;
.super Landroid/os/Handler;
.source "TargetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/TargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/TargetView;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/TargetView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 78
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 89
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 90
    return-void

    .line 80
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 81
    .local v0, index:I
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TargetView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mGuideArrow:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$000(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 82
    if-eqz v0, :cond_0

    .line 83
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TargetView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mGuideArrow:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$000(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/ViewGroup;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TargetView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mGuideArrow:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$000(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView$1;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mGuideArrow:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$000(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
