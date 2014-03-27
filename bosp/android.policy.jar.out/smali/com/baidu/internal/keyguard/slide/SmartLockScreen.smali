.class public Lcom/baidu/internal/keyguard/slide/SmartLockScreen;
.super Landroid/widget/FrameLayout;
.source "SmartLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;,
        Lcom/baidu/internal/keyguard/slide/SmartLockScreen$MultiWaveViewMethods;,
        Lcom/baidu/internal/keyguard/slide/SmartLockScreen$WaveViewMethods;,
        Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SlidingTabMethods;,
        Lcom/baidu/internal/keyguard/slide/SmartLockScreen$UnlockWidgetCommonMethods;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DEBUG_CONFIGURATION:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final LOCKSCREEN_ANIMATION_DURATION:I = 0x3e8

.field private static final ON_RESUME_PING_DELAY:I = 0x1f4

.field private static final STAY_ON_WHILE_GRABBED_TIMEOUT:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "SmartLockScreen"

.field private static final WAIT_FOR_ANIMATION_TIMEOUT:I = 0x258


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCreationOrientation:I

.field private mEnableMenuKeyInLockScreen:Z

.field private mExtMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mKeyboardHidden:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mOnResumePing:Ljava/lang/Runnable;

.field private mSilentMode:Z

.field private mSmartMultiUnlockView:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

.field private mStatusViewManager:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

.field private mUnlockWidget:Landroid/view/View;

.field private mUnlockWidgetMethods:Lcom/baidu/internal/keyguard/slide/SmartLockScreen$UnlockWidgetCommonMethods;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 17
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 486
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 622
    new-instance v2, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$2;-><init>(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mOnResumePing:Ljava/lang/Runnable;

    .line 487
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 488
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 489
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 491
    invoke-direct/range {p0 .. p0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->shouldEnableMenuKey()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mEnableMenuKeyInLockScreen:Z

    .line 493
    move-object/from16 v0, p2

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mCreationOrientation:I

    .line 495
    move-object/from16 v0, p2

    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mKeyboardHidden:I

    .line 503
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 504
    .local v9, inflater:Landroid/view/LayoutInflater;
    const-string v2, "SmartLockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creation orientation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mCreationOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const v2, #layout@zz_keyguard_screen_tab_unlock#t

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v9, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 509
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->setFocusable(Z)V

    .line 510
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->setFocusableInTouchMode(Z)V

    .line 511
    const/high16 v2, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->setDescendantFocusability(I)V

    .line 513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 514
    invoke-direct/range {p0 .. p0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->isSilentMode()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mSilentMode:Z

    .line 516
    const v2, #id@unlock_widget#t

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mUnlockWidget:Landroid/view/View;

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mUnlockWidget:Landroid/view/View;

    instance-of v2, v2, Lcom/android/internal/widget/SlidingTab;

    if-eqz v2, :cond_0

    .line 519
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v13, Lcom/android/internal/widget/SlidingTab;

    .line 520
    .local v13, slidingTabView:Lcom/android/internal/widget/SlidingTab;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Lcom/android/internal/widget/SlidingTab;->setHoldAfterTrigger(ZZ)V

    .line 521
    const v2, #string@lockscreen_unlock_label#t

    invoke-virtual {v13, v2}, Lcom/android/internal/widget/SlidingTab;->setLeftHintText(I)V

    .line 522
    const v2, #drawable@ic_jog_dial_unlock#t

    const v3, #drawable@jog_tab_target_green#t

    const v4, #drawable@jog_tab_bar_left_unlock#t

    const v5, #drawable@jog_tab_left_unlock#t

    invoke-virtual {v13, v2, v3, v4, v5}, Lcom/android/internal/widget/SlidingTab;->setLeftTabResources(IIII)V

    .line 527
    new-instance v12, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SlidingTabMethods;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SlidingTabMethods;-><init>(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;Lcom/android/internal/widget/SlidingTab;)V

    .line 528
    .local v12, slidingTabMethods:Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SlidingTabMethods;
    invoke-virtual {v13, v12}, Lcom/android/internal/widget/SlidingTab;->setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V

    .line 529
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mUnlockWidgetMethods:Lcom/baidu/internal/keyguard/slide/SmartLockScreen$UnlockWidgetCommonMethods;

    .line 551
    .end local v12           #slidingTabMethods:Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SlidingTabMethods;
    .end local v13           #slidingTabView:Lcom/android/internal/widget/SlidingTab;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mUnlockWidget:Landroid/view/View;

    instance-of v2, v2, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    if-eqz v2, :cond_4

    .line 552
    new-instance v2, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v8, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;ZLcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mStatusViewManager:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    .line 557
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mUnlockWidgetMethods:Lcom/baidu/internal/keyguard/slide/SmartLockScreen$UnlockWidgetCommonMethods;

    invoke-interface {v2}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$UnlockWidgetCommonMethods;->updateResources()V

    .line 559
    const-string v3, "SmartLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** LockScreen accel is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mUnlockWidget:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "on"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return-void

    .line 530
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mUnlockWidget:Landroid/view/View;

    instance-of v2, v2, Lcom/android/internal/widget/WaveView;

    if-eqz v2, :cond_1

    .line 531
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v15, Lcom/android/internal/widget/WaveView;

    .line 532
    .local v15, waveView:Lcom/android/internal/widget/WaveView;
    new-instance v16, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$WaveViewMethods;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$WaveViewMethods;-><init>(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;Lcom/android/internal/widget/WaveView;)V

    .line 533
    .local v16, waveViewMethods:Lcom/baidu/internal/keyguard/slide/SmartLockScreen$WaveViewMethods;
    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/widget/WaveView;->setOnTriggerListener(Lcom/android/internal/widget/WaveView$OnTriggerListener;)V

    .line 534
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mUnlockWidgetMethods:Lcom/baidu/internal/keyguard/slide/SmartLockScreen$UnlockWidgetCommonMethods;

    goto :goto_0

    .line 535
    .end local v15           #waveView:Lcom/android/internal/widget/WaveView;
    .end local v16           #waveViewMethods:Lcom/baidu/internal/keyguard/slide/SmartLockScreen$WaveViewMethods;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mUnlockWidget:Landroid/view/View;

    instance-of v2, v2, Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    if-eqz v2, :cond_2

    .line 536
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v10, Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    .line 537
    .local v10, multiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;
    new-instance v11, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$MultiWaveViewMethods;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v10}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$MultiWaveViewMethods;-><init>(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;Lcom/android/internal/widget/multiwaveview/MultiWaveView;)V

    .line 538
    .local v11, multiWaveViewMethods:Lcom/baidu/internal/keyguard/slide/SmartLockScreen$MultiWaveViewMethods;
    invoke-virtual {v10, v11}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;)V

    .line 539
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mUnlockWidgetMethods:Lcom/baidu/internal/keyguard/slide/SmartLockScreen$UnlockWidgetCommonMethods;

    goto/16 :goto_0

    .line 540
    .end local v10           #multiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;
    .end local v11           #multiWaveViewMethods:Lcom/baidu/internal/keyguard/slide/SmartLockScreen$MultiWaveViewMethods;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mUnlockWidget:Landroid/view/View;

    instance-of v2, v2, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    if-eqz v2, :cond_3

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v2, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mSmartMultiUnlockView:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    .line 542
    new-instance v14, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mSmartMultiUnlockView:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v2}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;-><init>(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)V

    .line 543
    .local v14, smartMultiUnlockMethods:Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mSmartMultiUnlockView:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    invoke-virtual {v2, v14}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->setOnTriggerListener(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;)V

    .line 544
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mUnlockWidgetMethods:Lcom/baidu/internal/keyguard/slide/SmartLockScreen$UnlockWidgetCommonMethods;

    .line 545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mSmartMultiUnlockView:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->setVibrateEnabled(Z)V

    .line 546
    const-string v2, "SmartLockScreen"

    const-string v3, "mUnlockWidget instanceof SmartMultiUnlockView"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 548
    .end local v14           #smartMultiUnlockMethods:Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized unlock widget: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mUnlockWidget:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 554
    :cond_4
    new-instance v2, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;ZLcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mStatusViewManager:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    goto/16 :goto_1

    .line 559
    :cond_5
    const-string v2, "off"

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mSilentMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mSilentMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->toggleRingMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->isSilentMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->requestUnlockScreen()V

    return-void
.end method

.method static synthetic access$600(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Lcom/baidu/internal/keyguard/slide/SmartLockScreen$UnlockWidgetCommonMethods;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mUnlockWidgetMethods:Lcom/baidu/internal/keyguard/slide/SmartLockScreen$UnlockWidgetCommonMethods;

    return-object v0
.end method

.method static synthetic access$900(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->launchApplication(I)V

    return-void
.end method

.method private isSilentMode()Z
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchApplication(I)V
    .locals 6
    .parameter "whichCell"

    .prologue
    .line 664
    const-string v3, "SmartLockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTrigger "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    if-gez p1, :cond_0

    .line 667
    const-string v3, "SmartLockScreen"

    const-string v4, "no CELL is dragged"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :goto_0
    return-void

    .line 671
    :cond_0
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mSmartMultiUnlockView:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    invoke-virtual {v3, p1}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->getCellDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, cellDescription:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 674
    const-string v3, "SmartLockScreen"

    const-string v4, "cell Description is null "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 678
    :cond_1
    const/4 v2, 0x0

    .line 679
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "SmartLockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cell Description is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const-string v3, "Phone"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 683
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.DIAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 684
    .restart local v2       #intent:Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.contacts"

    const-string v5, "com.android.contacts.activities.DialtactsActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 710
    :cond_2
    :goto_1
    if-eqz v2, :cond_8

    .line 711
    const/high16 v3, 0x3002

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 713
    :try_start_0
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 714
    :catch_0
    move-exception v1

    .line 715
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const-string v3, "SmartLockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to launch application - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 685
    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    :cond_3
    const-string v3, "Mail"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 688
    const-string v3, "MMS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 691
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 692
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v3, "vnd.android-dir/mms-sms"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 693
    :cond_4
    const-string v3, "Calendar"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 696
    const-string v3, "Camera"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 699
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 700
    :cond_5
    const-string v3, "Soundon"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "Silent"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 702
    :cond_6
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->toggleRingMode()V

    .line 703
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mUnlockWidgetMethods:Lcom/baidu/internal/keyguard/slide/SmartLockScreen$UnlockWidgetCommonMethods;

    invoke-interface {v3}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$UnlockWidgetCommonMethods;->updateResources()V

    .line 704
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_1

    .line 706
    :cond_7
    const-string v3, "SmartLockScreen"

    const-string v4, "Unknow CELL is dragged"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 719
    :cond_8
    const-string v3, "SmartLockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No App Info for CELL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private requestUnlockScreen()V
    .locals 3

    .prologue
    .line 437
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$1;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$1;-><init>(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)V

    const-wide/16 v1, 0x258

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 442
    return-void
.end method

.method private shouldEnableMenuKey()Z
    .locals 6

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 469
    .local v3, res:Landroid/content/res/Resources;
    const v4, #bool@config_disableMenuKeyInLockScreen#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 470
    .local v0, configDisabled:Z
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v2

    .line 471
    .local v2, isTestHarness:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 472
    .local v1, fileOverride:Z
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private toggleRingMode()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 446
    iget-boolean v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mSilentMode:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mSilentMode:Z

    .line 447
    iget-boolean v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mSilentMode:Z

    if-eqz v1, :cond_3

    .line 448
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "vibrate_in_silent"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v0, v2

    .line 452
    .local v0, vibe:Z
    :goto_1
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 458
    .end local v0           #vibe:Z
    :goto_3
    return-void

    :cond_0
    move v1, v3

    .line 446
    goto :goto_0

    :cond_1
    move v0, v3

    .line 448
    goto :goto_1

    .restart local v0       #vibe:Z
    :cond_2
    move v2, v3

    .line 452
    goto :goto_2

    .line 456
    .end local v0           #vibe:Z
    :cond_3
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_3
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 636
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mExtMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    .line 637
    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mExtMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 641
    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 642
    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 643
    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 645
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mStatusViewManager:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    if-eqz v0, :cond_1

    .line 646
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mStatusViewManager:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->cleanUp()V

    .line 647
    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mStatusViewManager:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    .line 649
    :cond_1
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 613
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 590
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 596
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->updateConfiguration()V

    .line 597
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 602
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 608
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->updateConfiguration()V

    .line 609
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 569
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mEnableMenuKeyInLockScreen:Z

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 572
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mStatusViewManager:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->onPause()V

    .line 619
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mUnlockWidgetMethods:Lcom/baidu/internal/keyguard/slide/SmartLockScreen$UnlockWidgetCommonMethods;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$UnlockWidgetCommonMethods;->reset(Z)V

    .line 620
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 661
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 630
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mStatusViewManager:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->onResume()V

    .line 631
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mOnResumePing:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 632
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 653
    const/4 v1, 0x2

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 654
    .local v0, silent:Z
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mSilentMode:Z

    if-eq v0, v1, :cond_0

    .line 655
    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mSilentMode:Z

    .line 656
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mUnlockWidgetMethods:Lcom/baidu/internal/keyguard/slide/SmartLockScreen$UnlockWidgetCommonMethods;

    invoke-interface {v1}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$UnlockWidgetCommonMethods;->updateResources()V

    .line 658
    :cond_0
    return-void

    .line 653
    .end local v0           #silent:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateConfiguration()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 576
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 577
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mCreationOrientation:I

    if-eq v2, v3, :cond_1

    .line 578
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_0

    .line 580
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mKeyboardHidden:I

    .line 581
    iget v2, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mKeyboardHidden:I

    if-ne v2, v0, :cond_2

    .line 582
    .local v0, isKeyboardOpen:Z
    :goto_1
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 583
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 581
    .end local v0           #isKeyboardOpen:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
