.class Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
.super Ljava/lang/Object;
.source "KeyguardStatusViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;,
        Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;,
        Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;
    }
.end annotation


# static fields
.field public static final ALARM_ICON:I = #drawable@ic_lock_idle_alarm#t

.field private static final BATTERY_INFO:I = 0xf

.field public static final BATTERY_LOW_ICON:I = 0x0

.field private static final CARRIER_HELP_TEXT:I = 0xc

.field private static final CARRIER_TEXT:I = 0xb

.field public static final CHARGING_ICON:I = 0x0

.field private static final DEBUG:Z = true

.field private static final HELP_MESSAGE_TEXT:I = 0xd

.field private static final INSTRUCTION_RESET_DELAY:J = 0x7d0L

.field private static final INSTRUCTION_TEXT:I = 0xa

.field public static final LOCK_ICON:I = 0x0

.field private static final OWNER_INFO:I = 0xe

.field private static final SIM_COLOR_COUNT:I = 0x8

.field private static final SIM_ICON_IMGS:[I = null

.field private static final SIM_LOCK_INDEX:I = 0x3

.field private static final SIM_NORMAL_INDEX:I = 0x0

.field private static final SIM_NO_INDEX:I = 0x2

.field private static final SIM_NO_SIGN_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "KeyguardStatusView"

.field private static phoneAppAlive:Z


# instance fields
.field private mAlarmStatusView:Landroid/widget/TextView;

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

.field private mContainer:Landroid/view/View;

.field private mDMPrompt:Landroid/widget/TextView;

.field private mDateFormatString:Ljava/lang/String;

.field private mDateView:Landroid/widget/TextView;

.field private mDeviceInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;

.field private mDownloadCalibrationData:Z

.field private mEmergencyButtonEnabledBecauseSimLocked:Z

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private final mEmergencyCallButtonEnabledInScreen:Z

.field private mGeminiStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

.field private mHelpMessageText:Ljava/lang/String;

.field private mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

.field private mInstructionText:Ljava/lang/String;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfoText:Ljava/lang/CharSequence;

.field private mOwnerInfoView:Landroid/widget/TextView;

.field private mPhoneCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;

.field protected mPhoneState:I

.field private mPlmn:Ljava/lang/CharSequence;

.field private mPluggedIn:Z

.field private mShowingBatteryInfo:Z

.field private mShowingStatus:Z

.field protected mSimGeminiState:Lcom/android/internal/telephony/IccCard$State;

.field protected mSimState:Lcom/android/internal/telephony/IccCard$State;

.field private mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

.field private mSpn:Ljava/lang/CharSequence;

.field private mStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

.field private mStatus1View:Landroid/widget/TextView;

.field private mTransientTextManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;

.field private mTransientTextManagerGemini:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;

.field private mTransportView:Lcom/android/internal/widget/TransportControlView;

.field private mUnlockDisabledDueToSimState:Z

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->phoneAppAlive:Z

    .line 147
    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->SIM_ICON_IMGS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xebt 0x0t 0x2t 0x2t
        0xd4t 0x0t 0x2t 0x2t
        0xeft 0x0t 0x2t 0x2t
        0xddt 0x0t 0x2t 0x2t
        0xfft 0x0t 0x2t 0x2t
        0xd8t 0x0t 0x2t 0x2t
        0xf8t 0x0t 0x2t 0x2t
        0xf3t 0x0t 0x2t 0x2t
        0xeat 0x0t 0x2t 0x2t
        0xd3t 0x0t 0x2t 0x2t
        0xeet 0x0t 0x2t 0x2t
        0xdct 0x0t 0x2t 0x2t
        0xfet 0x0t 0x2t 0x2t
        0xd7t 0x0t 0x2t 0x2t
        0xf7t 0x0t 0x2t 0x2t
        0xf2t 0x0t 0x2t 0x2t
        0xe9t 0x0t 0x2t 0x2t
        0xd2t 0x0t 0x2t 0x2t
        0xedt 0x0t 0x2t 0x2t
        0xdbt 0x0t 0x2t 0x2t
        0xfdt 0x0t 0x2t 0x2t
        0xd6t 0x0t 0x2t 0x2t
        0xf6t 0x0t 0x2t 0x2t
        0xf1t 0x0t 0x2t 0x2t
        0xe8t 0x0t 0x2t 0x2t
        0xd1t 0x0t 0x2t 0x2t
        0xect 0x0t 0x2t 0x2t
        0xdat 0x0t 0x2t 0x2t
        0xfct 0x0t 0x2t 0x2t
        0xd5t 0x0t 0x2t 0x2t
        0xf5t 0x0t 0x2t 0x2t
        0xf0t 0x0t 0x2t 0x2t
    .end array-data
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V
    .locals 9
    .parameter "view"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "callback"
    .parameter "emergencyButtonEnabledInScreen"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    .line 110
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z

    .line 113
    const/16 v5, 0x64

    iput v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    .line 1002
    new-instance v5, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    .line 1118
    new-instance v5, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDeviceInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;

    .line 1177
    new-instance v5, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPhoneCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;

    .line 1184
    new-instance v5, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    .line 247
    const-string v5, "KeyguardStatusView"

    const-string v6, "KeyguardStatusViewManager()"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    .line 249
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, #string@abbrev_wday_month_day_no_year#t

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateFormatString:Ljava/lang/String;

    .line 250
    iput-object p3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 251
    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 252
    iput-object p4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 254
    const v5, #id@carrier#t

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    .line 255
    const v5, #id@date#t

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    .line 256
    const v5, #id@status1#t

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    .line 257
    const v5, #id@alarm_status#t

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    .line 258
    const v5, #id@propertyOf#t

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    .line 261
    const v5, #id@calibrationData#t

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCalibrationData:Landroid/widget/TextView;

    .line 264
    const v5, #id@transport#t

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/TransportControlView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    .line 265
    const v5, #id@emergencyCallButton#t

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    .line 266
    iput-boolean p5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButtonEnabledInScreen:Z

    .line 268
    const v5, #id@dm_lock_prompt#t

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDMPrompt:Landroid/widget/TextView;

    .line 269
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDMPrompt:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DM_IsLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 270
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDMPrompt:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDMPrompt:Landroid/widget/TextView;

    const v6, 0x205008e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 275
    :cond_0
    const v5, #id@carrierGemini#t

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    .line 276
    new-instance v5, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-direct {v5, p0, v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Landroid/widget/TextView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransientTextManagerGemini:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;

    .line 279
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    if-eqz v5, :cond_1

    .line 280
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/TransportControlView;->setVisibility(I)V

    .line 284
    :cond_1
    sget-boolean v5, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->phoneAppAlive:Z

    if-nez v5, :cond_2

    .line 285
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPhoneAppReady()Z

    move-result v5

    sput-boolean v5, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->phoneAppAlive:Z

    .line 288
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v5, :cond_3

    .line 289
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    const v6, #string@lockscreen_emergency_call#t

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 290
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setFocusable(Z)V

    .line 294
    :cond_3
    new-instance v5, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    invoke-direct {v5, p0, v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Landroid/widget/TextView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransientTextManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;

    .line 297
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 298
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 299
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPhoneCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerPhoneStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;)V

    .line 300
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDeviceInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerDeviceInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;)V

    .line 302
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->resetStatusInfo()V

    .line 303
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->refreshDate()V

    .line 304
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateOwnerInfo()V

    .line 308
    const/4 v5, 0x6

    new-array v3, v5, [Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    aput-object v5, v3, v7

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    aput-object v5, v3, v8

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    aput-object v6, v3, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    aput-object v6, v3, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    aput-object v6, v3, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    aput-object v6, v3, v5

    .line 310
    .local v3, scrollableViews:[Landroid/view/View;
    move-object v0, v3

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_5

    aget-object v4, v0, v1

    .line 311
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_4

    .line 312
    invoke-virtual {v4, v8}, Landroid/view/View;->setSelected(Z)V

    .line 310
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    .end local v4           #v:Landroid/view/View;
    :cond_5
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCarrierTextWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->isAccountMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mGeminiStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierGeminiText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCarrierText()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDownloadCalibrationData:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCalibrationDataText()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;I)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDMPrompt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updatePINWhenDMChanged()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updatePasswordWhenDMChanged(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;ILjava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "icon"

    .prologue
    const/4 v5, 0x0

    .line 594
    const/4 v0, 0x0

    .line 595
    .local v0, string:Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    if-eqz v1, :cond_3

    .line 597
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z

    if-eqz v1, :cond_2

    .line 599
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 600
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, #string@lockscreen_charged#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 604
    :goto_0
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    .line 613
    :cond_0
    :goto_1
    return-object v0

    .line 602
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, #string@lockscreen_plugged_in#t

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 605
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 607
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, #string@lockscreen_low_battery#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 608
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_1

    .line 611
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getPriorityTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "icon"

    .prologue
    const/4 v5, 0x0

    .line 617
    const/4 v0, 0x0

    .line 618
    .local v0, string:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 620
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    .line 621
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    .line 641
    :cond_0
    :goto_0
    return-object v0

    .line 622
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    if-eqz v1, :cond_4

    .line 624
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharging()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 626
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 627
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, #string@lockscreen_charged#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 631
    :goto_1
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_0

    .line 629
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, #string@lockscreen_plugged_in#t

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 632
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 634
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, #string@lockscreen_low_battery#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 635
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_0

    .line 637
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->inWidgetMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 639
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private getResourceID(ILcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;)I
    .locals 5
    .parameter "colorIndex"
    .parameter "status"

    .prologue
    .line 840
    const/4 v0, -0x1

    .line 841
    .local v0, resId:I
    const-string v2, "KeyguardStatusView"

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

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    if-ltz p1, :cond_0

    const/16 v2, 0x8

    if-lt p1, v2, :cond_1

    .line 843
    :cond_0
    const-string v2, "KeyguardStatusView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid color index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 873
    .end local v0           #resId:I
    .local v1, resId:I
    :goto_0
    return v1

    .line 847
    .end local v1           #resId:I
    .restart local v0       #resId:I
    :cond_1
    sget-object v2, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->$SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

    invoke-virtual {p2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v1, v0

    .line 873
    .end local v0           #resId:I
    .restart local v1       #resId:I
    goto :goto_0

    .line 849
    .end local v1           #resId:I
    .restart local v0       #resId:I
    :pswitch_1
    sget-object v2, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->SIM_ICON_IMGS:[I

    add-int/lit8 v3, p1, 0x0

    aget v0, v2, v3

    .line 850
    goto :goto_1

    .line 855
    :pswitch_2
    sget-object v2, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->SIM_ICON_IMGS:[I

    add-int/lit8 v3, p1, 0x8

    aget v0, v2, v3

    .line 856
    goto :goto_1

    .line 859
    :pswitch_3
    sget-object v2, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->SIM_ICON_IMGS:[I

    add-int/lit8 v3, p1, 0x10

    aget v0, v2, v3

    .line 860
    goto :goto_1

    .line 863
    :pswitch_4
    sget-object v2, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->SIM_ICON_IMGS:[I

    add-int/lit8 v3, p1, 0x18

    aget v0, v2, v3

    .line 864
    goto :goto_1

    .line 866
    :pswitch_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_2

    .line 867
    sget-object v2, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->SIM_ICON_IMGS:[I

    add-int/lit8 v3, p1, 0x8

    aget v0, v2, v3

    goto :goto_1

    .line 869
    :cond_2
    sget-object v2, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->SIM_ICON_IMGS:[I

    add-int/lit8 v3, p1, 0x10

    aget v0, v2, v3

    goto :goto_1

    .line 847
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
    .line 369
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private inWidgetMode()Z
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    invoke-virtual {v0}, Lcom/android/internal/widget/TransportControlView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAccountMode()Z
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/AccountUnlockScreen;

    if-eqz v0, :cond_0

    .line 333
    const/4 v0, 0x1

    .line 335
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

    .line 1218
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 1219
    .local v0, plmnValid:Z
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 1220
    .local v1, spnValid:Z
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 1221
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

    .line 1227
    .end local p0
    :cond_0
    :goto_2
    return-object p0

    .end local v0           #plmnValid:Z
    .end local v1           #spnValid:Z
    .restart local p0
    :cond_1
    move v0, v3

    .line 1218
    goto :goto_0

    .restart local v0       #plmnValid:Z
    :cond_2
    move v1, v3

    .line 1219
    goto :goto_1

    .line 1222
    .restart local v1       #spnValid:Z
    :cond_3
    if-nez v0, :cond_0

    .line 1224
    if-eqz v1, :cond_4

    move-object p0, p1

    .line 1225
    goto :goto_2

    .line 1227
    :cond_4
    const-string p0, ""

    goto :goto_2
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "simMessage"
    .parameter "emergencyCallMessage"

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    invoke-static {p1, p2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 818
    .end local p1
    :cond_0
    return-object p1
.end method

.method private querySIMIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "simId"

    .prologue
    .line 822
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->phoneAppAlive:Z

    if-nez v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPhoneAppReady()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->phoneAppAlive:Z

    .line 825
    :cond_0
    const-string v0, "KeyguardStatusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "querySIMIcon , phoneAppAlive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->phoneAppAlive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", simdId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->phoneAppAlive:Z

    if-eqz v0, :cond_1

    .line 827
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getOptrDrawableBySlot(J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 829
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showOrHideCarrier()V
    .locals 11

    .prologue
    const/16 v10, 0x11

    const/4 v5, 0x0

    const/16 v9, 0x8

    .line 495
    const/4 v0, 0x0

    .line 496
    .local v0, SIM1Missing:Z
    const/4 v1, 0x0

    .line 497
    .local v1, SIM2Missing:Z
    const v6, #id@carrierDivider#t

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 499
    .local v3, carrierDivider:Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 500
    .local v4, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v2, 0x1

    .line 502
    .local v2, bIsWifiOnly:Z
    :goto_0
    if-eqz v2, :cond_2

    .line 504
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 505
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 506
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 553
    :cond_0
    :goto_1
    return-void

    .end local v2           #bIsWifiOnly:Z
    :cond_1
    move v2, v5

    .line 500
    goto :goto_0

    .line 510
    .restart local v2       #bIsWifiOnly:Z
    :cond_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    sget-object v7, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    if-eq v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    sget-object v7, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimMissingLocked:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    if-ne v6, v7, :cond_4

    .line 511
    :cond_3
    const/4 v0, 0x1

    .line 513
    :cond_4
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mGeminiStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    sget-object v7, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    if-eq v6, v7, :cond_5

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mGeminiStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    sget-object v7, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimMissingLocked:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    if-ne v6, v7, :cond_6

    .line 514
    :cond_5
    const/4 v1, 0x1

    .line 516
    :cond_6
    const-string v6, "KeyguardStatusView"

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

    .line 517
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 518
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 519
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 520
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 521
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 543
    :goto_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    sget-object v6, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimUnknown:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    if-ne v5, v6, :cond_7

    .line 544
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 545
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 546
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 548
    :cond_7
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mGeminiStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    sget-object v6, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimUnknown:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    if-ne v5, v6, :cond_0

    .line 549
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 550
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 551
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    .line 522
    :cond_8
    if-eqz v0, :cond_9

    if-nez v1, :cond_9

    .line 523
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 524
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 525
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2

    .line 527
    :cond_9
    if-nez v0, :cond_a

    if-eqz v1, :cond_a

    .line 528
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 529
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 530
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 531
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2

    .line 533
    :cond_a
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 536
    const-string v6, "|"

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 538
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 539
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 540
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2
.end method

.method private update(ILjava/lang/CharSequence;)V
    .locals 4
    .parameter "what"
    .parameter "string"

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->inWidgetMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const-string v0, "KeyguardStatusView"

    const-string v1, "inWidgetMode() is true"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    packed-switch p1, :pswitch_data_0

    .line 400
    :pswitch_0
    const-string v0, "KeyguardStatusView"

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

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :goto_0
    return-void

    .line 394
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransientTextManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;->post(Ljava/lang/CharSequence;IJ)V

    goto :goto_0

    .line 403
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingStatus:Z

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateStatusLines(Z)V

    goto :goto_0

    .line 389
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

    .line 462
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 463
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, nextAlarm:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingStatus:Z

    if-eqz v3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 465
    .local v1, showAlarm:Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    const v4, #drawable@ic_lock_idle_alarm#t

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 467
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    .end local v0           #nextAlarm:Ljava/lang/String;
    .end local v1           #showAlarm:Z
    :cond_0
    return-void

    .restart local v0       #nextAlarm:Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 464
    goto :goto_0

    .line 467
    .restart local v1       #showAlarm:Z
    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method

.method private updateCalibrationDataText()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 577
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCalibrationData:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 588
    :goto_0
    return-void

    .line 580
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDownloadCalibrationData:Z

    if-eqz v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCalibrationData:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 583
    :cond_1
    const-string v0, "KeyguardStatusView"

    const-string v1, "updateCalibrationDataText"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCalibrationData:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCarrierText()V
    .locals 3

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->isAccountMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->showOrHideCarrier()V

    .line 560
    const-string v0, "KeyguardStatusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCarrierText, mCarrierText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCarrierGeminiText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierGeminiText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->inWidgetMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->inWidgetMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->isAccountMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 571
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierGeminiText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
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

    .line 698
    const/4 v1, 0x0

    .line 699
    .local v1, carrierText:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 700
    .local v0, carrierHelpTextId:I
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUnlockDisabledDueToSimState:Z

    .line 703
    sget-object v2, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    .line 705
    .local v2, mode:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;
    sget-object v5, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->NetworkSearching:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    if-ne v5, v6, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    sget-object v5, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->NetworkSearching:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mGeminiStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    if-ne v5, v6, :cond_3

    if-ne v8, p2, :cond_3

    .line 707
    :cond_1
    const-string v5, "KeyguardStatusView"

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

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_2
    :goto_0
    return-void

    .line 712
    :cond_3
    if-ne v8, p2, :cond_9

    .line 713
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getStatusForIccState(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mGeminiStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    .line 714
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimGeminiState:Lcom/android/internal/telephony/IccCard$State;

    .line 715
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5, v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 716
    .local v3, plmn:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5, v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 717
    .local v4, spn:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mGeminiStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    .line 730
    :goto_1
    const-string v5, "KeyguardStatusView"

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

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    sget-object v5, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->$SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 791
    :cond_4
    :goto_2
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setCarrierText(Ljava/lang/CharSequence;I)V

    .line 793
    sget-object v5, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mGeminiStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    if-eq v5, v6, :cond_5

    sget-object v5, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    if-ne v5, v6, :cond_6

    .line 794
    :cond_5
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUnlockDisabledDueToSimState:Z

    .line 797
    :cond_6
    const-string v5, "KeyguardStatusView"

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

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUnlockDisabledDueToSimState:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setCarrierHelpText(I)V

    .line 803
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUnlockDisabledDueToSimState:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getVisibility()I

    move-result v5

    if-nez v5, :cond_8

    :cond_7
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUnlockDisabledDueToSimState:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 805
    :cond_8
    iget v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPhoneState:I

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V

    goto/16 :goto_0

    .line 720
    .end local v3           #plmn:Ljava/lang/CharSequence;
    .end local v4           #spn:Ljava/lang/CharSequence;
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getStatusForIccState(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    .line 721
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 722
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5, v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 723
    .restart local v3       #plmn:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5, v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 724
    .restart local v4       #spn:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto/16 :goto_1

    .line 735
    :pswitch_0
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 736
    goto/16 :goto_2

    .line 739
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, #string@lockscreen_network_locked_message#t

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 741
    const v0, #string@lockscreen_instructions_when_pattern_disabled#t

    .line 742
    goto/16 :goto_2

    .line 745
    :pswitch_2
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 746
    goto/16 :goto_2

    .line 753
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 756
    const v0, #string@lockscreen_missing_sim_instructions_long#t

    .line 757
    goto/16 :goto_2

    .line 760
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 761
    const v0, #string@lockscreen_permanent_disabled_sim_instructions#t

    .line 762
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_2

    .line 766
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 769
    const v0, #string@lockscreen_missing_sim_instructions#t

    .line 770
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_2

    .line 774
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, #string@lockscreen_sim_locked_message#t

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 777
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_2

    .line 781
    :pswitch_7
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, #string@lockscreen_sim_puk_locked_message#t

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 784
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v5

    if-nez v5, :cond_4

    .line 786
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_2

    .line 732
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

    .line 950
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 951
    .local v3, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    .line 952
    .local v1, isVoiceCapable:Z
    :goto_0
    const-string v6, "KeyguardStatusView"

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

    .line 953
    if-eqz v1, :cond_4

    .line 955
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DM_IsLocked()Z

    move-result v6

    if-nez v6, :cond_0

    sget-boolean v6, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIsCMCC:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz p2, :cond_2

    .line 956
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 963
    const/4 v6, 0x2

    if-ne p1, v6, :cond_3

    .line 965
    const v4, #string@lockscreen_return_to_call#t

    .line 966
    .local v4, textId:I
    const v2, #drawable@stat_sys_phone_call#t

    .line 967
    .local v2, phoneCallIcon:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v6, v2, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 973
    .end local v2           #phoneCallIcon:I
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setText(I)V

    .line 980
    .end local v4           #textId:I
    :goto_2
    return-void

    .end local v1           #isVoiceCapable:Z
    :cond_1
    move v1, v5

    .line 951
    goto :goto_0

    .line 958
    .restart local v1       #isVoiceCapable:Z
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 969
    :cond_3
    const v4, #string@lockscreen_emergency_call#t

    .line 970
    .restart local v4       #textId:I
    const v0, #drawable@ic_emergency#t

    .line 971
    .local v0, emergencyIcon:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v6, v0, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 977
    .end local v0           #emergencyIcon:I
    .end local v4           #textId:I
    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateEmergencyCallButtonState(I)V
    .locals 4
    .parameter "phoneState"

    .prologue
    .line 988
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 993
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButtonEnabledInScreen:Z

    if-nez v1, :cond_0

    :cond_0
    const/4 v0, 0x1

    .line 995
    .local v0, showIfCapable:Z
    const-string v1, "KeyguardStatusView"

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

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButtonEnabledInScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mUnlockDisabledDueToSimState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUnlockDisabledDueToSimState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateEmergencyCallButton(IZ)V

    .line 1000
    .end local v0           #showIfCapable:Z
    :cond_1
    return-void
.end method

.method private updateOwnerInfo()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 472
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 473
    .local v1, res:Landroid/content/ContentResolver;
    const-string v2, "lock_screen_owner_info_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 475
    .local v0, ownerInfoEnabled:Z
    :goto_0
    if-eqz v0, :cond_2

    const-string v2, "lock_screen_owner_info"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    .line 477
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 478
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 481
    :cond_0
    return-void

    .end local v0           #ownerInfoEnabled:Z
    :cond_1
    move v0, v3

    .line 473
    goto :goto_0

    .line 475
    .restart local v0       #ownerInfoEnabled:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    move v2, v3

    .line 479
    goto :goto_2
.end method

.method private updatePINWhenDMChanged()V
    .locals 3

    .prologue
    .line 1157
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DM_IsLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x8

    .line 1158
    .local v1, visible:I
    :goto_0
    const v2, #id@keypad#t

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1159
    .local v0, keypadView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1160
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1162
    :cond_0
    return-void

    .line 1157
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
    .line 1165
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1166
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DM_IsLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1167
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1168
    const-string v1, "KeyguardStatusView"

    const-string v2, "IME is showing, we should hide it"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1175
    :cond_0
    :goto_0
    return-void

    .line 1172
    :cond_1
    const-string v1, "KeyguardStatusView"

    const-string v2, "IME is hide, we should show it"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method private updateStatus1()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 484
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 485
    new-instance v0, Llibcore/util/MutableInt;

    invoke-direct {v0, v2}, Llibcore/util/MutableInt;-><init>(I)V

    .line 486
    .local v0, icon:Llibcore/util/MutableInt;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getPriorityTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 487
    .local v1, string:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    iget v4, v0, Llibcore/util/MutableInt;->value:I

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 489
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingStatus:Z

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 491
    .end local v0           #icon:Llibcore/util/MutableInt;
    .end local v1           #string:Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 489
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
    .line 436
    const-string v0, "KeyguardStatusView"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 438
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 439
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPhoneCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 440
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDeviceInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 441
    return-void
.end method

.method public getStatusForIccState(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;
    .locals 3
    .parameter "simState"

    .prologue
    .line 657
    if-nez p1, :cond_0

    .line 658
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimUnknown:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    .line 684
    :goto_0
    return-object v1

    .line 661
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 665
    .local v0, missingAndNotProvisioned:Z
    :goto_1
    if-eqz v0, :cond_2

    sget-object p1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 666
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 684
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 661
    .end local v0           #missingAndNotProvisioned:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 668
    .restart local v0       #missingAndNotProvisioned:Z
    :pswitch_0
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 670
    :pswitch_1
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->NetworkLocked:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 672
    :pswitch_2
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimNotReady:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 674
    :pswitch_3
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimLocked:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 676
    :pswitch_4
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimPukLocked:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 678
    :pswitch_5
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 680
    :pswitch_6
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimPermDisabled:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 682
    :pswitch_7
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimUnknown:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 666
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
    .line 1206
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 1209
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 408
    const-string v0, "KeyguardStatusView"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 410
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 411
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPhoneCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 412
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDeviceInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 413
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 417
    const-string v0, "KeyguardStatusView"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 419
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 420
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPhoneCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerPhoneStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;)V

    .line 421
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDeviceInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerDeviceInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;)V

    .line 422
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->resetStatusInfo()V

    .line 423
    return-void
.end method

.method refreshDate()V
    .locals 4

    .prologue
    .line 645
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 646
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, s:Ljava/lang/String;
    const-string v1, "KeyguardStatusView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshDate, s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    .end local v0           #s:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method resetStatusInfo()V
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    .line 427
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    .line 428
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z

    .line 429
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    .line 430
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateStatusLines(Z)V

    .line 431
    return-void
.end method

.method public setCarrierHelpText(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierHelpText:Ljava/lang/CharSequence;

    .line 365
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierHelpText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 366
    return-void
.end method

.method setCarrierText(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "string"
    .parameter "simId"

    .prologue
    .line 344
    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    .line 345
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierGeminiText:Ljava/lang/CharSequence;

    .line 349
    :goto_0
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 350
    return-void

    .line 347
    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setHelpMessage(II)V
    .locals 3
    .parameter "textResId"
    .parameter "lockIcon"

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 381
    .local v0, tmp:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mHelpMessageText:Ljava/lang/String;

    .line 382
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mHelpMessageText:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 383
    return-void

    .line 381
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method setInstructionText(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    .line 340
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 341
    return-void
.end method

.method setOwnerInfo(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    .line 354
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 355
    return-void
.end method

.method updateStatusLines(Z)V
    .locals 3
    .parameter "showStatusLines"

    .prologue
    .line 450
    const-string v0, "KeyguardStatusView"

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

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingStatus:Z

    .line 452
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateAlarmInfo()V

    .line 453
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateOwnerInfo()V

    .line 454
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateStatus1()V

    .line 455
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCarrierText()V

    .line 457
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCalibrationDataText()V

    .line 459
    return-void
.end method
