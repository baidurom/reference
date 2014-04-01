.class Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;
.super Ljava/lang/Object;
.source "SmartLockScreen.java"

# interfaces
.implements Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;
.implements Lcom/baidu/internal/keyguard/slide/SmartLockScreen$UnlockWidgetCommonMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/SmartLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmartMultiUnlockViewMethods"
.end annotation


# static fields
.field private static final USE_NATIVE_CAMERA_DISABLED:Z


# instance fields
.field private mCameraDisabled:Z

.field private mFiveShortcutDisabled:Z

.field private final mSmartMultiUnlockView:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

.field private mViewHeight:I

.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)V
    .locals 3
    .parameter
    .parameter "multiUnlockView"

    .prologue
    const/4 v0, 0x0

    .line 277
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->mViewHeight:I

    .line 278
    iput-object p2, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->mSmartMultiUnlockView:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    .line 289
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->mSmartMultiUnlockView:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    invoke-virtual {v1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->getTargetResourceId()I

    move-result v1

    const v2, #array@zz_lockscreen_targets_five_shortcuts#t

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->mFiveShortcutDisabled:Z

    .line 291
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->mSmartMultiUnlockView:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    return-object v0
.end method

.method public onDragReleased()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x3e8

    const/4 v1, 0x0

    .line 394
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    invoke-virtual {v2}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 395
    .local v12, lockScreenLP:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v11, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 396
    .local v11, fromY:I
    iput v1, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 397
    iput v1, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 398
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    invoke-virtual {v2, v12}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 400
    .local v9, aSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    invoke-virtual {v2}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    invoke-virtual {v3}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->getLeft()I

    move-result v3

    int-to-float v4, v3

    int-to-float v6, v11

    const/4 v8, 0x0

    move v3, v1

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 403
    .local v0, a:Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 404
    invoke-virtual {v0, v13, v14}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 405
    new-instance v1, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods$2;

    invoke-direct {v1, p0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods$2;-><init>(Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 422
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 423
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    invoke-virtual {v1}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f80

    invoke-direct {v10, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 424
    .local v10, alphaAnim:Landroid/view/animation/AlphaAnimation;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v10, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 425
    invoke-virtual {v10, v13, v14}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 426
    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 427
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    invoke-virtual {v1, v9}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->startAnimation(Landroid/view/animation/Animation;)V

    .line 428
    return-void
.end method

.method public onDragging(I)V
    .locals 4
    .parameter "yOffset"

    .prologue
    .line 375
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$200(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 376
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$200(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 379
    :cond_0
    iget v2, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->mViewHeight:I

    if-nez v2, :cond_1

    .line 380
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    invoke-virtual {v2}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->mViewHeight:I

    .line 382
    :cond_1
    const/high16 v1, 0x3f80

    .line 383
    .local v1, percent:F
    iget v2, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->mViewHeight:I

    if-eqz v2, :cond_2

    if-gez p1, :cond_2

    .line 384
    iget v2, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->mViewHeight:I

    int-to-float v2, v2

    int-to-float v3, p1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->mViewHeight:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 386
    :cond_2
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    invoke-virtual {v2, v1}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->setAlpha(F)V

    .line 387
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    invoke-virtual {v2}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 388
    .local v0, lockScreenLP:Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 389
    neg-int v2, p1

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 390
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    invoke-virtual {v2, v0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    return-void
.end method

.method public onFiltDisableShortcut(I)Z
    .locals 1
    .parameter "whichPosition"

    .prologue
    .line 431
    const/4 v0, 0x1

    return v0
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$200(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$200(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 314
    :cond_0
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 357
    if-eqz p2, :cond_0

    .line 358
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$200(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 360
    :cond_0
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 318
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 12
    .parameter "v"
    .parameter "target"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 321
    iget-object v8, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    invoke-virtual {v8}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 322
    .local v5, layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 323
    .local v4, fromY:I
    iget v8, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->mViewHeight:I

    if-nez v8, :cond_0

    .line 324
    iget-object v8, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    invoke-virtual {v8}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->mViewHeight:I

    .line 326
    :cond_0
    iget v8, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->mViewHeight:I

    rsub-int/lit8 v6, v8, 0x0

    .line 327
    .local v6, toY:I
    iget v8, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->mViewHeight:I

    add-int/2addr v8, v4

    mul-int/lit16 v8, v8, 0x258

    iget v9, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->mViewHeight:I

    div-int/2addr v8, v9

    int-to-long v2, v8

    .line 329
    .local v2, duration:J
    iput v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 330
    iput v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 332
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 333
    .local v1, animSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget-object v8, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    invoke-virtual {v8}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->getAlpha()F

    move-result v8

    invoke-direct {v0, v8, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 334
    .local v0, alphaAnim:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 335
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 336
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    int-to-float v8, v4

    int-to-float v9, v6

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 337
    .local v7, transAnim:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v7, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 338
    invoke-virtual {v1, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 340
    iget-object v8, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    invoke-virtual {v8, v1}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->setAnimation(Landroid/view/animation/Animation;)V

    .line 341
    iget-object v8, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    invoke-virtual {v8}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->invalidate()V

    .line 342
    iget-object v8, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->launchApplication(I)V
    invoke-static {v8, p2}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$900(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;I)V

    .line 344
    iget-object v8, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    new-instance v9, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods$1;

    invoke-direct {v9, p0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods$1;-><init>(Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;)V

    invoke-virtual {v8, v9, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 351
    return-void
.end method

.method public ping()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->mSmartMultiUnlockView:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->ping()V

    .line 372
    return-void
.end method

.method public reset(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->mSmartMultiUnlockView:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    invoke-virtual {v0, p1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->reset(Z)V

    .line 368
    return-void
.end method

.method public updateResources()V
    .locals 3

    .prologue
    .line 294
    const v1, #array@zz_lockscreen_targets_five_shortcuts#t

    .line 295
    .local v1, resId:I
    const v0, #array@zz_lockscreen_five_shortcuts_description#t

    .line 296
    .local v0, descriptionId:I
    const v1, #array@zz_lockscreen_targets_five_shortcuts#t

    .line 306
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->mSmartMultiUnlockView:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    invoke-virtual {v2, v0}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->setTargetDescriptionsResourceId(I)V

    .line 307
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->mSmartMultiUnlockView:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    invoke-virtual {v2, v1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->setTargetResources(I)V

    .line 308
    return-void
.end method
