.class abstract Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;
.super Ljava/lang/Object;
.source "TargetHandlePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "State"
.end annotation


# instance fields
.field public obj:Ljava/lang/Object;

.field final synthetic this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract draw()V
.end method

.method public enter(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V
    .locals 0
    .parameter "oldState"

    .prologue
    .line 283
    return-void
.end method

.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .parameter "context"

    .prologue
    .line 290
    const/4 v0, 0x0

    return-object v0
.end method

.method public leave()V
    .locals 0

    .prologue
    .line 287
    return-void
.end method

.method public setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;)V
    .locals 4
    .parameter "v"
    .parameter "state"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 294
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_INVISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 295
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$300(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 296
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 297
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_VISIBLE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    if-ne p2, v0, :cond_2

    .line 299
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 300
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 301
    :cond_2
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    if-ne p2, v0, :cond_3

    .line 302
    const v0, 0x3e99999a

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 303
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 304
    :cond_3
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;->STATE_GONE:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;

    if-ne p2, v0, :cond_0

    .line 305
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 306
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;Z)V
    .locals 3
    .parameter "v"
    .parameter "state"
    .parameter "ring"

    .prologue
    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;->setViewState(Landroid/view/View;Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$ViewState;)V

    .line 312
    if-eqz p3, :cond_0

    .line 313
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRing:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$400(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRing:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$400(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRing:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$400(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 315
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRing:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$400(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRing:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$400(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mTargetRing:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$400(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
