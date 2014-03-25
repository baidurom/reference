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

.field private mCleanupAppWidgetsOnBootCompleted:Z

.field private mCurrentKeyguardSecurityView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

.field private mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mDisabledFeatures:I

.field protected mDismissAction:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;

.field private mDualClock:Lcom/mediatek/common/policy/IDualClock;

.field private mEnableFallback:Z

.field protected mFailedAttempts:I

.field private mIsVerifyUnlockOnly:Z

.field private mKeyaugerLayerVisibility:Z

.field private mKeyguardSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

.field private mLaunchingCamera:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mLockScreenExt:Lcom/mediatek/common/policy/ILockScreenExt;

.field private mMultiPaneChallengeLayout:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

.field private mNullCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field private mSafeModeEnabled:Z

.field private mScreenOn:Z

.field private mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

.field private mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

.field private mShowNextViewAfterSimLock:Z

.field protected mShowSecurityWhenReturn:Z

.field private mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

.field private mStatusWidget:Landroid/view/View;

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
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    .line 121
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
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    iput-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockScreenExt:Lcom/mediatek/common/policy/ILockScreenExt;

    .line 77
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->MAX_WIDGETS:I

    .line 87
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 91
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z

    .line 92
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCleanupAppWidgetsOnBootCompleted:Z

    .line 102
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    .line 115
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLaunchingCamera:Z

    .line 118
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mShowNextViewAfterSimLock:Z

    .line 234
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 434
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mWidgetCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    .line 494
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 859
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 902
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mNullCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 1345
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$6;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$6;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCameraWidgetCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

    .line 1378
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$7;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$7;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    .line 1624
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$10;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$10;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    .line 151
    :try_start_0
    const-class v2, Lcom/mediatek/common/policy/ILockScreenExt;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/policy/ILockScreenExt;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockScreenExt:Lcom/mediatek/common/policy/ILockScreenExt;

    .line 152
    const-string v2, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lock screen instance created in keyguard "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockScreenExt:Lcom/mediatek/common/policy/ILockScreenExt;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 158
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUserId:I

    .line 159
    new-instance v2, Landroid/appwidget/AppWidgetHost;

    const v5, 0x4b455947

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v2, p1, v5, v6, v7}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews$OnClickHandler;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 161
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUserId:I

    invoke-virtual {v2, v5}, Landroid/appwidget/AppWidgetHost;->setUserId(I)V

    .line 162
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->cleanupAppWidgetIds()V

    .line 164
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 165
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-direct {v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    .line 167
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    .line 169
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 171
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getDisabledFeatures(Landroid/app/admin/DevicePolicyManager;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDisabledFeatures:I

    .line 173
    invoke-virtual {v0, v8}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCameraDisabled:Z

    .line 176
    :cond_0
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isSafeModeEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    .line 177
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "user_setup_complete"

    const/4 v6, -0x2

    invoke-static {v2, v5, v4, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUserSetupCompleted:Z

    .line 180
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-eqz v2, :cond_1

    .line 181
    const-string v2, "KeyguardHostView"

    const-string v3, "Keyguard widgets disabled by safe mode"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_1
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 184
    const-string v2, "KeyguardHostView"

    const-string v3, "Keyguard widgets disabled by DPM"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_2
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 187
    const-string v2, "KeyguardHostView"

    const-string v3, "Keyguard secure camera disabled by DPM"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->initDualClock()V

    .line 192
    return-void

    .line 153
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :catch_0
    move-exception v1

    .line 154
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "KeyguardHostView"

    const-string v5, "exception: "

    invoke-static {v2, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_4
    move v2, v4

    .line 177
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCleanupAppWidgetsOnBootCompleted:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCleanupAppWidgetsOnBootCompleted:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->reportFailedUnlockAttempt()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showBackupSecurityScreen()V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyaugerLayerVisibility:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLaunchingCamera:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->cleanupAppWidgetIds()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->removeTransportFromWidgetPager()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showAppropriateWidgetPage()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->shouldEnableAddWidget()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/appwidget/AppWidgetHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showNextSecurityScreenOrFinish(ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsVerifyUnlockOnly:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method private addDefaultStatusWidget(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 1510
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1512
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDualClock:Lcom/mediatek/common/policy/IDualClock;

    invoke-interface {v2}, Lcom/mediatek/common/policy/IDualClock;->getStatusViewLayout()I

    move-result v1

    .line 1513
    .local v1, keyguardStatusView:I
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mStatusWidget:Landroid/view/View;

    .line 1514
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mStatusWidget:Landroid/view/View;

    invoke-virtual {v2, v3, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 1515
    return-void
.end method

.method private addDefaultWidgets()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1407
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1408
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v4, #layout@keyguard_transport_control_view#t

    const/4 v5, 0x1

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1410
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->widgetsDisabledByDpm()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1411
    const v4, #layout@keyguard_add_widget#t

    invoke-virtual {v3, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1412
    .local v0, addWidget:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4, v0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 1413
    const v4, #id@keyguard_add_widget_view#t

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1414
    .local v1, addWidgetButton:Landroid/view/View;
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$8;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$8;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1426
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

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x111

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1428
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCameraWidgetCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    invoke-static {v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->create(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;)Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    move-result-object v2

    .line 1430
    .local v2, cameraWidget:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1431
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;)V

    .line 1435
    .end local v2           #cameraWidget:Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->enableUserSelectorIfNecessary()V

    .line 1436
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->initializeTransportControl()V

    .line 1437
    return-void
.end method

.method private addTransportToWidgetPager()V
    .locals 4

    .prologue
    .line 1454
    const v2, #id@keyguard_transport_control#t

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getWidgetPosition(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 1455
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->removeView(Landroid/view/View;)V

    .line 1457
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 1458
    .local v0, lastWidget:I
    const/4 v1, 0x0

    .line 1459
    .local v1, position:I
    if-ltz v0, :cond_0

    .line 1460
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v0

    .line 1463
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 1464
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->setVisibility(I)V

    .line 1466
    .end local v0           #lastWidget:I
    .end local v1           #position:I
    :cond_1
    return-void

    .line 1460
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
    .line 1330
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 1331
    .local v0, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v0, :cond_0

    .line 1332
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getAppWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1, v0}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    .line 1333
    .local v1, view:Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addWidget(Landroid/appwidget/AppWidgetHostView;I)V

    .line 1334
    const/4 v2, 0x1

    .line 1341
    .end local v1           #view:Landroid/appwidget/AppWidgetHostView;
    :goto_0
    return v2

    .line 1336
    :cond_0
    if-eqz p3, :cond_1

    .line 1337
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

    .line 1338
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2, p1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 1339
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeAppWidget(I)Z

    .line 1341
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private addWidgetsFromSettings()V
    .locals 5

    .prologue
    .line 1518
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->widgetsDisabledByDpm()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1541
    :cond_0
    :goto_0
    return-void

    .line 1522
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getInsertPageIndex()I

    move-result v1

    .line 1525
    .local v1, insertionIndex:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v2

    .line 1527
    .local v2, widgets:[I
    if-nez v2, :cond_2

    .line 1528
    const-string v3, "KeyguardHostView"

    const-string v4, "Problem reading widgets"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1530
    :cond_2
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_0

    .line 1531
    aget v3, v2, v0

    const/4 v4, -0x2

    if-ne v3, v4, :cond_3

    .line 1532
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addDefaultStatusWidget(I)V

    .line 1530
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1537
    :cond_3
    aget v3, v2, v0

    const/4 v4, 0x1

    invoke-direct {p0, v3, v1, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    goto :goto_2
.end method

.method private allocateIdForDefaultAppWidget()I
    .locals 7

    .prologue
    .line 1545
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1546
    .local v3, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/content/ComponentName;

    const v4, #string@widget_default_package_name#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, #string@widget_default_class_name#t

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    .local v1, defaultAppWidget:Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 1554
    .local v0, appWidgetId:I
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v4, v0, v1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1561
    :goto_0
    return v0

    .line 1556
    :catch_0
    move-exception v2

    .line 1557
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

    .line 1558
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 1559
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cameraDisabledByDpm()Z
    .locals 1

    .prologue
    .line 375
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
    .line 197
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 198
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCleanupAppWidgetsOnBootCompleted:Z

    .line 216
    :cond_0
    return-void

    .line 206
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v2

    .line 207
    .local v2, appWidgetIdsInKeyguardSettings:[I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->getAppWidgetIds()[I

    move-result-object v1

    .line 208
    .local v1, appWidgetIdsBoundToHost:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 209
    aget v0, v1, v3

    .line 210
    .local v0, appWidgetId:I
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->contains([II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 211
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

    .line 213
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 208
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static contains([II)Z
    .locals 5
    .parameter "array"
    .parameter "target"

    .prologue
    .line 219
    move-object v0, p0

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 220
    .local v3, value:I
    if-ne v3, p1, :cond_0

    .line 221
    const/4 v4, 0x1

    .line 224
    .end local v3           #value:I
    :goto_1
    return v4

    .line 219
    .restart local v3       #value:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    .end local v3           #value:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private enableUserSelectorIfNecessary()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1765
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1835
    :cond_0
    :goto_0
    return-void

    .line 1768
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const-string v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 1769
    .local v4, um:Landroid/os/UserManager;
    if-nez v4, :cond_2

    .line 1770
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 1771
    .local v3, t:Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1772
    const-string v6, "KeyguardHostView"

    const-string v7, "user service is null."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1777
    .end local v3           #t:Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {v4, v8}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    .line 1778
    .local v5, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v5, :cond_3

    .line 1779
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 1780
    .restart local v3       #t:Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1781
    const-string v6, "KeyguardHostView"

    const-string v7, "list of users is null."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1785
    .end local v3           #t:Ljava/lang/Throwable;
    :cond_3
    const v6, #id@keyguard_user_selector#t

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1786
    .local v2, multiUserView:Landroid/view/View;
    if-nez v2, :cond_4

    .line 1787
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 1788
    .restart local v3       #t:Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1789
    const-string v6, "KeyguardHostView"

    const-string v7, "can\'t find user_selector in layout."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1793
    .end local v3           #t:Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v8, :cond_0

    .line 1794
    instance-of v6, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    if-eqz v6, :cond_5

    move-object v1, v2

    .line 1795
    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    .line 1797
    .local v1, multiUser:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->setVisibility(I)V

    .line 1798
    invoke-virtual {v1, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->addUsers(Ljava/util/Collection;)V

    .line 1799
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$11;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$11;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    .line 1824
    .local v0, callback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->setCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;)V

    goto :goto_0

    .line 1826
    .end local v0           #callback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;
    .end local v1           #multiUser:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;
    :cond_5
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 1827
    .restart local v3       #t:Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1828
    if-nez v2, :cond_6

    .line 1829
    const-string v6, "KeyguardHostView"

    const-string v7, "could not find the user_selector."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1831
    :cond_6
    const-string v6, "KeyguardHostView"

    const-string v7, "user_selector is the wrong type."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private findCameraPage()Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;
    .locals 2

    .prologue
    .line 1725
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1726
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1727
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    .line 1730
    :goto_1
    return-object v1

    .line 1725
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1730
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getAppWidgetHost()Landroid/appwidget/AppWidgetHost;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object v0
.end method

.method private getAppropriateWidgetPage(Z)I
    .locals 6
    .parameter "isMusicPlaying"

    .prologue
    .line 1739
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    if-eqz v3, :cond_2

    .line 1740
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 1741
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1742
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    if-ne v3, v4, :cond_0

    .line 1761
    .end local v0           #childCount:I
    .end local v1           #i:I
    :goto_1
    return v1

    .line 1741
    .restart local v0       #childCount:I
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1747
    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 1750
    .end local v0           #childCount:I
    .end local v1           #i:I
    :cond_2
    if-eqz p1, :cond_4

    .line 1751
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "KeyguardHostView"

    const-string v4, "Music playing, show transport"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageIndex(Landroid/view/View;)I

    move-result v1

    goto :goto_1

    .line 1756
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 1757
    .local v2, rightMost:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1758
    add-int/lit8 v2, v2, -0x1

    .line 1760
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

    .line 1761
    goto :goto_1
.end method

.method private getDisabledFeatures(Landroid/app/admin/DevicePolicyManager;)I
    .locals 4
    .parameter "dpm"

    .prologue
    .line 356
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isMediatekLCASupport()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 358
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KeyguardHostView"

    const-string v3, "[LCA] Disable keyguard widget/camera."

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_0
    const v1, 0x7fffffff

    .line 366
    :cond_1
    :goto_0
    return v1

    .line 361
    :cond_2
    const/4 v1, 0x0

    .line 362
    .local v1, disabledFeatures:I
    if-eqz p1, :cond_1

    .line 363
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    .line 364
    .local v0, currentUser:I
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    goto :goto_0
.end method

.method private getInsertPageIndex()I
    .locals 4

    .prologue
    .line 1499
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    const v3, #id@keyguard_add_widget#t

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1500
    .local v0, addWidget:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1501
    .local v1, insertionIndex:I
    if-gez v1, :cond_0

    .line 1502
    const/4 v1, 0x0

    .line 1506
    :goto_0
    return v1

    .line 1504
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getLayoutIdFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 3
    .parameter "securityMode"

    .prologue
    const v0, 0x2070013

    .line 1302
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1325
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 1303
    :pswitch_1
    const v0, #layout@keyguard_selector_view#t

    goto :goto_0

    .line 1304
    :pswitch_2
    const v0, #layout@keyguard_pattern_view#t

    goto :goto_0

    .line 1305
    :pswitch_3
    const v0, #layout@keyguard_pin_view#t

    goto :goto_0

    .line 1306
    :pswitch_4
    const v0, #layout@keyguard_password_view#t

    goto :goto_0

    .line 1307
    :pswitch_5
    const v0, #layout@keyguard_face_unlock_view#t

    goto :goto_0

    .line 1308
    :pswitch_6
    const v0, #layout@keyguard_account_view#t

    goto :goto_0

    .line 1320
    :pswitch_7
    const v0, 0x207001c

    goto :goto_0

    .line 1323
    :pswitch_8
    const v0, #layout@zz_keyguard_voice_unlock_view#t

    goto :goto_0

    .line 1302
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
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method private getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    .locals 14
    .parameter "securityMode"

    .prologue
    .line 992
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSimIdFromSecurityMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v8

    .line 993
    .local v8, simId:I
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityViewIdForMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v6

    .line 994
    .local v6, securityViewIdForMode:I
    const/4 v10, 0x0

    .line 995
    .local v10, view:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v2

    .line 996
    .local v2, children:I
    const/4 v1, 0x0

    .local v1, child:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 997
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v11, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v11

    if-ne v11, v6, :cond_5

    .line 998
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v11, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #view:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    check-cast v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 1002
    .restart local v10       #view:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getLayoutIdFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v4

    .line 1003
    .local v4, layoutId:I
    if-nez v10, :cond_6

    if-eqz v4, :cond_6

    .line 1004
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1005
    .local v3, inflater:Landroid/view/LayoutInflater;
    sget-boolean v11, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v11, :cond_1

    const-string v11, "KeyguardHostView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "inflating id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_1
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    const/4 v12, 0x0

    invoke-virtual {v3, v4, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .local v9, v:Landroid/view/View;
    move-object v10, v9

    .line 1007
    check-cast v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 1010
    instance-of v11, v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    if-eqz v11, :cond_2

    move-object v5, v10

    .line 1011
    check-cast v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    .line 1012
    .local v5, pinPukView:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;
    invoke-virtual {v5, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->setSimId(I)V

    .line 1014
    .end local v5           #pinPukView:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;
    :cond_2
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v11, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->addView(Landroid/view/View;)V

    .line 1015
    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateSecurityView(Landroid/view/View;)V

    .line 1026
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v9           #v:Landroid/view/View;
    :cond_3
    :goto_1
    instance-of v11, v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    if-eqz v11, :cond_4

    move-object v7, v10

    .line 1027
    check-cast v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    .line 1028
    .local v7, selectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
    const v11, #id@keyguard_selector_fade_container#t

    invoke-virtual {v7, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1029
    .local v0, carrierText:Landroid/view/View;
    invoke-virtual {v7, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->setCarrierArea(Landroid/view/View;)V

    .line 1032
    .end local v0           #carrierText:Landroid/view/View;
    .end local v7           #selectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
    :cond_4
    return-object v10

    .line 996
    .end local v4           #layoutId:I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1019
    .restart local v4       #layoutId:I
    :cond_6
    if-eqz v10, :cond_3

    instance-of v11, v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v11, :cond_3

    .line 1021
    const-string v11, "KeyguardHostView"

    const-string v12, "getSecurityView, here, we will refresh the layout"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v10

    .line 1022
    check-cast v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    .line 1023
    .restart local v5       #pinPukView:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;
    invoke-virtual {v5, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->setSimId(I)V

    goto :goto_1
.end method

.method private getSecurityViewIdForMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 3
    .parameter "securityMode"

    .prologue
    const v0, 0x210003f

    .line 1275
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1298
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 1276
    :pswitch_1
    const v0, #id@keyguard_selector_view#t

    goto :goto_0

    .line 1277
    :pswitch_2
    const v0, #id@keyguard_pattern_view#t

    goto :goto_0

    .line 1278
    :pswitch_3
    const v0, #id@keyguard_pin_view#t

    goto :goto_0

    .line 1279
    :pswitch_4
    const v0, #id@keyguard_password_view#t

    goto :goto_0

    .line 1280
    :pswitch_5
    const v0, #id@keyguard_face_unlock_view#t

    goto :goto_0

    .line 1281
    :pswitch_6
    const v0, #id@keyguard_account_view#t

    goto :goto_0

    .line 1293
    :pswitch_7
    const v0, 0x210006d

    goto :goto_0

    .line 1296
    :pswitch_8
    const v0, #id@zz_keyguard_voice_unlock_view#t

    goto :goto_0

    .line 1275
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
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method private getSimIdFromSecurityMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 2
    .parameter "securityMode"

    .prologue
    .line 977
    const/4 v0, 0x0

    .line 979
    .local v0, simId:I
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe2:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v1, :cond_0

    .line 980
    const/4 v0, 0x1

    .line 988
    :goto_0
    return v0

    .line 981
    :cond_0
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe3:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v1, :cond_1

    .line 982
    const/4 v0, 0x2

    goto :goto_0

    .line 983
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe4:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v1, :cond_2

    .line 984
    const/4 v0, 0x3

    goto :goto_0

    .line 986
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getWidgetPosition(I)I
    .locals 4
    .parameter "id"

    .prologue
    const/4 v2, -0x1

    .line 276
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-eqz v3, :cond_2

    .line 277
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 278
    .local v0, children:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 279
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 285
    .end local v0           #children:I
    .end local v1           #i:I
    :goto_1
    return v1

    .line 278
    .restart local v0       #children:I
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 283
    goto :goto_1

    .end local v0           #children:I
    .end local v1           #i:I
    :cond_2
    move v1, v2

    .line 285
    goto :goto_1
.end method

.method private initDualClock()V
    .locals 2

    .prologue
    .line 231
    const-class v0, Lcom/mediatek/common/policy/IDualClock;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/policy/IDualClock;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDualClock:Lcom/mediatek/common/policy/IDualClock;

    .line 232
    return-void
.end method

.method private initializeTransportControl()V
    .locals 2

    .prologue
    .line 1469
    const v0, #id@keyguard_transport_control#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    .line 1471
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->setVisibility(I)V

    .line 1475
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    if-eqz v0, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$TransportCallback;)V

    .line 1496
    :cond_0
    return-void
.end method

.method private isLockScreenPriorSimPin(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .locals 5
    .parameter "mode"

    .prologue
    .line 746
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

    .line 747
    const/4 v0, 0x0

    .line 749
    .local v0, bPinRequired:Z
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe1:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe2:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe3:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe4:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v2, :cond_1

    .line 751
    :cond_0
    const/4 v0, 0x1

    .line 753
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v1

    .line 754
    .local v1, oldView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    const-string v2, "KeyguardHostView"

    const-string v3, "isLockScreenPriorSimPin return"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
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
    .line 1218
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 1219
    .local v0, mode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1235
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

    .line 1221
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v1

    .line 1233
    :goto_0
    return v1

    .line 1224
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    goto :goto_0

    .line 1231
    :pswitch_3
    const/4 v1, 0x1

    goto :goto_0

    .line 1233
    :pswitch_4
    const/4 v1, 0x0

    goto :goto_0

    .line 1219
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
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private numWidgets()I
    .locals 4

    .prologue
    .line 1396
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 1397
    .local v0, childCount:I
    const/4 v2, 0x0

    .line 1398
    .local v2, widgetCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1399
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1400
    add-int/lit8 v2, v2, 0x1

    .line 1398
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1403
    :cond_1
    return v2
.end method

.method private removeTransportFromWidgetPager()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1440
    const v2, #id@keyguard_transport_control#t

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getWidgetPosition(I)I

    move-result v0

    .line 1441
    .local v0, page:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1442
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->removeWidget(Landroid/view/View;)V

    .line 1445
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addView(Landroid/view/View;)V

    .line 1446
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->setVisibility(I)V

    .line 1447
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->setTransportState(I)V

    .line 1448
    const/4 v1, 0x1

    .line 1450
    :cond_0
    return v1
.end method

.method private reportFailedUnlockAttempt()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 630
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    .line 631
    .local v4, monitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v10

    add-int/lit8 v1, v10, 0x1

    .line 633
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

    .line 635
    :cond_0
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    .line 636
    .local v3, mode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v10, :cond_3

    move v7, v8

    .line 638
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

    .line 641
    .local v2, failedAttemptsBeforeWipe:I
    const/16 v0, 0xf

    .line 644
    .local v0, failedAttemptWarning:I
    if-lez v2, :cond_4

    sub-int v5, v2, v1

    .line 648
    .local v5, remainingBeforeWipe:I
    :goto_1
    const/4 v6, 0x0

    .line 649
    .local v6, showTimeout:Z
    const/4 v10, 0x5

    if-ge v5, v10, :cond_6

    .line 654
    if-lez v5, :cond_5

    .line 655
    invoke-direct {p0, v1, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showAlmostAtWipeDialog(II)V

    .line 676
    :cond_1
    :goto_2
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->reportFailedUnlockAttempt()V

    .line 677
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt()V

    .line 678
    if-eqz v6, :cond_2

    .line 679
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showTimeoutDialog()V

    .line 681
    :cond_2
    return-void

    .end local v0           #failedAttemptWarning:I
    .end local v2           #failedAttemptsBeforeWipe:I
    .end local v5           #remainingBeforeWipe:I
    .end local v6           #showTimeout:Z
    .end local v7           #usingPattern:Z
    :cond_3
    move v7, v9

    .line 636
    goto :goto_0

    .line 644
    .restart local v0       #failedAttemptWarning:I
    .restart local v2       #failedAttemptsBeforeWipe:I
    .restart local v7       #usingPattern:Z
    :cond_4
    const v5, 0x7fffffff

    goto :goto_1

    .line 658
    .restart local v5       #remainingBeforeWipe:I
    .restart local v6       #showTimeout:Z
    :cond_5
    const-string v8, "KeyguardHostView"

    const-string v9, "Too many unlock attempts; device will be wiped!"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showWipeDialog(I)V

    goto :goto_2

    .line 662
    :cond_6
    rem-int/lit8 v10, v1, 0x5

    if-nez v10, :cond_7

    move v6, v8

    .line 664
    :goto_3
    if-eqz v7, :cond_1

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mEnableFallback:Z

    if-eqz v9, :cond_1

    .line 665
    const/16 v9, 0xf

    if-ne v1, v9, :cond_8

    .line 666
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showAlmostAtAccountLoginDialog()V

    .line 667
    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    move v6, v9

    .line 662
    goto :goto_3

    .line 668
    :cond_8
    const/16 v9, 0x14

    if-lt v1, v9, :cond_1

    .line 669
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, v8}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 670
    sget-object v8, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 672
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private requestClipChildren(Z)V
    .locals 0
    .parameter "request"

    .prologue
    .line 1948
    return-void
.end method

.method private shouldEnableAddWidget()Z
    .locals 2

    .prologue
    .line 352
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
    .line 1861
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1862
    .local v3, res:Landroid/content/res/Resources;
    const v4, #bool@config_disableMenuKeyInLockScreen#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1864
    .local v0, configDisabled:Z
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v2

    .line 1865
    .local v2, isTestHarness:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 1866
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
    .line 621
    const/16 v2, 0x1e

    .line 622
    .local v2, timeoutInSeconds:I
    const/16 v0, 0xf

    .line 624
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

    .line 626
    .local v1, message:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    return-void
.end method

.method private showAlmostAtWipeDialog(II)V
    .locals 7
    .parameter "attempts"
    .parameter "remaining"

    .prologue
    .line 609
    const/16 v1, 0x1e

    .line 610
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

    .line 612
    .local v0, message:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method private showAppropriateWidgetPage()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x2

    .line 1704
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->getTransportState()I

    move-result v2

    .line 1705
    .local v2, state:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->isMusicPlaying()Z

    move-result v5

    if-nez v5, :cond_0

    if-ne v2, v6, :cond_3

    :cond_0
    move v0, v4

    .line 1707
    .local v0, isMusicPlaying:Z
    :goto_0
    if-eqz v0, :cond_4

    .line 1708
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v4, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->setTransportState(I)V

    .line 1709
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addTransportToWidgetPager()V

    .line 1714
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->isMusicPlaying()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1715
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentKeyguardSecurityView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    instance-of v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    if-eqz v4, :cond_2

    .line 1716
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentKeyguardSecurityView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;

    .line 1717
    .local v3, voiceUnlockView:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;->stopAndShowBackup()V

    .line 1720
    .end local v3           #voiceUnlockView:Lcom/android/internal/policy/impl/keyguard/KeyguardVoiceUnlockView;
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getAppropriateWidgetPage(Z)I

    move-result v1

    .line 1721
    .local v1, pageToShow:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setCurrentPage(I)V

    .line 1722
    return-void

    .line 1705
    .end local v0           #isMusicPlaying:Z
    .end local v1           #pageToShow:I
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1710
    .restart local v0       #isMusicPlaying:Z
    :cond_4
    if-ne v2, v6, :cond_1

    .line 1711
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v5, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->setTransportState(I)V

    goto :goto_1
.end method

.method private showBackupSecurityScreen()V
    .locals 3

    .prologue
    .line 764
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardHostView"

    const-string v2, "showBackupSecurity()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getBackupSecurityMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 766
    .local v0, backup:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 767
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "message"

    .prologue
    .line 573
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

    .line 578
    .local v0, dialog:Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 579
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 581
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 582
    return-void
.end method

.method private showNextSecurityScreenOrFinish(ZZ)V
    .locals 9
    .parameter "authenticated"
    .parameter "showBouncer"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 782
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

    .line 783
    :cond_0
    const/4 v2, 0x0

    .line 784
    .local v2, finish:Z
    move v0, p2

    .line 785
    .local v0, bShowBouncer:Z
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v4, v5, :cond_4

    .line 786
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    .line 788
    .local v3, securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v4, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    .line 789
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v4, v3, :cond_3

    .line 790
    const/4 v2, 0x1

    .line 832
    .end local v3           #securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :goto_0
    if-eqz v2, :cond_9

    .line 835
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 839
    const/4 v1, 0x0

    .line 840
    .local v1, deferKeyguardDone:Z
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;

    if-eqz v4, :cond_1

    .line 841
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    move-result v1

    .line 842
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;

    .line 844
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v4, :cond_2

    .line 845
    if-eqz v1, :cond_8

    .line 846
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDonePending()V

    .line 857
    .end local v1           #deferKeyguardDone:Z
    :cond_2
    :goto_1
    return-void

    .line 792
    .restart local v3       #securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    .line 794
    .end local v3           #securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_4
    if-eqz p1, :cond_7

    .line 795
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 824
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

    .line 825
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    goto :goto_0

    .line 802
    :pswitch_0
    const/4 v2, 0x1

    .line 803
    goto :goto_0

    .line 811
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    .line 812
    .restart local v3       #securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe1:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v3, v4, :cond_5

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe2:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v3, v4, :cond_5

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe3:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v3, v4, :cond_5

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe4:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v3, v4, :cond_5

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v3, v4, :cond_6

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mShowNextViewAfterSimLock:Z

    if-eqz v4, :cond_6

    .line 817
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    .line 819
    :cond_6
    const/4 v2, 0x1

    .line 821
    goto/16 :goto_0

    .line 829
    .end local v3           #securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_7
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 830
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 848
    .restart local v1       #deferKeyguardDone:Z
    :cond_8
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v4, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    goto :goto_1

    .line 853
    .end local v1           #deferKeyguardDone:Z
    :cond_9
    if-eqz v0, :cond_2

    .line 854
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v4, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->showBouncer(Z)V

    goto :goto_1

    .line 795
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
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 13
    .parameter "securityMode"

    .prologue
    .line 1042
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

    .line 1044
    :cond_0
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v10, :cond_2

    .line 1148
    :cond_1
    :goto_0
    return-void

    .line 1046
    :cond_2
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v8

    .line 1047
    .local v8, oldView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    sget-boolean v10, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v10, :cond_3

    const-string v10, "KeyguardHostView"

    const-string v11, "showSecurityScreen get oldView"

    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v7

    .line 1049
    .local v7, newView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    sget-boolean v10, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v10, :cond_4

    const-string v10, "KeyguardHostView"

    const-string v11, "showSecurityScreen get newView"

    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, #bool@kg_sim_puk_account_full_screen#t

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 1055
    .local v2, fullScreenEnabled:Z
    sget-object v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v10, :cond_5

    sget-object v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe1:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v10, :cond_5

    sget-object v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe2:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v10, :cond_5

    sget-object v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe3:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v10, :cond_5

    sget-object v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe4:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v10, :cond_13

    :cond_5
    const/4 v4, 0x1

    .line 1061
    .local v4, isSimOrAccount:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v1

    .line 1062
    .local v1, dmLocked:Z
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-eqz v4, :cond_6

    if-nez v2, :cond_7

    :cond_6
    if-nez v1, :cond_7

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v10

    if-eqz v10, :cond_14

    :cond_7
    const/16 v10, 0x8

    :goto_2
    invoke-virtual {v11, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setVisibility(I)V

    .line 1066
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v10, :cond_9

    .line 1068
    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    sget-object v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v10, :cond_8

    if-eqz v1, :cond_15

    :cond_8
    const/4 v10, 0x1

    :goto_3
    invoke-virtual {v11, v10}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setChallengeInteractive(Z)V

    .line 1071
    :cond_9
    sget-boolean v10, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v10, :cond_a

    const-string v10, "KeyguardHostView"

    const-string v11, "showSecurityScreen pause oldView before"

    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    :cond_a
    if-eqz v8, :cond_17

    .line 1075
    invoke-interface {v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onPause()V

    .line 1076
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mNullCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v8, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 1079
    instance-of v10, v8, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    if-eqz v10, :cond_16

    instance-of v10, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    if-nez v10, :cond_16

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v10, :cond_16

    .line 1080
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyaugerLayerVisibility:Z

    .line 1081
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateKeyguardLayerVisibility()V

    .line 1083
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->requestClipChildren(Z)V

    .line 1089
    :cond_b
    :goto_4
    if-eq v7, v8, :cond_c

    .line 1090
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mShowNextViewAfterSimLock:Z

    .line 1096
    :cond_c
    :goto_5
    sget-boolean v10, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v10, :cond_d

    const-string v10, "KeyguardHostView"

    const-string v11, "showSecurityScreen pause oldView finish"

    invoke-static {v10, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    :cond_d
    const/4 v10, 0x2

    invoke-interface {v7, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 1099
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v7, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 1102
    instance-of v10, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    if-eqz v10, :cond_18

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v10, :cond_18

    .line 1103
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyaugerLayerVisibility:Z

    .line 1104
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateKeyguardLayerVisibility()V

    move-object v5, v7

    .line 1105
    check-cast v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    .line 1106
    .local v5, keyguardSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getGlowPadView()Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setTouchRecepientForKeyguardLayer(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    .line 1109
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->requestClipChildren(Z)V

    .line 1117
    .end local v5           #keyguardSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
    :cond_e
    :goto_6
    sget-boolean v10, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v10, :cond_f

    const-string v10, "KeyguardHostView"

    const-string v11, "showSecurityScreen update keyguard layer finish"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_f
    invoke-interface {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v6

    .line 1120
    .local v6, needsInput:Z
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v10, :cond_10

    .line 1121
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v10, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->setNeedsInput(Z)V

    .line 1125
    :cond_10
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v0

    .line 1127
    .local v0, childCount:I
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const v12, #anim@keyguard_security_fade_in#t

    invoke-static {v11, v12}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1129
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const v12, #anim@keyguard_security_fade_out#t

    invoke-static {v11, v12}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1131
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityViewIdForMode(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v9

    .line 1132
    .local v9, securityViewIdForMode:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_7
    if-ge v3, v0, :cond_11

    .line 1133
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v10, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    if-ne v10, v9, :cond_19

    .line 1134
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v10, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->setDisplayedChild(I)V

    .line 1139
    :cond_11
    sget-object v10, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v10, :cond_12

    .line 1141
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 1143
    :cond_12
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 1145
    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentKeyguardSecurityView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 1147
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

    .line 1055
    .end local v0           #childCount:I
    .end local v1           #dmLocked:Z
    .end local v3           #i:I
    .end local v4           #isSimOrAccount:Z
    .end local v6           #needsInput:Z
    .end local v9           #securityViewIdForMode:I
    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1062
    .restart local v1       #dmLocked:Z
    .restart local v4       #isSimOrAccount:Z
    :cond_14
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1068
    :cond_15
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 1084
    :cond_16
    instance-of v10, v8, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    if-eqz v10, :cond_b

    instance-of v10, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    if-nez v10, :cond_b

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    if-eqz v10, :cond_b

    .line 1085
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyaugerLayerVisibility:Z

    .line 1086
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateKeyguardLayerVisibility()V

    goto/16 :goto_4

    .line 1093
    :cond_17
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mShowNextViewAfterSimLock:Z

    goto/16 :goto_5

    .line 1110
    :cond_18
    instance-of v10, v7, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    if-eqz v10, :cond_e

    .line 1111
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyaugerLayerVisibility:Z

    .line 1112
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateKeyguardLayerVisibility()V

    move-object v5, v7

    .line 1113
    check-cast v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    .line 1114
    .restart local v5       #keyguardSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getGlowPadView()Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->setTouchRecepientForKeyguardLayer(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    goto/16 :goto_6

    .line 1132
    .end local v5           #keyguardSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
    .restart local v0       #childCount:I
    .restart local v3       #i:I
    .restart local v6       #needsInput:Z
    .restart local v9       #securityViewIdForMode:I
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7
.end method

.method private showTimeoutDialog()V
    .locals 7

    .prologue
    .line 585
    const/16 v2, 0x1e

    .line 586
    .local v2, timeoutInSeconds:I
    const/4 v1, 0x0

    .line 588
    .local v1, messageId:I
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$12;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 600
    :goto_0
    if-eqz v1, :cond_0

    .line 601
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

    .line 604
    .local v0, message:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    .end local v0           #message:Ljava/lang/String;
    :cond_0
    return-void

    .line 590
    :pswitch_0
    const v1, #string@kg_too_many_failed_pattern_attempts_dialog_message#t

    .line 591
    goto :goto_0

    .line 593
    :pswitch_1
    const v1, #string@kg_too_many_failed_pin_attempts_dialog_message#t

    .line 594
    goto :goto_0

    .line 596
    :pswitch_2
    const v1, #string@kg_too_many_failed_password_attempts_dialog_message#t

    goto :goto_0

    .line 588
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
    .line 616
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

    .line 617
    .local v0, message:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    return-void
.end method

.method private updateSecurityView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 387
    instance-of v1, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 388
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 389
    .local v0, ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 390
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 391
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->isBouncing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->showBouncer(I)V

    .line 399
    .end local v0           #ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :goto_0
    return-void

    .line 394
    .restart local v0       #ksv:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    :cond_0
    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->hideBouncer(I)V

    goto :goto_0

    .line 397
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
    .line 380
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v0

    .line 381
    .local v0, children:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 382
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateSecurityView(Landroid/view/View;)V

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    :cond_0
    return-void
.end method

.method private widgetsDisabledByDpm()Z
    .locals 1

    .prologue
    .line 371
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
    .line 431
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 432
    return-void
.end method

.method public checkAppWidgetConsistency()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1566
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1567
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCheckAppWidgetConsistencyOnBootCompleted:Z

    .line 1622
    :cond_0
    :goto_0
    return-void

    .line 1570
    :cond_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v2

    .line 1571
    .local v2, childCount:I
    const/4 v6, 0x0

    .line 1572
    .local v6, widgetPageExists:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 1573
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v9, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1574
    const/4 v6, 0x1

    .line 1578
    :cond_2
    if-nez v6, :cond_0

    .line 1579
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getInsertPageIndex()I

    move-result v4

    .line 1581
    .local v4, insertPageIndex:I
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->widgetsDisabledByDpm()Z

    move-result v9

    if-nez v9, :cond_6

    move v5, v7

    .line 1582
    .local v5, userAddedWidgetsEnabled:Z
    :goto_2
    const/4 v0, 0x0

    .line 1584
    .local v0, addedDefaultAppWidget:Z
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v9, :cond_3

    .line 1585
    if-eqz v5, :cond_7

    .line 1586
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->allocateIdForDefaultAppWidget()I

    move-result v1

    .line 1587
    .local v1, appWidgetId:I
    if-eqz v1, :cond_3

    .line 1588
    invoke-direct {p0, v1, v4, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    move-result v0

    .line 1612
    .end local v1           #appWidgetId:I
    :cond_3
    :goto_3
    if-nez v0, :cond_4

    .line 1613
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addDefaultStatusWidget(I)V

    .line 1617
    :cond_4
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v7, :cond_0

    if-eqz v5, :cond_0

    .line 1618
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v8, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->onAddView(Landroid/view/View;I)V

    goto :goto_0

    .line 1572
    .end local v0           #addedDefaultAppWidget:Z
    .end local v4           #insertPageIndex:I
    .end local v5           #userAddedWidgetsEnabled:Z
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .restart local v4       #insertPageIndex:I
    :cond_6
    move v5, v8

    .line 1581
    goto :goto_2

    .line 1593
    .restart local v0       #addedDefaultAppWidget:Z
    .restart local v5       #userAddedWidgetsEnabled:Z
    :cond_7
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getFallbackAppWidgetId()I

    move-result v1

    .line 1594
    .restart local v1       #appWidgetId:I
    if-nez v1, :cond_8

    .line 1595
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->allocateIdForDefaultAppWidget()I

    move-result v1

    .line 1596
    if-eqz v1, :cond_8

    .line 1597
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v1}, Lcom/android/internal/widget/LockPatternUtils;->writeFallbackAppWidgetId(I)V

    .line 1600
    :cond_8
    if-eqz v1, :cond_3

    .line 1601
    invoke-direct {p0, v1, v4, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    move-result v0

    .line 1602
    if-nez v0, :cond_3

    .line 1603
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v7, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 1604
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->writeFallbackAppWidgetId(I)V

    goto :goto_3
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentKeyguardSecurityView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    if-eqz v0, :cond_0

    .line 1842
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentKeyguardSecurityView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onPause()V

    .line 1843
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentKeyguardSecurityView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mNullCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 1845
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_1

    .line 1846
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setCallbacks(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;)V

    .line 1850
    :cond_1
    return-void
.end method

.method public clearAppWidgetToShow()V
    .locals 1

    .prologue
    .line 1208
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 1209
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 1904
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1909
    :goto_0
    return-void

    .line 1908
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showNextSecurityScreenOrFinish(ZZ)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 267
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 269
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mScreenOn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDoneDrawing()V

    .line 272
    :cond_0
    return-void
.end method

.method public getUserActivityTimeout()J
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getUserActivityTimeout()J

    move-result-wide v0

    .line 491
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public goToUserSwitcher()V
    .locals 2

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    const v1, #id@keyguard_multi_user_selector#t

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getWidgetPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setCurrentPage(I)V

    .line 1873
    return-void
.end method

.method public goToWidget(I)V
    .locals 1
    .parameter "appWidgetId"

    .prologue
    .line 1876
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 1877
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1878
    return-void
.end method

.method public handleBackKey()Z
    .locals 2

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 1893
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->dismiss()V

    .line 1894
    const/4 v0, 0x1

    .line 1896
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMenuKey()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1882
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->shouldEnableMenuKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1884
    invoke-direct {p0, v0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showNextSecurityScreenOrFinish(ZZ)V

    .line 1885
    const/4 v0, 0x1

    .line 1887
    :cond_0
    return v0
.end method

.method protected hasOnDismissAction()Z
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ipoShutDownUpdate()V
    .locals 1

    .prologue
    .line 1953
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->removeTransportFromWidgetPager()Z

    .line 1954
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->setMusicPauseStateForIPO()V

    .line 1955
    return-void
.end method

.method public isAlarmUnlockScreen()Z
    .locals 2

    .prologue
    .line 1961
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->AlarmBoot:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_0

    .line 1962
    const/4 v0, 0x1

    .line 1964
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
    .line 1734
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
    .locals 3

    .prologue
    .line 409
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->onAttachedToWindow()V

    .line 410
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockScreenExt:Lcom/mediatek/common/policy/ILockScreenExt;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockScreenExt:Lcom/mediatek/common/policy/ILockScreenExt;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2, p0}, Lcom/mediatek/common/policy/ILockScreenExt;->initDgilLayout(IILandroid/view/ViewGroup;)V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHost;->startListeningAsUser(I)V

    .line 415
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 416
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 420
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->onDetachedFromWindow()V

    .line 421
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 422
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHost;->stopListeningAsUser(I)V

    .line 423
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 424
    return-void
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 294
    const v1, #id@app_widget_container#t

    .line 295
    .local v1, containerId:I
    const v3, #id@keyguard_widget_pager_delete_target#t

    .line 296
    .local v3, deleteId:I
    const v5, #id@multi_pane_challenge#t

    .line 297
    .local v5, paneId:I
    const v4, #id@view_flipper#t

    .line 298
    .local v4, fliperId:I
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 299
    const v1, 0x210006a

    .line 300
    const v3, 0x2100069

    .line 301
    const v5, 0x2100068

    .line 302
    const v4, 0x210006c

    .line 305
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 306
    .local v2, deleteDropTarget:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    .line 307
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v6, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setVisibility(I)V

    .line 308
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mWidgetCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setCallbacks(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;)V

    .line 309
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v6, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setDeleteDropTarget(Landroid/view/View;)V

    .line 310
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    const/high16 v7, 0x3f00

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setMinScale(F)V

    .line 312
    const v6, #id@sliding_layout#t

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .line 313
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    .line 314
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v6, :cond_1

    .line 315
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setOnChallengeScrolledListener(Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;)V

    .line 317
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setViewStateManager(Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;)V

    .line 318
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 322
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v6, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    :goto_0
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    .line 324
    .local v0, challenge:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-interface {v0, v6}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->setOnBouncerStateChangedListener(Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;)V

    .line 325
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->getBouncerAnimationDuration()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setBouncerAnimationDuration(I)V

    .line 326
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->setPagedView(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;)V

    .line 327
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v6, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->setChallengeLayout(Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;)V

    .line 328
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    .line 329
    const v6, #id@keyguard_selector_view#t

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyguardSelectorView:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    .line 330
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->setSecurityViewContainer(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;)V

    .line 332
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    instance-of v6, v6, Landroid/app/Activity;

    if-nez v6, :cond_2

    .line 333
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSystemUiVisibility()I

    move-result v6

    const/high16 v7, 0x40

    or-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setSystemUiVisibility(I)V

    .line 336
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addDefaultWidgets()V

    .line 338
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->addWidgetsFromSettings()V

    .line 339
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->shouldEnableAddWidget()Z

    move-result v6

    if-nez v6, :cond_3

    .line 340
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v6, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setAddWidgetEnabled(Z)V

    .line 342
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->checkAppWidgetConsistency()V

    .line 343
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 345
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->showUsabilityHints()V

    .line 347
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 348
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateSecurityViews()V

    .line 349
    return-void

    .line 322
    .end local v0           #challenge:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1676
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardHostView"

    const-string v2, "onRestoreInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    :cond_0
    instance-of v1, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;

    if-nez v1, :cond_1

    .line 1678
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1686
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 1681
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;

    .line 1682
    .local v0, ss:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1683
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;->transportState:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->setTransportState(I)V

    .line 1684
    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;->appWidgetToShow:I

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 1685
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 1666
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KeyguardHostView"

    const-string v3, "onSaveInstanceState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    :cond_0
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1668
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1669
    .local v0, ss:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->getTransportState()I

    move-result v2

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;->transportState:I

    .line 1670
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$SavedState;->appWidgetToShow:I

    .line 1671
    return-object v0
.end method

.method public onScreenTurnedOff()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1177
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

    .line 1180
    :cond_0
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mScreenOn:Z

    .line 1184
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 1187
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->clearAppWidgetToShow()V

    .line 1188
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->checkAppWidgetConsistency()V

    .line 1189
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 1190
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mShowNextViewAfterSimLock:Z

    .line 1192
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findCameraPage()Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    move-result-object v0

    .line 1193
    .local v0, cameraPage:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;
    if-eqz v0, :cond_1

    .line 1194
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->onScreenTurnedOff()V

    .line 1196
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v1, :cond_2

    .line 1197
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->hideBouncer()V

    .line 1200
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1203
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onPause()V

    .line 1204
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->clearFocus()V

    .line 1205
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1152
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

    .line 1154
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mScreenOn:Z

    .line 1156
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 1157
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 1160
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1166
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->requestLayout()V

    .line 1167
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    if-eqz v0, :cond_1

    .line 1168
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->showUsabilityHints()V

    .line 1170
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1171
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->requestFocus()Z

    .line 1173
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 256
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 257
    .local v0, result:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 258
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 259
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 260
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 261
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

    .line 262
    return v0

    :cond_1
    move v0, v1

    .line 260
    goto :goto_0
.end method

.method public onUserActivityTimeoutChanged()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->onUserActivityTimeoutChanged()V

    .line 482
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasWindowFocus"

    .prologue
    .line 1690
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->onWindowFocusChanged(Z)V

    .line 1691
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

    .line 1692
    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mShowSecurityWhenReturn:Z

    if-eqz v1, :cond_2

    .line 1693
    const v1, #id@sliding_layout#t

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .line 1695
    .local v0, slider:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    if-eqz v0, :cond_1

    .line 1696
    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setHandleAlpha(F)V

    .line 1697
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->showChallenge(Z)V

    .line 1699
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mShowSecurityWhenReturn:Z

    .line 1701
    .end local v0           #slider:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    :cond_2
    return-void

    .line 1691
    :cond_3
    const-string v1, "unfocused"

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 959
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mScreenOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 960
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsVerifyUnlockOnly:Z

    .line 962
    return-void

    :cond_0
    move v0, v1

    .line 959
    goto :goto_0
.end method

.method setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .parameter "utils"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 403
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 404
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->updateSecurityViews()V

    .line 405
    return-void
.end method

.method protected setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 969
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;

    .line 970
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 1213
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardHostView"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 1215
    return-void
.end method

.method public showAssistant()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1912
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const-string v2, "search"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v3}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 1915
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 1925
    :goto_0
    return-void

    .line 1917
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const v2, #anim@keyguard_action_assist_enter#t

    const v3, #anim@keyguard_action_assist_exit#t

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-static {v0, v2, v3, v5, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 1921
    .local v6, opts:Landroid/app/ActivityOptions;
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1923
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
    .line 770
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 772
    .local v0, securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 773
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v0, :cond_0

    .line 774
    const/4 v1, 0x0

    .line 777
    :goto_0
    return v1

    .line 776
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 777
    const/4 v1, 0x1

    goto :goto_0
.end method

.method showPrimarySecurityScreen(Z)V
    .locals 7
    .parameter "turningOff"

    .prologue
    .line 689
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showPrimarySecurityScreen(turningOff="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") enter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 691
    .local v2, securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showPrimarySecurityScreen query securityMode finish securityMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlternateUnlockEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 694
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v4, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 695
    .local v0, alternateMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showPrimarySecurityScreen alternateMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    :cond_2
    if-nez p1, :cond_7

    .line 697
    move-object v2, v0

    .line 706
    .end local v0           #alternateMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_3
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "KeyguardHostView"

    const-string v5, "showPrimarySecurityScreen getAlternateFor finish"

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 716
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v4, :cond_5

    .line 718
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentKeyguardSecurityView:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    instance-of v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLaunchingCamera:Z

    if-nez v4, :cond_8

    .line 721
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->showChallenge(Z)V

    .line 737
    :cond_5
    :goto_0
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showPrimarySecurityScreen(turningOff="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") exit"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :cond_6
    :goto_1
    return-void

    .line 699
    .restart local v0       #alternateMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_7
    if-eq v2, v0, :cond_3

    goto :goto_1

    .line 723
    .end local v0           #alternateMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 724
    .local v1, res:Landroid/content/res/Resources;
    const v4, 0x20d003f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 726
    .local v3, smallWidgetMinHeight:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getMaxChallengeTop()I

    move-result v4

    if-lez v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getMaxChallengeTop()I

    move-result v4

    if-ge v4, v3, :cond_5

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    .line 731
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setStatusWidgetIsCompletelyShown(Z)V

    goto :goto_0
.end method

.method updateKeyguardLayerVisibility()V
    .locals 2

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v0, :cond_1

    .line 1937
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyaugerLayerVisibility:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->updateKeyguardLayerVisibility(Z)V

    .line 1941
    :cond_0
    :goto_0
    return-void

    .line 1938
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    if-eqz v0, :cond_0

    .line 1939
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mKeyaugerLayerVisibility:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->updateKeyguardLayerVisibility(Z)V

    goto :goto_0
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->userActivity()V

    .line 476
    :cond_0
    return-void
.end method

.method public verifyUnlock()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1255
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 1256
    .local v0, securityMode:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_1

    .line 1257
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v1, :cond_0

    .line 1258
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    .line 1272
    :cond_0
    :goto_0
    return-void

    .line 1260
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_2

    .line 1264
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v1, :cond_0

    .line 1265
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    goto :goto_0

    .line 1269
    :cond_2
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsVerifyUnlockOnly:Z

    .line 1270
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0
.end method

.method public wakeWhenReadyTq(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 1241
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardHostView"

    const-string v1, "onWakeKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1243
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "KeyguardHostView"

    const-string v1, "switching screens to unlock screen because wake key was MENU"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    :cond_1
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 1248
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_3

    .line 1249
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->wakeUp()V

    .line 1251
    :cond_3
    return-void

    .line 1246
    :cond_4
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "KeyguardHostView"

    const-string v1, "poking wake lock immediately"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
