.class public Lcom/baidu/internal/keyguard/slide/SlideLockScreen;
.super Landroid/widget/RelativeLayout;
.source "SlideLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
.implements Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/slide/SlideLockScreen$QiYiContentObserver;,
        Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyBroadcastReceiver;,
        Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyHandler;,
        Lcom/baidu/internal/keyguard/slide/SlideLockScreen$BatteryStatus;,
        Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyKeyguardActivityLauncher;
    }
.end annotation


# static fields
.field private static final ACTION_CALL_MISS_UPDATED:Ljava/lang/String; = "com.baidu.keyguard.internal.CALL_MISS_UPDATED"

.field private static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final ACTION_SMS_MISS_UPDATED:Ljava/lang/String; = "com.baidu.keyguard.internal.SMS_MISS_UPDATED"

.field private static final ALARM_ICON:I = #drawable@baidu_keyguard_slide_idle_alarm#t

.field private static final IQIYI_NOTIFY_CHANGE:I = 0x9823

.field private static final MSG_BATTERY_UPDATE:I = 0x67

.field private static final MSG_CALL_MISS_UPDATED:I = 0x66

.field private static final MSG_SMS_MISS_UPDATED:I = 0x65

.field private static final TAG:Ljava/lang/String; = "SlideLockScreen"

.field private static final TRANSPORT_USERACTIVITY_TIMEOUT:I = 0x2710

.field private static mIQiYiUri:Landroid/net/Uri;

.field private static mMissCallCount:I

.field private static mMissMsgCount:I


# instance fields
.field private mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

.field private mAlarmObserver:Landroid/database/ContentObserver;

.field private mAlarmStatusView:Landroid/widget/TextView;

.field private mCallObserver:Landroid/database/ContentObserver;

.field private mCarrierView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIQiYiCR:Landroid/content/ContentResolver;

.field private mIQiYiContentObserver:Lcom/baidu/internal/keyguard/slide/SlideLockScreen$QiYiContentObserver;

.field private mIQiYiCursor:Landroid/database/Cursor;

.field private mIQiYiFirstVisibleItem:I

.field private mIQiYiHandler:Landroid/os/Handler;

.field private mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

.field private mIQiYiTotalItemCount:I

.field private mIQiYiVisibleItemCount:I

.field private mIQiYimyAdapter:Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;

.field private mInAnimation:Landroid/view/animation/Animation;

.field private mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMissCall:Landroid/view/View;

.field private mMissGroup:Landroid/view/View;

.field private mMissMsg:Landroid/view/View;

.field private mMmsObserver:Landroid/database/ContentObserver;

.field private mMusicPlaying:Z

.field private mOutAnimation:Landroid/view/animation/Animation;

.field private mReceiver:Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyBroadcastReceiver;

.field private mRotateAnimation:Landroid/view/animation/Animation;

.field private mSavedState:Landroid/os/Parcelable;

.field private mShowingStatus:Z

.field private mSmsObserver:Landroid/database/ContentObserver;

.field private mTargetCallback:Lcom/baidu/internal/keyguard/slide/TargetCallback;

.field private mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

.field private mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

.field private mTransportWidgetCallback:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    sput v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissMsgCount:I

    .line 88
    sput v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissCallCount:I

    .line 687
    const-string v0, "content://com.qiyi.video.MyContentProvider/pushmsg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 9
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 223
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mShowingStatus:Z

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMusicPlaying:Z

    .line 103
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;-><init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetCallback:Lcom/baidu/internal/keyguard/slide/TargetCallback;

    .line 140
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$2;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$2;-><init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportWidgetCallback:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    .line 688
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiFirstVisibleItem:I

    .line 689
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiVisibleItemCount:I

    .line 690
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiTotalItemCount:I

    .line 691
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$7;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$7;-><init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiHandler:Landroid/os/Handler;

    .line 224
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->setFocusable(Z)V

    .line 225
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->setFocusableInTouchMode(Z)V

    .line 226
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->setDescendantFocusability(I)V

    .line 227
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    .line 228
    iput-object p5, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 229
    iput-object p3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 230
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyKeyguardActivityLauncher;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyKeyguardActivityLauncher;-><init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    .line 231
    new-instance v7, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    const v1, #style@Theme.DeviceDefault#t

    invoke-direct {v7, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 232
    .local v7, contexttheme:Landroid/view/ContextThemeWrapper;
    const v0, #style@Theme.DeviceDefault#t

    invoke-virtual {v7, v0}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 233
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 234
    .local v8, inflater:Landroid/view/LayoutInflater;
    const v0, #layout@baidu_keyguard_slide#t

    const/4 v1, 0x1

    invoke-virtual {v8, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 235
    const v0, #id@music_view#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/slide/TransportControlView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    .line 236
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    invoke-direct {p0, v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->initializeTransportControlView(Landroid/view/View;)V

    .line 237
    const v0, #id@target_view#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/slide/TargetView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    .line 238
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TargetView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 239
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetCallback:Lcom/baidu/internal/keyguard/slide/TargetCallback;

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TargetView;->setTargetCallback(Lcom/baidu/internal/keyguard/slide/TargetCallback;)V

    .line 240
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TargetView;->setActivityLauncher(Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;)V

    .line 241
    const v0, #id@slide_miss_call_and_mms#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissGroup:Landroid/view/View;

    .line 242
    const v0, #id@miss_mms#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissMsg:Landroid/view/View;

    .line 243
    const v0, #id@miss_call#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissCall:Landroid/view/View;

    .line 244
    const v0, #id@alarm_status#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mAlarmStatusView:Landroid/widget/TextView;

    .line 261
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TargetView;->setVibrateEnabled(Z)V

    .line 264
    :cond_0
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyHandler;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissGroup:Landroid/view/View;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissMsg:Landroid/view/View;

    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissCall:Landroid/view/View;

    invoke-direct/range {v0 .. v5}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyHandler;-><init>(Landroid/content/Context;Lcom/baidu/internal/keyguard/slide/TargetView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mHandler:Landroid/os/Handler;

    .line 265
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyBroadcastReceiver;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyBroadcastReceiver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mReceiver:Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyBroadcastReceiver;

    .line 267
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$3;-><init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mSmsObserver:Landroid/database/ContentObserver;

    .line 281
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$4;-><init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMmsObserver:Landroid/database/ContentObserver;

    .line 295
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$5;-><init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mCallObserver:Landroid/database/ContentObserver;

    .line 309
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$6;-><init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mAlarmObserver:Landroid/database/ContentObserver;

    .line 316
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mInAnimation:Landroid/view/animation/Animation;

    .line 317
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 318
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, #anim@fade_out#t

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mOutAnimation:Landroid/view/animation/Animation;

    .line 319
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 320
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b4

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 321
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 322
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mRotateAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 323
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mRotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 324
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mRotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 325
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->initIQiYi()V

    .line 326
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/TransportControlView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mInAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mRotateAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->updateAlarmInfo()V

    return-void
.end method

.method static synthetic access$1400(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYimyAdapter:Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiFirstVisibleItem:I

    return v0
.end method

.method static synthetic access$1502(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiFirstVisibleItem:I

    return p1
.end method

.method static synthetic access$1602(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiVisibleItemCount:I

    return p1
.end method

.method static synthetic access$1702(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiTotalItemCount:I

    return p1
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissCallCount:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    sput p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissCallCount:I

    return p0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissMsgCount:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    sput p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissMsgCount:I

    return p0
.end method

.method static synthetic access$400(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissGroup:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMusicPlaying:Z

    return v0
.end method

.method static synthetic access$602(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMusicPlaying:Z

    return p1
.end method

.method static synthetic access$700(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/TargetView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    return-object v0
.end method

.method private dip2px(F)I
    .locals 3
    .parameter "dpValue"

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 340
    .local v0, scale:F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private iQiYiInitView()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 744
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiCR:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiCR:Landroid/content/ContentResolver;

    .line 747
    :cond_0
    const-string v0, "content://com.qiyi.video.MyContentProvider/pushmsg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 748
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiCR:Landroid/content/ContentResolver;

    const-string v5, "_id desc"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiCursor:Landroid/database/Cursor;

    .line 749
    new-instance v0, Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiCursor:Landroid/database/Cursor;

    invoke-direct {v0, v2, v3}, Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYimyAdapter:Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;

    .line 750
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYimyAdapter:Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;

    invoke-virtual {v0, v2}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 751
    invoke-direct {p0, v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->iQiYiRegeistObserver(Landroid/net/Uri;)V

    .line 752
    return-void
.end method

.method private iQiYiParsePushMeg(ILandroid/database/Cursor;I)V
    .locals 28
    .parameter "atValue"
    .parameter "cursor"
    .parameter "did"

    .prologue
    .line 789
    packed-switch p1, :pswitch_data_0

    .line 915
    :pswitch_0
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 916
    .local v12, lauchApp:Landroid/content/Intent;
    const-string v24, "com.qiyi.video"

    const-string v25, "org.qiyi.android.video.MainActivity"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 917
    const-string v24, "org.qiyi.android.video.MAIN"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 918
    const/high16 v24, 0x1000

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 920
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 924
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-interface/range {v24 .. v25}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 927
    .end local v12           #lauchApp:Landroid/content/Intent;
    :cond_0
    :goto_1
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiCR:Landroid/content/ContentResolver;

    move-object/from16 v24, v0

    sget-object v25, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiUri:Landroid/net/Uri;

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v25 .. v27}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v24 .. v27}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 928
    .local v18, row:I
    if-lez v18, :cond_1

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYimyAdapter:Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;->notifyDataSetChanged()V

    .line 931
    :cond_1
    if-eqz p2, :cond_2

    .line 932
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 934
    :cond_2
    return-void

    .line 794
    .end local v18           #row:I
    :pswitch_2
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 795
    .local v9, intentToLauchApp:Landroid/content/Intent;
    const-string v24, "com.qiyi.video"

    const-string v25, "org.qiyi.android.video.MainActivity"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 796
    const-string v24, "org.qiyi.android.video.MAIN"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 797
    const/high16 v24, 0x1000

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 798
    const-string v24, "KEY_INIT_TYPE"

    const/16 v25, 0x4

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 800
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 804
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-interface/range {v24 .. v25}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_1

    .line 801
    :catch_0
    move-exception v5

    .line 802
    .local v5, e:Ljava/lang/Exception;
    const-string v24, "SlideLockScreen"

    const-string v25, "startActivity fail:"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 807
    .end local v5           #e:Ljava/lang/Exception;
    .end local v9           #intentToLauchApp:Landroid/content/Intent;
    :pswitch_3
    const-string v24, "pushAlbum_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 808
    .local v16, pushAlbum_id:I
    const/16 v23, 0x0

    .line 810
    .local v23, tvId1:I
    const-string v24, "luke"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "onItemClick  pushAlbum_id="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    new-instance v24, Ljava/lang/StringBuffer;

    const-string v25, "//self/res.made"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "aid="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "cid="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "tvid="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "order="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "identifier="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "coolpad"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    .line 814
    .local v13, mUrl:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 815
    .local v6, intent:Landroid/content/Intent;
    const-string v24, "com.qiyi.video"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 816
    const-string v24, "android.intent.action.qiyivideo.player"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    const/high16 v24, 0x1000

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 818
    const-string v24, "url"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 820
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 824
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-interface/range {v24 .. v25}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto/16 :goto_1

    .line 821
    :catch_1
    move-exception v5

    .line 822
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v24, "SlideLockScreen"

    const-string v25, "startActivity fail:"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 827
    .end local v5           #e:Ljava/lang/Exception;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v13           #mUrl:Ljava/lang/String;
    .end local v16           #pushAlbum_id:I
    .end local v23           #tvId1:I
    :pswitch_4
    const-string v24, "msgav"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 828
    .local v21, topicIdAndTitleStr:Ljava/lang/String;
    const-string v24, "luke"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "topicIdAndTitleStr  av="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    if-eqz v21, :cond_0

    const-string v24, "_"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 830
    const-string v24, "_"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 831
    .local v20, topicIdAndTitle:[Ljava/lang/String;
    const/16 v24, 0x0

    aget-object v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 832
    .local v19, topicId:I
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 833
    .local v10, intentToLauchSpecial:Landroid/content/Intent;
    const-string v24, "com.qiyi.video"

    const-string v25, "org.qiyi.android.video.MainActivity"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 834
    const/high16 v24, 0x1000

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 835
    const-string v24, "KEY_INIT_TYPE"

    const/16 v25, 0x4

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 836
    const-string v24, "START_PAGE_NO"

    const/16 v25, 0xd

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 837
    const-string v24, "AlbumId"

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 838
    const-string v24, "categoryid"

    const/16 v25, 0x14

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 839
    const-string v24, "Title"

    const/16 v25, 0x1

    aget-object v25, v20, v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 841
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 845
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-interface/range {v24 .. v25}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto/16 :goto_1

    .line 842
    :catch_2
    move-exception v5

    .line 843
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v24, "SlideLockScreen"

    const-string v25, "startActivity fail:"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 849
    .end local v5           #e:Ljava/lang/Exception;
    .end local v10           #intentToLauchSpecial:Landroid/content/Intent;
    .end local v19           #topicId:I
    .end local v20           #topicIdAndTitle:[Ljava/lang/String;
    .end local v21           #topicIdAndTitleStr:Ljava/lang/String;
    :pswitch_5
    const-string v24, "fav_albumId"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 850
    .local v17, pushAlbum_id2:I
    const-string v24, "msgtvid"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 851
    .local v22, tvId:I
    const-string v24, "luke"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "onItemClick  pushAlbum_id="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    new-instance v24, Ljava/lang/StringBuffer;

    const-string v25, "//self/res.made"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "aid="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "cid="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "tvid="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "order="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "identifier="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "coolpad"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    .line 855
    .local v14, mUrl2:Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 856
    .local v7, intent2:Landroid/content/Intent;
    const-string v24, "com.qiyi.video"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 857
    const-string v24, "android.intent.action.qiyivideo.player"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 858
    const/high16 v24, 0x1000

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 859
    const-string v24, "url"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 861
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 865
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-interface/range {v24 .. v25}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto/16 :goto_1

    .line 862
    :catch_3
    move-exception v5

    .line 863
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v24, "SlideLockScreen"

    const-string v25, "startActivity fail:"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 868
    .end local v5           #e:Ljava/lang/Exception;
    .end local v7           #intent2:Landroid/content/Intent;
    .end local v14           #mUrl2:Ljava/lang/String;
    .end local v17           #pushAlbum_id2:I
    .end local v22           #tvId:I
    :pswitch_6
    const-string v24, "msgav"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 869
    .local v2, adURL:Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v24, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 870
    .local v4, browserIntent:Landroid/content/Intent;
    const/high16 v24, 0x1000

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 872
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 876
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-interface/range {v24 .. v25}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto/16 :goto_1

    .line 873
    :catch_4
    move-exception v5

    .line 874
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v24, "SlideLockScreen"

    const-string v25, "startActivity fail:"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 881
    .end local v2           #adURL:Ljava/lang/String;
    .end local v4           #browserIntent:Landroid/content/Intent;
    .end local v5           #e:Ljava/lang/Exception;
    :pswitch_7
    const/16 v15, 0x9

    .line 882
    .local v15, pageNo:I
    const/16 v24, 0x9

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 883
    const/16 v15, 0xa

    .line 887
    :goto_7
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 888
    .local v8, intentBuy:Landroid/content/Intent;
    const-string v24, "com.qiyi.video"

    const-string v25, "org.qiyi.android.video.MainActivity"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 889
    const/high16 v24, 0x1000

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 890
    const-string v24, "KEY_INIT_TYPE"

    const/16 v25, 0x4

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 891
    const-string v24, "START_PAGE_NO"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 893
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 897
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-interface/range {v24 .. v25}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto/16 :goto_1

    .line 885
    .end local v8           #intentBuy:Landroid/content/Intent;
    :cond_3
    const/16 v15, 0xb

    goto :goto_7

    .line 894
    .restart local v8       #intentBuy:Landroid/content/Intent;
    :catch_5
    move-exception v5

    .line 895
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v24, "SlideLockScreen"

    const-string v25, "startActivity fail:"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 900
    .end local v5           #e:Ljava/lang/Exception;
    .end local v8           #intentBuy:Landroid/content/Intent;
    .end local v15           #pageNo:I
    :pswitch_8
    const-string v24, "ad_url"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 901
    .local v3, adURL2:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v24, ""

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 902
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 903
    .local v11, intentdown:Landroid/content/Intent;
    const/high16 v24, 0x1000

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 904
    const-string v24, "android.intent.action.VIEW"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 905
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 907
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 911
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-interface/range {v24 .. v25}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto/16 :goto_1

    .line 908
    :catch_6
    move-exception v5

    .line 909
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v24, "SlideLockScreen"

    const-string v25, "startActivity fail:"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 921
    .end local v3           #adURL2:Ljava/lang/String;
    .end local v5           #e:Ljava/lang/Exception;
    .end local v11           #intentdown:Landroid/content/Intent;
    .restart local v12       #lauchApp:Landroid/content/Intent;
    :catch_7
    move-exception v5

    .line 922
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v24, "SlideLockScreen"

    const-string v25, "startActivity fail:"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 789
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private iQiYiRegeistObserver(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 756
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiContentObserver:Lcom/baidu/internal/keyguard/slide/SlideLockScreen$QiYiContentObserver;

    if-nez v0, :cond_0

    .line 757
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$QiYiContentObserver;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$QiYiContentObserver;-><init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiContentObserver:Lcom/baidu/internal/keyguard/slide/SlideLockScreen$QiYiContentObserver;

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiContentObserver:Lcom/baidu/internal/keyguard/slide/SlideLockScreen$QiYiContentObserver;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 760
    return-void
.end method

.method private iQiYiUnregeistObserver()V
    .locals 4

    .prologue
    .line 764
    :try_start_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiContentObserver:Lcom/baidu/internal/keyguard/slide/SlideLockScreen$QiYiContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    :goto_0
    return-void

    .line 765
    :catch_0
    move-exception v0

    .line 766
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SlideLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initIQiYi()V
    .locals 4

    .prologue
    .line 704
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 705
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.qiyi.video.screenoffview"

    const-string v3, "com.qiyi.video.screenoffview.data.PushMsgService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    const-string v2, "com.qiyi.video.PushMsgService"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 708
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 709
    .local v1, intent2:Landroid/content/Intent;
    const-string v2, "com.baidu.android.pushservice"

    const-string v3, "com.baidu.android.pushservice.PushService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 711
    const v2, #id@iqiyi_listview#t

    invoke-virtual {p0, v2}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    .line 712
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->iQiYiInitView()V

    .line 713
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    invoke-virtual {v2, p0}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->setRemoveListener(Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveListener;)V

    .line 714
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    new-instance v3, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$8;

    invoke-direct {v3, p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$8;-><init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)V

    invoke-virtual {v2, v3}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 722
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    new-instance v3, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$9;

    invoke-direct {v3, p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$9;-><init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)V

    invoke-virtual {v2, v3}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 741
    return-void
.end method

.method private initializeTransportControlView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    if-nez v0, :cond_0

    .line 385
    const-string v0, "SlideLockScreen"

    const-string v1, "Couldn\'t find transport control widget"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportWidgetCallback:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->setCallback(Lcom/android/internal/widget/LockScreenWidgetCallback;)V

    .line 388
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private parseMoveParams([Ljava/lang/CharSequence;I)Ljava/util/ArrayList;
    .locals 19
    .parameter "entries"
    .parameter "layerCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/CharSequence;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v16, moveParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;>;"
    if-eqz p1, :cond_0

    .line 348
    move-object/from16 v10, p1

    .local v10, arr$:[Ljava/lang/CharSequence;
    :try_start_0
    array-length v15, v10

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_0
    if-ge v14, v15, :cond_0

    aget-object v12, v10, v14

    .line 349
    .local v12, entry:Ljava/lang/CharSequence;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p2

    if-lt v0, v1, :cond_1

    .line 380
    .end local v10           #arr$:[Ljava/lang/CharSequence;
    .end local v12           #entry:Ljava/lang/CharSequence;
    .end local v14           #i$:I
    .end local v15           #len$:I
    :cond_0
    :goto_1
    return-object v16

    .line 351
    .restart local v10       #arr$:[Ljava/lang/CharSequence;
    .restart local v12       #entry:Ljava/lang/CharSequence;
    .restart local v14       #i$:I
    .restart local v15       #len$:I
    :cond_1
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 352
    .local v13, group:[Ljava/lang/String;
    if-eqz v13, :cond_4

    array-length v0, v13

    move/from16 v17, v0

    const/16 v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 353
    const/4 v3, -0x1

    .line 354
    .local v3, xParam:I
    const/4 v4, -0x1

    .line 355
    .local v4, yParam:I
    const/16 v5, 0xa

    .line 357
    .local v5, moveScale:I
    const/16 v17, 0x0

    aget-object v17, v13, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string v18, "positive"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 358
    const/4 v3, 0x0

    .line 362
    :cond_2
    :goto_2
    const/16 v17, 0x1

    aget-object v17, v13, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string v18, "positive"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 363
    const/4 v4, 0x2

    .line 367
    :cond_3
    :goto_3
    const/16 v17, 0x2

    aget-object v17, v13, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 368
    const/16 v17, 0x3

    aget-object v17, v13, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->dip2px(F)I

    move-result v6

    .line 369
    .local v6, xOriginal:I
    const/16 v17, 0x4

    aget-object v17, v13, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->dip2px(F)I

    move-result v7

    .line 370
    .local v7, yOriginal:I
    const/16 v17, 0x5

    aget-object v17, v13, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 371
    .local v8, delay:I
    const/16 v17, 0x6

    aget-object v17, v13, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 372
    .local v9, duration:I
    new-instance v2, Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;

    invoke-direct/range {v2 .. v9}, Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;-><init>(IIIIIII)V

    .line 373
    .local v2, moveParam:Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    .end local v2           #moveParam:Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;
    .end local v3           #xParam:I
    .end local v4           #yParam:I
    .end local v5           #moveScale:I
    .end local v6           #xOriginal:I
    .end local v7           #yOriginal:I
    .end local v8           #delay:I
    .end local v9           #duration:I
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 359
    .restart local v3       #xParam:I
    .restart local v4       #yParam:I
    .restart local v5       #moveScale:I
    :cond_5
    const/16 v17, 0x0

    aget-object v17, v13, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string v18, "reverse"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 360
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 364
    :cond_6
    const/16 v17, 0x0

    aget-object v17, v13, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string v18, "reverse"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    if-eqz v17, :cond_3

    .line 365
    const/4 v4, 0x3

    goto/16 :goto_3

    .line 376
    .end local v3           #xParam:I
    .end local v4           #yParam:I
    .end local v5           #moveScale:I
    .end local v12           #entry:Ljava/lang/CharSequence;
    .end local v13           #group:[Ljava/lang/String;
    .end local v14           #i$:I
    .end local v15           #len$:I
    :catch_0
    move-exception v11

    .line 377
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1
.end method

.method private playItem(I)V
    .locals 8
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 937
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiCR:Landroid/content/ContentResolver;

    sget-object v1, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiUri:Landroid/net/Uri;

    int-to-long v3, p1

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 938
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 939
    const-string v0, "msgat"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 940
    .local v6, atValue:I
    const-string v0, "luke"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playItem=  ,at="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", and id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    invoke-direct {p0, v6, v7, p1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->iQiYiParsePushMeg(ILandroid/database/Cursor;I)V

    .line 942
    return-void
.end method

.method private updateAlarmInfo()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 329
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 330
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, nextAlarm:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mShowingStatus:Z

    if-eqz v3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 332
    .local v1, showAlarm:Z
    :goto_0
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mAlarmStatusView:Landroid/widget/TextView;

    const v4, #drawable@baidu_keyguard_slide_idle_alarm#t

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 334
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    .end local v0           #nextAlarm:Ljava/lang/String;
    .end local v1           #showAlarm:Z
    :cond_0
    return-void

    .restart local v0       #nextAlarm:Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 331
    goto :goto_0

    .line 334
    .restart local v1       #showAlarm:Z
    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method


# virtual methods
.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 679
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 646
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 433
    const-string v1, "SlideLockScreen"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    if-eqz v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    invoke-virtual {v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mSavedState:Landroid/os/Parcelable;

    .line 438
    :cond_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    if-eqz v1, :cond_1

    .line 439
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    invoke-virtual {v1}, Lcom/baidu/internal/keyguard/slide/TargetView;->onPause()V

    .line 442
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mReceiver:Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMmsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 452
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mSmsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 457
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mCallObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 462
    :goto_3
    :try_start_4
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mAlarmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 467
    :goto_4
    :try_start_5
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->iQiYiUnregeistObserver()V

    .line 468
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    .line 469
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 474
    :cond_2
    :goto_5
    return-void

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SlideLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 448
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 449
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "SlideLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 453
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 454
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "SlideLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 458
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 459
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "SlideLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 463
    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 464
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "SlideLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 471
    .end local v0           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 472
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "SlideLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method public onResume(I)V
    .locals 8
    .parameter "reason"

    .prologue
    .line 394
    const-string v4, "SlideLockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResume,mContext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    if-eqz v4, :cond_0

    .line 397
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mSavedState:Landroid/os/Parcelable;

    invoke-virtual {v4, v5}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 399
    :cond_0
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    if-eqz v4, :cond_1

    .line 400
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    invoke-virtual {v4}, Lcom/baidu/internal/keyguard/slide/TargetView;->onResume()V

    .line 402
    :cond_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 403
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v4, "com.baidu.keyguard.internal.SMS_MISS_UPDATED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    const-string v4, "com.baidu.keyguard.internal.CALL_MISS_UPDATED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 405
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 406
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mReceiver:Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyBroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 409
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 410
    .local v3, smsIntent:Landroid/content/Intent;
    const-string v4, "com.baidu.keyguard.internal.SMS_MISS_UPDATED"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 413
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 414
    .local v0, callIntent:Landroid/content/Intent;
    const-string v4, "com.baidu.keyguard.internal.CALL_MISS_UPDATED"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 416
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->updateAlarmInfo()V

    .line 418
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://sms/"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mSmsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 419
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://mms/"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMmsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 420
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://call_log/calls/"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mCallObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 421
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "next_alarm_formatted"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mAlarmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    .end local v0           #callIntent:Landroid/content/Intent;
    .end local v3           #smsIntent:Landroid/content/Intent;
    :goto_0
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    if-eqz v4, :cond_2

    .line 427
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    invoke-virtual {v4}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->resumeItemViewState()V

    .line 429
    :cond_2
    return-void

    .line 423
    :catch_0
    move-exception v1

    .line 424
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "SlideLockScreen"

    const-string v5, "error:"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeItem(Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;I)V
    .locals 8
    .parameter "direction"
    .parameter "position"

    .prologue
    const/4 v7, 0x0

    .line 946
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    invoke-virtual {v4}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, p2, v4

    invoke-virtual {v3, v4}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 947
    .local v2, view:Landroid/view/View;
    sget-object v3, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;->LEFT:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    iget-object v4, v4, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->removeDirection:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;

    if-ne v3, v4, :cond_1

    .line 948
    if-eqz v2, :cond_0

    .line 949
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 950
    .local v0, id:I
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiCR:Landroid/content/ContentResolver;

    sget-object v4, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiUri:Landroid/net/Uri;

    int-to-long v5, v0

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 951
    .local v1, row:I
    if-lez v1, :cond_0

    .line 952
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYimyAdapter:Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;

    invoke-virtual {v3}, Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;->notifyDataSetChanged()V

    .line 953
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    invoke-virtual {v3}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->invalidate()V

    .line 962
    .end local v0           #id:I
    .end local v1           #row:I
    :cond_0
    :goto_0
    return-void

    .line 957
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 958
    .restart local v0       #id:I
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/internal/keyguard/slide/iqiyi/PackageHelper;->isIQiyiInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 959
    invoke-direct {p0, v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->playItem(I)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->cleanUp()V

    .line 662
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 651
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 652
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter "utils"

    .prologue
    .line 656
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 657
    return-void
.end method

.method public showBouncer(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 675
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 671
    return-void
.end method
