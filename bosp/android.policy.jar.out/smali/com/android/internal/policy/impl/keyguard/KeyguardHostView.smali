.class public Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$TransportCallback;
    }
.end annotation


# static fields
.field static final APPWIDGET_HOST_ID:I = 0x4b455947

.field public static DEBUG:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static IS_Tablet:Z = false

.field private static final TAG:Ljava/lang/String; = "KeyguardHostView"


# instance fields
.field private final MAX_WIDGETS:I

.field private final mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

.field private mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAppWidgetToShow:I

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCameraDisabled:Z

.field private final mCameraWidgetCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

.field private mCheckAppWidgetConsistencyOnBootCompleted:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mCurrentKeyguardSecurityView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

.field private mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mDisabledFeatures:I

.field protected mDismissAction:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;

.field private mEnableFallback:Z

.field protected mFailedAttempts:I

.field private mIsVerifyUnlockOnly:Z

.field private mKeyaugerLayerVisibility:Z

.field private mKeyguardSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMultiPaneChallengeLayout:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

.field private mNullCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field mPersitentStickyWidgetLoaded:Z

.field private mSafeModeEnabled:Z

.field private mScreenOn:Z

.field private mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

.field private mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

.field protected mShowSecurityWhenReturn:Z

.field private mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

.field private mStatusWidget:Landroid/view/View;

.field mSwitchPageRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

.field private mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

.field private mWidgetCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    .line 112
    const-string v0, "tablet"

    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->IS_Tablet:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->MAX_WIDGETS:I

    .line 86
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 90
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z

    .line 100
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mPersitentStickyWidgetLoaded:Z

    .line 103
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    .line 169
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 350
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mWidgetCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    .line 399
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 726
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 769
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mNullCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 1215
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$6;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCameraWidgetCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

    .line 1245
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$7;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    .line 1498
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$10;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$10;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    .line 138
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 139
    new-instance v1, Landroid/appwidget/AppWidgetHost;

    const v2, 0x4b455947

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, p1, v2, v3, v4}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews$OnClickHandler;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 141
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 142
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-direct {v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    .line 144
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    .line 146
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 148
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    .line 149
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getDisabledFeatures(Landroid/app/admin/DevicePolicyManager;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDisabledFeatures:I

    .line 150
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCameraDisabled:Z

    .line 153
    :cond_0
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isSafeModeEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    .line 155
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-eqz v1, :cond_1

    .line 156
    const-string v1, "KeyguardHostView"

    const-string v2, "Keyguard widgets disabled by safe mode"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 159
    const-string v1, "KeyguardHostView"

    const-string v2, "Keyguard widgets disabled by DPM"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 162
    const-string v1, "KeyguardHostView"

    const-string v2, "Keyguard secure camera disabled by DPM"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mConfiguration:Landroid/content/res/Configuration;

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->numWidgets()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showBackupSecurityScreen()V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyaugerLayerVisibility:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->dimss()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setAddWidgetEnabled(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->removeTransportFromWidgetPager()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showNextSecurityScreenOrFinish(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsVerifyUnlockOnly:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->reportFailedUnlockAttempt()V

    return-void
.end method

.method private addDefaultStatusWidget(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 1386
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1387
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, #layout@keyguard_status_view#t

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mStatusWidget:Landroid/view/View;

    .line 1388
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mStatusWidget:Landroid/view/View;

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 1389
    return-void
.end method

.method private addDefaultWidgets()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1283
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1284
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v4, #layout@keyguard_transport_control_view#t

    const/4 v5, 0x1

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1286
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->widgetsDisabledByDpm()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1287
    const v4, #layout@keyguard_add_widget#t

    invoke-virtual {v3, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1288
    .local v0, addWidget:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4, v0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 1289
    const v4, #id@keyguard_add_widget_view#t

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1290
    .local v1, addWidgetButton:Landroid/view/View;
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$8;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$8;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1302
    .end local v0           #addWidget:Landroid/view/View;
    .end local v1           #addWidgetButton:Landroid/view/View;
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->cameraDisabledByDpm()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x111

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1304
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCameraWidgetCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    invoke-static {v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->create(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;)Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    move-result-object v2

    .line 1306
    .local v2, cameraWidget:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1307
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;)V

    .line 1311
    .end local v2           #cameraWidget:Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->enableUserSelectorIfNecessary()V

    .line 1312
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->initializeTransportControl()V

    .line 1313
    return-void
.end method

.method private addTransportToWidgetPager()V
    .locals 4

    .prologue
    .line 1330
    const v2, #id@keyguard_transport_control#t

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getWidgetPosition(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 1331
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->removeView(Landroid/view/View;)V

    .line 1333
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 1334
    .local v0, lastWidget:I
    const/4 v1, 0x0

    .line 1335
    .local v1, position:I
    if-ltz v0, :cond_0

    .line 1336
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v0

    .line 1339
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 1340
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->setVisibility(I)V

    .line 1342
    .end local v0           #lastWidget:I
    .end local v1           #position:I
    :cond_1
    return-void

    .line 1336
    .restart local v0       #lastWidget:I
    .restart local v1       #position:I
    :cond_2
    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method private addWidget(IIZ)Z
    .locals 5
    .parameter "appId"
    .parameter "pageIndex"
    .parameter "updateDbIfFailed"

    .prologue
    .line 1200
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 1201
    .local v0, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v0, :cond_0

    .line 1202
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getAppWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1, v0}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    .line 1203
    .local v1, view:Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addWidget(Landroid/appwidget/AppWidgetHostView;I)V

    .line 1204
    const/4 v2, 0x1

    .line 1211
    .end local v1           #view:Landroid/appwidget/AppWidgetHostView;
    :goto_0
    return v2

    .line 1206
    :cond_0
    if-eqz p3, :cond_1

    .line 1207
    const-string v2, "KeyguardHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppWidgetInfo for app widget id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was null, deleting"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2, p1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 1209
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeAppWidget(I)Z

    .line 1211
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private addWidgetsFromSettings()V
    .locals 5

    .prologue
    .line 1392
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->widgetsDisabledByDpm()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1415
    :cond_0
    :goto_0
    return-void

    .line 1396
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getInsertPageIndex()I

    move-result v1

    .line 1399
    .local v1, insertionIndex:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v2

    .line 1401
    .local v2, widgets:[I
    if-nez v2, :cond_2

    .line 1402
    const-string v3, "KeyguardHostView"

    const-string v4, "Problem reading widgets"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1404
    :cond_2
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_0

    .line 1405
    aget v3, v2, v0

    const/4 v4, -0x2

    if-ne v3, v4, :cond_3

    .line 1406
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addDefaultStatusWidget(I)V

    .line 1404
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1411
    :cond_3
    aget v3, v2, v0

    const/4 v4, 0x1

    invoke-direct {p0, v3, v1, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    goto :goto_2
.end method

.method private allocateIdForDefaultAppWidget()I
    .locals 7

    .prologue
    .line 1419
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1420
    .local v3, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/content/ComponentName;

    const v4, #string@widget_default_package_name#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, #string@widget_default_class_name#t

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    .local v1, defaultAppWidget:Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 1428
    .local v0, appWidgetId:I
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v4, v0, v1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1435
    :goto_0
    return v0

    .line 1430
    :catch_0
    move-exception v2

    .line 1431
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when trying to bind default AppWidget: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 1433
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cameraDisabledByDpm()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCameraDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dimss()V
    .locals 2

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 1825
    return-void
.end method

.method private enableUserSelectorIfNecessary()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1632
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1702
    :cond_0
    :goto_0
    return-void

    .line 1635
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const-string v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 1636
    .local v4, um:Landroid/os/UserManager;
    if-nez v4, :cond_2

    .line 1637
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 1638
    .local v3, t:Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1639
    const-string v6, "KeyguardHostView"

    const-string v7, "user service is null."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1644
    .end local v3           #t:Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {v4, v8}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    .line 1645
    .local v5, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v5, :cond_3

    .line 1646
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 1647
    .restart local v3       #t:Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1648
    const-string v6, "KeyguardHostView"

    const-string v7, "list of users is null."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1652
    .end local v3           #t:Ljava/lang/Throwable;
    :cond_3
    const v6, #id@keyguard_user_selector#t

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1653
    .local v2, multiUserView:Landroid/view/View;
    if-nez v2, :cond_4

    .line 1654
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 1655
    .restart local v3       #t:Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1656
    const-string v6, "KeyguardHostView"

    const-string v7, "can\'t find user_selector in layout."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1660
    .end local v3           #t:Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v8, :cond_0

    .line 1661
    instance-of v6, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    if-eqz v6, :cond_5

    move-object v1, v2

    .line 1662
    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    .line 1664
    .local v1, multiUser:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->setVisibility(I)V

    .line 1665
    invoke-virtual {v1, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->addUsers(Ljava/util/Collection;)V

    .line 1666
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$11;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$11;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    .line 1691
    .local v0, callback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->setCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;)V

    goto :goto_0

    .line 1693
    .end local v0           #callback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;
    .end local v1           #multiUser:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;
    :cond_5
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 1694
    .restart local v3       #t:Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1695
    if-nez v2, :cond_6

    .line 1696
    const-string v6, "KeyguardHostView"

    const-string v7, "could not find the user_selector."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1698
    :cond_6
    const-string v6, "KeyguardHostView"

    const-string v7, "user_selector is the wrong type."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private findCameraPage()Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;
    .locals 2

    .prologue
    .line 1592
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1593
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1594
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    .line 1597
    :goto_1
    return-object v1

    .line 1592
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1597
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getAppWidgetHost()Landroid/appwidget/AppWidgetHost;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object v0
.end method

.method private getAppropriateWidgetPage(Z)I
    .locals 6
    .parameter "isMusicPlaying"

    .prologue
    .line 1606
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    if-eqz v3, :cond_2

    .line 1607
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 1608
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1609
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    if-ne v3, v4, :cond_0

    .line 1628
    .end local v0           #childCount:I
    .end local v1           #i:I
    :goto_1
    return v1

    .line 1608
    .restart local v0       #childCount:I
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1614
    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 1617
    .end local v0           #childCount:I
    .end local v1           #i:I
    :cond_2
    if-eqz p1, :cond_4

    .line 1618
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "KeyguardHostView"

    const-string v4, "Music playing, show transport"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageIndex(Landroid/view/View;)I

    move-result v1

    goto :goto_1

    .line 1623
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 1624
    .local v2, rightMost:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1625
    add-int/lit8 v2, v2, -0x1

    .line 1627
    :cond_5
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string v3, "KeyguardHostView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Show right-most page "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v1, v2

    .line 1628
    goto :goto_1
.end method

.method private getDisabledFeatures(Landroid/app/admin/DevicePolicyManager;)I
    .locals 3
    .parameter "dpm"

    .prologue
    .line 283
    const/4 v1, 0x0

    .line 284
    .local v1, disabledFeatures:I
    if-eqz p1, :cond_0

    .line 285
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    .line 286
    .local v0, currentUser:I
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 288
    .end local v0           #currentUser:I
    :cond_0
    return v1
.end method

.method private getInsertPageIndex()I
    .locals 4

    .prologue
    .line 1375
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    const v3, #id@keyguard_add_widget#t

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1376
    .local v0, addWidget:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1377
    .local v1, insertionIndex:I
    if-gez v1, :cond_0

    .line 1378
    const/4 v1, 0x0

    .line 1382
    :goto_0
    return v1

    .line 1380
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getLayoutIdFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 4
    .parameter "securityMode"

    .prologue
    const v1, 0x2070013

    const/4 v0, 0x0

    .line 1175
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1195
    :goto_0
    :pswitch_0
    return v0

    .line 1177
    :pswitch_1
    const v0, #layout@keyguard_pattern_view#t

    goto :goto_0

    .line 1178
    :pswitch_2
    const v0, #layout@keyguard_pin_view#t

    goto :goto_0

    .line 1179
    :pswitch_3
    const v0, #layout@keyguard_password_view#t

    goto :goto_0

    .line 1180
    :pswitch_4
    const v0, #layout@keyguard_face_unlock_view#t

    goto :goto_0

    .line 1181
    :pswitch_5
    const v0, #layout@keyguard_account_view#t

    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 1185
    goto :goto_0

    :pswitch_7
    move v0, v1

    .line 1186
    goto :goto_0

    .line 1190
    :pswitch_8
    const v0, 0x207001c

    goto :goto_0

    .line 1193
    :pswitch_9
    const v0, #layout@zz_keyguard_voice_unlock_view#t

    goto :goto_0

    .line 1175
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private getLockMode()I
    .locals 5

    .prologue
    .line 1169
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen.lockmode_type"

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 1171
    .local v0, mode:I
    return v0
.end method

.method private getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    .locals 17
    .parameter "securityMode"

    .prologue
    .line 844
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityViewIdForMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v13

    .line 845
    .local v13, securityViewIdForMode:I
    const/16 v16, 0x0

    .line 846
    .local v16, view:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v9

    .line 847
    .local v9, children:I
    const/4 v8, 0x0

    .local v8, child:I
    :goto_0
    if-ge v8, v9, :cond_0

    .line 848
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v1, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, v13, :cond_6

    .line 849
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v1, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .end local v16           #view:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    check-cast v16, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 854
    .restart local v16       #view:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :cond_0
    if-nez v16, :cond_1

    .line 855
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->createBaiduLockScreen(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Landroid/view/View;

    move-result-object v15

    .line 858
    .local v15, v:Landroid/view/View;
    if-eqz v15, :cond_1

    .line 859
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityViewIdForMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v1

    invoke-virtual {v15, v1}, Landroid/view/View;->setId(I)V

    .line 860
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v1, v15}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->addView(Landroid/view/View;)V

    .line 861
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateSecurityView(Landroid/view/View;)V

    move-object/from16 v16, v15

    .line 862
    check-cast v16, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 866
    .end local v15           #v:Landroid/view/View;
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getLayoutIdFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v11

    .line 868
    .local v11, layoutId:I
    if-nez v16, :cond_8

    if-eqz v11, :cond_8

    .line 869
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 870
    .local v10, inflater:Landroid/view/LayoutInflater;
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inflating id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    const/4 v2, 0x0

    invoke-virtual {v10, v11, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .restart local v15       #v:Landroid/view/View;
    move-object/from16 v16, v15

    .line 872
    check-cast v16, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 874
    move-object/from16 v0, v16

    instance-of v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    if-eqz v1, :cond_3

    move-object/from16 v12, v16

    .line 875
    check-cast v12, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    .line 876
    .local v12, pinPukView:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPuk1:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_7

    .line 877
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->setSimId(I)V

    .line 882
    .end local v12           #pinPukView:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v1, v15}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->addView(Landroid/view/View;)V

    .line 883
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateSecurityView(Landroid/view/View;)V

    .line 897
    .end local v10           #inflater:Landroid/view/LayoutInflater;
    .end local v15           #v:Landroid/view/View;
    :cond_4
    :goto_2
    move-object/from16 v0, v16

    instance-of v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    if-eqz v1, :cond_5

    move-object/from16 v14, v16

    .line 898
    check-cast v14, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    .line 899
    .local v14, selectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
    const v1, #id@keyguard_selector_fade_container#t

    invoke-virtual {v14, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 900
    .local v7, carrierText:Landroid/view/View;
    invoke-virtual {v14, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->setCarrierArea(Landroid/view/View;)V

    .line 903
    .end local v7           #carrierText:Landroid/view/View;
    .end local v14           #selectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
    :cond_5
    return-object v16

    .line 847
    .end local v11           #layoutId:I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 878
    .restart local v10       #inflater:Landroid/view/LayoutInflater;
    .restart local v11       #layoutId:I
    .restart local v12       #pinPukView:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;
    .restart local v15       #v:Landroid/view/View;
    :cond_7
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPuk2:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 879
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->setSimId(I)V

    goto :goto_1

    .line 886
    .end local v10           #inflater:Landroid/view/LayoutInflater;
    .end local v12           #pinPukView:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;
    .end local v15           #v:Landroid/view/View;
    :cond_8
    if-eqz v16, :cond_4

    move-object/from16 v0, v16

    instance-of v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p1

    if-eq v0, v1, :cond_4

    .line 888
    const-string v1, "KeyguardHostView"

    const-string v2, "getSecurityView, here, we will refresh the layout"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v12, v16

    .line 889
    check-cast v12, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    .line 890
    .restart local v12       #pinPukView:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPuk1:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_9

    .line 891
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->setSimId(I)V

    goto :goto_2

    .line 892
    :cond_9
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPuk2:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_4

    .line 893
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->setSimId(I)V

    goto :goto_2
.end method

.method private getSecurityViewIdForMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 3
    .parameter "securityMode"

    .prologue
    const v0, 0x210003f

    .line 1145
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1165
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 1146
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->getLockMode(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)I

    move-result v0

    goto :goto_0

    .line 1147
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1148
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 1149
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 1150
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 1151
    :pswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 1160
    :pswitch_7
    const v0, 0x210006e

    goto :goto_0

    .line 1163
    :pswitch_8
    const v0, #id@zz_keyguard_voice_unlock_view#t

    goto :goto_0

    .line 1145
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method private getWidgetPosition(I)I
    .locals 4
    .parameter "id"

    .prologue
    const/4 v2, -0x1

    .line 207
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-eqz v3, :cond_2

    .line 208
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 209
    .local v0, children:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 210
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 216
    .end local v0           #children:I
    .end local v1           #i:I
    :goto_1
    return v1

    .line 209
    .restart local v0       #children:I
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 214
    goto :goto_1

    .end local v0           #children:I
    .end local v1           #i:I
    :cond_2
    move v1, v2

    .line 216
    goto :goto_1
.end method

.method private initializeTransportControl()V
    .locals 2

    .prologue
    .line 1345
    const v0, #id@keyguard_transport_control#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    .line 1347
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->setVisibility(I)V

    .line 1351
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    if-eqz v0, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$TransportCallback;)V

    .line 1372
    :cond_0
    return-void
.end method

.method private isLockScreenPriorSimPin(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .locals 5
    .parameter "mode"

    .prologue
    .line 623
    const-string v2, "KeyguardHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLockScreenPriorSimPin enter mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const/4 v0, 0x0

    .line 625
    .local v0, bPinRequired:Z
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPuk1:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPuk2:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v2, :cond_1

    .line 626
    :cond_0
    const/4 v0, 0x1

    .line 628
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v1

    .line 629
    .local v1, oldView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    const-string v2, "KeyguardHostView"

    const-string v3, "isLockScreenPriorSimPin return"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    if-eqz v0, :cond_2

    instance-of v2, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSecure()Z
    .locals 4

    .prologue
    .line 1091
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 1092
    .local v0, mode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1105
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown security mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1094
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v1

    .line 1103
    :goto_0
    return v1

    .line 1097
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    goto :goto_0

    .line 1101
    :pswitch_3
    const/4 v1, 0x1

    goto :goto_0

    .line 1103
    :pswitch_4
    const/4 v1, 0x0

    goto :goto_0

    .line 1092
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private numWidgets()I
    .locals 4

    .prologue
    .line 1263
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 1264
    .local v0, childCount:I
    const/4 v2, 0x0

    .line 1265
    .local v2, widgetCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1266
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1267
    add-int/lit8 v2, v2, 0x1

    .line 1265
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1270
    :cond_1
    return v2
.end method

.method private removeTransportFromWidgetPager()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1316
    const v2, #id@keyguard_transport_control#t

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getWidgetPosition(I)I

    move-result v0

    .line 1317
    .local v0, page:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1318
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->removeWidget(Landroid/view/View;)V

    .line 1321
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addView(Landroid/view/View;)V

    .line 1322
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->setVisibility(I)V

    .line 1323
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->setTransportState(I)V

    .line 1324
    const/4 v1, 0x1

    .line 1326
    :cond_0
    return v1
.end method

.method private reportFailedUnlockAttempt()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 529
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    .line 530
    .local v4, monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v10

    add-int/lit8 v1, v10, 0x1

    .line 532
    .local v1, failedAttempts:I
    sget-boolean v10, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "KeyguardHostView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "reportFailedPatternAttempt: #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_0
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    .line 535
    .local v3, mode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v10, :cond_3

    move v7, v8

    .line 537
    .local v7, usingPattern:Z
    :goto_0
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v2

    .line 540
    .local v2, failedAttemptsBeforeWipe:I
    const/16 v0, 0xf

    .line 543
    .local v0, failedAttemptWarning:I
    if-lez v2, :cond_4

    sub-int v5, v2, v1

    .line 547
    .local v5, remainingBeforeWipe:I
    :goto_1
    const/4 v6, 0x0

    .line 548
    .local v6, showTimeout:Z
    const/4 v10, 0x5

    if-ge v5, v10, :cond_6

    .line 553
    if-lez v5, :cond_5

    .line 554
    invoke-direct {p0, v1, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showAlmostAtWipeDialog(II)V

    .line 575
    :cond_1
    :goto_2
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->reportFailedUnlockAttempt()V

    .line 576
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt()V

    .line 577
    if-eqz v6, :cond_2

    .line 578
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showTimeoutDialog()V

    .line 580
    :cond_2
    return-void

    .end local v0           #failedAttemptWarning:I
    .end local v2           #failedAttemptsBeforeWipe:I
    .end local v5           #remainingBeforeWipe:I
    .end local v6           #showTimeout:Z
    .end local v7           #usingPattern:Z
    :cond_3
    move v7, v9

    .line 535
    goto :goto_0

    .line 543
    .restart local v0       #failedAttemptWarning:I
    .restart local v2       #failedAttemptsBeforeWipe:I
    .restart local v7       #usingPattern:Z
    :cond_4
    const v5, 0x7fffffff

    goto :goto_1

    .line 557
    .restart local v5       #remainingBeforeWipe:I
    .restart local v6       #showTimeout:Z
    :cond_5
    const-string v8, "KeyguardHostView"

    const-string v9, "Too many unlock attempts; device will be wiped!"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showWipeDialog(I)V

    goto :goto_2

    .line 561
    :cond_6
    rem-int/lit8 v10, v1, 0x5

    if-nez v10, :cond_7

    move v6, v8

    .line 563
    :goto_3
    if-eqz v7, :cond_1

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mEnableFallback:Z

    if-eqz v9, :cond_1

    .line 564
    const/16 v9, 0xf

    if-ne v1, v9, :cond_8

    .line 565
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showAlmostAtAccountLoginDialog()V

    .line 566
    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    move v6, v9

    .line 561
    goto :goto_3

    .line 567
    :cond_8
    const/16 v9, 0x14

    if-lt v1, v9, :cond_1

    .line 568
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, v8}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 569
    sget-object v8, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 571
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private requestClipChildren(Z)V
    .locals 0
    .parameter "request"

    .prologue
    .line 1809
    return-void
.end method

.method private setAddWidgetEnabled(Z)V
    .locals 4
    .parameter "clickable"

    .prologue
    .line 1275
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    const v3, #id@keyguard_add_widget#t

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1276
    .local v0, addWidget:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1277
    const v2, #id@keyguard_add_widget_view#t

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1278
    .local v1, addWidgetButton:Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1280
    .end local v1           #addWidgetButton:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private shouldEnableMenuKey()Z
    .locals 6

    .prologue
    .line 1729
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1730
    .local v3, res:Landroid/content/res/Resources;
    const v4, #bool@config_disableMenuKeyInLockScreen#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1732
    .local v0, configDisabled:Z
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v2

    .line 1733
    .local v2, isTestHarness:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 1734
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

.method private showAlmostAtAccountLoginDialog()V
    .locals 8

    .prologue
    .line 520
    const/16 v2, 0x1e

    .line 521
    .local v2, timeoutInSeconds:I
    const/16 v0, 0xf

    .line 523
    .local v0, count:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const v4, #string@kg_failed_attempts_almost_at_login#t

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 525
    .local v1, message:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method private showAlmostAtWipeDialog(II)V
    .locals 7
    .parameter "attempts"
    .parameter "remaining"

    .prologue
    .line 508
    const/16 v1, 0x1e

    .line 509
    .local v1, timeoutInSeconds:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const v3, #string@kg_failed_attempts_almost_at_wipe#t

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, message:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method private showAppropriateWidgetPage()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x2

    .line 1578
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->getTransportState()I

    move-result v2

    .line 1579
    .local v2, state:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->isMusicPlaying()Z

    move-result v4

    if-nez v4, :cond_0

    if-ne v2, v5, :cond_2

    :cond_0
    move v0, v3

    .line 1581
    .local v0, isMusicPlaying:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 1582
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->setTransportState(I)V

    .line 1583
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addTransportToWidgetPager()V

    .line 1587
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getAppropriateWidgetPage(Z)I

    move-result v1

    .line 1588
    .local v1, pageToShow:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setCurrentPage(I)V

    .line 1589
    return-void

    .line 1579
    .end local v0           #isMusicPlaying:Z
    .end local v1           #pageToShow:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1584
    .restart local v0       #isMusicPlaying:Z
    :cond_3
    if-ne v2, v5, :cond_1

    .line 1585
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v4, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->setTransportState(I)V

    goto :goto_1
.end method

.method private showBackupSecurityScreen()V
    .locals 3

    .prologue
    .line 639
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardHostView"

    const-string v2, "showBackupSecurity()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getBackupSecurityMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 641
    .local v0, backup:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 642
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "message"

    .prologue
    .line 472
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, #string@ok#t

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 477
    .local v0, dialog:Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 478
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 480
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 481
    return-void
.end method

.method private showNextSecurityScreenOrFinish(Z)V
    .locals 9
    .parameter "authenticated"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 657
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showNextSecurityScreenOrFinish("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_0
    const/4 v1, 0x0

    .line 659
    .local v1, finish:Z
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v4, v5, :cond_5

    .line 660
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 662
    .local v2, securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v4, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 663
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v4, v2, :cond_4

    .line 664
    const/4 v1, 0x1

    .line 698
    .end local v2           #securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :goto_0
    if-eqz v1, :cond_3

    .line 700
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v3

    .line 701
    .local v3, view:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onPause()V

    .line 705
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 709
    const/4 v0, 0x0

    .line 710
    .local v0, deferKeyguardDone:Z
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;

    if-eqz v4, :cond_2

    .line 711
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    move-result v0

    .line 712
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;

    .line 714
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v4, :cond_3

    .line 715
    if-eqz v0, :cond_8

    .line 716
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDonePending()V

    .line 724
    .end local v0           #deferKeyguardDone:Z
    .end local v3           #view:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :cond_3
    :goto_1
    return-void

    .line 666
    .restart local v2       #securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    .line 668
    .end local v2           #securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_5
    if-eqz p1, :cond_7

    .line 669
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 691
    const-string v4, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad security screen "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fail safe"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    goto :goto_0

    .line 676
    :pswitch_0
    const/4 v1, 0x1

    .line 677
    goto :goto_0

    .line 682
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 683
    .restart local v2       #securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v4, :cond_6

    .line 684
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    .line 686
    :cond_6
    const/4 v1, 0x1

    .line 688
    goto :goto_0

    .line 696
    .end local v2           #securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_7
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    goto :goto_0

    .line 718
    .restart local v0       #deferKeyguardDone:Z
    .restart local v3       #view:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :cond_8
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v4, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    goto :goto_1

    .line 669
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 13
    .parameter "securityMode"

    .prologue
    .line 913
    sget-boolean v10, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "KeyguardHostView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "showSecurityScreen("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_0
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v10, :cond_2

    .line 1021
    :cond_1
    :goto_0
    return-void

    .line 917
    :cond_2
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v8

    .line 918
    .local v8, oldView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    sget-boolean v10, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v10, :cond_3

    const-string v10, "KeyguardHostView"

    const-string v11, "showSecurityScreen get oldView"

    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v7

    .line 920
    .local v7, newView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    sget-boolean v10, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v10, :cond_4

    const-string v10, "KeyguardHostView"

    const-string v11, "showSecurityScreen get newView"

    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, #bool@kg_sim_puk_account_full_screen#t

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 925
    .local v2, fullScreenEnabled:Z
    sget-object v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v10, :cond_12

    const/4 v4, 0x1

    .line 927
    .local v4, isSimOrAccount:Z
    :goto_1
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 928
    if-nez v4, :cond_5

    sget-object v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPuk1:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v10, :cond_5

    sget-object v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPuk2:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v10, :cond_13

    :cond_5
    const/4 v4, 0x1

    .line 935
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v1

    .line 936
    .local v1, dmLocked:Z
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-eqz v4, :cond_6

    if-nez v2, :cond_7

    :cond_6
    if-nez v1, :cond_7

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v10

    if-eqz v10, :cond_17

    :cond_7
    const/16 v10, 0x8

    :goto_3
    invoke-virtual {v11, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setVisibility(I)V

    .line 941
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setVisibility(I)V

    .line 944
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v10, :cond_9

    .line 946
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v2, :cond_8

    if-eqz v1, :cond_18

    :cond_8
    const/4 v10, 0x1

    :goto_4
    invoke-virtual {v11, v10}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setChallengeInteractive(Z)V

    .line 949
    :cond_9
    sget-boolean v10, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v10, :cond_a

    const-string v10, "KeyguardHostView"

    const-string v11, "showSecurityScreen pause oldView before"

    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    :cond_a
    if-eqz v8, :cond_b

    .line 953
    invoke-interface {v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onPause()V

    .line 954
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mNullCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v8, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 957
    instance-of v10, v8, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    if-eqz v10, :cond_19

    instance-of v10, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    if-nez v10, :cond_19

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v10, :cond_19

    .line 958
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyaugerLayerVisibility:Z

    .line 959
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateKeyguardLayerVisibility()V

    .line 961
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->requestClipChildren(Z)V

    .line 969
    :cond_b
    :goto_5
    sget-boolean v10, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v10, :cond_c

    const-string v10, "KeyguardHostView"

    const-string v11, "showSecurityScreen pause oldView finish"

    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    :cond_c
    const/4 v10, 0x2

    invoke-interface {v7, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 972
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v7, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 975
    instance-of v10, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    if-eqz v10, :cond_1a

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v10, :cond_1a

    .line 976
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyaugerLayerVisibility:Z

    .line 977
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateKeyguardLayerVisibility()V

    move-object v5, v7

    .line 978
    check-cast v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    .line 979
    .local v5, keyguardSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getGlowPadView()Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setTouchRecepientForKeyguardLayer(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    .line 982
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->requestClipChildren(Z)V

    .line 990
    .end local v5           #keyguardSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
    :cond_d
    :goto_6
    sget-boolean v10, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v10, :cond_e

    const-string v10, "KeyguardHostView"

    const-string v11, "showSecurityScreen update keyguard layer finish"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_e
    invoke-interface {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v6

    .line 993
    .local v6, needsInput:Z
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v10, :cond_f

    .line 994
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v10, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->setNeedsInput(Z)V

    .line 998
    :cond_f
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v0

    .line 1000
    .local v0, childCount:I
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const v12, #anim@keyguard_security_fade_in#t

    invoke-static {v11, v12}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1002
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const v12, #anim@keyguard_security_fade_out#t

    invoke-static {v11, v12}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1004
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityViewIdForMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v9

    .line 1005
    .local v9, securityViewIdForMode:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_7
    if-ge v3, v0, :cond_10

    .line 1006
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v10, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    if-ne v10, v9, :cond_1b

    .line 1007
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v10, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->setDisplayedChild(I)V

    .line 1012
    :cond_10
    sget-object v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v10, :cond_11

    .line 1014
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 1016
    :cond_11
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 1018
    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentKeyguardSecurityView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 1020
    sget-boolean v10, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string v10, "KeyguardHostView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "showSecurityScreen("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") finish"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 925
    .end local v0           #childCount:I
    .end local v1           #dmLocked:Z
    .end local v3           #i:I
    .end local v4           #isSimOrAccount:Z
    .end local v6           #needsInput:Z
    .end local v9           #securityViewIdForMode:I
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 928
    .restart local v4       #isSimOrAccount:Z
    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 931
    :cond_14
    if-nez v4, :cond_15

    sget-object v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPuk1:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v10, :cond_16

    :cond_15
    const/4 v4, 0x1

    :goto_8
    goto/16 :goto_2

    :cond_16
    const/4 v4, 0x0

    goto :goto_8

    .line 936
    .restart local v1       #dmLocked:Z
    :cond_17
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 946
    :cond_18
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 962
    :cond_19
    instance-of v10, v8, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    if-eqz v10, :cond_b

    instance-of v10, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    if-nez v10, :cond_b

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    if-eqz v10, :cond_b

    .line 963
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyaugerLayerVisibility:Z

    .line 964
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateKeyguardLayerVisibility()V

    goto/16 :goto_5

    .line 983
    :cond_1a
    instance-of v10, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    if-eqz v10, :cond_d

    .line 984
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyaugerLayerVisibility:Z

    .line 985
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateKeyguardLayerVisibility()V

    move-object v5, v7

    .line 986
    check-cast v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    .line 987
    .restart local v5       #keyguardSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getGlowPadView()Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->setTouchRecepientForKeyguardLayer(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    goto/16 :goto_6

    .line 1005
    .end local v5           #keyguardSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
    .restart local v0       #childCount:I
    .restart local v3       #i:I
    .restart local v6       #needsInput:Z
    .restart local v9       #securityViewIdForMode:I
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7
.end method

.method private showTimeoutDialog()V
    .locals 7

    .prologue
    .line 484
    const/16 v2, 0x1e

    .line 485
    .local v2, timeoutInSeconds:I
    const/4 v1, 0x0

    .line 487
    .local v1, messageId:I
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 499
    :goto_0
    if-eqz v1, :cond_0

    .line 500
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, message:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    .end local v0           #message:Ljava/lang/String;
    :cond_0
    return-void

    .line 489
    :pswitch_0
    const v1, #string@kg_too_many_failed_pattern_attempts_dialog_message#t

    .line 490
    goto :goto_0

    .line 492
    :pswitch_1
    const v1, #string@kg_too_many_failed_pin_attempts_dialog_message#t

    .line 493
    goto :goto_0

    .line 495
    :pswitch_2
    const v1, #string@kg_too_many_failed_password_attempts_dialog_message#t

    goto :goto_0

    .line 487
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showWipeDialog(I)V
    .locals 6
    .parameter "attempts"

    .prologue
    .line 515
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const v2, #string@kg_failed_attempts_now_wiping#t

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, message:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method private updateSecurityView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 308
    instance-of v1, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 309
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 310
    .local v0, ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 311
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 312
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->isBouncing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    .end local v0           #ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :goto_0
    return-void

    .line 315
    .restart local v0       #ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->hideBouncer(I)V

    goto :goto_0

    .line 318
    .end local v0           #ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :cond_1
    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a KeyguardSecurityView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateSecurityViews()V
    .locals 3

    .prologue
    .line 301
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v0

    .line 302
    .local v0, children:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 303
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateSecurityView(Landroid/view/View;)V

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    :cond_0
    return-void
.end method

.method private widgetsDisabledByDpm()Z
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method addWidget(Landroid/appwidget/AppWidgetHostView;I)V
    .locals 1
    .parameter "view"
    .parameter "pageIndex"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 348
    return-void
.end method

.method public checkAppWidgetConsistency()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1440
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1441
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z

    .line 1496
    :cond_0
    :goto_0
    return-void

    .line 1444
    :cond_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v2

    .line 1445
    .local v2, childCount:I
    const/4 v6, 0x0

    .line 1446
    .local v6, widgetPageExists:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 1447
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v9, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1448
    const/4 v6, 0x1

    .line 1452
    :cond_2
    if-nez v6, :cond_0

    .line 1453
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getInsertPageIndex()I

    move-result v4

    .line 1455
    .local v4, insertPageIndex:I
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->widgetsDisabledByDpm()Z

    move-result v9

    if-nez v9, :cond_6

    move v5, v7

    .line 1456
    .local v5, userAddedWidgetsEnabled:Z
    :goto_2
    const/4 v0, 0x0

    .line 1458
    .local v0, addedDefaultAppWidget:Z
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v9, :cond_3

    .line 1459
    if-eqz v5, :cond_7

    .line 1460
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->allocateIdForDefaultAppWidget()I

    move-result v1

    .line 1461
    .local v1, appWidgetId:I
    if-eqz v1, :cond_3

    .line 1462
    invoke-direct {p0, v1, v4, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    move-result v0

    .line 1486
    .end local v1           #appWidgetId:I
    :cond_3
    :goto_3
    if-nez v0, :cond_4

    .line 1487
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addDefaultStatusWidget(I)V

    .line 1491
    :cond_4
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v7, :cond_0

    if-eqz v5, :cond_0

    .line 1492
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v8, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->onAddView(Landroid/view/View;I)V

    goto :goto_0

    .line 1446
    .end local v0           #addedDefaultAppWidget:Z
    .end local v4           #insertPageIndex:I
    .end local v5           #userAddedWidgetsEnabled:Z
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .restart local v4       #insertPageIndex:I
    :cond_6
    move v5, v8

    .line 1455
    goto :goto_2

    .line 1467
    .restart local v0       #addedDefaultAppWidget:Z
    .restart local v5       #userAddedWidgetsEnabled:Z
    :cond_7
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getFallbackAppWidgetId()I

    move-result v1

    .line 1468
    .restart local v1       #appWidgetId:I
    if-nez v1, :cond_8

    .line 1469
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->allocateIdForDefaultAppWidget()I

    move-result v1

    .line 1470
    if-eqz v1, :cond_8

    .line 1471
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v1}, Lcom/android/internal/widget/LockPatternUtils;->writeFallbackAppWidgetId(I)V

    .line 1474
    :cond_8
    if-eqz v1, :cond_3

    .line 1475
    invoke-direct {p0, v1, v4, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    move-result v0

    .line 1476
    if-nez v0, :cond_3

    .line 1477
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v7, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 1478
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->writeFallbackAppWidgetId(I)V

    goto :goto_3
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentKeyguardSecurityView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    if-eqz v0, :cond_0

    .line 1709
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentKeyguardSecurityView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onPause()V

    .line 1710
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentKeyguardSecurityView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->reset()V

    .line 1711
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentKeyguardSecurityView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mNullCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 1713
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_1

    .line 1714
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setCallbacks(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;)V

    .line 1718
    :cond_1
    return-void
.end method

.method public clearAppWidgetToShow()V
    .locals 1

    .prologue
    .line 1081
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 1082
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 1769
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showNextSecurityScreenOrFinish(Z)V

    .line 1770
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 200
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mScreenOn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDoneDrawing()V

    .line 203
    :cond_0
    return-void
.end method

.method public getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method public getUserActivityTimeout()J
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getUserActivityTimeout()J

    move-result-wide v0

    .line 396
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public goToUserSwitcher()V
    .locals 2

    .prologue
    .line 1740
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    const v1, #id@keyguard_multi_user_selector#t

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getWidgetPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setCurrentPage(I)V

    .line 1741
    return-void
.end method

.method public goToWidget(I)V
    .locals 1
    .parameter "appWidgetId"

    .prologue
    .line 1744
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 1745
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1746
    return-void
.end method

.method public handleBackKey()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1758
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v2, :cond_0

    .line 1759
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 1760
    const/4 v0, 0x1

    .line 1762
    :cond_0
    return v0
.end method

.method public handleMenuKey()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1750
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->shouldEnableMenuKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1751
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showNextSecurityScreenOrFinish(Z)V

    .line 1752
    const/4 v0, 0x1

    .line 1754
    :cond_0
    return v0
.end method

.method protected hasOnDismissAction()Z
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAlarmUnlockScreen()Z
    .locals 2

    .prologue
    .line 1815
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->AlarmBoot:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_0

    .line 1816
    const/4 v0, 0x1

    .line 1818
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMusicPage(I)Z
    .locals 1
    .parameter "pageIndex"

    .prologue
    .line 1601
    if-ltz p1, :cond_0

    const v0, #id@keyguard_transport_control#t

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getWidgetPosition(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 330
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->onAttachedToWindow()V

    .line 331
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->startListening()V

    .line 332
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 333
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 337
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->onDetachedFromWindow()V

    .line 338
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    .line 339
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 340
    return-void
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 225
    const v1, #id@app_widget_container#t

    .line 226
    .local v1, containerId:I
    const v3, #id@keyguard_widget_pager_delete_target#t

    .line 227
    .local v3, deleteId:I
    const v5, #id@multi_pane_challenge#t

    .line 228
    .local v5, paneId:I
    const v4, #id@view_flipper#t

    .line 229
    .local v4, fliperId:I
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 230
    const v1, 0x210006b

    .line 231
    const v3, 0x210006a

    .line 232
    const v5, 0x2100069

    .line 233
    const v4, 0x210006d

    .line 236
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 237
    .local v2, deleteDropTarget:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    .line 238
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v6, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setVisibility(I)V

    .line 239
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mWidgetCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setCallbacks(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;)V

    .line 240
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v6, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setDeleteDropTarget(Landroid/view/View;)V

    .line 241
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    const/high16 v7, 0x3f00

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setMinScale(F)V

    .line 243
    const v6, #id@sliding_layout#t

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .line 244
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    .line 245
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v6, :cond_1

    .line 246
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setOnChallengeScrolledListener(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;)V

    .line 248
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setViewStateManager(Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;)V

    .line 249
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 253
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v6, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .line 255
    .local v0, challenge:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;
    :goto_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-interface {v0, v6}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->setOnBouncerStateChangedListener(Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;)V

    .line 256
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->getBouncerAnimationDuration()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setBouncerAnimationDuration(I)V

    .line 257
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->setPagedView(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;)V

    .line 258
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v6, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->setChallengeLayout(Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;)V

    .line 259
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    .line 260
    const v6, #id@keyguard_selector_view#t

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    .line 261
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->setSecurityViewContainer(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;)V

    .line 263
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    instance-of v6, v6, Landroid/app/Activity;

    if-nez v6, :cond_2

    .line 264
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSystemUiVisibility()I

    move-result v6

    const/high16 v7, 0x40

    or-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setSystemUiVisibility(I)V

    .line 274
    :cond_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 276
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->showUsabilityHints()V

    .line 278
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 279
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateSecurityViews()V

    .line 280
    return-void

    .line 253
    .end local v0           #challenge:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1550
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardHostView"

    const-string v2, "onRestoreInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    :cond_0
    instance-of v1, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;

    if-nez v1, :cond_1

    .line 1552
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1560
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 1555
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;

    .line 1556
    .local v0, ss:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1557
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;->transportState:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->setTransportState(I)V

    .line 1558
    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;->appWidgetToShow:I

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 1559
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 1540
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KeyguardHostView"

    const-string v3, "onSaveInstanceState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    :cond_0
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1542
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1543
    .local v0, ss:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->getTransportState()I

    move-result v2

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;->transportState:I

    .line 1544
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;->appWidgetToShow:I

    .line 1545
    return-object v0
.end method

.method public onScreenTurnedOff()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1052
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardHostView"

    const-string v2, "screen off, instance %s at %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_0
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mScreenOn:Z

    .line 1059
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 1062
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->clearAppWidgetToShow()V

    .line 1063
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->checkAppWidgetConsistency()V

    .line 1064
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 1066
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findCameraPage()Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    move-result-object v0

    .line 1067
    .local v0, cameraPage:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;
    if-eqz v0, :cond_1

    .line 1068
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->onScreenTurnedOff()V

    .line 1070
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v1, :cond_2

    .line 1071
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->hideBouncer()V

    .line 1074
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1077
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onPause()V

    .line 1078
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1030
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardHostView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screen on, instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mScreenOn:Z

    .line 1034
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 1035
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 1038
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1044
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->requestLayout()V

    .line 1045
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    if-eqz v0, :cond_1

    .line 1046
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->showUsabilityHints()V

    .line 1048
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 187
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 188
    .local v0, result:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 189
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 190
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 191
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 192
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 193
    return v0

    :cond_1
    move v0, v1

    .line 191
    goto :goto_0
.end method

.method public onUserActivityTimeoutChanged()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->onUserActivityTimeoutChanged()V

    .line 387
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasWindowFocus"

    .prologue
    .line 1564
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->onWindowFocusChanged(Z)V

    .line 1565
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v2, "KeyguardHostView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_3

    const-string v1, "focused"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mShowSecurityWhenReturn:Z

    if-eqz v1, :cond_2

    .line 1567
    const v1, #id@sliding_layout#t

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .line 1569
    .local v0, slider:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    if-eqz v0, :cond_1

    .line 1570
    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setHandleAlpha(F)V

    .line 1571
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->showChallenge(Z)V

    .line 1573
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mShowSecurityWhenReturn:Z

    .line 1575
    .end local v0           #slider:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    :cond_2
    return-void

    .line 1565
    :cond_3
    const-string v1, "unfocused"

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 826
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mScreenOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 827
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsVerifyUnlockOnly:Z

    .line 829
    return-void

    :cond_0
    move v0, v1

    .line 826
    goto :goto_0
.end method

.method setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .parameter "utils"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 324
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 325
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateSecurityViews()V

    .line 326
    return-void
.end method

.method protected setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 836
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;

    .line 837
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 1086
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardHostView"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 1088
    return-void
.end method

.method public showAssistant()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1773
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const-string v2, "search"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v3}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 1776
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 1786
    :goto_0
    return-void

    .line 1778
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const v2, #anim@keyguard_action_assist_enter#t

    const v3, #anim@keyguard_action_assist_exit#t

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-static {v0, v2, v3, v5, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 1782
    .local v6, opts:Landroid/app/ActivityOptions;
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1784
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    const/4 v2, 0x0

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;->launchActivityWithAnimation(Landroid/content/Intent;ZLandroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showNextSecurityScreenIfPresent()Z
    .locals 2

    .prologue
    .line 645
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 647
    .local v0, securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 648
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v0, :cond_0

    .line 649
    const/4 v1, 0x0

    .line 652
    :goto_0
    return v1

    .line 651
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 652
    const/4 v1, 0x1

    goto :goto_0
.end method

.method showPrimarySecurityScreen(Z)V
    .locals 5
    .parameter "turningOff"

    .prologue
    .line 588
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KeyguardHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showPrimarySecurityScreen(turningOff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") enter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    .line 590
    .local v1, securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "KeyguardHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showPrimarySecurityScreen query securityMode finish securityMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlternateUnlockEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 593
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 594
    .local v0, alternateMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "KeyguardHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showPrimarySecurityScreen alternateMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :cond_2
    if-nez p1, :cond_7

    .line 596
    move-object v1, v0

    .line 605
    .end local v0           #alternateMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_3
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "KeyguardHostView"

    const-string v3, "showPrimarySecurityScreen getAlternateFor finish"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->isLockScreenPriorSimPin(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 609
    const-string v2, "KeyguardHostView"

    const-string v3, "showPrimarySecurityScreen,  lockscreen is prior to simPIN"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 613
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 614
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "KeyguardHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showPrimarySecurityScreen(turningOff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") exit"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :cond_6
    :goto_0
    return-void

    .line 598
    .restart local v0       #alternateMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_7
    if-eq v1, v0, :cond_3

    goto :goto_0
.end method

.method updateKeyguardLayerVisibility()V
    .locals 2

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v0, :cond_1

    .line 1798
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyaugerLayerVisibility:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->updateKeyguardLayerVisibility(Z)V

    .line 1802
    :cond_0
    :goto_0
    return-void

    .line 1799
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    if-eqz v0, :cond_0

    .line 1800
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyaugerLayerVisibility:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->updateKeyguardLayerVisibility(Z)V

    goto :goto_0
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->userActivity()V

    .line 381
    :cond_0
    return-void
.end method

.method public verifyUnlock()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1125
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 1126
    .local v0, securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_1

    .line 1127
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v1, :cond_0

    .line 1128
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    .line 1142
    :cond_0
    :goto_0
    return-void

    .line 1130
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_2

    .line 1134
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v1, :cond_0

    .line 1135
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    goto :goto_0

    .line 1139
    :cond_2
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsVerifyUnlockOnly:Z

    .line 1140
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0
.end method

.method public wakeWhenReadyTq(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 1111
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardHostView"

    const-string v1, "onWakeKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1113
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "KeyguardHostView"

    const-string v1, "switching screens to unlock screen because wake key was MENU"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :cond_1
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 1118
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_3

    .line 1119
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->wakeUp()V

    .line 1121
    :cond_3
    return-void

    .line 1116
    :cond_4
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "KeyguardHostView"

    const-string v1, "poking wake lock immediately"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
