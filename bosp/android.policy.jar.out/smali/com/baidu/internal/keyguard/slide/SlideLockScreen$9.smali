.class Lcom/baidu/internal/keyguard/slide/SlideLockScreen$9;
.super Ljava/lang/Object;
.source "SlideLockScreen.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->initIQiYi()V
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
    .line 722
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$9;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 736
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$9;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #setter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiFirstVisibleItem:I
    invoke-static {v0, p2}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$1502(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;I)I

    .line 737
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$9;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #setter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiVisibleItemCount:I
    invoke-static {v0, p3}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$1602(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;I)I

    .line 738
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$9;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #setter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiTotalItemCount:I
    invoke-static {v0, p4}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$1702(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;I)I

    .line 739
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v2, 0x0

    .line 725
    if-nez p2, :cond_0

    .line 726
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$9;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$500(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_1

    .line 727
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$9;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$500(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->setSelection(I)V

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$9;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$500(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$9;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiFirstVisibleItem:I
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$1500(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->smoothScrollToPositionFromTop(II)V

    goto :goto_0
.end method
