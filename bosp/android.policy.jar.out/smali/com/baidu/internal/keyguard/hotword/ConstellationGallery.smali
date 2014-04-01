.class public Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;
.super Landroid/widget/Gallery;
.source "ConstellationGallery.java"


# instance fields
.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method private isScrollingRight(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getConstellationY()F
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/hotword/Constellation;

    .line 91
    .local v0, selected:Lcom/baidu/internal/keyguard/hotword/Constellation;
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->getConstellationY()F

    move-result v1

    .line 94
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 55
    const v0, 0x7fffffff

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/widget/Gallery;->onAttachedToWindow()V

    .line 61
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->setSpacing(I)V

    .line 62
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->isScrollingRight(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    const/16 v0, 0x16

    .line 44
    .local v0, kEvent:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->resetConstellationUi()V

    .line 45
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 46
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->getInstance(Landroid/content/Context;)Lcom/baidu/internal/keyguard/hotword/UbcUtils;

    move-result-object v1

    const-string v2, "0204"

    invoke-virtual {v1, v2}, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->addStatistic(Ljava/lang/String;)V

    .line 50
    const/4 v1, 0x1

    return v1

    .line 42
    .end local v0           #kEvent:I
    :cond_1
    const/16 v0, 0x15

    .restart local v0       #kEvent:I
    goto :goto_0
.end method

.method public onWordHover(Landroid/graphics/Point;)Landroid/widget/TextView;
    .locals 2
    .parameter "handlePoint"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/hotword/Constellation;

    .line 73
    .local v0, selected:Lcom/baidu/internal/keyguard/hotword/Constellation;
    if-eqz v0, :cond_1

    .line 74
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 77
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/internal/keyguard/hotword/Constellation;->onWordHover(Landroid/graphics/Point;)Landroid/widget/TextView;

    move-result-object v1

    .line 79
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onWordListAvaliable(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/hotword/Constellation;

    .line 110
    .local v0, selected:Lcom/baidu/internal/keyguard/hotword/Constellation;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, p1}, Lcom/baidu/internal/keyguard/hotword/Constellation;->onWordListAvaliable(Z)V

    .line 113
    :cond_0
    return-void
.end method

.method public requestSingleLine(Z)V
    .locals 1
    .parameter "singleLine"

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/hotword/Constellation;

    .line 84
    .local v0, selected:Lcom/baidu/internal/keyguard/hotword/Constellation;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0, p1}, Lcom/baidu/internal/keyguard/hotword/Constellation;->requestSingleLine(Z)V

    .line 87
    :cond_0
    return-void
.end method

.method public resetConstellationUi()V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/hotword/Constellation;

    .line 66
    .local v0, selected:Lcom/baidu/internal/keyguard/hotword/Constellation;
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/hotword/Constellation;->resetUi()V

    .line 69
    :cond_0
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 106
    return-void
.end method

.method public setTransparent(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/ConstellationGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/hotword/Constellation;

    .line 99
    .local v0, selected:Lcom/baidu/internal/keyguard/hotword/Constellation;
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0, p1}, Lcom/baidu/internal/keyguard/hotword/Constellation;->setTransparent(Z)V

    .line 102
    :cond_0
    return-void
.end method
