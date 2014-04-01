.class Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;
.super Ljava/lang/Object;
.source "SmartKeyguardStatusViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$11;,
        Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;,
        Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;
    }
.end annotation


# static fields
.field public static final ALARM_ICON:I = #drawable@ic_lock_idle_alarm#t

.field private static final BATTERY_INFO:I = 0xf

.field public static final BATTERY_LOW_ICON:I = 0x0

.field private static final CARRIER_HELP_TEXT:I = 0xc

.field private static final CARRIER_TEXT:I = 0xb

.field public static final CHARGING_ICON:I = #drawable@ic_lock_idle_charging#t

.field private static final DEBUG:Z = true

.field private static final HELP_MESSAGE_TEXT:I = 0xd

.field private static final INSTRUCTION_RESET_DELAY:J = 0x7d0L

.field private static final INSTRUCTION_TEXT:I = 0xa

.field public static final LOCK_ICON:I = 0x0

.field private static final OWNER_INFO:I = 0xe

.field public static final PROMPT_END:I = 0x1

.field public static final PROMPT_START:I = 0x0

.field private static final SIM_COLOR_COUNT:I = 0x8

.field private static final SIM_ICON_IMGS:[I = null

.field private static final SIM_LOCK_INDEX:I = 0x3

.field private static final SIM_NORMAL_INDEX:I = 0x0

.field private static final SIM_NO_INDEX:I = 0x2

.field private static final SIM_NO_SIGN_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "KeyguardStatusViewManager"

.field private static final TRANSPORT_USERACTIVITY_TIMEOUT:I = 0x2710

.field private static phoneAppAlive:Z


# instance fields
.field aa:Landroid/view/animation/AlphaAnimation;

.field private mAlarmStatusView:Landroid/widget/TextView;

.field private mAlbumView:Landroid/widget/ImageView;

.field private mBatteryLevel:I

.field private mCalibrationData:Landroid/widget/TextView;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCarrierGeminiIcon:Landroid/graphics/drawable/Drawable;

.field private mCarrierGeminiText:Ljava/lang/CharSequence;

.field private mCarrierGeminiView:Landroid/widget/TextView;

.field private mCarrierHelpText:Ljava/lang/CharSequence;

.field private mCarrierIcon:Landroid/graphics/drawable/Drawable;

.field private mCarrierText:Ljava/lang/CharSequence;

.field private mCarrierView:Landroid/widget/TextView;

.field private mChargingLayout:Landroid/widget/RelativeLayout;

.field private mContainer:Landroid/view/View;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mDMPrompt:Landroid/widget/TextView;

.field private mDateFormatString:Ljava/lang/String;

.field private mDateView:Landroid/widget/TextView;

.field private mDeviceInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;

.field private mDownloadCalibrationData:Z

.field private mEmergencyButtonEnabledBecauseSimLocked:Z

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private final mEmergencyCallButtonEnabledInScreen:Z

.field private mFlipperTransportView:Landroid/widget/RelativeLayout;

.field private mGeminiStatus:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

.field private mHandler:Landroid/os/Handler;

.field private mHelpMessageText:Ljava/lang/String;

.field private mHorizontalScrollView:Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;

.field private mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

.field private mInstructionText:Ljava/lang/String;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfoText:Ljava/lang/CharSequence;

.field private mOwnerInfoView:Landroid/widget/TextView;

.field private mPhoneCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;

.field protected mPhoneState:I

.field private mPlayState:I

.field private mPlmn:Ljava/lang/CharSequence;

.field private mPluggedIn:Z

.field private mPrompt:Landroid/widget/TextView;

.field private mSavedState:Landroid/os/Parcelable;

.field private mShowingBatteryInfo:Z

.field private mShowingStatus:Z

.field protected mSimGeminiState:Lcom/android/internal/telephony/IccCard$State;

.field protected mSimState:Lcom/android/internal/telephony/IccCard$State;

.field private mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

.field private mSpn:Ljava/lang/CharSequence;

.field private mStatus:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

.field private mStatus1View:Landroid/widget/TextView;

.field private mTransientTextManager:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;

.field private mTransientTextManagerGemini:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;

.field private mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

.field private mUnlockDisabledDueToSimState:Z

.field private mUnlockView:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mWeatherView:Lcom/baidu/internal/keyguard/slide/WeatherView;

.field private mWidgetCallback:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

.field private mWorkspaceLayout:Landroid/widget/GridLayout;

.field public promptStatus:I

.field private screenReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->phoneAppAlive:Z

    .line 164
    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->SIM_ICON_IMGS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x56t 0x1t 0x8t 0x4t
        0x4at 0x1t 0x8t 0x4t
        0x5at 0x1t 0x8t 0x4t
        0x52t 0x1t 0x8t 0x4t
        0x66t 0x1t 0x8t 0x4t
        0x4et 0x1t 0x8t 0x4t
        0x62t 0x1t 0x8t 0x4t
        0x5et 0x1t 0x8t 0x4t
        0x55t 0x1t 0x8t 0x4t
        0x49t 0x1t 0x8t 0x4t
        0x59t 0x1t 0x8t 0x4t
        0x51t 0x1t 0x8t 0x4t
        0x65t 0x1t 0x8t 0x4t
        0x4dt 0x1t 0x8t 0x4t
        0x61t 0x1t 0x8t 0x4t
        0x5dt 0x1t 0x8t 0x4t
        0x54t 0x1t 0x8t 0x4t
        0x48t 0x1t 0x8t 0x4t
        0x58t 0x1t 0x8t 0x4t
        0x50t 0x1t 0x8t 0x4t
        0x64t 0x1t 0x8t 0x4t
        0x4ct 0x1t 0x8t 0x4t
        0x60t 0x1t 0x8t 0x4t
        0x5ct 0x1t 0x8t 0x4t
        0x53t 0x1t 0x8t 0x4t
        0x47t 0x1t 0x8t 0x4t
        0x57t 0x1t 0x8t 0x4t
        0x4ft 0x1t 0x8t 0x4t
        0x63t 0x1t 0x8t 0x4t
        0x4bt 0x1t 0x8t 0x4t
        0x5ft 0x1t 0x8t 0x4t
        0x5bt 0x1t 0x8t 0x4t
    .end array-data
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;ZLcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)V
    .locals 11
    .parameter "view"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "callback"
    .parameter "emergencyButtonEnabledInScreen"
    .parameter "unlockView"

    .prologue
    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mShowingBatteryInfo:Z

    .line 122
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPluggedIn:Z

    .line 125
    const/16 v6, 0x64

    iput v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mBatteryLevel:I

    .line 215
    const/4 v6, -0x1

    iput v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPlayState:I

    .line 228
    const/4 v6, 0x0

    iput v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->promptStatus:I

    .line 239
    new-instance v6, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$1;

    invoke-direct {v6, p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$1;-><init>(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)V

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->screenReceiver:Landroid/content/BroadcastReceiver;

    .line 301
    new-instance v6, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$2;

    invoke-direct {v6, p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$2;-><init>(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)V

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mWidgetCallback:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    .line 1201
    new-instance v6, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;

    invoke-direct {v6, p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$7;-><init>(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)V

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    .line 1317
    new-instance v6, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$8;

    invoke-direct {v6, p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$8;-><init>(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)V

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDeviceInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;

    .line 1376
    new-instance v6, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$9;

    invoke-direct {v6, p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$9;-><init>(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)V

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPhoneCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;

    .line 1383
    new-instance v6, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$10;

    invoke-direct {v6, p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$10;-><init>(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)V

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    .line 358
    const-string v6, "KeyguardStatusViewManager"

    const-string v7, "KeyguardStatusViewManager()"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mContainer:Landroid/view/View;

    .line 361
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, #string@abbrev_wday_month_day_no_year#t

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDateFormatString:Ljava/lang/String;

    .line 362
    iput-object p3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 363
    iput-object p2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 364
    iput-object p4, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 366
    const v6, #id@carrier#t

    invoke-direct {p0, v6}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    .line 367
    const v6, #id@date#t

    invoke-direct {p0, v6}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    .line 368
    const v6, #id@status1#t

    invoke-direct {p0, v6}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    .line 369
    const v6, #id@alarm_status#t

    invoke-direct {p0, v6}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    .line 370
    const v6, #id@propertyOf#t

    invoke-direct {p0, v6}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    .line 371
    const v6, #id@transport#t

    invoke-direct {p0, v6}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/baidu/internal/keyguard/slide/TransportControlView;

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    .line 372
    const v6, #id@emergencyCallButton#t

    invoke-direct {p0, v6}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    .line 373
    move/from16 v0, p5

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButtonEnabledInScreen:Z

    .line 377
    const v6, #id@chargingText#t

    invoke-direct {p0, v6}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mChargingLayout:Landroid/widget/RelativeLayout;

    .line 378
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mChargingLayout:Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_0

    .line 379
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mChargingLayout:Landroid/widget/RelativeLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 381
    :cond_0
    const v6, #id@prompt#t

    invoke-direct {p0, v6}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPrompt:Landroid/widget/TextView;

    .line 382
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPrompt:Landroid/widget/TextView;

    if-eqz v6, :cond_1

    .line 383
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPrompt:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    :cond_1
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->aa:Landroid/view/animation/AlphaAnimation;

    .line 387
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->aa:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v7, 0x1f4

    invoke-virtual {v6, v7, v8}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 388
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->aa:Landroid/view/animation/AlphaAnimation;

    new-instance v7, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$3;

    invoke-direct {v7, p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$3;-><init>(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)V

    invoke-virtual {v6, v7}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 402
    new-instance v6, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;

    invoke-direct {v6, p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;-><init>(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)V

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mHandler:Landroid/os/Handler;

    .line 420
    const v6, #id@dm_lock_prompt#t

    invoke-direct {p0, v6}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDMPrompt:Landroid/widget/TextView;

    .line 421
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDMPrompt:Landroid/widget/TextView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DM_IsLocked()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 422
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDMPrompt:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDMPrompt:Landroid/widget/TextView;

    const v7, 0x40b001d

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 427
    :cond_2
    const v6, #id@carrierGemini#t

    invoke-direct {p0, v6}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    .line 428
    new-instance v6, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-direct {v6, p0, v7}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;-><init>(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Landroid/widget/TextView;)V

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mTransientTextManagerGemini:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;

    .line 432
    sget-boolean v6, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->phoneAppAlive:Z

    if-nez v6, :cond_3

    .line 433
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPhoneAppReady()Z

    move-result v6

    sput-boolean v6, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->phoneAppAlive:Z

    .line 435
    :cond_3
    const v6, #id@media_view#t

    invoke-direct {p0, v6}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mFlipperTransportView:Landroid/widget/RelativeLayout;

    .line 436
    const v6, #id@album_view#t

    invoke-direct {p0, v6}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mAlbumView:Landroid/widget/ImageView;

    .line 437
    const v6, #id@workspace#t

    invoke-direct {p0, v6}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/GridLayout;

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mWorkspaceLayout:Landroid/widget/GridLayout;

    .line 438
    const v6, #id@scroll_view#t

    invoke-direct {p0, v6}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mHorizontalScrollView:Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;

    .line 439
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mHorizontalScrollView:Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;

    new-instance v7, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$5;

    invoke-direct {v7, p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$5;-><init>(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)V

    invoke-virtual {v6, v7}, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->setOnHorizontalScrollListener(Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView$OnHorizontalScrollListener;)V

    .line 451
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUnlockView:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    .line 454
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mContainer:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->initializeTransportControlView(Landroid/view/View;)V

    .line 455
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v6, :cond_4

    .line 456
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    const v7, #string@lockscreen_emergency_call#t

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 457
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setFocusable(Z)V

    .line 461
    :cond_4
    new-instance v6, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    invoke-direct {v6, p0, v7}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;-><init>(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Landroid/widget/TextView;)V

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mTransientTextManager:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;

    .line 464
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 465
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 466
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPhoneCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerPhoneStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;)V

    .line 467
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDeviceInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerDeviceInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;)V

    .line 470
    const-string v6, "KeyguardStatusViewManager"

    const-string v7, "We got ExtKeyguardUpdateMonitor for Smart Lock Screen"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    new-instance v6, Lcom/baidu/internal/keyguard/slide/WeatherView;

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mContainer:Landroid/view/View;

    const/4 v8, 0x1

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUnlockView:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/baidu/internal/keyguard/slide/WeatherView;-><init>(Landroid/view/View;ZZLcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)V

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mWeatherView:Lcom/baidu/internal/keyguard/slide/WeatherView;

    .line 476
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->resetStatusInfo()V

    .line 477
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->refreshDate()V

    .line 478
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateOwnerInfo()V

    .line 482
    const/4 v6, 0x6

    new-array v4, v6, [Landroid/view/View;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    aput-object v7, v4, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    aput-object v7, v4, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    aput-object v7, v4, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    aput-object v7, v4, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    aput-object v7, v4, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    aput-object v7, v4, v6

    .line 484
    .local v4, scrollableViews:[Landroid/view/View;
    move-object v1, v4

    .local v1, arr$:[Landroid/view/View;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_6

    aget-object v5, v1, v2

    .line 485
    .local v5, v:Landroid/view/View;
    if-eqz v5, :cond_5

    .line 486
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    .line 484
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 499
    .end local v5           #v:Landroid/view/View;
    :cond_6
    new-instance v6, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$6;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$6;-><init>(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 506
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mChargingLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->showPrompt()V

    return-void
.end method

.method static synthetic access$1000(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mHorizontalScrollView:Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPrompt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/widget/GridLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mWorkspaceLayout:Landroid/widget/GridLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateAlarmInfo()V

    return-void
.end method

.method static synthetic access$1402(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mShowingBatteryInfo:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPluggedIn:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$1700(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;ILjava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1802(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateCarrierTextWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->isAccountMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2202(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;)Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mStatus:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2502(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;)Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mGeminiStatus:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierGeminiText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateCarrierText()V

    return-void
.end method

.method static synthetic access$2800(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDownloadCalibrationData:Z

    return p1
.end method

.method static synthetic access$300(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateCalibrationDataText()V

    return-void
.end method

.method static synthetic access$3100(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;I)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDMPrompt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updatePINWhenDMChanged()V

    return-void
.end method

.method static synthetic access$3600(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updatePasswordWhenDMChanged(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mFlipperTransportView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mAlbumView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPlayState:I

    return v0
.end method

.method static synthetic access$902(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPlayState:I

    return p1
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "icon"

    .prologue
    const/4 v5, 0x0

    .line 786
    const/4 v0, 0x0

    .line 787
    .local v0, string:Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mShowingBatteryInfo:Z

    if-eqz v1, :cond_4

    .line 789
    iget-boolean v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPluggedIn:Z

    if-eqz v1, :cond_3

    .line 791
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 792
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, #string@lockscreen_charged#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 800
    :cond_0
    :goto_0
    const v1, #drawable@ic_lock_idle_charging#t

    iput v1, p1, Llibcore/util/MutableInt;->value:I

    .line 809
    :cond_1
    :goto_1
    return-object v0

    .line 794
    :cond_2
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, #string@lockscreen_plugged_in#t

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 796
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, #string@def_show_charging_percentage#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "no"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 797
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, #string@lockscreen_charging#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 801
    :cond_3
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mBatteryLevel:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 803
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, #string@lockscreen_low_battery#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 804
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_1

    .line 807
    :cond_4
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getPriorityTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "icon"

    .prologue
    const/4 v6, 0x0

    .line 813
    const/4 v1, 0x0

    .line 815
    .local v1, string:Ljava/lang/CharSequence;
    const v2, #id@charging_icon#t

    invoke-direct {p0, v2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 816
    .local v0, chargeIcon:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 817
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 820
    :cond_0
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 822
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    .line 823
    iput v6, p1, Llibcore/util/MutableInt;->value:I

    .line 844
    :cond_1
    :goto_0
    return-object v1

    .line 824
    :cond_2
    iget-boolean v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mShowingBatteryInfo:Z

    if-eqz v2, :cond_1

    .line 826
    iget-boolean v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPluggedIn:Z

    if-eqz v2, :cond_4

    .line 828
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 829
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, #string@lockscreen_charged#t

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 833
    :goto_1
    const v2, #drawable@ic_lock_idle_charging#t

    iput v2, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_0

    .line 831
    :cond_3
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, #string@lockscreen_plugged_in#t

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 834
    :cond_4
    iget v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mBatteryLevel:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    .line 836
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, #string@lockscreen_low_battery#t

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 837
    iput v6, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_0
.end method

.method private getResourceID(ILcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;)I
    .locals 5
    .parameter "colorIndex"
    .parameter "status"

    .prologue
    .line 1044
    const/4 v0, -0x1

    .line 1045
    .local v0, resId:I
    const-string v2, "KeyguardStatusViewManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResourceID, colorIndex=:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    if-ltz p1, :cond_0

    const/16 v2, 0x8

    if-lt p1, v2, :cond_1

    .line 1047
    :cond_0
    const-string v2, "KeyguardStatusViewManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid color index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1077
    .end local v0           #resId:I
    .local v1, resId:I
    :goto_0
    return v1

    .line 1051
    .end local v1           #resId:I
    .restart local v0       #resId:I
    :cond_1
    sget-object v2, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$11;->$SwitchMap$com$baidu$internal$keyguard$slide$SmartKeyguardStatusViewManager$StatusMode:[I

    invoke-virtual {p2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v1, v0

    .line 1077
    .end local v0           #resId:I
    .restart local v1       #resId:I
    goto :goto_0

    .line 1053
    .end local v1           #resId:I
    .restart local v0       #resId:I
    :pswitch_1
    sget-object v2, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->SIM_ICON_IMGS:[I

    add-int/lit8 v3, p1, 0x0

    aget v0, v2, v3

    .line 1054
    goto :goto_1

    .line 1059
    :pswitch_2
    sget-object v2, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->SIM_ICON_IMGS:[I

    add-int/lit8 v3, p1, 0x8

    aget v0, v2, v3

    .line 1060
    goto :goto_1

    .line 1063
    :pswitch_3
    sget-object v2, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->SIM_ICON_IMGS:[I

    add-int/lit8 v3, p1, 0x10

    aget v0, v2, v3

    .line 1064
    goto :goto_1

    .line 1067
    :pswitch_4
    sget-object v2, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->SIM_ICON_IMGS:[I

    add-int/lit8 v3, p1, 0x18

    aget v0, v2, v3

    .line 1068
    goto :goto_1

    .line 1070
    :pswitch_5
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_2

    .line 1071
    sget-object v2, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->SIM_ICON_IMGS:[I

    add-int/lit8 v3, p1, 0x8

    aget v0, v2, v3

    goto :goto_1

    .line 1073
    :cond_2
    sget-object v2, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->SIM_ICON_IMGS:[I

    add-int/lit8 v3, p1, 0x10

    aget v0, v2, v3

    goto :goto_1

    .line 1051
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private getText(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "resId"

    .prologue
    .line 550
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private inWidgetMode()Z
    .locals 1

    .prologue
    .line 509
    const/4 v0, 0x0

    return v0
.end method

.method private initializeTransportControlView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    if-nez v0, :cond_0

    .line 1434
    const-string v0, "KeyguardStatusViewManager"

    const-string v1, "Couldn\'t find transport control widget"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :goto_0
    return-void

    .line 1436
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 1437
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mWidgetCallback:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->setCallback(Lcom/android/internal/widget/LockScreenWidgetCallback;)V

    .line 1438
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->setBackgroundColor(I)V

    .line 1439
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->setVisibility(I)V

    goto :goto_0
.end method

.method private isAccountMode()Z
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mContainer:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/AccountUnlockScreen;

    if-eqz v0, :cond_0

    .line 514
    const/4 v0, 0x1

    .line 516
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "plmn"
    .parameter "spn"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1419
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 1420
    .local v0, plmnValid:Z
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 1421
    .local v1, spnValid:Z
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 1422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1428
    .end local p0
    :cond_0
    :goto_2
    return-object p0

    .end local v0           #plmnValid:Z
    .end local v1           #spnValid:Z
    .restart local p0
    :cond_1
    move v0, v3

    .line 1419
    goto :goto_0

    .restart local v0       #plmnValid:Z
    :cond_2
    move v1, v3

    .line 1420
    goto :goto_1

    .line 1423
    .restart local v1       #spnValid:Z
    :cond_3
    if-nez v0, :cond_0

    .line 1425
    if-eqz v1, :cond_4

    move-object p0, p1

    .line 1426
    goto :goto_2

    .line 1428
    :cond_4
    const-string p0, ""

    goto :goto_2
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "simMessage"
    .parameter "emergencyCallMessage"

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    invoke-static {p1, p2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1022
    .end local p1
    :cond_0
    return-object p1
.end method

.method private querySIMIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "simId"

    .prologue
    .line 1026
    sget-boolean v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->phoneAppAlive:Z

    if-nez v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPhoneAppReady()Z

    move-result v0

    sput-boolean v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->phoneAppAlive:Z

    .line 1029
    :cond_0
    const-string v0, "KeyguardStatusViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "querySIMIcon , phoneAppAlive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->phoneAppAlive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", simdId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    sget-boolean v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->phoneAppAlive:Z

    if-eqz v0, :cond_1

    .line 1031
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getOptrDrawableBySlot(J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1033
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showOrHideCarrier()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v5, 0x0

    .line 704
    const/4 v0, 0x0

    .line 705
    .local v0, SIM1Missing:Z
    const/4 v1, 0x0

    .line 706
    .local v1, SIM2Missing:Z
    const v6, #id@carrierDivider#t

    invoke-direct {p0, v6}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 707
    .local v3, carrierDivider:Landroid/widget/TextView;
    if-nez v3, :cond_0

    .line 745
    :goto_0
    return-void

    .line 710
    :cond_0
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 711
    .local v4, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v2, 0x1

    .line 713
    .local v2, bIsWifiOnly:Z
    :goto_1
    if-eqz v2, :cond_2

    .line 715
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 716
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 717
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .end local v2           #bIsWifiOnly:Z
    :cond_1
    move v2, v5

    .line 711
    goto :goto_1

    .line 721
    .restart local v2       #bIsWifiOnly:Z
    :cond_2
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mStatus:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    sget-object v7, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    if-eq v6, v7, :cond_3

    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mStatus:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    sget-object v7, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimMissingLocked:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    if-ne v6, v7, :cond_4

    .line 722
    :cond_3
    const/4 v0, 0x1

    .line 725
    :cond_4
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mGeminiStatus:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    sget-object v7, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    if-eq v6, v7, :cond_5

    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mGeminiStatus:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    sget-object v7, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimMissingLocked:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    if-ne v6, v7, :cond_6

    .line 726
    :cond_5
    const/4 v1, 0x1

    .line 728
    :cond_6
    const-string v6, "KeyguardStatusViewManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSIMOneMissing="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",mSIMTwoMissing="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    .line 736
    :cond_7
    :goto_2
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mStatus:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    sget-object v7, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimUnknown:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    if-ne v6, v7, :cond_8

    .line 738
    :cond_8
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mGeminiStatus:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    sget-object v7, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimUnknown:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    if-ne v6, v7, :cond_9

    .line 740
    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 741
    :cond_a
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 742
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 743
    :cond_b
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_0

    .line 730
    :cond_c
    if-eqz v0, :cond_d

    if-eqz v1, :cond_7

    .line 731
    :cond_d
    if-nez v0, :cond_e

    if-nez v1, :cond_7

    .line 733
    :cond_e
    if-eqz v3, :cond_7

    const-string v6, "    "

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private showPrompt()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 234
    iput v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->promptStatus:I

    .line 235
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 236
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 237
    return-void
.end method

.method private update(ILjava/lang/CharSequence;)V
    .locals 4
    .parameter "what"
    .parameter "string"

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->inWidgetMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    const-string v0, "KeyguardStatusViewManager"

    const-string v1, "inWidgetMode() is true"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    packed-switch p1, :pswitch_data_0

    .line 581
    :pswitch_0
    const-string v0, "KeyguardStatusViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not showing message id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", str="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :goto_0
    return-void

    .line 575
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mTransientTextManager:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;->post(Ljava/lang/CharSequence;IJ)V

    goto :goto_0

    .line 584
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mShowingStatus:Z

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateStatusLines(Z)V

    goto :goto_0

    .line 570
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateAlarmInfo()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 666
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 667
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isClockVisible()Z

    move-result v4

    if-nez v4, :cond_1

    .line 668
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, nextAlarm:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mShowingStatus:Z

    if-eqz v4, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v1, 0x1

    .line 673
    .local v1, showAlarm:Z
    :goto_1
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    const v5, #drawable@ic_lock_idle_alarm#t

    invoke-virtual {v4, v5, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 675
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .end local v1           #showAlarm:Z
    :cond_2
    move v1, v2

    .line 672
    goto :goto_1

    .restart local v1       #showAlarm:Z
    :cond_3
    move v2, v3

    .line 675
    goto :goto_2
.end method

.method private updateCalibrationDataText()V
    .locals 2

    .prologue
    .line 770
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCalibrationData:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 780
    :goto_0
    return-void

    .line 773
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDownloadCalibrationData:Z

    if-eqz v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCalibrationData:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 776
    :cond_1
    const-string v0, "KeyguardStatusViewManager"

    const-string v1, "updateCalibrationDataText"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCalibrationData:Landroid/widget/TextView;

    const v1, #string@calibration_data#t

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 778
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCalibrationData:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCarrierText()V
    .locals 3

    .prologue
    .line 750
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->isAccountMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 751
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->showOrHideCarrier()V

    .line 752
    const-string v0, "KeyguardStatusViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCarrierText, mCarrierText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCarrierGeminiText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierGeminiText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_0
    const-string v0, "KeyguardStatusViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inWidgetMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->inWidgetMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->inWidgetMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 759
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    :cond_1
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->inWidgetMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->isAccountMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 764
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierGeminiText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 766
    :cond_2
    return-void
.end method

.method private updateCarrierTextWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 11
    .parameter "simState"
    .parameter "simId"

    .prologue
    const v10, #string@lockscreen_missing_sim_message_short#t

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 900
    const/4 v1, 0x0

    .line 901
    .local v1, carrierText:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 902
    .local v0, carrierHelpTextId:I
    iput-boolean v8, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUnlockDisabledDueToSimState:Z

    .line 905
    sget-object v2, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->Normal:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    .line 907
    .local v2, mode:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;
    sget-object v5, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->NetworkSearching:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mStatus:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    if-ne v5, v6, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    sget-object v5, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->NetworkSearching:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mGeminiStatus:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    if-ne v5, v6, :cond_3

    if-ne v8, p2, :cond_3

    .line 909
    :cond_1
    const-string v5, "KeyguardStatusViewManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCarrierTextWithSimStatus, searching network now, don\'t interrupt it, simState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", simId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_2
    :goto_0
    return-void

    .line 914
    :cond_3
    if-ne v8, p2, :cond_9

    .line 915
    invoke-virtual {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getStatusForIccState(Lcom/android/internal/telephony/IccCard$State;)Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mGeminiStatus:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    .line 916
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSimGeminiState:Lcom/android/internal/telephony/IccCard$State;

    .line 917
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5, v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 918
    .local v3, plmn:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5, v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 919
    .local v4, spn:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mGeminiStatus:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    .line 932
    :goto_1
    const-string v5, "KeyguardStatusViewManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCarrierTextWithSimStatus(), simState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", simId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", plmn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", spn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    sget-object v5, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$11;->$SwitchMap$com$baidu$internal$keyguard$slide$SmartKeyguardStatusViewManager$StatusMode:[I

    invoke-virtual {v2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 993
    :cond_4
    :goto_2
    invoke-virtual {p0, v1, p2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->setCarrierText(Ljava/lang/CharSequence;I)V

    .line 995
    sget-object v5, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->Normal:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mGeminiStatus:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    if-eq v5, v6, :cond_5

    sget-object v5, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->Normal:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mStatus:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    if-ne v5, v6, :cond_6

    .line 996
    :cond_5
    iput-boolean v9, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUnlockDisabledDueToSimState:Z

    .line 999
    :cond_6
    const-string v5, "KeyguardStatusViewManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCarrierTextWithSimStatus(), simState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", simId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", plmn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", spn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mUnlockDisabledDueToSimState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUnlockDisabledDueToSimState:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->setCarrierHelpText(I)V

    .line 1005
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v5, :cond_2

    .line 1006
    iget-boolean v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUnlockDisabledDueToSimState:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getVisibility()I

    move-result v5

    if-nez v5, :cond_8

    :cond_7
    iget-boolean v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUnlockDisabledDueToSimState:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 1008
    :cond_8
    iget v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPhoneState:I

    invoke-direct {p0, v5}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V

    goto/16 :goto_0

    .line 922
    .end local v3           #plmn:Ljava/lang/CharSequence;
    .end local v4           #spn:Ljava/lang/CharSequence;
    :cond_9
    invoke-virtual {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getStatusForIccState(Lcom/android/internal/telephony/IccCard$State;)Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mStatus:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    .line 923
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 924
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5, v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 925
    .restart local v3       #plmn:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5, v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 926
    .restart local v4       #spn:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mStatus:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    goto/16 :goto_1

    .line 937
    :pswitch_0
    invoke-static {v3, v4}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 938
    goto/16 :goto_2

    .line 941
    :pswitch_1
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, #string@lockscreen_network_locked_message#t

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 943
    const v0, #string@lockscreen_instructions_when_pattern_disabled#t

    .line 944
    goto/16 :goto_2

    .line 947
    :pswitch_2
    invoke-static {v3, v4}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 948
    goto/16 :goto_2

    .line 955
    :pswitch_3
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 958
    const v0, #string@lockscreen_missing_sim_instructions_long#t

    .line 959
    goto/16 :goto_2

    .line 962
    :pswitch_4
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 963
    const v0, #string@lockscreen_permanent_disabled_sim_instructions#t

    .line 964
    iput-boolean v8, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_2

    .line 968
    :pswitch_5
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 971
    const v0, #string@lockscreen_missing_sim_instructions#t

    .line 972
    iput-boolean v8, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_2

    .line 976
    :pswitch_6
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, #string@lockscreen_sim_locked_message#t

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 979
    iput-boolean v8, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_2

    .line 983
    :pswitch_7
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, #string@lockscreen_sim_puk_locked_message#t

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 986
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v5

    if-nez v5, :cond_4

    .line 988
    iput-boolean v8, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_2

    .line 934
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private updateEmergencyCallButton(IZ)V
    .locals 10
    .parameter "phoneState"
    .parameter "shown"

    .prologue
    const/16 v9, 0x8

    const/4 v5, 0x0

    .line 1153
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v6, :cond_1

    .line 1154
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 1155
    .local v3, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    .line 1156
    .local v1, isVoiceCapable:Z
    :goto_0
    const-string v6, "KeyguardStatusViewManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateEmergencyCallButton, isVoiceCapable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    if-eqz v1, :cond_5

    .line 1158
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DM_IsLocked()Z

    move-result v6

    if-nez v6, :cond_0

    sget-boolean v6, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIsCMCC:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p2, :cond_3

    .line 1159
    :cond_0
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1166
    const/4 v6, 0x2

    if-ne p1, v6, :cond_4

    .line 1168
    const v4, #string@lockscreen_return_to_call#t

    .line 1169
    .local v4, textId:I
    const v2, #drawable@stat_sys_phone_call#t

    .line 1170
    .local v2, phoneCallIcon:I
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v6, v2, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1176
    .end local v2           #phoneCallIcon:I
    :goto_1
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setText(I)V

    .line 1182
    .end local v1           #isVoiceCapable:Z
    .end local v3           #telephony:Landroid/telephony/TelephonyManager;
    .end local v4           #textId:I
    :cond_1
    :goto_2
    return-void

    .restart local v3       #telephony:Landroid/telephony/TelephonyManager;
    :cond_2
    move v1, v5

    .line 1155
    goto :goto_0

    .line 1161
    .restart local v1       #isVoiceCapable:Z
    :cond_3
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 1172
    :cond_4
    const v4, #string@lockscreen_emergency_call#t

    .line 1173
    .restart local v4       #textId:I
    const v0, #drawable@ic_emergency#t

    .line 1174
    .local v0, emergencyIcon:I
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v6, v0, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 1178
    .end local v0           #emergencyIcon:I
    .end local v4           #textId:I
    :cond_5
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateEmergencyCallButtonState(I)V
    .locals 4
    .parameter "phoneState"

    .prologue
    .line 1190
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 1193
    iget-boolean v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButtonEnabledInScreen:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUnlockDisabledDueToSimState:Z

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 1194
    .local v0, showIfCapable:Z
    :goto_0
    const-string v1, "KeyguardStatusViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEmergencyCallButtonState, phoneState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", showIfCapable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mEmergencyCallButtonEnabledInScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButtonEnabledInScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mUnlockDisabledDueToSimState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUnlockDisabledDueToSimState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    invoke-direct {p0, p1, v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateEmergencyCallButton(IZ)V

    .line 1199
    .end local v0           #showIfCapable:Z
    :cond_1
    return-void

    .line 1193
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateOwnerInfo()V
    .locals 4

    .prologue
    .line 680
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 681
    .local v1, res:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 683
    .local v0, ownerInfoEnabled:Z
    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    .line 685
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 686
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 689
    :cond_0
    return-void

    .line 687
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updatePINWhenDMChanged()V
    .locals 3

    .prologue
    .line 1356
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DM_IsLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x8

    .line 1357
    .local v1, visible:I
    :goto_0
    const v2, #id@keypad#t

    invoke-direct {p0, v2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1358
    .local v0, keypadView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1359
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1361
    :cond_0
    return-void

    .line 1356
    .end local v0           #keypadView:Landroid/view/View;
    .end local v1           #visible:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updatePasswordWhenDMChanged(Landroid/view/View;)V
    .locals 3
    .parameter "unlockView"

    .prologue
    .line 1364
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1365
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DM_IsLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1366
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1367
    const-string v1, "KeyguardStatusViewManager"

    const-string v2, "IME is showing, we should hide it"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1374
    :cond_0
    :goto_0
    return-void

    .line 1371
    :cond_1
    const-string v1, "KeyguardStatusViewManager"

    const-string v2, "IME is hide, we should show it"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method private updateStatus1()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 692
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 693
    new-instance v0, Llibcore/util/MutableInt;

    invoke-direct {v0, v2}, Llibcore/util/MutableInt;-><init>(I)V

    .line 694
    .local v0, icon:Llibcore/util/MutableInt;
    invoke-direct {p0, v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getPriorityTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 695
    .local v1, string:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    iget v4, v0, Llibcore/util/MutableInt;->value:I

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 698
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mShowingStatus:Z

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 701
    .end local v0           #icon:Llibcore/util/MutableInt;
    .end local v1           #string:Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 698
    .restart local v0       #icon:Llibcore/util/MutableInt;
    .restart local v1       #string:Ljava/lang/CharSequence;
    :cond_1
    const/4 v2, 0x4

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 640
    const-string v0, "KeyguardStatusViewManager"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 642
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 643
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPhoneCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 644
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDeviceInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 645
    return-void
.end method

.method public getStatusForIccState(Lcom/android/internal/telephony/IccCard$State;)Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;
    .locals 3
    .parameter "simState"

    .prologue
    .line 859
    if-nez p1, :cond_0

    .line 860
    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimUnknown:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    .line 886
    :goto_0
    return-object v1

    .line 863
    :cond_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 867
    .local v0, missingAndNotProvisioned:Z
    :goto_1
    if-eqz v0, :cond_2

    sget-object p1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 868
    :cond_2
    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$11;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 886
    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 863
    .end local v0           #missingAndNotProvisioned:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 870
    .restart local v0       #missingAndNotProvisioned:Z
    :pswitch_0
    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 872
    :pswitch_1
    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->NetworkLocked:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 874
    :pswitch_2
    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimNotReady:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 876
    :pswitch_3
    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimLocked:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 878
    :pswitch_4
    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimPukLocked:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 880
    :pswitch_5
    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->Normal:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 882
    :pswitch_6
    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimPermDisabled:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 884
    :pswitch_7
    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimUnknown:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 868
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1406
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 1410
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 589
    const-string v1, "KeyguardStatusViewManager"

    const-string v2, "onPause()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 591
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 592
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPhoneCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 593
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDeviceInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 594
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 597
    :try_start_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->screenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    :goto_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    if-eqz v1, :cond_0

    .line 603
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    invoke-virtual {v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSavedState:Landroid/os/Parcelable;

    .line 605
    :cond_0
    return-void

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 609
    const-string v1, "KeyguardStatusViewManager"

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 614
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 615
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 616
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPhoneCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerPhoneStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;)V

    .line 617
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDeviceInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerDeviceInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;)V

    .line 618
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->resetStatusInfo()V

    .line 621
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 622
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->screenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 624
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    if-eqz v1, :cond_0

    .line 625
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSavedState:Landroid/os/Parcelable;

    invoke-virtual {v1, v2}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 627
    :cond_0
    return-void
.end method

.method refreshDate()V
    .locals 3

    .prologue
    .line 848
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDateFormatString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 849
    .local v0, dateText:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 850
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 852
    :cond_0
    return-void
.end method

.method resetStatusInfo()V
    .locals 1

    .prologue
    .line 630
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    .line 631
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mShowingBatteryInfo:Z

    .line 632
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPluggedIn:Z

    .line 633
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mBatteryLevel:I

    .line 634
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateStatusLines(Z)V

    .line 635
    return-void
.end method

.method public setCarrierHelpText(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 545
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierHelpText:Ljava/lang/CharSequence;

    .line 546
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierHelpText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 547
    return-void
.end method

.method setCarrierText(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "string"
    .parameter "simId"

    .prologue
    .line 525
    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    .line 526
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierGeminiText:Ljava/lang/CharSequence;

    .line 530
    :goto_0
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 531
    return-void

    .line 528
    :cond_0
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setHelpMessage(II)V
    .locals 3
    .parameter "textResId"
    .parameter "lockIcon"

    .prologue
    .line 561
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 562
    .local v0, tmp:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mHelpMessageText:Ljava/lang/String;

    .line 563
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mHelpMessageText:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 564
    return-void

    .line 562
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method setInstructionText(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 520
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    .line 521
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 522
    return-void
.end method

.method setOwnerInfo(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 534
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    .line 535
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 536
    return-void
.end method

.method updateStatusLines(Z)V
    .locals 3
    .parameter "showStatusLines"

    .prologue
    .line 654
    const-string v0, "KeyguardStatusViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStatusLines("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iput-boolean p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mShowingStatus:Z

    .line 656
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateAlarmInfo()V

    .line 657
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateOwnerInfo()V

    .line 658
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateStatus1()V

    .line 659
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateCarrierText()V

    .line 661
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateCalibrationDataText()V

    .line 663
    return-void
.end method
