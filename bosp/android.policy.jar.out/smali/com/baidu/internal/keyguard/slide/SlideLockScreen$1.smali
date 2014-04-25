.class Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;
.super Ljava/lang/Object;
.source "SlideLockScreen.java"

# interfaces
.implements Lcom/baidu/internal/keyguard/slide/TargetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/SlideLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestHide()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 124
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$000(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/TransportControlView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 125
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$000(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/TransportControlView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$600(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 126
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$000(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/TransportControlView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->setVisibility(I)V

    .line 128
    :cond_0
    invoke-static {}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$400()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 129
    invoke-static {}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$400()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$600(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 130
    invoke-static {}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$400()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$500(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$500(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$500(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$600(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 138
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$500(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->setVisibility(I)V

    .line 140
    :cond_2
    return-void
.end method

.method public requestShow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$000(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/TransportControlView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$000(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/TransportControlView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mInAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$100(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 106
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$000(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/TransportControlView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->setVisibility(I)V

    .line 108
    :cond_0
    invoke-static {}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$200()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-static {}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$300()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$400()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    invoke-static {}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$400()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mInAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$100(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 110
    invoke-static {}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$400()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$500(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$500(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$500(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mInAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$100(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 118
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$500(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->setVisibility(I)V

    .line 120
    :cond_3
    return-void
.end method
