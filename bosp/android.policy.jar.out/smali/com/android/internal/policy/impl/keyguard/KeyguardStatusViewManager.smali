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

.field public static final BATTERY_LOW_ICON:I = #drawable@ic_lock_idle_low_battery#t

.field private static final CARRIER_HELP_TEXT:I = 0xc

.field private static final CARRIER_TEXT:I = 0xb

.field public static final CHARGING_ICON:I = #drawable@ic_lock_idle_charging#t

.field private static final DEBUG:Z = false

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

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCarrierHelpText:Ljava/lang/CharSequence;

.field private mCarrierText:Ljava/lang/CharSequence;

.field private mCarrierView:Landroid/widget/TextView;

.field private mContainer:Landroid/view/View;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mDateFormatString:Ljava/lang/String;

.field private mDateView:Landroid/widget/TextView;

.field private mDigitalClock:Lcom/android/internal/widget/DigitalClock;

.field private mEmergencyButtonEnabledBecauseSimLocked:Z

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private final mEmergencyCallButtonEnabledInScreen:Z

.field private mHelpMessageText:Ljava/lang/String;

.field private mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mInstructionText:Ljava/lang/String;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfoText:Ljava/lang/CharSequence;

.field private mOwnerInfoView:Landroid/widget/TextView;

.field protected mPhoneState:I

.field private mPlmn:Ljava/lang/CharSequence;

.field private mPluggedIn:Z

.field private mShowingBatteryInfo:Z

.field private mShowingStatus:Z

.field protected mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSpn:Ljava/lang/CharSequence;

.field private mStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

.field private mStatus1View:Landroid/widget/TextView;

.field private mTransientTextManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$TransientTextManager;

.field private mTransportView:Lcom/android/internal/widget/TransportControlView;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;Z)V
    .locals 9
    .parameter "view"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "callback"
    .parameter "emergencyButtonEnabledInScreen"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 180
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    .line 91
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPluggedIn:Z

    .line 94
    const/16 v5, 0x64

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mBatteryLevel:I

    .line 640
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 182
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    .line 183
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, #string@abbrev_wday_month_day_no_year#t

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mDateFormatString:Ljava/lang/String;

    .line 184
    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 185
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 186
    iput-object p4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 188
    const v5, #id@carrier#t

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    .line 189
    const v5, #id@date#t

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    .line 190
    const v5, #id@status1#t

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    .line 191
    const v5, #id@alarm_status#t

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    .line 192
    const v5, #id@owner_info#t

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    .line 193
    const v5, #id@transport#t

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/TransportControlView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    .line 194
    const v5, #id@emergencyCallButton#t

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    .line 195
    iput-boolean p5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyCallButtonEnabledInScreen:Z

    .line 196
    const v5, #id@time#t

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/DigitalClock;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mDigitalClock:Lcom/android/internal/widget/DigitalClock;

    .line 199
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    if-eqz v5, :cond_0

    .line 200
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mTransportView:Lcom/android/internal/widget/TransportControlView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/TransportControlView;->setVisibility(I)V

    .line 203
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v5, :cond_1

    .line 204
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    const v6, #string@lockscreen_emergency_call#t

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 205
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setFocusable(Z)V

    .line 209
    :cond_1
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$TransientTextManager;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    invoke-direct {v5, p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$TransientTextManager;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Landroid/widget/TextView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mTransientTextManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$TransientTextManager;

    .line 212
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->resetStatusInfo()V

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->refreshDate()V

    .line 216
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateOwnerInfo()V

    .line 219
    const/4 v5, 0x5

    new-array v3, v5, [Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    aput-object v5, v3, v7

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    aput-object v5, v3, v8

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    aput-object v6, v3, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    aput-object v6, v3, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    aput-object v6, v3, v5

    .line 221
    .local v3, scrollableViews:[Landroid/view/View;
    move-object v0, v3

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 222
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_2

    .line 223
    invoke-virtual {v4, v8}, Landroid/view/View;->setSelected(Z)V

    .line 221
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    .end local v4           #v:Landroid/view/View;
    :cond_3
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$1;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 233
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateAlarmInfo()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPluggedIn:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;ILjava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "icon"

    .prologue
    .line 392
    const/4 v0, 0x0

    .line 393
    .local v0, string:Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    if-eqz v1, :cond_3

    .line 395
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPluggedIn:Z

    if-eqz v1, :cond_2

    .line 397
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mBatteryCharged:Z

    if-eqz v1, :cond_1

    const v1, #string@lockscreen_charged#t

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 399
    const v1, #drawable@ic_lock_idle_charging#t

    iput v1, p1, Llibcore/util/MutableInt;->value:I

    .line 408
    :cond_0
    :goto_1
    return-object v0

    .line 397
    :cond_1
    const v1, #string@lockscreen_plugged_in#t

    goto :goto_0

    .line 400
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mBatteryIsLow:Z

    if-eqz v1, :cond_0

    .line 402
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, #string@lockscreen_low_battery#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 403
    const v1, #drawable@ic_lock_idle_low_battery#t

    iput v1, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_1

    .line 406
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 479
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

    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, string:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 415
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    .line 416
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    .line 433
    :cond_0
    :goto_0
    return-object v0

    .line 417
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    if-eqz v1, :cond_4

    .line 419
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPluggedIn:Z

    if-eqz v1, :cond_3

    .line 421
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

    .line 423
    const v1, #drawable@ic_lock_idle_charging#t

    iput v1, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_0

    .line 421
    :cond_2
    const v1, #string@lockscreen_plugged_in#t

    goto :goto_1

    .line 424
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mBatteryIsLow:Z

    if-eqz v1, :cond_0

    .line 426
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, #string@lockscreen_low_battery#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 427
    const v1, #drawable@ic_lock_idle_low_battery#t

    iput v1, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_0

    .line 429
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->inWidgetMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private getText(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "resId"

    .prologue
    .line 266
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
    .line 236
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

.method private static makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "plmn"
    .parameter "spn"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 706
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 707
    .local v0, plmnValid:Z
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 708
    .local v1, spnValid:Z
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 709
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

    .line 715
    .end local p0
    :cond_0
    :goto_2
    return-object p0

    .end local v0           #plmnValid:Z
    .end local v1           #spnValid:Z
    .restart local p0
    :cond_1
    move v0, v3

    .line 706
    goto :goto_0

    .restart local v0       #plmnValid:Z
    :cond_2
    move v1, v3

    .line 707
    goto :goto_1

    .line 710
    .restart local v1       #spnValid:Z
    :cond_3
    if-nez v0, :cond_0

    .line 712
    if-eqz v1, :cond_4

    move-object p0, p1

    .line 713
    goto :goto_2

    .line 715
    :cond_4
    const-string p0, ""

    goto :goto_2
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "simMessage"
    .parameter "emergencyCallMessage"

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    invoke-static {p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 566
    .end local p1
    :cond_0
    return-object p1
.end method

.method private update(ILjava/lang/CharSequence;)V
    .locals 4
    .parameter "what"
    .parameter "string"

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->inWidgetMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    packed-switch p1, :pswitch_data_0

    .line 302
    :goto_0
    :pswitch_0
    return-void

    .line 291
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mTransientTextManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$TransientTextManager;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$TransientTextManager;->post(Ljava/lang/CharSequence;IJ)V

    goto :goto_0

    .line 300
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mShowingStatus:Z

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateStatusLines(Z)V

    goto :goto_0

    .line 286
    nop

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

    .line 352
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 353
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, nextAlarm:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mShowingStatus:Z

    if-eqz v3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 355
    .local v1, showAlarm:Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    const v4, #drawable@ic_lock_idle_alarm#t

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 357
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    .end local v0           #nextAlarm:Ljava/lang/String;
    .end local v1           #showAlarm:Z
    :cond_0
    return-void

    .restart local v0       #nextAlarm:Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 354
    goto :goto_0

    .line 357
    .restart local v1       #showAlarm:Z
    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method

.method private updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 6
    .parameter "simState"

    .prologue
    const v5, #string@lockscreen_missing_sim_message_short#t

    const/4 v4, 0x1

    .line 491
    const/4 v1, 0x0

    .line 492
    .local v1, carrierText:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 493
    .local v0, carrierHelpTextId:I
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    .line 494
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    .line 495
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 496
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$3;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardStatusViewManager$StatusMode:[I

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 552
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->setCarrierText(Ljava/lang/CharSequence;)V

    .line 553
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->setCarrierHelpText(I)V

    .line 554
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPhoneState:I

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V

    .line 555
    return-void

    .line 498
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 499
    goto :goto_0

    .line 502
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, #string@lockscreen_network_locked_message#t

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 505
    const v0, #string@lockscreen_instructions_when_pattern_disabled#t

    .line 506
    goto :goto_0

    .line 513
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 516
    const v0, #string@lockscreen_missing_sim_instructions_long#t

    .line 517
    goto :goto_0

    .line 520
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, #string@lockscreen_permanent_disabled_sim_message_short#t

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 522
    const v0, #string@lockscreen_permanent_disabled_sim_instructions#t

    .line 523
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto :goto_0

    .line 527
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 530
    const v0, #string@lockscreen_missing_sim_instructions#t

    .line 531
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto :goto_0

    .line 535
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, #string@lockscreen_sim_locked_message#t

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 538
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto :goto_0

    .line 542
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, #string@lockscreen_sim_puk_locked_message#t

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 545
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 547
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_0

    .line 496
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
    .line 384
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->inWidgetMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    :cond_0
    return-void
.end method

.method private updateEmergencyCallButtonState(I)V
    .locals 5
    .parameter "phoneState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 630
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v4, :cond_1

    .line 631
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallEnabledWhileSimLocked()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    if-eqz v4, :cond_2

    move v0, v2

    .line 634
    .local v0, enabledBecauseSimLocked:Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyCallButtonEnabledInScreen:Z

    if-nez v4, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    move v1, v2

    .line 635
    .local v1, shown:Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v3, p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 638
    .end local v0           #enabledBecauseSimLocked:Z
    .end local v1           #shown:Z
    :cond_1
    return-void

    :cond_2
    move v0, v3

    .line 631
    goto :goto_0

    .restart local v0       #enabledBecauseSimLocked:Z
    :cond_3
    move v1, v3

    .line 634
    goto :goto_1
.end method

.method private updateOwnerInfo()V
    .locals 4

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 363
    .local v1, res:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 365
    .local v0, ownerInfoEnabled:Z
    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    .line 367
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 368
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 371
    :cond_0
    return-void

    .line 369
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateStatus1()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 374
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 375
    new-instance v0, Llibcore/util/MutableInt;

    invoke-direct {v0, v2}, Llibcore/util/MutableInt;-><init>(I)V

    .line 376
    .local v0, icon:Llibcore/util/MutableInt;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getPriorityTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 377
    .local v1, string:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    iget v4, v0, Llibcore/util/MutableInt;->value:I

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 379
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mShowingStatus:Z

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    .end local v0           #icon:Llibcore/util/MutableInt;
    .end local v1           #string:Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 379
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
    .line 447
    if-nez p1, :cond_0

    .line 448
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    .line 475
    :goto_0
    return-object v1

    .line 451
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

    .line 456
    .local v0, missingAndNotProvisioned:Z
    :goto_1
    if-eqz v0, :cond_2

    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 457
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$3;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 475
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 451
    .end local v0           #missingAndNotProvisioned:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 459
    .restart local v0       #missingAndNotProvisioned:Z
    :pswitch_0
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 461
    :pswitch_1
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimMissingLocked:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 463
    :pswitch_2
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 465
    :pswitch_3
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimLocked:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 467
    :pswitch_4
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimPukLocked:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 469
    :pswitch_5
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 471
    :pswitch_6
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimPermDisabled:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 473
    :pswitch_7
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 457
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
    .line 677
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 679
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->takeEmergencyCallAction()V

    .line 681
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 307
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 308
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 313
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

    .line 316
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mDigitalClock:Lcom/android/internal/widget/DigitalClock;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mDigitalClock:Lcom/android/internal/widget/DigitalClock;

    invoke-virtual {v0}, Lcom/android/internal/widget/DigitalClock;->updateTime()V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->resetStatusInfo()V

    .line 325
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, #string@faceunlock_multiple_failures#t

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 328
    :cond_1
    return-void
.end method

.method refreshDate()V
    .locals 3

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mDateFormatString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    :cond_0
    return-void
.end method

.method resetStatusInfo()V
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    .line 332
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateStatusLines(Z)V

    .line 333
    return-void
.end method

.method public setCarrierHelpText(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierHelpText:Ljava/lang/CharSequence;

    .line 262
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierHelpText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 263
    return-void
.end method

.method setCarrierText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    .line 246
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 247
    return-void
.end method

.method public setHelpMessage(II)V
    .locals 3
    .parameter "textResId"
    .parameter "lockIcon"

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 278
    .local v0, tmp:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mHelpMessageText:Ljava/lang/String;

    .line 279
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mHelpMessageText:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 280
    return-void

    .line 278
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method setInstructionText(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    .line 241
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 242
    return-void
.end method

.method setOwnerInfo(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    .line 251
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 252
    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 5

    .prologue
    .line 686
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 687
    .local v1, pm:Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 688
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 690
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    .line 697
    :goto_0
    return-void

    .line 692
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 693
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1080

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 695
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method updateStatusLines(Z)V
    .locals 0
    .parameter "showStatusLines"

    .prologue
    .line 344
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->mShowingStatus:Z

    .line 345
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateAlarmInfo()V

    .line 346
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateOwnerInfo()V

    .line 347
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateStatus1()V

    .line 348
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateCarrierText()V

    .line 349
    return-void
.end method
