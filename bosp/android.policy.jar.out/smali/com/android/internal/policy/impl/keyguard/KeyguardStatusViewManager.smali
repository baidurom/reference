.class Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;
.super Ljava/lang/Object;
.source "KeyguardStatusViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$3;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$TransientTextManager;
    }
.end annotation


# static fields
.field private static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field public static final ALARM_ICON:I = #drawable@ic_lock_idle_alarm#t

.field private static final BATTERY_INFO:I = 0xf

.field public static final BATTERY_LOW_ICON:I = 0x0

.field private static final CARRIER_HELP_TEXT:I = 0xc

.field private static final CARRIER_TEXT:I = 0xb

.field public static final CHARGING_ICON:I = 0x0

.field private static final DEBUG:Z = true

.field private static final EMERGENCY_CALL_TIMEOUT:I = 0x2710

.field private static final HELP_MESSAGE_TEXT:I = 0xd

.field private static final INSTRUCTION_RESET_DELAY:J = 0x7d0L

.field private static final INSTRUCTION_TEXT:I = 0xa

.field public static final LOCK_ICON:I = 0x0

.field private static final OWNER_INFO:I = 0xe

.field private static final TAG:Ljava/lang/String; = "KeyguardStatusView"


# instance fields
.field private mAlarmStatusView:Landroid/widget/TextView;

.field protected mBatteryCharged:Z

.field protected mBatteryIsLow:Z

.field private mBatteryLevel:I

.field private mCalibrationDataDownloaded:Z

.field private mCalibrationDataTextView:Landroid/widget/TextView;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCarrierGeminiText:Ljava/lang/CharSequence;

.field private mCarrierGeminiView:Landroid/widget/TextView;

.field private mCarrierHelpText:Ljava/lang/CharSequence;

.field private mCarrierText:Ljava/lang/CharSequence;

.field private mCarrierView:Landroid/widget/TextView;

.field private mContainer:Landroid/view/View;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mDMPrompt:Landroid/widget/TextView;

.field private mDateFormatString:Ljava/lang/String;

.field private mDateView:Landroid/widget/TextView;

.field private mDigitalClock:Lcom/android/internal/widget/DigitalClock;

.field private mEmergencyButtonEnabledBecauseSimLocked:Z

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private final mEmergencyCallButtonEnabledInScreen:Z

.field private mGeminiStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

.field private mHelpMessageText:Ljava/lang/String;

.field private mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mInstructionText:Ljava/lang/String;

.field private mKeyguardUtilExt:Lcom/mediatek/common/policy/IKeyguardUtilExt;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfoText:Ljava/lang/CharSequence;

.field private mOwnerInfoView:Landroid/widget/TextView;

.field protected mPhoneState:I

.field private mPlmn:Ljava/lang/CharSequence;

.field private mPluggedIn:Z

.field private mShowingBatteryInfo:Z

.field private mShowingStatus:Z

.field protected mSimGeminiState:Lcom/android/internal/telephony/IccCardConstants$State;

.field protected mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSpn:Ljava/lang/CharSequence;

.field private mStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

.field private mStatus1View:Landroid/widget/TextView;

.field private mTransientTextManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$TransientTextManager;

.field private mTransientTextManagerGemini:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$TransientTextManager;

.field private mTransportView:Lcom/android/internal/widget/TransportControlView;

.field private mUnlockDisabledDueToSimState:Z

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;Z)V
    .locals 10
    .parameter "view"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "callback"
    .parameter "emergencyButtonEnabledInScreen"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    .line 102
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPluggedIn:Z

    .line 105
    const/16 v6, 0x64

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mBatteryLevel:I

    .line 760
    new-instance v6, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 192
    const-string v6, "KeyguardStatusView"

    const-string v7, "KeyguardStatusViewManager()"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :try_start_0
    const-class v6, Lcom/mediatek/common/policy/IKeyguardUtilExt;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/common/policy/IKeyguardUtilExt;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mKeyguardUtilExt:Lcom/mediatek/common/policy/IKeyguardUtilExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    .line 203
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, #string@abbrev_wday_month_day_no_year#t

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mDateFormatString:Ljava/lang/String;

    .line 204
    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 205
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 206
    iput-object p4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 208
    const v6, #id@carrier#t

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    .line 209
    const v6, #id@date#t

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    .line 210
    const v6, #id@status1#t

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    .line 211
    const v6, #id@alarm_status#t

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    .line 212
    const v6, #id@owner_info#t

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    .line 213
    const v6, #id@transport#t

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/TransportControlView;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    .line 214
    const v6, #id@emergencyCallButton#t

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    .line 215
    iput-boolean p5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyCallButtonEnabledInScreen:Z

    .line 216
    const v6, #id@time#t

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/DigitalClock;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mDigitalClock:Lcom/android/internal/widget/DigitalClock;

    .line 219
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    if-eqz v6, :cond_0

    .line 220
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/TransportControlView;->setVisibility(I)V

    .line 223
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v6, :cond_1

    .line 224
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    const v7, #string@lockscreen_emergency_call#t

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 225
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setFocusable(Z)V

    .line 229
    :cond_1
    new-instance v6, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$TransientTextManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    invoke-direct {v6, p0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$TransientTextManager;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Landroid/widget/TextView;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mTransientTextManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$TransientTextManager;

    .line 233
    const v6, #id@carrierGemini#t

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    .line 234
    new-instance v6, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$TransientTextManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-direct {v6, p0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$TransientTextManager;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Landroid/widget/TextView;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mTransientTextManagerGemini:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$TransientTextManager;

    .line 249
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->resetStatusInfo()V

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->refreshDate()V

    .line 254
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateOwnerInfo()V

    .line 258
    const/4 v4, 0x0

    .line 260
    .local v4, scrollableViews:[Landroid/view/View;
    const/4 v6, 0x6

    new-array v4, v6, [Landroid/view/View;

    .end local v4           #scrollableViews:[Landroid/view/View;
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    aput-object v6, v4, v8

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    aput-object v6, v4, v9

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    aput-object v7, v4, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    aput-object v7, v4, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    aput-object v7, v4, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    aput-object v7, v4, v6

    .line 268
    .restart local v4       #scrollableViews:[Landroid/view/View;
    move-object v0, v4

    .local v0, arr$:[Landroid/view/View;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 269
    .local v5, v:Landroid/view/View;
    if-eqz v5, :cond_2

    .line 270
    invoke-virtual {v5, v9}, Landroid/view/View;->setSelected(Z)V

    .line 268
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 197
    .end local v0           #arr$:[Landroid/view/View;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #scrollableViews:[Landroid/view/View;
    .end local v5           #v:Landroid/view/View;
    :catch_0
    move-exception v1

    .line 198
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 274
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #arr$:[Landroid/view/View;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #scrollableViews:[Landroid/view/View;
    :cond_3
    new-instance v6, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$1;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 280
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateCarrierStatusWithSimStatus(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->isAccountMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mGeminiStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierGeminiText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateCarrierText()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCalibrationDataDownloaded:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateCalibrationDataText()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateAlarmInfo()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPluggedIn:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;ILjava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "icon"

    .prologue
    const/4 v5, 0x0

    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, string:Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    if-eqz v1, :cond_3

    .line 471
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPluggedIn:Z

    if-eqz v1, :cond_2

    .line 473
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mBatteryCharged:Z

    if-eqz v1, :cond_1

    const v1, #string@lockscreen_charged#t

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 475
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    .line 484
    :cond_0
    :goto_1
    return-object v0

    .line 473
    :cond_1
    const v1, #string@lockscreen_plugged_in#t

    goto :goto_0

    .line 476
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mBatteryIsLow:Z

    if-eqz v1, :cond_0

    .line 478
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, #string@lockscreen_low_battery#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 479
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_1

    .line 482
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getPriorityTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "icon"

    .prologue
    const/4 v5, 0x0

    .line 492
    const/4 v0, 0x0

    .line 493
    .local v0, string:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 495
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    .line 496
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    .line 515
    :cond_0
    :goto_0
    return-object v0

    .line 497
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    if-eqz v1, :cond_4

    .line 500
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPluggedIn:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceCharging()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 502
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mBatteryCharged:Z

    if-eqz v1, :cond_2

    const v1, #string@lockscreen_charged#t

    :goto_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 504
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    .line 505
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_0

    .line 502
    :cond_2
    const v1, #string@lockscreen_plugged_in#t

    goto :goto_1

    .line 506
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mBatteryIsLow:Z

    if-eqz v1, :cond_0

    .line 508
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, #string@lockscreen_low_battery#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 509
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_0

    .line 511
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->inWidgetMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private getText(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "resId"

    .prologue
    .line 313
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private inWidgetMode()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

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
    .line 1015
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/impl/keyguard/AccountUnlockScreen;

    if-eqz v0, :cond_0

    .line 1016
    const/4 v0, 0x1

    .line 1018
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiOnlyDevice()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1025
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1026
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "plmn"
    .parameter "spn"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 983
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 984
    .local v0, plmnValid:Z
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 985
    .local v1, spnValid:Z
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 986
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

    .line 992
    .end local p0
    :cond_0
    :goto_2
    return-object p0

    .end local v0           #plmnValid:Z
    .end local v1           #spnValid:Z
    .restart local p0
    :cond_1
    move v0, v3

    .line 983
    goto :goto_0

    .restart local v0       #plmnValid:Z
    :cond_2
    move v1, v3

    .line 984
    goto :goto_1

    .line 987
    .restart local v1       #spnValid:Z
    :cond_3
    if-nez v0, :cond_0

    .line 989
    if-eqz v1, :cond_4

    move-object p0, p1

    .line 990
    goto :goto_2

    .line 992
    :cond_4
    const-string p0, ""

    goto :goto_2
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "simMessage"
    .parameter "emergencyCallMessage"

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    invoke-static {p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 661
    .end local p1
    :cond_0
    return-object p1
.end method

.method private showOrHideCarrier()V
    .locals 9

    .prologue
    const/16 v8, 0x11

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 1052
    const/4 v1, 0x0

    .line 1053
    .local v1, sim1Missing:Z
    const/4 v2, 0x0

    .line 1054
    .local v2, sim2Missing:Z
    const v3, #id@carrierDivider#t

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1056
    .local v0, carrierDivider:Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->isWifiOnlyDevice()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1057
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1058
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1059
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1104
    :cond_0
    :goto_0
    return-void

    .line 1061
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimMissingLocked:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    if-ne v3, v4, :cond_3

    .line 1062
    :cond_2
    const/4 v1, 0x1

    .line 1064
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mGeminiStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mGeminiStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimMissingLocked:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    if-ne v3, v4, :cond_5

    .line 1065
    :cond_4
    const/4 v2, 0x1

    .line 1067
    :cond_5
    const-string v3, "KeyguardStatusView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSIMOneMissing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mSIMTwoMissing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    .line 1069
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1070
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1071
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1072
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 1092
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimUnknown:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    if-ne v3, v4, :cond_6

    .line 1093
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1094
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1095
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 1098
    :cond_6
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mGeminiStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimUnknown:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    if-ne v3, v4, :cond_0

    .line 1099
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1100
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1101
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 1073
    :cond_7
    if-eqz v1, :cond_8

    if-nez v2, :cond_8

    .line 1074
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1075
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1076
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1077
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    .line 1078
    :cond_8
    if-nez v1, :cond_9

    if-eqz v2, :cond_9

    .line 1079
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1080
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1081
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1082
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    .line 1084
    :cond_9
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1085
    const-string v3, "|"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1086
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1087
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1088
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1089
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1
.end method

.method private update(ILjava/lang/CharSequence;)V
    .locals 4
    .parameter "what"
    .parameter "string"

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->inWidgetMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    const-string v0, "KeyguardStatusView"

    const-string v1, "inWidgetMode() is true"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    packed-switch p1, :pswitch_data_0

    .line 344
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

    .line 349
    :goto_0
    return-void

    .line 338
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mTransientTextManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$TransientTextManager;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$TransientTextManager;->post(Ljava/lang/CharSequence;IJ)V

    goto :goto_0

    .line 347
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mShowingStatus:Z

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateStatusLines(Z)V

    goto :goto_0

    .line 333
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

    .line 407
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 408
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, nextAlarm:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mShowingStatus:Z

    if-eqz v3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 410
    .local v1, showAlarm:Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    const v4, #drawable@ic_lock_idle_alarm#t

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 412
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 414
    .end local v0           #nextAlarm:Ljava/lang/String;
    .end local v1           #showAlarm:Z
    :cond_0
    return-void

    .restart local v0       #nextAlarm:Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 409
    goto :goto_0

    .line 412
    .restart local v1       #showAlarm:Z
    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method

.method private updateCalibrationDataText()V
    .locals 0

    .prologue
    .line 1120
    return-void
.end method

.method private updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 7
    .parameter "simState"

    .prologue
    const v6, #string@lockscreen_missing_sim_message_short#t

    const/4 v5, 0x1

    .line 573
    const-string v2, "KeyguardStatusView"

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

    .line 575
    const/4 v1, 0x0

    .line 576
    .local v1, carrierText:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 577
    .local v0, carrierHelpTextId:I
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    .line 578
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    .line 579
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 581
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->NetworkSearching:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    if-ne v2, v3, :cond_0

    .line 582
    const-string v2, "KeyguardStatusView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCarrierTextWithSimStatus, searching network now, don\'t interrupt it, simState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :goto_0
    return-void

    .line 586
    :cond_0
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$3;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardStatusViewManager$StatusMode:[I

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 647
    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->setCarrierText(Ljava/lang/CharSequence;)V

    .line 648
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->setCarrierHelpText(I)V

    .line 649
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPhoneState:I

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V

    goto :goto_0

    .line 589
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 590
    goto :goto_1

    .line 593
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, #string@lockscreen_network_locked_message#t

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 596
    const v0, #string@lockscreen_instructions_when_pattern_disabled#t

    .line 597
    goto :goto_1

    .line 600
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 601
    goto :goto_1

    .line 608
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 611
    const v0, #string@lockscreen_missing_sim_instructions_long#t

    .line 612
    goto :goto_1

    .line 615
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, #string@lockscreen_permanent_disabled_sim_message_short#t

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 617
    const v0, #string@lockscreen_permanent_disabled_sim_instructions#t

    .line 618
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto :goto_1

    .line 622
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 625
    const v0, #string@lockscreen_missing_sim_instructions#t

    .line 626
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto :goto_1

    .line 630
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, #string@lockscreen_sim_locked_message#t

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 633
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto :goto_1

    .line 637
    :pswitch_7
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, #string@lockscreen_sim_puk_locked_message#t

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 640
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 642
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_1

    .line 586
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

.method private updateCarrierStatusWithSimStatus(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 11
    .parameter "simState"
    .parameter "simId"

    .prologue
    const v10, #string@lockscreen_missing_sim_message_short#t

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1210
    const/4 v1, 0x0

    .line 1211
    .local v1, carrierText:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 1212
    .local v0, carrierHelpTextId:I
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mUnlockDisabledDueToSimState:Z

    .line 1215
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    .line 1217
    .local v2, mode:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;
    sget-object v5, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->NetworkSearching:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    if-ne v5, v6, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    sget-object v5, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->NetworkSearching:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mGeminiStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    if-ne v5, v6, :cond_3

    if-ne v8, p2, :cond_3

    .line 1219
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

    .line 1322
    :cond_2
    :goto_0
    return-void

    .line 1224
    :cond_3
    if-ne v8, p2, :cond_9

    .line 1225
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mGeminiStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    .line 1226
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mSimGeminiState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1227
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getTelephonyPlmn(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1228
    .local v3, plmn:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getTelephonySpn(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1229
    .local v4, spn:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mGeminiStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    .line 1239
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

    .line 1242
    sget-object v5, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$3;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardStatusViewManager$StatusMode:[I

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1305
    :cond_4
    :goto_2
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->setCarrierText(Ljava/lang/CharSequence;I)V

    .line 1307
    sget-object v5, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mGeminiStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    if-eq v5, v6, :cond_5

    sget-object v5, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    if-ne v5, v6, :cond_6

    .line 1308
    :cond_5
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mUnlockDisabledDueToSimState:Z

    .line 1312
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

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mUnlockDisabledDueToSimState:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->setCarrierHelpText(I)V

    .line 1318
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mUnlockDisabledDueToSimState:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getVisibility()I

    move-result v5

    if-nez v5, :cond_8

    :cond_7
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mUnlockDisabledDueToSimState:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 1320
    :cond_8
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPhoneState:I

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V

    goto/16 :goto_0

    .line 1231
    .end local v3           #plmn:Ljava/lang/CharSequence;
    .end local v4           #spn:Ljava/lang/CharSequence;
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    .line 1232
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1233
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getTelephonyPlmn(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1234
    .restart local v3       #plmn:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getTelephonySpn(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1235
    .restart local v4       #spn:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    goto/16 :goto_1

    .line 1245
    :pswitch_0
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1246
    goto/16 :goto_2

    .line 1249
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, #string@lockscreen_network_locked_message#t

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1251
    const v0, #string@lockscreen_instructions_when_pattern_disabled#t

    .line 1252
    goto/16 :goto_2

    .line 1255
    :pswitch_2
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1256
    goto/16 :goto_2

    .line 1263
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1266
    const v0, #string@lockscreen_missing_sim_instructions_long#t

    .line 1267
    goto/16 :goto_2

    .line 1270
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, #string@lockscreen_permanent_disabled_sim_message_short#t

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1272
    const v0, #string@lockscreen_permanent_disabled_sim_instructions#t

    .line 1273
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_2

    .line 1277
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1280
    const v0, #string@lockscreen_missing_sim_instructions#t

    .line 1281
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_2

    .line 1285
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, #string@lockscreen_sim_locked_message#t

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1288
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_2

    .line 1292
    :pswitch_7
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, #string@lockscreen_sim_puk_locked_message#t

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1295
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1297
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_2

    .line 1242
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

.method private updateCarrierText()V
    .locals 3

    .prologue
    .line 444
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->isAccountMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->showOrHideCarrier()V

    .line 446
    const-string v0, "KeyguardStatusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCarrierText, mCarrierText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCarrierGeminiText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierGeminiText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->inWidgetMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->inWidgetMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->isAccountMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierGeminiView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierGeminiText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    :cond_2
    return-void
.end method

.method private updateEmergencyCallButton(IZ)V
    .locals 9
    .parameter "phoneState"
    .parameter "shown"

    .prologue
    const/4 v5, 0x0

    .line 1139
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 1140
    .local v3, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    .line 1142
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

    .line 1144
    if-eqz v1, :cond_1

    .line 1145
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mKeyguardUtilExt:Lcom/mediatek/common/policy/IKeyguardUtilExt;

    invoke-interface {v6}, Lcom/mediatek/common/policy/IKeyguardUtilExt;->shouldShowEmergencyBtnForVoiceOn()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p2, :cond_3

    .line 1147
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1154
    :cond_1
    const/4 v6, 0x2

    if-ne p1, v6, :cond_4

    .line 1156
    const v4, #string@lockscreen_return_to_call#t

    .line 1157
    .local v4, textId:I
    const v2, #drawable@stat_sys_phone_call#t

    .line 1158
    .local v2, phoneCallIcon:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v6, v2, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1164
    .end local v2           #phoneCallIcon:I
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setText(I)V

    .line 1165
    .end local v4           #textId:I
    :goto_2
    return-void

    .end local v1           #isVoiceCapable:Z
    :cond_2
    move v1, v5

    .line 1140
    goto :goto_0

    .line 1149
    .restart local v1       #isVoiceCapable:Z
    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 1160
    :cond_4
    const v4, #string@lockscreen_emergency_call#t

    .line 1161
    .restart local v4       #textId:I
    const v0, #drawable@ic_emergency#t

    .line 1162
    .local v0, emergencyIcon:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v6, v0, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method

.method private updateEmergencyCallButtonState(I)V
    .locals 4
    .parameter "phoneState"

    .prologue
    .line 746
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 749
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyCallButtonEnabledInScreen:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mUnlockDisabledDueToSimState:Z

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 750
    .local v0, showIfCapable:Z
    :goto_0
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

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyCallButtonEnabledInScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mUnlockDisabledDueToSimState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mUnlockDisabledDueToSimState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateEmergencyCallButton(IZ)V

    .line 755
    .end local v0           #showIfCapable:Z
    :cond_1
    return-void

    .line 749
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateOwnerInfo()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 417
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 418
    .local v1, res:Landroid/content/ContentResolver;
    const-string v2, "lock_screen_owner_info_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 420
    .local v0, ownerInfoEnabled:Z
    :goto_0
    if-eqz v0, :cond_2

    const-string v2, "lock_screen_owner_info"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    .line 422
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 423
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 426
    :cond_0
    return-void

    .end local v0           #ownerInfoEnabled:Z
    :cond_1
    move v0, v3

    .line 418
    goto :goto_0

    .line 420
    .restart local v0       #ownerInfoEnabled:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    move v2, v3

    .line 424
    goto :goto_2
.end method

.method private updateStatus1()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 429
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 430
    new-instance v0, Llibcore/util/MutableInt;

    invoke-direct {v0, v2}, Llibcore/util/MutableInt;-><init>(I)V

    .line 431
    .local v0, icon:Llibcore/util/MutableInt;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getPriorityTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 432
    .local v1, string:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    iget v4, v0, Llibcore/util/MutableInt;->value:I

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 434
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mShowingStatus:Z

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 436
    .end local v0           #icon:Llibcore/util/MutableInt;
    .end local v1           #string:Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 434
    .restart local v0       #icon:Llibcore/util/MutableInt;
    .restart local v1       #string:Ljava/lang/CharSequence;
    :cond_1
    const/4 v2, 0x4

    goto :goto_0
.end method


# virtual methods
.method public getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;
    .locals 3
    .parameter "simState"

    .prologue
    .line 532
    if-nez p1, :cond_0

    .line 533
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimUnknown:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    .line 559
    :goto_0
    return-object v1

    .line 536
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 540
    .local v0, missingAndNotProvisioned:Z
    :goto_1
    if-eqz v0, :cond_2

    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 541
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$3;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 559
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 536
    .end local v0           #missingAndNotProvisioned:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 543
    .restart local v0       #missingAndNotProvisioned:Z
    :pswitch_0
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 545
    :pswitch_1
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->NetworkLocked:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 547
    :pswitch_2
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimNotReady:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 549
    :pswitch_3
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimLocked:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 551
    :pswitch_4
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimPukLocked:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 553
    :pswitch_5
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 555
    :pswitch_6
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimPermDisabled:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 557
    :pswitch_7
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimUnknown:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 541
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
    .line 955
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 956
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->takeEmergencyCallAction()V

    .line 958
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 352
    const-string v0, "KeyguardStatusView"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 354
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 356
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 360
    const-string v0, "KeyguardStatusView"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mDigitalClock:Lcom/android/internal/widget/DigitalClock;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mDigitalClock:Lcom/android/internal/widget/DigitalClock;

    invoke-virtual {v0}, Lcom/android/internal/widget/DigitalClock;->updateTime()V

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 368
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "next_alarm_formatted"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 372
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->resetStatusInfo()V

    .line 376
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, #string@faceunlock_multiple_failures#t

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 379
    :cond_1
    return-void
.end method

.method refreshDate()V
    .locals 4

    .prologue
    .line 519
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 520
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, #string@abbrev_wday_month_day_no_year#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 521
    .local v0, s:Ljava/lang/CharSequence;
    const-string v1, "KeyguardStatusView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshDate, s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    .end local v0           #s:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method resetStatusInfo()V
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    .line 383
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateStatusLines(Z)V

    .line 384
    return-void
.end method

.method public setCarrierHelpText(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierHelpText:Ljava/lang/CharSequence;

    .line 309
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierHelpText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 310
    return-void
.end method

.method setCarrierText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    .line 293
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 294
    return-void
.end method

.method setCarrierText(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "string"
    .parameter "simId"

    .prologue
    .line 1036
    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    .line 1037
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierGeminiText:Ljava/lang/CharSequence;

    .line 1041
    :goto_0
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 1042
    return-void

    .line 1039
    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setHelpMessage(II)V
    .locals 3
    .parameter "textResId"
    .parameter "lockIcon"

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 325
    .local v0, tmp:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mHelpMessageText:Ljava/lang/String;

    .line 326
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mHelpMessageText:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 327
    return-void

    .line 325
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method setInstructionText(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    .line 288
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 289
    return-void
.end method

.method setOwnerInfo(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    .line 298
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 299
    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 5

    .prologue
    .line 963
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 964
    .local v1, pm:Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 965
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 967
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    .line 974
    :goto_0
    return-void

    .line 969
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 970
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1080

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 972
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method updateStatusLines(Z)V
    .locals 3
    .parameter "showStatusLines"

    .prologue
    .line 396
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

    .line 397
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mShowingStatus:Z

    .line 398
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateAlarmInfo()V

    .line 399
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateOwnerInfo()V

    .line 400
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateStatus1()V

    .line 401
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateCarrierText()V

    .line 403
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateCalibrationDataText()V

    .line 404
    return-void
.end method
