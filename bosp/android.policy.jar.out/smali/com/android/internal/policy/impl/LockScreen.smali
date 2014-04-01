.class Lcom/android/internal/policy/impl/LockScreen;
.super Landroid/widget/LinearLayout;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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
    .locals 15
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 326
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v1, Lcom/mediatek/hdmi/HDMINative;

    invoke-direct {v1}, Lcom/mediatek/hdmi/HDMINative;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHDMI:Lcom/mediatek/hdmi/HDMINative;

    .line 463
    new-instance v1, Lcom/android/internal/policy/impl/LockScreen$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LockScreen$2;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mOnResumePing:Ljava/lang/Runnable;

    .line 327
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 328
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 329
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 331
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->shouldEnableMenuKey()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mEnableMenuKeyInLockScreen:Z

    .line 333
    move-object/from16 v0, p2

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    .line 335
    move-object/from16 v0, p2

    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    .line 343
    new-instance v7, Landroid/view/ContextThemeWrapper;

    const v1, #style@Theme.DeviceDefault#t

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 344
    .local v7, contexttheme:Landroid/view/ContextThemeWrapper;
    const v1, #style@Theme.DeviceDefault#t

    invoke-virtual {v7, v1}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 345
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 346
    .local v8, inflater:Landroid/view/LayoutInflater;
    const-string v1, "LockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creation orientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const v1, #layout@keyguard_screen_tab_unlock#t

    const/4 v2, 0x1

    invoke-virtual {v8, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 353
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 356
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->setFocusable(Z)V

    .line 357
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->setFocusableInTouchMode(Z)V

    .line 358
    const/high16 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->setDescendantFocusability(I)V

    .line 360
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 361
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->isSilentMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 363
    const v1, #id@unlock_widget#t

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    .line 364
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    instance-of v1, v1, Lcom/android/internal/widget/SlidingTab;

    if-eqz v1, :cond_1

    .line 365
    iget-object v12, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v12, Lcom/android/internal/widget/SlidingTab;

    .line 366
    .local v12, slidingTabView:Lcom/android/internal/widget/SlidingTab;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Lcom/android/internal/widget/SlidingTab;->setHoldAfterTrigger(ZZ)V

    .line 367
    const v1, #string@lockscreen_unlock_label#t

    invoke-virtual {v12, v1}, Lcom/android/internal/widget/SlidingTab;->setLeftHintText(I)V

    .line 368
    const v1, #drawable@ic_jog_dial_unlock#t

    const v2, #drawable@jog_tab_target_green#t

    const v3, #drawable@jog_tab_bar_left_unlock#t

    const v4, #drawable@jog_tab_left_unlock#t

    invoke-virtual {v12, v1, v2, v3, v4}, Lcom/android/internal/widget/SlidingTab;->setLeftTabResources(IIII)V

    .line 373
    new-instance v11, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;

    invoke-direct {v11, p0, v12}, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;-><init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/widget/SlidingTab;)V

    .line 374
    .local v11, slidingTabMethods:Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;
    invoke-virtual {v12, v11}, Lcom/android/internal/widget/SlidingTab;->setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V

    .line 375
    iput-object v11, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    .line 392
    .end local v11           #slidingTabMethods:Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;
    .end local v12           #slidingTabView:Lcom/android/internal/widget/SlidingTab;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;->updateResources()V

    .line 394
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DM_IsLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    const-string v1, "LockScreen"

    const-string v2, "we should hide unlock widget"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 399
    :cond_0
    const-string v2, "LockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** LockScreen accel is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "on"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-void

    .line 376
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    instance-of v1, v1, Lcom/android/internal/widget/WaveView;

    if-eqz v1, :cond_2

    .line 377
    iget-object v13, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v13, Lcom/android/internal/widget/WaveView;

    .line 378
    .local v13, waveView:Lcom/android/internal/widget/WaveView;
    new-instance v14, Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;

    invoke-direct {v14, p0, v13}, Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;-><init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/widget/WaveView;)V

    .line 379
    .local v14, waveViewMethods:Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;
    invoke-virtual {v13, v14}, Lcom/android/internal/widget/WaveView;->setOnTriggerListener(Lcom/android/internal/widget/WaveView$OnTriggerListener;)V

    .line 380
    iput-object v14, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    goto :goto_0

    .line 381
    .end local v13           #waveView:Lcom/android/internal/widget/WaveView;
    .end local v14           #waveViewMethods:Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    instance-of v1, v1, Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    if-eqz v1, :cond_3

    .line 382
    iget-object v9, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v9, Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    .line 383
    .local v9, multiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;
    new-instance v10, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;

    invoke-direct {v10, p0, v9}, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;-><init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/widget/multiwaveview/MultiWaveView;)V

    .line 384
    .local v10, multiWaveViewMethods:Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;
    invoke-virtual {v9, v10}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;)V

    .line 385
    iput-object v10, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    .line 386
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    invoke-virtual {v9, v1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setVibrateEnabled(Z)V

    goto :goto_0

    .line 388
    .end local v9           #multiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;
    .end local v10           #multiWaveViewMethods:Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized unlock widget: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 399
    :cond_4
    const-string v1, "off"

    goto :goto_1
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
    .line 404
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
    .line 277
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockScreen$1;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 282
    return-void
.end method

.method private shouldEnableMenuKey()Z
    .locals 6

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 309
    .local v3, res:Landroid/content/res/Resources;
    const v4, #bool@config_disableMenuKeyInLockScreen#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 310
    .local v0, configDisabled:Z
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v2

    .line 311
    .local v2, isTestHarness:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 312
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

    .line 286
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 287
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v1, :cond_3

    .line 288
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "vibrate_in_silent"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v0, v2

    .line 292
    .local v0, vibe:Z
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 298
    .end local v0           #vibe:Z
    :goto_3
    return-void

    :cond_0
    move v1, v3

    .line 286
    goto :goto_0

    :cond_1
    move v0, v3

    .line 288
    goto :goto_1

    .restart local v0       #vibe:Z
    :cond_2
    move v2, v3

    .line 292
    goto :goto_2

    .line 296
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

    .line 478
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 479
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 480
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 481
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 482
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 430
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 436
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateConfiguration()V

    .line 437
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 442
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 448
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateConfiguration()V

    .line 449
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 409
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEnableMenuKeyInLockScreen:Z

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 412
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 458
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 459
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;->reset(Z)V

    .line 460
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mHDMI:Lcom/mediatek/hdmi/HDMINative;

    invoke-virtual {v0, v1}, Lcom/mediatek/hdmi/HDMINative;->hdmiPortraitEnable(Z)Z

    .line 461
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 494
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 472
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mOnResumePing:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 473
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mHDMI:Lcom/mediatek/hdmi/HDMINative;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/hdmi/HDMINative;->hdmiPortraitEnable(Z)Z

    .line 474
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 486
    const/4 v1, 0x2

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 487
    .local v0, silent:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eq v0, v1, :cond_0

    .line 488
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 489
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;->updateResources()V

    .line 491
    :cond_0
    return-void

    .line 486
    .end local v0           #silent:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateConfiguration()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 416
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 417
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    if-eq v2, v3, :cond_1

    .line 418
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_0

    .line 420
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    .line 421
    iget v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    if-ne v2, v0, :cond_2

    .line 422
    .local v0, isKeyboardOpen:Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 423
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 421
    .end local v0           #isKeyboardOpen:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
