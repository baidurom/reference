.class abstract Lcom/baidu/internal/keyguard/slide/TargetView$State;
.super Ljava/lang/Object;
.source "TargetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/TargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "State"
.end annotation


# instance fields
.field public obj:Ljava/lang/Object;

.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/TargetView;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/TargetView$State;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract draw()V
.end method

.method public enter(Lcom/baidu/internal/keyguard/slide/TargetView$State;)V
    .locals 0
    .parameter "oldState"

    .prologue
    .line 371
    return-void
.end method

.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .parameter "context"

    .prologue
    .line 377
    const/4 v0, 0x0

    return-object v0
.end method

.method public leave()V
    .locals 0

    .prologue
    .line 374
    return-void
.end method

.method public setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;)V
    .locals 3
    .parameter "v"
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 381
    sget-object v0, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_INVISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$State;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$700(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 383
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 384
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    sget-object v0, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    if-ne p2, v0, :cond_2

    .line 386
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 387
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 388
    :cond_2
    sget-object v0, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    if-ne p2, v0, :cond_3

    .line 389
    const v0, 0x3e99999a

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 390
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 391
    :cond_3
    sget-object v0, Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;->STATE_GONE:Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;

    if-ne p2, v0, :cond_0

    .line 392
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 393
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;Z)V
    .locals 3
    .parameter "v"
    .parameter "state"
    .parameter "ring"

    .prologue
    .line 398
    invoke-virtual {p0, p1, p2}, Lcom/baidu/internal/keyguard/slide/TargetView$State;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;)V

    .line 399
    if-eqz p3, :cond_0

    .line 400
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$State;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetRing:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$800(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$State;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetRing:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$800(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView$State;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetRing:Landroid/view/View;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$800(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 402
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$State;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetRing:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$800(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView$State;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetRing:Landroid/view/View;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$800(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 406
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView$State;->this$0:Lcom/baidu/internal/keyguard/slide/TargetView;

    #getter for: Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetRing:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->access$800(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
