.class Lcom/android/internal/policy/impl/LockScreen;
.super Landroid/widget/LinearLayout;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LockScreen$HoldViewMethods;,
        Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;,
        Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;,
        Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;,
        Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final ON_RESUME_PING_DELAY:I = 0x1f4

.field private static final STAY_ON_WHILE_GRABBED_TIMEOUT:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "LockScreen"

.field private static final WAIT_FOR_ANIMATION_TIMEOUT:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCreationOrientation:I

.field private mEnableMenuKeyInLockScreen:Z

.field private mHDMI:Lcom/mediatek/hdmi/HDMINative;

.field private mKeyboardHidden:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mOnResumePing:Ljava/lang/Runnable;

.field private mSilentMode:Z

.field private mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mUnlockWidget:Landroid/view/View;

.field private mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 17
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 376
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v2, Lcom/mediatek/hdmi/HDMINative;

    invoke-direct {v2}, Lcom/mediatek/hdmi/HDMINative;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mHDMI:Lcom/mediatek/hdmi/HDMINative;

    .line 537
    new-instance v2, Lcom/android/internal/policy/impl/LockScreen$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/policy/impl/LockScreen$2;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mOnResumePing:Ljava/lang/Runnable;

    .line 377
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 378
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 379
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 381
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/LockScreen;->shouldEnableMenuKey()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mEnableMenuKeyInLockScreen:Z

    .line 383
    move-object/from16 v0, p2

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    .line 385
    move-object/from16 v0, p2

    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    .line 393
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 394
    .local v10, inflater:Landroid/view/LayoutInflater;
    const-string v2, "LockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creation orientation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const-string v2, "LockScreen"

    const-string v3, "we will initialize the LockScreen single portrait layout"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const v2, #layout@keyguard_screen_tab_unlock_gemini_hold#t

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v10, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 421
    new-instance v2, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 424
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/LockScreen;->setFocusable(Z)V

    .line 425
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/LockScreen;->setFocusableInTouchMode(Z)V

    .line 426
    const/high16 v2, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/LockScreen;->setDescendantFocusability(I)V

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 429
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/LockScreen;->isSilentMode()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 431
    const v2, #id@unlock_widget#t

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    instance-of v2, v2, Lcom/android/internal/widget/SlidingTab;

    if-eqz v2, :cond_1

    .line 433
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v14, Lcom/android/internal/widget/SlidingTab;

    .line 434
    .local v14, slidingTabView:Lcom/android/internal/widget/SlidingTab;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Lcom/android/internal/widget/SlidingTab;->setHoldAfterTrigger(ZZ)V

    .line 435
    const v2, #string@lockscreen_unlock_label#t

    invoke-virtual {v14, v2}, Lcom/android/internal/widget/SlidingTab;->setLeftHintText(I)V

    .line 436
    const v2, #drawable@ic_jog_dial_unlock#t

    const v3, #drawable@jog_tab_target_green#t

    const v4, #drawable@jog_tab_bar_left_unlock#t

    const v5, #drawable@jog_tab_left_unlock#t

    invoke-virtual {v14, v2, v3, v4, v5}, Lcom/android/internal/widget/SlidingTab;->setLeftTabResources(IIII)V

    .line 441
    new-instance v13, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;-><init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/widget/SlidingTab;)V

    .line 442
    .local v13, slidingTabMethods:Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;
    invoke-virtual {v14, v13}, Lcom/android/internal/widget/SlidingTab;->setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V

    .line 443
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    .line 466
    .end local v13           #slidingTabMethods:Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;
    .end local v14           #slidingTabView:Lcom/android/internal/widget/SlidingTab;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;->updateResources()V

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DM_IsLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 469
    const-string v2, "LockScreen"

    const-string v3, "we should hide unlock widget"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 473
    :cond_0
    const-string v3, "LockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** LockScreen accel is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "on"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-void

    .line 444
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    instance-of v2, v2, Lcom/android/internal/widget/WaveView;

    if-eqz v2, :cond_2

    .line 445
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v15, Lcom/android/internal/widget/WaveView;

    .line 446
    .local v15, waveView:Lcom/android/internal/widget/WaveView;
    new-instance v16, Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;-><init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/widget/WaveView;)V

    .line 447
    .local v16, waveViewMethods:Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;
    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/widget/WaveView;->setOnTriggerListener(Lcom/android/internal/widget/WaveView$OnTriggerListener;)V

    .line 448
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    goto :goto_0

    .line 449
    .end local v15           #waveView:Lcom/android/internal/widget/WaveView;
    .end local v16           #waveViewMethods:Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    instance-of v2, v2, Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    if-eqz v2, :cond_3

    .line 450
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v11, Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    .line 451
    .local v11, multiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;
    new-instance v12, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v11}, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;-><init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/widget/multiwaveview/MultiWaveView;)V

    .line 452
    .local v12, multiWaveViewMethods:Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;
    invoke-virtual {v11, v12}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;)V

    .line 453
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    goto/16 :goto_0

    .line 455
    .end local v11           #multiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;
    .end local v12           #multiWaveViewMethods:Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    instance-of v2, v2, Lcom/android/internal/widget/multiwaveview/HoldView;

    if-eqz v2, :cond_4

    .line 456
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v8, Lcom/android/internal/widget/multiwaveview/HoldView;

    .line 457
    .local v8, holdView:Lcom/android/internal/widget/multiwaveview/HoldView;
    new-instance v9, Lcom/android/internal/policy/impl/LockScreen$HoldViewMethods;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v8}, Lcom/android/internal/policy/impl/LockScreen$HoldViewMethods;-><init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/widget/multiwaveview/HoldView;)V

    .line 458
    .local v9, holdViewMethods:Lcom/android/internal/policy/impl/LockScreen$HoldViewMethods;
    invoke-virtual {v8, v9}, Lcom/android/internal/widget/multiwaveview/HoldView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/HoldView$OnTriggerListener;)V

    .line 459
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    goto/16 :goto_0

    .line 462
    .end local v8           #holdView:Lcom/android/internal/widget/multiwaveview/HoldView;
    .end local v9           #holdViewMethods:Lcom/android/internal/policy/impl/LockScreen$HoldViewMethods;
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized unlock widget: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 473
    :cond_5
    const-string v2, "off"

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/LockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/LockScreen;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/LockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->toggleRingMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/LockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->isSilentMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/LockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->requestUnlockScreen()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    return-object v0
.end method

.method private isSilentMode()Z
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

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

.method private requestUnlockScreen()V
    .locals 3

    .prologue
    .line 327
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockScreen$1;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 332
    return-void
.end method

.method private shouldEnableMenuKey()Z
    .locals 6

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 359
    .local v3, res:Landroid/content/res/Resources;
    const v4, #bool@config_disableMenuKeyInLockScreen#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 360
    .local v0, configDisabled:Z
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v2

    .line 361
    .local v2, isTestHarness:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 362
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

    .line 336
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 337
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v1, :cond_3

    .line 338
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "vibrate_in_silent"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v0, v2

    .line 342
    .local v0, vibe:Z
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 348
    .end local v0           #vibe:Z
    :goto_3
    return-void

    :cond_0
    move v1, v3

    .line 336
    goto :goto_0

    :cond_1
    move v0, v3

    .line 338
    goto :goto_1

    .restart local v0       #vibe:Z
    :cond_2
    move v2, v3

    .line 342
    goto :goto_2

    .line 346
    .end local v0           #vibe:Z
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_3
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 552
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 553
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 554
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 555
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 556
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 504
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 510
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateConfiguration()V

    .line 511
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 516
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 522
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateConfiguration()V

    .line 523
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 483
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEnableMenuKeyInLockScreen:Z

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 486
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 532
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 533
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;->reset(Z)V

    .line 534
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mHDMI:Lcom/mediatek/hdmi/HDMINative;

    invoke-virtual {v0, v1}, Lcom/mediatek/hdmi/HDMINative;->hdmiPortraitEnable(Z)Z

    .line 535
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 568
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 546
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mOnResumePing:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 547
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mHDMI:Lcom/mediatek/hdmi/HDMINative;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/hdmi/HDMINative;->hdmiPortraitEnable(Z)Z

    .line 548
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 560
    const/4 v1, 0x2

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 561
    .local v0, silent:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eq v0, v1, :cond_0

    .line 562
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 563
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;->updateResources()V

    .line 565
    :cond_0
    return-void

    .line 560
    .end local v0           #silent:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateConfiguration()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 490
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 491
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    if-eq v2, v3, :cond_1

    .line 492
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_0

    .line 494
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    .line 495
    iget v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    if-ne v2, v0, :cond_2

    .line 496
    .local v0, isKeyboardOpen:Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 497
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 495
    .end local v0           #isKeyboardOpen:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
