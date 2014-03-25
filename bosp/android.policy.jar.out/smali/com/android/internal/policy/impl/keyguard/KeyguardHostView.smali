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

.field private mCleanupAppWidgetsOnBootCompleted:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mDisabledFeatures:I

.field protected mDismissAction:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;

.field private mEnableFallback:Z

.field protected mFailedAttempts:I

.field private mIsVerifyUnlockOnly:Z

.field private mKeyguardSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNullCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field private mSafeModeEnabled:Z

.field private mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

.field private mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

.field protected mShowSecurityWhenReturn:Z

.field private mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

.field mSwitchPageRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

.field private mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mUserId:I

.field private mUserSetupCompleted:Z

.field private mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

.field private mWidgetCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->MAX_WIDGETS:I

    .line 85
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 88
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCleanupAppWidgetsOnBootCompleted:Z

    .line 101
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    .line 208
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 374
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mWidgetCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    .line 434
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 699
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 741
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mNullCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 1062
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$6;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$6;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCameraWidgetCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

    .line 1092
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$7;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$7;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    .line 1336
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$10;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$10;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    .line 137
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 138
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUserId:I

    .line 139
    new-instance v2, Landroid/appwidget/AppWidgetHost;

    const v3, 0x4b455947

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, p1, v3, v4, v5}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews$OnClickHandler;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 141
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetHost;->setUserId(I)V

    .line 142
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->cleanupAppWidgetIds()V

    .line 144
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 145
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-direct {v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    .line 147
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    .line 149
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 151
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getDisabledFeatures(Landroid/app/admin/DevicePolicyManager;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDisabledFeatures:I

    .line 153
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCameraDisabled:Z

    .line 156
    :cond_0
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isSafeModeEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    .line 157
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user_setup_complete"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUserSetupCompleted:Z

    .line 160
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-eqz v1, :cond_2

    .line 161
    const-string v1, "KeyguardHostView"

    const-string v2, "Keyguard widgets disabled by safe mode"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 164
    const-string v1, "KeyguardHostView"

    const-string v2, "Keyguard widgets disabled by DPM"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 167
    const-string v1, "KeyguardHostView"

    const-string v2, "Keyguard secure camera disabled by DPM"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mConfiguration:Landroid/content/res/Configuration;

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCleanupAppWidgetsOnBootCompleted:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCleanupAppWidgetsOnBootCompleted:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->reportFailedUnlockAttempt()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showBackupSecurityScreen()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->removeTransportFromWidgetPager()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->cleanupAppWidgetIds()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showAppropriateWidgetPage()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->shouldEnableAddWidget()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/appwidget/AppWidgetHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showNextSecurityScreenOrFinish(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsVerifyUnlockOnly:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method private addDefaultStatusWidget(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 1224
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1225
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, #layout@keyguard_status_view#t

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1226
    .local v1, statusWidget:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 1227
    return-void
.end method

.method private addDefaultWidgets()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1121
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1122
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v4, #layout@keyguard_transport_control_view#t

    const/4 v5, 0x1

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1124
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->widgetsDisabledByDpm()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1125
    const v4, #layout@keyguard_add_widget#t

    invoke-virtual {v3, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1126
    .local v0, addWidget:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4, v0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 1127
    const v4, #id@keyguard_add_widget_view#t

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1128
    .local v1, addWidgetButton:Landroid/view/View;
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$8;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$8;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1140
    .end local v0           #addWidget:Landroid/view/View;
    .end local v1           #addWidgetButton:Landroid/view/View;
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->cameraDisabledByDpm()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUserSetupCompleted:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x111

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1142
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCameraWidgetCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    invoke-static {v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->create(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;)Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    move-result-object v2

    .line 1144
    .local v2, cameraWidget:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1145
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;)V

    .line 1149
    .end local v2           #cameraWidget:Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->enableUserSelectorIfNecessary()V

    .line 1150
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->initializeTransportControl()V

    .line 1151
    return-void
.end method

.method private addTransportToWidgetPager()V
    .locals 4

    .prologue
    .line 1168
    const v2, #id@keyguard_transport_control#t

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getWidgetPosition(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 1169
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->removeView(Landroid/view/View;)V

    .line 1171
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 1172
    .local v0, lastWidget:I
    const/4 v1, 0x0

    .line 1173
    .local v1, position:I
    if-ltz v0, :cond_0

    .line 1174
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v0

    .line 1177
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 1178
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->setVisibility(I)V

    .line 1180
    .end local v0           #lastWidget:I
    .end local v1           #position:I
    :cond_1
    return-void

    .line 1174
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
    .line 1047
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 1048
    .local v0, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v0, :cond_0

    .line 1049
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getAppWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1, v0}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    .line 1050
    .local v1, view:Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addWidget(Landroid/appwidget/AppWidgetHostView;I)V

    .line 1051
    const/4 v2, 0x1

    .line 1058
    .end local v1           #view:Landroid/appwidget/AppWidgetHostView;
    :goto_0
    return v2

    .line 1053
    :cond_0
    if-eqz p3, :cond_1

    .line 1054
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

    .line 1055
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2, p1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 1056
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeAppWidget(I)Z

    .line 1058
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private addWidgetsFromSettings()V
    .locals 5

    .prologue
    .line 1230
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->widgetsDisabledByDpm()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1253
    :cond_0
    :goto_0
    return-void

    .line 1234
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getInsertPageIndex()I

    move-result v1

    .line 1237
    .local v1, insertionIndex:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v2

    .line 1239
    .local v2, widgets:[I
    if-nez v2, :cond_2

    .line 1240
    const-string v3, "KeyguardHostView"

    const-string v4, "Problem reading widgets"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1242
    :cond_2
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_0

    .line 1243
    aget v3, v2, v0

    const/4 v4, -0x2

    if-ne v3, v4, :cond_3

    .line 1244
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addDefaultStatusWidget(I)V

    .line 1242
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1249
    :cond_3
    aget v3, v2, v0

    const/4 v4, 0x1

    invoke-direct {p0, v3, v1, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    goto :goto_2
.end method

.method private allocateIdForDefaultAppWidget()I
    .locals 7

    .prologue
    .line 1257
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1258
    .local v3, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/content/ComponentName;

    const v4, #string@widget_default_package_name#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, #string@widget_default_class_name#t

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    .local v1, defaultAppWidget:Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 1266
    .local v0, appWidgetId:I
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v4, v0, v1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    :goto_0
    return v0

    .line 1268
    :catch_0
    move-exception v2

    .line 1269
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

    .line 1270
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 1271
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cameraDisabledByDpm()Z
    .locals 1

    .prologue
    .line 320
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

.method private cleanupAppWidgetIds()V
    .locals 7

    .prologue
    .line 178
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 179
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCleanupAppWidgetsOnBootCompleted:Z

    .line 197
    :cond_0
    return-void

    .line 187
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v2

    .line 188
    .local v2, appWidgetIdsInKeyguardSettings:[I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->getAppWidgetIds()[I

    move-result-object v1

    .line 189
    .local v1, appWidgetIdsBoundToHost:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 190
    aget v0, v1, v3

    .line 191
    .local v0, appWidgetId:I
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->contains([II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 192
    const-string v4, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found a appWidgetId that\'s not being used by keyguard, deleting id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 189
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static contains([II)Z
    .locals 5
    .parameter "array"
    .parameter "target"

    .prologue
    .line 200
    move-object v0, p0

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 201
    .local v3, value:I
    if-ne v3, p1, :cond_0

    .line 202
    const/4 v4, 0x1

    .line 205
    .end local v3           #value:I
    :goto_1
    return v4

    .line 200
    .restart local v3       #value:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    .end local v3           #value:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private enableUserSelectorIfNecessary()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1470
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1540
    :cond_0
    :goto_0
    return-void

    .line 1473
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    const-string v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 1474
    .local v4, um:Landroid/os/UserManager;
    if-nez v4, :cond_2

    .line 1475
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 1476
    .local v3, t:Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1477
    const-string v6, "KeyguardHostView"

    const-string v7, "user service is null."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1482
    .end local v3           #t:Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {v4, v8}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    .line 1483
    .local v5, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v5, :cond_3

    .line 1484
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 1485
    .restart local v3       #t:Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1486
    const-string v6, "KeyguardHostView"

    const-string v7, "list of users is null."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1490
    .end local v3           #t:Ljava/lang/Throwable;
    :cond_3
    const v6, #id@keyguard_user_selector#t

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1491
    .local v2, multiUserView:Landroid/view/View;
    if-nez v2, :cond_4

    .line 1492
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 1493
    .restart local v3       #t:Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1494
    const-string v6, "KeyguardHostView"

    const-string v7, "can\'t find user_selector in layout."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1498
    .end local v3           #t:Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v8, :cond_0

    .line 1499
    instance-of v6, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    if-eqz v6, :cond_5

    move-object v1, v2

    .line 1500
    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    .line 1502
    .local v1, multiUser:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->setVisibility(I)V

    .line 1503
    invoke-virtual {v1, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->addUsers(Ljava/util/Collection;)V

    .line 1504
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$11;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$11;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    .line 1529
    .local v0, callback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->setCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;)V

    goto :goto_0

    .line 1531
    .end local v0           #callback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;
    .end local v1           #multiUser:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;
    :cond_5
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 1532
    .restart local v3       #t:Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1533
    if-nez v2, :cond_6

    .line 1534
    const-string v6, "KeyguardHostView"

    const-string v7, "could not find the user_selector."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1536
    :cond_6
    const-string v6, "KeyguardHostView"

    const-string v7, "user_selector is the wrong type."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private findCameraPage()Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;
    .locals 2

    .prologue
    .line 1430
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1431
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1432
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    .line 1435
    :goto_1
    return-object v1

    .line 1430
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1435
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getAppWidgetHost()Landroid/appwidget/AppWidgetHost;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object v0
.end method

.method private getAppropriateWidgetPage(Z)I
    .locals 6
    .parameter "isMusicPlaying"

    .prologue
    .line 1444
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    if-eqz v3, :cond_2

    .line 1445
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 1446
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1447
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    if-ne v3, v4, :cond_0

    .line 1466
    .end local v0           #childCount:I
    .end local v1           #i:I
    :goto_1
    return v1

    .line 1446
    .restart local v0       #childCount:I
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1452
    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 1455
    .end local v0           #childCount:I
    .end local v1           #i:I
    :cond_2
    if-eqz p1, :cond_4

    .line 1456
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "KeyguardHostView"

    const-string v4, "Music playing, show transport"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageIndex(Landroid/view/View;)I

    move-result v1

    goto :goto_1

    .line 1461
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 1462
    .local v2, rightMost:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1463
    add-int/lit8 v2, v2, -0x1

    .line 1465
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

    .line 1466
    goto :goto_1
.end method

.method private getDisabledFeatures(Landroid/app/admin/DevicePolicyManager;)I
    .locals 3
    .parameter "dpm"

    .prologue
    .line 307
    const/4 v1, 0x0

    .line 308
    .local v1, disabledFeatures:I
    if-eqz p1, :cond_0

    .line 309
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    .line 310
    .local v0, currentUser:I
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 312
    .end local v0           #currentUser:I
    :cond_0
    return v1
.end method

.method private getInsertPageIndex()I
    .locals 4

    .prologue
    .line 1213
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    const v3, #id@keyguard_add_widget#t

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1214
    .local v0, addWidget:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1215
    .local v1, insertionIndex:I
    if-gez v1, :cond_0

    .line 1216
    const/4 v1, 0x0

    .line 1220
    :goto_0
    return v1

    .line 1218
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getLayoutIdFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 2
    .parameter "securityMode"

    .prologue
    .line 1032
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1042
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1033
    :pswitch_0
    const v0, #layout@keyguard_selector_view#t

    goto :goto_0

    .line 1034
    :pswitch_1
    const v0, #layout@keyguard_pattern_view#t

    goto :goto_0

    .line 1035
    :pswitch_2
    const v0, #layout@keyguard_pin_view#t

    goto :goto_0

    .line 1036
    :pswitch_3
    const v0, #layout@keyguard_password_view#t

    goto :goto_0

    .line 1037
    :pswitch_4
    const v0, #layout@keyguard_face_unlock_view#t

    goto :goto_0

    .line 1038
    :pswitch_5
    const v0, #layout@keyguard_account_view#t

    goto :goto_0

    .line 1039
    :pswitch_6
    const v0, #layout@keyguard_sim_pin_view#t

    goto :goto_0

    .line 1040
    :pswitch_7
    const v0, #layout@keyguard_sim_puk_view#t

    goto :goto_0

    .line 1032
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method private getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    .locals 13
    .parameter "securityMode"

    .prologue
    .line 795
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityViewIdForMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v9

    .line 796
    .local v9, securityViewIdForMode:I
    const/4 v12, 0x0

    .line 797
    .local v12, view:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v8

    .line 798
    .local v8, children:I
    const/4 v7, 0x0

    .local v7, child:I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 799
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v9, :cond_1

    .line 800
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #view:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    check-cast v12, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 805
    .restart local v12       #view:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :cond_0
    if-nez v12, :cond_3

    .line 806
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->createBaiduLockScreen(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Landroid/view/View;

    move-result-object v11

    .line 809
    .local v11, v:Landroid/view/View;
    if-nez v11, :cond_2

    const/4 v0, 0x0

    .line 834
    .end local v11           #v:Landroid/view/View;
    :goto_1
    return-object v0

    .line 798
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 810
    .restart local v11       #v:Landroid/view/View;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityViewIdForMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/View;->setId(I)V

    .line 811
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->addView(Landroid/view/View;)V

    .line 812
    invoke-direct {p0, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateSecurityView(Landroid/view/View;)V

    move-object v12, v11

    .line 813
    check-cast v12, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 828
    .end local v11           #v:Landroid/view/View;
    :cond_3
    instance-of v0, v12, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    if-eqz v0, :cond_4

    move-object v10, v12

    .line 829
    check-cast v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    .line 830
    .local v10, selectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
    const v0, #id@keyguard_selector_fade_container#t

    invoke-virtual {v10, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 831
    .local v6, carrierText:Landroid/view/View;
    invoke-virtual {v10, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->setCarrierArea(Landroid/view/View;)V

    .end local v6           #carrierText:Landroid/view/View;
    .end local v10           #selectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
    :cond_4
    move-object v0, v12

    .line 834
    goto :goto_1
.end method

.method private getSecurityViewIdForMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 2
    .parameter "securityMode"

    .prologue
    .line 1007
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1028
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1008
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->getLockMode(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)I

    move-result v0

    goto :goto_0

    .line 1009
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 1010
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 1011
    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    .line 1012
    :pswitch_4
    const/4 v0, 0x6

    goto :goto_0

    .line 1013
    :pswitch_5
    const/4 v0, 0x7

    goto :goto_0

    .line 1014
    :pswitch_6
    const/16 v0, 0x8

    goto :goto_0

    .line 1015
    :pswitch_7
    const/16 v0, 0x9

    goto :goto_0

    .line 1007
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method private getWidgetPosition(I)I
    .locals 3
    .parameter "id"

    .prologue
    .line 246
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 247
    .local v0, children:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 248
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 252
    .end local v1           #i:I
    :goto_1
    return v1

    .line 247
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private initializeTransportControl()V
    .locals 2

    .prologue
    .line 1183
    const v0, #id@keyguard_transport_control#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    .line 1185
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->setVisibility(I)V

    .line 1189
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$TransportCallback;)V

    .line 1210
    :cond_0
    return-void
.end method

.method private isSecure()Z
    .locals 4

    .prologue
    .line 953
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 954
    .local v0, mode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 967
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

    .line 956
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v1

    .line 965
    :goto_0
    return v1

    .line 959
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    goto :goto_0

    .line 963
    :pswitch_3
    const/4 v1, 0x1

    goto :goto_0

    .line 965
    :pswitch_4
    const/4 v1, 0x0

    goto :goto_0

    .line 954
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private numWidgets()I
    .locals 4

    .prologue
    .line 1110
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 1111
    .local v0, childCount:I
    const/4 v2, 0x0

    .line 1112
    .local v2, widgetCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1113
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1114
    add-int/lit8 v2, v2, 0x1

    .line 1112
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1117
    :cond_1
    return v2
.end method

.method private removeTransportFromWidgetPager()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1154
    const v2, #id@keyguard_transport_control#t

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getWidgetPosition(I)I

    move-result v0

    .line 1155
    .local v0, page:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1156
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->removeWidget(Landroid/view/View;)V

    .line 1159
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addView(Landroid/view/View;)V

    .line 1160
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->setVisibility(I)V

    .line 1161
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->setTransportState(I)V

    .line 1162
    const/4 v1, 0x1

    .line 1164
    :cond_0
    return v1
.end method

.method private reportFailedUnlockAttempt()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 537
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    .line 538
    .local v4, monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v10

    add-int/lit8 v1, v10, 0x1

    .line 540
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

    .line 542
    :cond_0
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    .line 543
    .local v3, mode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v10, :cond_3

    move v7, v8

    .line 545
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

    .line 548
    .local v2, failedAttemptsBeforeWipe:I
    const/16 v0, 0xf

    .line 551
    .local v0, failedAttemptWarning:I
    if-lez v2, :cond_4

    sub-int v5, v2, v1

    .line 555
    .local v5, remainingBeforeWipe:I
    :goto_1
    const/4 v6, 0x0

    .line 556
    .local v6, showTimeout:Z
    const/4 v10, 0x5

    if-ge v5, v10, :cond_6

    .line 561
    if-lez v5, :cond_5

    .line 562
    invoke-direct {p0, v1, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showAlmostAtWipeDialog(II)V

    .line 583
    :cond_1
    :goto_2
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->reportFailedUnlockAttempt()V

    .line 584
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt()V

    .line 585
    if-eqz v6, :cond_2

    .line 586
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showTimeoutDialog()V

    .line 588
    :cond_2
    return-void

    .end local v0           #failedAttemptWarning:I
    .end local v2           #failedAttemptsBeforeWipe:I
    .end local v5           #remainingBeforeWipe:I
    .end local v6           #showTimeout:Z
    .end local v7           #usingPattern:Z
    :cond_3
    move v7, v9

    .line 543
    goto :goto_0

    .line 551
    .restart local v0       #failedAttemptWarning:I
    .restart local v2       #failedAttemptsBeforeWipe:I
    .restart local v7       #usingPattern:Z
    :cond_4
    const v5, 0x7fffffff

    goto :goto_1

    .line 565
    .restart local v5       #remainingBeforeWipe:I
    .restart local v6       #showTimeout:Z
    :cond_5
    const-string v8, "KeyguardHostView"

    const-string v9, "Too many unlock attempts; device will be wiped!"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showWipeDialog(I)V

    goto :goto_2

    .line 569
    :cond_6
    rem-int/lit8 v10, v1, 0x5

    if-nez v10, :cond_7

    move v6, v8

    .line 571
    :goto_3
    if-eqz v7, :cond_1

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mEnableFallback:Z

    if-eqz v9, :cond_1

    .line 572
    const/16 v9, 0xf

    if-ne v1, v9, :cond_8

    .line 573
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showAlmostAtAccountLoginDialog()V

    .line 574
    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    move v6, v9

    .line 569
    goto :goto_3

    .line 575
    :cond_8
    const/16 v9, 0x14

    if-lt v1, v9, :cond_1

    .line 576
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, v8}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 577
    sget-object v8, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 579
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private shouldEnableAddWidget()Z
    .locals 2

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->numWidgets()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUserSetupCompleted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldEnableMenuKey()Z
    .locals 6

    .prologue
    .line 1556
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1557
    .local v3, res:Landroid/content/res/Resources;
    const v4, #bool@config_disableMenuKeyInLockScreen#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1559
    .local v0, configDisabled:Z
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v2

    .line 1560
    .local v2, isTestHarness:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 1561
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
    .line 528
    const/16 v2, 0x1e

    .line 529
    .local v2, timeoutInSeconds:I
    const/16 v0, 0xf

    .line 531
    .local v0, count:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

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

    .line 533
    .local v1, message:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    return-void
.end method

.method private showAlmostAtWipeDialog(II)V
    .locals 7
    .parameter "attempts"
    .parameter "remaining"

    .prologue
    .line 516
    const/16 v1, 0x1e

    .line 517
    .local v1, timeoutInSeconds:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

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

    .line 519
    .local v0, message:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method private showAppropriateWidgetPage()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x2

    .line 1416
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->getTransportState()I

    move-result v2

    .line 1417
    .local v2, state:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->isMusicPlaying()Z

    move-result v4

    if-nez v4, :cond_0

    if-ne v2, v5, :cond_2

    :cond_0
    move v0, v3

    .line 1419
    .local v0, isMusicPlaying:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 1420
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->setTransportState(I)V

    .line 1421
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addTransportToWidgetPager()V

    .line 1425
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getAppropriateWidgetPage(Z)I

    move-result v1

    .line 1426
    .local v1, pageToShow:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setCurrentPage(I)V

    .line 1427
    return-void

    .line 1417
    .end local v0           #isMusicPlaying:Z
    .end local v1           #pageToShow:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1422
    .restart local v0       #isMusicPlaying:Z
    :cond_3
    if-ne v2, v5, :cond_1

    .line 1423
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v4, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->setTransportState(I)V

    goto :goto_1
.end method

.method private showBackupSecurityScreen()V
    .locals 3

    .prologue
    .line 613
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardHostView"

    const-string v2, "showBackupSecurity()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getBackupSecurityMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 615
    .local v0, backup:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 616
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "message"

    .prologue
    .line 480
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

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

    .line 485
    .local v0, dialog:Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 486
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 488
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 489
    return-void
.end method

.method private showNextSecurityScreenOrFinish(Z)V
    .locals 9
    .parameter "authenticated"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 631
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

    .line 632
    :cond_0
    const/4 v1, 0x0

    .line 633
    .local v1, finish:Z
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v4, v5, :cond_5

    .line 634
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 636
    .local v2, securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v4, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 637
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v4, v2, :cond_4

    .line 638
    const/4 v1, 0x1

    .line 671
    .end local v2           #securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :goto_0
    if-eqz v1, :cond_9

    .line 673
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v3

    .line 674
    .local v3, view:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onPause()V

    .line 678
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 682
    const/4 v0, 0x0

    .line 683
    .local v0, deferKeyguardDone:Z
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;

    if-eqz v4, :cond_2

    .line 684
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    move-result v0

    .line 685
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;

    .line 687
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v4, :cond_3

    .line 688
    if-eqz v0, :cond_8

    .line 689
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDonePending()V

    .line 697
    .end local v0           #deferKeyguardDone:Z
    .end local v3           #view:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :cond_3
    :goto_1
    return-void

    .line 640
    .restart local v2       #securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    .line 642
    .end local v2           #securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_5
    if-eqz p1, :cond_7

    .line 643
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 664
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

    .line 665
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    goto :goto_0

    .line 649
    :pswitch_0
    const/4 v1, 0x1

    .line 650
    goto :goto_0

    .line 655
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 656
    .restart local v2       #securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v4, :cond_6

    .line 657
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    .line 659
    :cond_6
    const/4 v1, 0x1

    .line 661
    goto :goto_0

    .line 669
    .end local v2           #securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_7
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    goto :goto_0

    .line 691
    .restart local v0       #deferKeyguardDone:Z
    .restart local v3       #view:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :cond_8
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v4, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    goto :goto_1

    .line 695
    .end local v0           #deferKeyguardDone:Z
    .end local v3           #view:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :cond_9
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v4, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->showBouncer(Z)V

    goto :goto_1

    .line 643
    nop

    :pswitch_data_0
    .packed-switch 0x1
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
    .locals 14
    .parameter "securityMode"

    .prologue
    const/16 v11, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 844
    sget-boolean v10, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "KeyguardHostView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "showSecurityScreen("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_0
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v10, :cond_1

    .line 899
    :goto_0
    return-void

    .line 848
    :cond_1
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v6

    .line 849
    .local v6, oldView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v5

    .line 852
    .local v5, newView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, #bool@kg_sim_puk_account_full_screen#t

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 854
    .local v1, fullScreenEnabled:Z
    sget-object v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v10, :cond_2

    sget-object v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v10, :cond_2

    sget-object v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v10, :cond_8

    :cond_2
    move v3, v9

    .line 857
    .local v3, isSimOrAccount:Z
    :goto_1
    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-eqz v3, :cond_9

    if-eqz v1, :cond_9

    move v10, v11

    :goto_2
    invoke-virtual {v12, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setVisibility(I)V

    .line 860
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setVisibility(I)V

    .line 862
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v10, :cond_3

    .line 863
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-nez v1, :cond_a

    :goto_3
    invoke-virtual {v10, v9}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setChallengeInteractive(Z)V

    .line 867
    :cond_3
    if-eqz v6, :cond_4

    .line 868
    invoke-interface {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onPause()V

    .line 869
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mNullCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 871
    :cond_4
    const/4 v8, 0x2

    invoke-interface {v5, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 872
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v5, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 874
    invoke-interface {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v4

    .line 875
    .local v4, needsInput:Z
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v8, :cond_5

    .line 876
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v8, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->setNeedsInput(Z)V

    .line 880
    :cond_5
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v0

    .line 882
    .local v0, childCount:I
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    const v10, #anim@keyguard_security_fade_in#t

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 884
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    const v10, #anim@keyguard_security_fade_out#t

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 886
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityViewIdForMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v7

    .line 887
    .local v7, securityViewIdForMode:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    if-ge v2, v0, :cond_6

    .line 888
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v8, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    if-ne v8, v7, :cond_b

    .line 889
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v8, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->setDisplayedChild(I)V

    .line 894
    :cond_6
    sget-object v8, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v8, :cond_7

    .line 896
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 898
    :cond_7
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_0

    .end local v0           #childCount:I
    .end local v2           #i:I
    .end local v3           #isSimOrAccount:Z
    .end local v4           #needsInput:Z
    .end local v7           #securityViewIdForMode:I
    :cond_8
    move v3, v8

    .line 854
    goto/16 :goto_1

    .restart local v3       #isSimOrAccount:Z
    :cond_9
    move v10, v8

    .line 857
    goto :goto_2

    :cond_a
    move v9, v8

    .line 863
    goto :goto_3

    .line 887
    .restart local v0       #childCount:I
    .restart local v2       #i:I
    .restart local v4       #needsInput:Z
    .restart local v7       #securityViewIdForMode:I
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method private showTimeoutDialog()V
    .locals 7

    .prologue
    .line 492
    const/16 v2, 0x1e

    .line 493
    .local v2, timeoutInSeconds:I
    const/4 v1, 0x0

    .line 495
    .local v1, messageId:I
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 507
    :goto_0
    if-eqz v1, :cond_0

    .line 508
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

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

    .line 511
    .local v0, message:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    .end local v0           #message:Ljava/lang/String;
    :cond_0
    return-void

    .line 497
    :pswitch_0
    const v1, #string@kg_too_many_failed_pattern_attempts_dialog_message#t

    .line 498
    goto :goto_0

    .line 500
    :pswitch_1
    const v1, #string@kg_too_many_failed_pin_attempts_dialog_message#t

    .line 501
    goto :goto_0

    .line 503
    :pswitch_2
    const v1, #string@kg_too_many_failed_password_attempts_dialog_message#t

    goto :goto_0

    .line 495
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
    .line 523
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    const v2, #string@kg_failed_attempts_now_wiping#t

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, message:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method private updateSecurityView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 332
    instance-of v1, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 333
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 334
    .local v0, ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 335
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 336
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->isBouncing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->showBouncer(I)V

    .line 344
    .end local v0           #ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :goto_0
    return-void

    .line 339
    .restart local v0       #ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :cond_0
    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->hideBouncer(I)V

    goto :goto_0

    .line 342
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
    .line 325
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v0

    .line 326
    .local v0, children:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 327
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateSecurityView(Landroid/view/View;)V

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    :cond_0
    return-void
.end method

.method private widgetsDisabledByDpm()Z
    .locals 1

    .prologue
    .line 316
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
    .line 371
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 372
    return-void
.end method

.method public checkAppWidgetConsistency()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1278
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1279
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z

    .line 1334
    :cond_0
    :goto_0
    return-void

    .line 1282
    :cond_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v2

    .line 1283
    .local v2, childCount:I
    const/4 v6, 0x0

    .line 1284
    .local v6, widgetPageExists:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 1285
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v9, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1286
    const/4 v6, 0x1

    .line 1290
    :cond_2
    if-nez v6, :cond_0

    .line 1291
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getInsertPageIndex()I

    move-result v4

    .line 1293
    .local v4, insertPageIndex:I
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->widgetsDisabledByDpm()Z

    move-result v9

    if-nez v9, :cond_6

    move v5, v7

    .line 1294
    .local v5, userAddedWidgetsEnabled:Z
    :goto_2
    const/4 v0, 0x0

    .line 1296
    .local v0, addedDefaultAppWidget:Z
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v9, :cond_3

    .line 1297
    if-eqz v5, :cond_7

    .line 1298
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->allocateIdForDefaultAppWidget()I

    move-result v1

    .line 1299
    .local v1, appWidgetId:I
    if-eqz v1, :cond_3

    .line 1300
    invoke-direct {p0, v1, v4, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    move-result v0

    .line 1324
    .end local v1           #appWidgetId:I
    :cond_3
    :goto_3
    if-nez v0, :cond_4

    .line 1325
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addDefaultStatusWidget(I)V

    .line 1329
    :cond_4
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v7, :cond_0

    if-eqz v5, :cond_0

    .line 1330
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v8, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->onAddView(Landroid/view/View;I)V

    goto :goto_0

    .line 1284
    .end local v0           #addedDefaultAppWidget:Z
    .end local v4           #insertPageIndex:I
    .end local v5           #userAddedWidgetsEnabled:Z
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .restart local v4       #insertPageIndex:I
    :cond_6
    move v5, v8

    .line 1293
    goto :goto_2

    .line 1305
    .restart local v0       #addedDefaultAppWidget:Z
    .restart local v5       #userAddedWidgetsEnabled:Z
    :cond_7
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getFallbackAppWidgetId()I

    move-result v1

    .line 1306
    .restart local v1       #appWidgetId:I
    if-nez v1, :cond_8

    .line 1307
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->allocateIdForDefaultAppWidget()I

    move-result v1

    .line 1308
    if-eqz v1, :cond_8

    .line 1309
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v1}, Lcom/android/internal/widget/LockPatternUtils;->writeFallbackAppWidgetId(I)V

    .line 1312
    :cond_8
    if-eqz v1, :cond_3

    .line 1313
    invoke-direct {p0, v1, v4, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    move-result v0

    .line 1314
    if-nez v0, :cond_3

    .line 1315
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v7, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 1316
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->writeFallbackAppWidgetId(I)V

    goto :goto_3
.end method

.method public cleanUp()V
    .locals 0

    .prologue
    .line 1545
    return-void
.end method

.method public clearAppWidgetToShow()V
    .locals 1

    .prologue
    .line 943
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 944
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 1596
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showNextSecurityScreenOrFinish(Z)V

    .line 1597
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 239
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 240
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDoneDrawing()V

    .line 243
    :cond_0
    return-void
.end method

.method public getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method public getUserActivityTimeout()J
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getUserActivityTimeout()J

    move-result-wide v0

    .line 431
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public goToUserSwitcher()V
    .locals 2

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    const v1, #id@keyguard_multi_user_selector#t

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getWidgetPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setCurrentPage(I)V

    .line 1568
    return-void
.end method

.method public goToWidget(I)V
    .locals 1
    .parameter "appWidgetId"

    .prologue
    .line 1571
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 1572
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1573
    return-void
.end method

.method public handleBackKey()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1585
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v2, :cond_0

    .line 1586
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 1587
    const/4 v0, 0x1

    .line 1589
    :cond_0
    return v0
.end method

.method public handleMenuKey()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1577
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->shouldEnableMenuKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1578
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showNextSecurityScreenOrFinish(Z)V

    .line 1579
    const/4 v0, 0x1

    .line 1581
    :cond_0
    return v0
.end method

.method isMusicPage(I)Z
    .locals 1
    .parameter "pageIndex"

    .prologue
    .line 1439
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
    .line 354
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->onAttachedToWindow()V

    .line 355
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHost;->startListeningAsUser(I)V

    .line 356
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 357
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 361
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->onDetachedFromWindow()V

    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHost;->stopListeningAsUser(I)V

    .line 363
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 364
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 259
    const v2, #id@keyguard_widget_pager_delete_target#t

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 260
    .local v1, deleteDropTarget:Landroid/view/View;
    const v2, #id@app_widget_container#t

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    .line 261
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setVisibility(I)V

    .line 262
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mWidgetCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setCallbacks(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;)V

    .line 263
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setDeleteDropTarget(Landroid/view/View;)V

    .line 264
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    const/high16 v3, 0x3f00

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setMinScale(F)V

    .line 266
    const v2, #id@sliding_layout#t

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .line 267
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v2, :cond_0

    .line 268
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setOnChallengeScrolledListener(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;)V

    .line 270
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setViewStateManager(Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;)V

    .line 271
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 273
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .line 275
    .local v0, challenge:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->setOnBouncerStateChangedListener(Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;)V

    .line 276
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->getBouncerAnimationDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setBouncerAnimationDuration(I)V

    .line 277
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->setPagedView(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;)V

    .line 278
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->setChallengeLayout(Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;)V

    .line 279
    const v2, #id@view_flipper#t

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    .line 280
    const v2, #id@keyguard_selector_view#t

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    .line 281
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->setSecurityViewContainer(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;)V

    .line 283
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSystemUiVisibility()I

    move-result v2

    const/high16 v3, 0x40

    or-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setSystemUiVisibility(I)V

    .line 287
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addDefaultWidgets()V

    .line 289
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addWidgetsFromSettings()V

    .line 290
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->shouldEnableAddWidget()Z

    move-result v2

    if-nez v2, :cond_2

    .line 291
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setAddWidgetEnabled(Z)V

    .line 293
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->checkAppWidgetConsistency()V

    .line 294
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 296
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->showUsabilityHints()V

    .line 298
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 299
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateSecurityViews()V

    .line 300
    return-void

    .line 273
    .end local v0           #challenge:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;
    :cond_3
    const v2, #id@multi_pane_challenge#t

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    move-object v0, v2

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1388
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardHostView"

    const-string v2, "onRestoreInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_0
    instance-of v1, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;

    if-nez v1, :cond_1

    .line 1390
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1398
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 1393
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;

    .line 1394
    .local v0, ss:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1395
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;->transportState:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->setTransportState(I)V

    .line 1396
    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;->appWidgetToShow:I

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 1397
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 1378
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KeyguardHostView"

    const-string v3, "onSaveInstanceState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :cond_0
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1380
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1381
    .local v0, ss:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->getTransportState()I

    move-result v2

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;->transportState:I

    .line 1382
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;->appWidgetToShow:I

    .line 1383
    return-object v0
.end method

.method public onScreenTurnedOff()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 924
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardHostView"

    const-string v2, "screen off, instance %s at %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 931
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->clearAppWidgetToShow()V

    .line 932
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->checkAppWidgetConsistency()V

    .line 933
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 934
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onPause()V

    .line 935
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findCameraPage()Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    move-result-object v0

    .line 936
    .local v0, cameraPage:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;
    if-eqz v0, :cond_1

    .line 937
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->onScreenTurnedOff()V

    .line 939
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->clearFocus()V

    .line 940
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .prologue
    .line 907
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

    .line 908
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 909
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 914
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->requestLayout()V

    .line 916
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    if-eqz v0, :cond_1

    .line 917
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->showUsabilityHints()V

    .line 919
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->requestFocus()Z

    .line 920
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 229
    .local v0, result:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 230
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 231
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 232
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 233
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

    .line 234
    return v0

    :cond_1
    move v0, v1

    .line 232
    goto :goto_0
.end method

.method public onUserActivityTimeoutChanged()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->onUserActivityTimeoutChanged()V

    .line 422
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasWindowFocus"

    .prologue
    .line 1402
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->onWindowFocusChanged(Z)V

    .line 1403
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

    .line 1404
    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mShowSecurityWhenReturn:Z

    if-eqz v1, :cond_2

    .line 1405
    const v1, #id@sliding_layout#t

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .line 1407
    .local v0, slider:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    if-eqz v0, :cond_1

    .line 1408
    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setHandleAlpha(F)V

    .line 1409
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->showChallenge(Z)V

    .line 1411
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mShowSecurityWhenReturn:Z

    .line 1413
    .end local v0           #slider:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    :cond_2
    return-void

    .line 1403
    :cond_3
    const-string v1, "unfocused"

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 782
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsVerifyUnlockOnly:Z

    .line 783
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    const v1, #id@keyguard_status_view#t

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getWidgetPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setCurrentPage(I)V

    .line 784
    return-void
.end method

.method setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .parameter "utils"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 348
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 349
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateSecurityViews()V

    .line 350
    return-void
.end method

.method protected setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 791
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;

    .line 792
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 948
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardHostView"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 950
    return-void
.end method

.method public showAssistant()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1600
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    const-string v2, "search"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v3}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 1603
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 1613
    :goto_0
    return-void

    .line 1605
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    const v2, #anim@keyguard_action_assist_enter#t

    const v3, #anim@keyguard_action_assist_exit#t

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-static {v0, v2, v3, v5, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 1609
    .local v6, opts:Landroid/app/ActivityOptions;
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1611
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
    .line 619
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 621
    .local v0, securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 622
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v0, :cond_0

    .line 623
    const/4 v1, 0x0

    .line 626
    :goto_0
    return v1

    .line 625
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 626
    const/4 v1, 0x1

    goto :goto_0
.end method

.method showPrimarySecurityScreen(Z)V
    .locals 4
    .parameter "turningOff"

    .prologue
    .line 596
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 597
    .local v0, securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showPrimarySecurityScreen(turningOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlternateUnlockEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 602
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 604
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 605
    return-void
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->userActivity()V

    .line 416
    :cond_0
    return-void
.end method

.method public verifyUnlock()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 987
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 988
    .local v0, securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_1

    .line 989
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v1, :cond_0

    .line 990
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    .line 1004
    :cond_0
    :goto_0
    return-void

    .line 992
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_2

    .line 996
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v1, :cond_0

    .line 997
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    goto :goto_0

    .line 1001
    :cond_2
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsVerifyUnlockOnly:Z

    .line 1002
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0
.end method

.method public wakeWhenReadyTq(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 973
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardHostView"

    const-string v1, "onWakeKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 975
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "KeyguardHostView"

    const-string v1, "switching screens to unlock screen because wake key was MENU"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :cond_1
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 980
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_3

    .line 981
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->wakeUp()V

    .line 983
    :cond_3
    return-void

    .line 978
    :cond_4
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "KeyguardHostView"

    const-string v1, "poking wake lock immediately"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
