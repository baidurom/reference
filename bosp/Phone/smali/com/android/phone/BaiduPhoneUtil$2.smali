.class final Lcom/android/phone/BaiduPhoneUtil$2;
.super Ljava/lang/Object;
.source "BaiduPhoneUtil.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BaiduPhoneUtil;->expand(Landroid/view/View;ILcom/android/phone/InCallScreen;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ics:Lcom/android/phone/InCallScreen;

.field final synthetic val$mInCallPanel:Landroid/view/View;

.field final synthetic val$mInCallTouchUi:Landroid/view/View;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/android/phone/InCallScreen;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/android/phone/BaiduPhoneUtil$2;->val$v:Landroid/view/View;

    iput-object p2, p0, Lcom/android/phone/BaiduPhoneUtil$2;->val$ics:Lcom/android/phone/InCallScreen;

    iput-object p3, p0, Lcom/android/phone/BaiduPhoneUtil$2;->val$mInCallPanel:Landroid/view/View;

    iput-object p4, p0, Lcom/android/phone/BaiduPhoneUtil$2;->val$mInCallTouchUi:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 472
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .parameter "arg0"

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x0

    .line 477
    sput-boolean v4, Lcom/android/phone/BaiduPhoneUtil;->isInHalfInCallMode:Z

    .line 478
    sput-boolean v4, Lcom/android/phone/BaiduPhoneUtil;->isInExpanding:Z

    .line 479
    iget-object v4, p0, Lcom/android/phone/BaiduPhoneUtil$2;->val$v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget-object v4, p0, Lcom/android/phone/BaiduPhoneUtil$2;->val$v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 480
    iget-object v4, p0, Lcom/android/phone/BaiduPhoneUtil$2;->val$v:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 482
    iget-object v4, p0, Lcom/android/phone/BaiduPhoneUtil$2;->val$ics:Lcom/android/phone/InCallScreen;

    const v5, 0x7f07007c

    invoke-virtual {v4, v5}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 483
    .local v0, closeExpand:Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 485
    iget-object v4, p0, Lcom/android/phone/BaiduPhoneUtil$2;->val$ics:Lcom/android/phone/InCallScreen;

    const v5, 0x7f070071

    invoke-virtual {v4, v5}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 486
    .local v1, full_incall:Landroid/widget/FrameLayout;
    iget-object v4, p0, Lcom/android/phone/BaiduPhoneUtil$2;->val$mInCallPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 487
    .local v3, vpt:Landroid/view/ViewParent;
    check-cast v3, Landroid/widget/FrameLayout;

    .end local v3           #vpt:Landroid/view/ViewParent;
    iget-object v4, p0, Lcom/android/phone/BaiduPhoneUtil$2;->val$mInCallPanel:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 488
    iget-object v4, p0, Lcom/android/phone/BaiduPhoneUtil$2;->val$mInCallTouchUi:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 489
    .restart local v3       #vpt:Landroid/view/ViewParent;
    check-cast v3, Landroid/widget/FrameLayout;

    .end local v3           #vpt:Landroid/view/ViewParent;
    iget-object v4, p0, Lcom/android/phone/BaiduPhoneUtil$2;->val$mInCallTouchUi:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 490
    iget-object v4, p0, Lcom/android/phone/BaiduPhoneUtil$2;->val$mInCallPanel:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 491
    iget-object v4, p0, Lcom/android/phone/BaiduPhoneUtil$2;->val$mInCallTouchUi:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 493
    iget-object v4, p0, Lcom/android/phone/BaiduPhoneUtil$2;->val$ics:Lcom/android/phone/InCallScreen;

    const v5, 0x7f0e001c

    invoke-virtual {v4, v5}, Lcom/android/phone/InCallScreen;->setTheme(I)V

    .line 494
    iget-object v4, p0, Lcom/android/phone/BaiduPhoneUtil$2;->val$ics:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 495
    sget-object v4, Lcom/android/phone/PhoneApp;->mInCallView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 496
    .local v2, vp:Landroid/view/ViewParent;
    if-eqz v2, :cond_0

    .line 497
    check-cast v2, Landroid/widget/FrameLayout;

    .end local v2           #vp:Landroid/view/ViewParent;
    sget-object v4, Lcom/android/phone/PhoneApp;->mInCallView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 498
    :cond_0
    iget-object v4, p0, Lcom/android/phone/BaiduPhoneUtil$2;->val$ics:Lcom/android/phone/InCallScreen;

    sget-object v5, Lcom/android/phone/PhoneApp;->mInCallView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/android/phone/InCallScreen;->setContentView(Landroid/view/View;)V

    .line 499
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    .line 501
    iget-object v4, p0, Lcom/android/phone/BaiduPhoneUtil$2;->val$mInCallTouchUi:Landroid/view/View;

    const v5, 0x7f070084

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/BaiduPhoneUtil;->startAcceptCallAnimation(Landroid/view/View;)V

    .line 502
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 507
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 512
    return-void
.end method
