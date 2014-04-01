.class Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$2;
.super Ljava/lang/Object;
.source "SmartKeyguardStatusViewManager.java"

# interfaces
.implements Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$2;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isVisible(Landroid/view/View;)Z
    .locals 1
    .parameter "self"

    .prologue
    .line 343
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPlayStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 331
    const-string v0, "KeyguardStatusViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$2;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPlayState:I
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$900(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$2;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #setter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPlayState:I
    invoke-static {v0, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$902(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;I)I

    .line 334
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$2;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mHorizontalScrollView:Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$1000(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->onPlayStateChanged(I)V

    .line 336
    :cond_0
    return-void
.end method

.method public requestHide(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/16 v3, 0x8

    .line 317
    const-string v0, "KeyguardStatusViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requested hide transports"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$2;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mFlipperTransportView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$700(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 321
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$2;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mFlipperTransportView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$700(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$2;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mFlipperTransportView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$700(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 324
    :cond_0
    return-void
.end method

.method public requestShow(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 308
    const-string v0, "KeyguardStatusViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requested show transports"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$2;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mFlipperTransportView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$700(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$2;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mFlipperTransportView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$700(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 314
    :cond_0
    return-void
.end method

.method public setBackground(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$2;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mAlbumView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$800(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 328
    return-void
.end method

.method public userActivity(Landroid/view/View;)V
    .locals 2
    .parameter "self"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$2;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$600(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 305
    return-void
.end method
