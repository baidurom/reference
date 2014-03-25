.class Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;
.super Ljava/lang/Object;
.source "SmartKeyguardStatusViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$5;,
        Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;,
        Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;
    }
.end annotation


# static fields
.field private static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field public static final ALARM_ICON:I = #drawable@ic_lock_idle_alarm#t

.field private static final BATTERY_INFO:I = 0xf

.field public static final BATTERY_LOW_ICON:I = 0x0

.field private static final CARRIER_HELP_TEXT:I = 0xc

.field private static final CARRIER_TEXT:I = 0xb

.field public static final CHARGING_ICON:I = #drawable@ic_lock_idle_charging#t

.field private static final DEBUG:Z = true

.field private static final EMERGENCY_CALL_TIMEOUT:I = 0x2710

.field private static final HELP_MESSAGE_TEXT:I = 0xd

.field private static final INSTRUCTION_RESET_DELAY:J = 0x7d0L

.field private static final INSTRUCTION_TEXT:I = 0xa

.field public static final LOCK_ICON:I = 0x0

.field private static final OWNER_INFO:I = 0xe

.field private static final TAG:Ljava/lang/String; = "KeyguardStatusViewManager"

.field private static final TRANSPORT_USERACTIVITY_TIMEOUT:I = 0x2710


# instance fields
.field private mAlarmStatusView:Landroid/widget/TextView;

.field private mAlbumView:Landroid/widget/ImageView;

.field protected mBatteryCharged:Z

.field protected mBatteryIsLow:Z

.field private mBatteryLevel:I

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCarrierHelpText:Ljava/lang/CharSequence;

.field private mCarrierText:Ljava/lang/CharSequence;

.field private mCarrierView:Landroid/widget/TextView;

.field private mContainer:Landroid/view/View;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mDateFormatString:Ljava/lang/String;

.field private mDateView:Landroid/widget/TextView;

.field private mEmergencyButtonEnabledBecauseSimLocked:Z

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private final mEmergencyCallButtonEnabledInScreen:Z

.field private mFlipperTransportView:Landroid/widget/RelativeLayout;

.field private mHelpMessageText:Ljava/lang/String;

.field private mHorizontalScrollView:Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;

.field private mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mInstructionText:Ljava/lang/String;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfoText:Ljava/lang/CharSequence;

.field private mOwnerInfoView:Landroid/widget/TextView;

.field protected mPhoneState:I

.field private mPlayState:I

.field private mPlmn:Ljava/lang/CharSequence;

.field private mPluggedIn:Z

.field private mSavedState:Landroid/os/Parcelable;

.field private mShowingBatteryInfo:Z

.field private mShowingStatus:Z

.field protected mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSpn:Ljava/lang/CharSequence;

.field private mStatus:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

.field private mStatus1View:Landroid/widget/TextView;

.field private mTransientTextManager:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;

.field private mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

.field private mUnlockView:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

.field private mWeatherView:Lcom/baidu/internal/keyguard/slide/WeatherView;

.field private mWidgetCallback:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

.field private mWorkspaceLayout:Landroid/widget/GridLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;ZLcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)V
    .locals 11
    .parameter "view"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "callback"
    .parameter "emergencyButtonEnabledInScreen"
    .parameter "unlockView"

    .prologue
    .line 244
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mShowingBatteryInfo:Z

    .line 95
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPluggedIn:Z

    .line 98
    const/16 v6, 0x64

    iput v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mBatteryLevel:I

    .line 137
    const/4 v6, -0x1

    iput v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPlayState:I

    .line 188
    new-instance v6, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$1;

    invoke-direct {v6, p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$1;-><init>(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)V

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mWidgetCallback:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    .line 710
    new-instance v6, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;

    invoke-direct {v6, p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;-><init>(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)V

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 245
    const-string v6, "KeyguardStatusViewManager"

    const-string v7, "KeyguardStatusViewManager()"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mContainer:Landroid/view/View;

    .line 248
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, #string@abbrev_wday_month_day_no_year#t

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDateFormatString:Ljava/lang/String;

    .line 249
    iput-object p3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 250
    iput-object p2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 251
    iput-object p4, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 253
    const v6, #id@carrier#t

    invoke-direct {p0, v6}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    .line 254
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, #dimen@status_bar_height#t

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 256
    const v6, #id@date#t

    invoke-direct {p0, v6}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    .line 257
    const v6, #id@status1#t

    invoke-direct {p0, v6}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    .line 258
    const v6, #id@alarm_status#t

    invoke-direct {p0, v6}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    .line 259
    const v6, #id@owner_info#t

    invoke-direct {p0, v6}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    .line 260
    const v6, #id@zz_transport#t

    invoke-direct {p0, v6}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/baidu/internal/keyguard/slide/TransportControlView;

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    .line 261
    const v6, #id@emergencyCallButton#t

    invoke-direct {p0, v6}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    .line 262
    move/from16 v0, p5

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButtonEnabledInScreen:Z

    .line 264
    const v6, #id@media_view#t

    invoke-direct {p0, v6}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mFlipperTransportView:Landroid/widget/RelativeLayout;

    .line 265
    const v6, #id@album_view#t

    invoke-direct {p0, v6}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mAlbumView:Landroid/widget/ImageView;

    .line 266
    const v6, #id@workspace#t

    invoke-direct {p0, v6}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/GridLayout;

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mWorkspaceLayout:Landroid/widget/GridLayout;

    .line 267
    const v6, #id@scroll_view#t

    invoke-direct {p0, v6}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mHorizontalScrollView:Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;

    .line 268
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mHorizontalScrollView:Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;

    new-instance v7, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$2;

    invoke-direct {v7, p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$2;-><init>(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)V

    invoke-virtual {v6, v7}, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->setOnHorizontalScrollListener(Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView$OnHorizontalScrollListener;)V

    .line 280
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUnlockView:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    .line 283
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mContainer:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->initializeTransportControlView(Landroid/view/View;)V

    .line 284
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v6, :cond_0

    .line 285
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    const v7, #string@lockscreen_emergency_call#t

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 286
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setFocusable(Z)V

    .line 290
    :cond_0
    new-instance v6, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    invoke-direct {v6, p0, v7}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;-><init>(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Landroid/widget/TextView;)V

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mTransientTextManager:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;

    .line 295
    const-string v6, "KeyguardStatusViewManager"

    const-string v7, "We got ExtKeyguardUpdateMonitor for Smart Lock Screen"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance v6, Lcom/baidu/internal/keyguard/slide/WeatherView;

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mContainer:Landroid/view/View;

    const/4 v8, 0x1

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUnlockView:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/baidu/internal/keyguard/slide/WeatherView;-><init>(Landroid/view/View;ZZLcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)V

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mWeatherView:Lcom/baidu/internal/keyguard/slide/WeatherView;

    .line 301
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->resetStatusInfo()V

    .line 302
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->refreshDate()V

    .line 303
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateOwnerInfo()V

    .line 306
    const/4 v6, 0x5

    new-array v4, v6, [Landroid/view/View;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    aput-object v7, v4, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    aput-object v7, v4, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    aput-object v7, v4, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    aput-object v7, v4, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    aput-object v7, v4, v6

    .line 308
    .local v4, scrollableViews:[Landroid/view/View;
    move-object v1, v4

    .local v1, arr$:[Landroid/view/View;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v1, v2

    .line 309
    .local v5, v:Landroid/view/View;
    if-eqz v5, :cond_1

    .line 310
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    .line 308
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    .end local v5           #v:Landroid/view/View;
    :cond_2
    new-instance v6, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$3;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$3;-><init>(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 320
    return-void
.end method

.method static synthetic access$100(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateAlarmInfo()V

    return-void
.end method

.method static synthetic access$1102(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mShowingBatteryInfo:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPluggedIn:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$1400(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;ILjava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1502(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mFlipperTransportView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mAlbumView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPlayState:I

    return v0
.end method

.method static synthetic access$702(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPlayState:I

    return p1
.end method

.method static synthetic access$800(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mHorizontalScrollView:Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/widget/GridLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mWorkspaceLayout:Landroid/widget/GridLayout;

    return-object v0
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 640
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

    .line 478
    const/4 v0, 0x0

    .line 479
    .local v0, string:Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mShowingBatteryInfo:Z

    if-eqz v1, :cond_3

    .line 481
    iget-boolean v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPluggedIn:Z

    if-eqz v1, :cond_2

    .line 483
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mBatteryCharged:Z

    if-eqz v1, :cond_1

    const v1, #string@lockscreen_charged#t

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 485
    const v1, #drawable@ic_lock_idle_charging#t

    iput v1, p1, Llibcore/util/MutableInt;->value:I

    .line 494
    :cond_0
    :goto_1
    return-object v0

    .line 483
    :cond_1
    const v1, #string@lockscreen_plugged_in#t

    goto :goto_0

    .line 486
    :cond_2
    iget-boolean v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mBatteryIsLow:Z

    if-eqz v1, :cond_0

    .line 488
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, #string@lockscreen_low_battery#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 489
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_1

    .line 492
    :cond_3
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getPriorityTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "icon"

    .prologue
    const/4 v5, 0x0

    .line 498
    const/4 v0, 0x0

    .line 499
    .local v0, string:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 501
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    .line 502
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    .line 519
    :cond_0
    :goto_0
    return-object v0

    .line 503
    :cond_1
    iget-boolean v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mShowingBatteryInfo:Z

    if-eqz v1, :cond_4

    .line 505
    iget-boolean v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPluggedIn:Z

    if-eqz v1, :cond_3

    .line 507
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mBatteryCharged:Z

    if-eqz v1, :cond_2

    const v1, #string@lockscreen_charged#t

    :goto_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 509
    const v1, #drawable@ic_lock_idle_charging#t

    iput v1, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_0

    .line 507
    :cond_2
    const v1, #string@lockscreen_plugged_in#t

    goto :goto_1

    .line 510
    :cond_3
    iget-boolean v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mBatteryIsLow:Z

    if-eqz v1, :cond_0

    .line 512
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, #string@lockscreen_low_battery#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 513
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_0

    .line 515
    :cond_4
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 517
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private getText(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "resId"

    .prologue
    .line 353
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
    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method private initializeTransportControlView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 803
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    if-nez v0, :cond_0

    .line 804
    const-string v0, "KeyguardStatusViewManager"

    const-string v1, "Couldn\'t find transport control widget"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :goto_0
    return-void

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 807
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mWidgetCallback:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->setCallback(Lcom/android/internal/widget/LockScreenWidgetCallback;)V

    .line 808
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private static makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "plmn"
    .parameter "spn"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 777
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 778
    .local v0, plmnValid:Z
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 779
    .local v1, spnValid:Z
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 780
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

    .line 786
    .end local p0
    :cond_0
    :goto_2
    return-object p0

    .end local v0           #plmnValid:Z
    .end local v1           #spnValid:Z
    .restart local p0
    :cond_1
    move v0, v3

    .line 777
    goto :goto_0

    .restart local v0       #plmnValid:Z
    :cond_2
    move v1, v3

    .line 778
    goto :goto_1

    .line 781
    .restart local v1       #spnValid:Z
    :cond_3
    if-nez v0, :cond_0

    .line 783
    if-eqz v1, :cond_4

    move-object p0, p1

    .line 784
    goto :goto_2

    .line 786
    :cond_4
    const-string p0, ""

    goto :goto_2
.end method

.method private update(ILjava/lang/CharSequence;)V
    .locals 4
    .parameter "what"
    .parameter "string"

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->inWidgetMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    const-string v0, "KeyguardStatusViewManager"

    const-string v1, "inWidgetMode() is true"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    packed-switch p1, :pswitch_data_0

    .line 384
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

    .line 389
    :goto_0
    return-void

    .line 378
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mTransientTextManager:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$TransientTextManager;->post(Ljava/lang/CharSequence;IJ)V

    goto :goto_0

    .line 387
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mShowingStatus:Z

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateStatusLines(Z)V

    goto :goto_0

    .line 373
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
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 438
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 439
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, nextAlarm:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mShowingStatus:Z

    if-eqz v3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 441
    .local v1, showAlarm:Z
    :goto_0
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    const v4, #drawable@ic_lock_idle_alarm#t

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 443
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    .end local v0           #nextAlarm:Ljava/lang/String;
    .end local v1           #showAlarm:Z
    :cond_0
    return-void

    .restart local v0       #nextAlarm:Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 440
    goto :goto_0

    .line 443
    .restart local v1       #showAlarm:Z
    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method

.method private updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 7
    .parameter "simState"

    .prologue
    const v6, #string@lockscreen_missing_sim_message_short#t

    const/4 v5, 0x1

    .line 575
    const-string v2, "KeyguardStatusViewManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCarrierTextWithSimStatus(), simState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/4 v1, 0x0

    .line 578
    .local v1, carrierText:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 579
    .local v0, carrierHelpTextId:I
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    .line 580
    invoke-virtual {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mStatus:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    .line 581
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 582
    sget-object v2, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$5;->$SwitchMap$com$baidu$internal$keyguard$slide$SmartKeyguardStatusViewManager$StatusMode:[I

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mStatus:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    invoke-virtual {v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 634
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->setCarrierText(Ljava/lang/CharSequence;)V

    .line 635
    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->setCarrierHelpText(I)V

    .line 636
    iget v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPhoneState:I

    invoke-direct {p0, v2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V

    .line 637
    return-void

    .line 584
    :pswitch_0
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 585
    goto :goto_0

    .line 588
    :pswitch_1
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, #string@lockscreen_network_locked_message#t

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 590
    const v0, #string@lockscreen_instructions_when_pattern_disabled#t

    .line 591
    goto :goto_0

    .line 598
    :pswitch_2
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 599
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 600
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 602
    :cond_1
    const v0, #string@lockscreen_missing_sim_instructions_long#t

    .line 603
    goto :goto_0

    .line 606
    :pswitch_3
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 607
    const v0, #string@lockscreen_permanent_disabled_sim_instructions#t

    .line 608
    iput-boolean v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto :goto_0

    .line 612
    :pswitch_4
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 614
    const v0, #string@lockscreen_missing_sim_instructions#t

    .line 615
    iput-boolean v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto :goto_0

    .line 619
    :pswitch_5
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, #string@lockscreen_sim_locked_message#t

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 621
    iput-boolean v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto :goto_0

    .line 625
    :pswitch_6
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, #string@lockscreen_sim_puk_locked_message#t

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 627
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 629
    iput-boolean v5, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_0

    .line 582
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private updateCarrierText()V
    .locals 2

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->inWidgetMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    :cond_0
    return-void
.end method

.method private updateEmergencyCallButtonState(I)V
    .locals 5
    .parameter "phoneState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 700
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v4, :cond_1

    .line 701
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallEnabledWhileSimLocked()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    if-eqz v4, :cond_2

    move v0, v2

    .line 704
    .local v0, enabledBecauseSimLocked:Z
    :goto_0
    iget-boolean v4, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButtonEnabledInScreen:Z

    if-nez v4, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    move v1, v2

    .line 705
    .local v1, shown:Z
    :goto_1
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v3, p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 708
    .end local v0           #enabledBecauseSimLocked:Z
    .end local v1           #shown:Z
    :cond_1
    return-void

    :cond_2
    move v0, v3

    .line 701
    goto :goto_0

    .restart local v0       #enabledBecauseSimLocked:Z
    :cond_3
    move v1, v3

    .line 704
    goto :goto_1
.end method

.method private updateOwnerInfo()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 448
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 449
    .local v1, res:Landroid/content/ContentResolver;
    const-string v2, "lock_screen_owner_info_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 451
    .local v0, ownerInfoEnabled:Z
    :goto_0
    if-eqz v0, :cond_2

    const-string v2, "lock_screen_owner_info"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    .line 453
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 454
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    :cond_0
    return-void

    .end local v0           #ownerInfoEnabled:Z
    :cond_1
    move v0, v3

    .line 449
    goto :goto_0

    .line 451
    .restart local v0       #ownerInfoEnabled:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    move v2, v3

    .line 455
    goto :goto_2
.end method

.method private updateStatus1()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 460
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 461
    new-instance v0, Llibcore/util/MutableInt;

    invoke-direct {v0, v2}, Llibcore/util/MutableInt;-><init>(I)V

    .line 462
    .local v0, icon:Llibcore/util/MutableInt;
    invoke-direct {p0, v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getPriorityTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 463
    .local v1, string:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    iget v4, v0, Llibcore/util/MutableInt;->value:I

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 465
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mShowingStatus:Z

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 467
    .end local v0           #icon:Llibcore/util/MutableInt;
    .end local v1           #string:Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 465
    .restart local v0       #icon:Llibcore/util/MutableInt;
    .restart local v1       #string:Ljava/lang/CharSequence;
    :cond_1
    const/4 v2, 0x4

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 791
    const-string v0, "KeyguardStatusViewManager"

    const-string v1, ">> cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->cleanUp()V

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mHorizontalScrollView:Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;

    if-eqz v0, :cond_1

    .line 796
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mHorizontalScrollView:Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;->cleanUp()V

    .line 797
    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mHorizontalScrollView:Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView;

    .line 799
    :cond_1
    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSavedState:Landroid/os/Parcelable;

    .line 800
    return-void
.end method

.method public getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;
    .locals 3
    .parameter "simState"

    .prologue
    .line 534
    if-nez p1, :cond_0

    .line 535
    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->Normal:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    .line 561
    :goto_0
    return-object v1

    .line 538
    :cond_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 542
    .local v0, missingAndNotProvisioned:Z
    :goto_1
    if-eqz v0, :cond_2

    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 543
    :cond_2
    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$5;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 561
    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 538
    .end local v0           #missingAndNotProvisioned:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 545
    .restart local v0       #missingAndNotProvisioned:Z
    :pswitch_0
    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 547
    :pswitch_1
    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimMissingLocked:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 549
    :pswitch_2
    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 551
    :pswitch_3
    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimLocked:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 553
    :pswitch_4
    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimPukLocked:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 555
    :pswitch_5
    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->Normal:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 557
    :pswitch_6
    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimPermDisabled:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 559
    :pswitch_7
    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 543
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
    .line 748
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->takeEmergencyCallAction()V

    .line 752
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 392
    const-string v0, "KeyguardStatusViewManager"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 396
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSavedState:Landroid/os/Parcelable;

    .line 399
    :cond_0
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 400
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 404
    const-string v0, "KeyguardStatusViewManager"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "next_alarm_formatted"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 407
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 408
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->resetStatusInfo()V

    .line 411
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSavedState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 414
    :cond_0
    return-void
.end method

.method refreshDate()V
    .locals 3

    .prologue
    .line 523
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDateFormatString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 524
    .local v0, dateText:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    :cond_0
    return-void
.end method

.method resetStatusInfo()V
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    .line 418
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateStatusLines(Z)V

    .line 419
    return-void
.end method

.method public setCarrierHelpText(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierHelpText:Ljava/lang/CharSequence;

    .line 349
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierHelpText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 350
    return-void
.end method

.method setCarrierText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 332
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    .line 333
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 334
    return-void
.end method

.method public setHelpMessage(II)V
    .locals 3
    .parameter "textResId"
    .parameter "lockIcon"

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 365
    .local v0, tmp:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mHelpMessageText:Ljava/lang/String;

    .line 366
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mHelpMessageText:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 367
    return-void

    .line 365
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method setInstructionText(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 327
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    .line 328
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 329
    return-void
.end method

.method setOwnerInfo(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    .line 338
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 339
    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 5

    .prologue
    .line 757
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 758
    .local v1, pm:Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 759
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 761
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    .line 768
    :goto_0
    return-void

    .line 763
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 764
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1080

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 766
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method updateStatusLines(Z)V
    .locals 3
    .parameter "showStatusLines"

    .prologue
    .line 429
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

    .line 430
    iput-boolean p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mShowingStatus:Z

    .line 431
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateAlarmInfo()V

    .line 432
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateOwnerInfo()V

    .line 433
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateStatus1()V

    .line 434
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateCarrierText()V

    .line 435
    return-void
.end method
