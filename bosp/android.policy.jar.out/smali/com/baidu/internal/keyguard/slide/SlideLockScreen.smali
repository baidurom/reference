.class public Lcom/baidu/internal/keyguard/slide/SlideLockScreen;
.super Landroid/widget/RelativeLayout;
.source "SlideLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/slide/SlideLockScreen$QiYiContentObserver;,
        Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyBroadcastReceiver;,
        Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyHandler;,
        Lcom/baidu/internal/keyguard/slide/SlideLockScreen$BatteryStatus;
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

.field private static mMissCall:Landroid/view/View;

.field private static mMissCallCount:I

.field private static mMissGroup:Landroid/view/View;

.field private static mMissMsg:Landroid/view/View;

.field private static mMissMsgCount:I


# instance fields
.field private mAlarmObserver:Landroid/database/ContentObserver;

.field private mAlarmStatusView:Landroid/widget/TextView;

.field private mCallObserver:Landroid/database/ContentObserver;

.field private mCarrierView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIQiYiCR:Landroid/content/ContentResolver;

.field private mIQiYiContentObserver:Lcom/baidu/internal/keyguard/slide/SlideLockScreen$QiYiContentObserver;

.field private mIQiYiCursor:Landroid/database/Cursor;

.field private mIQiYiHandler:Landroid/os/Handler;

.field private mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

.field private mIQiYimyAdapter:Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;

.field private mInAnimation:Landroid/view/animation/Animation;

.field private mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMmsObserver:Landroid/database/ContentObserver;

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

    .line 83
    sput v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissMsgCount:I

    .line 84
    sput v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissCallCount:I

    .line 627
    const-string v0, "content://com.qiyi.video.MyContentProvider/pushmsg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 9
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/high16 v5, 0x10e

    const v1, #style@Theme.DeviceDefault#t

    const/high16 v4, 0x3f00

    const/4 v3, 0x1

    .line 199
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 74
    iput-boolean v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mShowingStatus:Z

    .line 98
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;-><init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetCallback:Lcom/baidu/internal/keyguard/slide/TargetCallback;

    .line 143
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$2;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$2;-><init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportWidgetCallback:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    .line 628
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$7;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$7;-><init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiHandler:Landroid/os/Handler;

    .line 200
    invoke-virtual {p0, v3}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->setFocusable(Z)V

    .line 201
    invoke-virtual {p0, v3}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->setFocusableInTouchMode(Z)V

    .line 202
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->setDescendantFocusability(I)V

    .line 203
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    .line 204
    iput-object p5, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 205
    iput-object p3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 206
    new-instance v7, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 207
    .local v7, contexttheme:Landroid/view/ContextThemeWrapper;
    invoke-virtual {v7, v1}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 208
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 209
    .local v8, inflater:Landroid/view/LayoutInflater;
    const v0, #layout@baidu_keyguard_slide#t

    invoke-virtual {v8, v0, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 210
    const v0, #id@music_view#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/slide/TransportControlView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    .line 211
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    invoke-direct {p0, v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->initializeTransportControlView(Landroid/view/View;)V

    .line 212
    const v0, #id@target_view#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/slide/TargetView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    .line 213
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TargetView;->setKeyguardCallback(Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 214
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetCallback:Lcom/baidu/internal/keyguard/slide/TargetCallback;

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TargetView;->setTargetCallback(Lcom/baidu/internal/keyguard/slide/TargetCallback;)V

    .line 215
    const v0, #id@slide_miss_call_and_mms#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissGroup:Landroid/view/View;

    .line 216
    const v0, #id@miss_mms#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissMsg:Landroid/view/View;

    .line 217
    const v0, #id@miss_call#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissCall:Landroid/view/View;

    .line 218
    const v0, #id@alarm_status#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mAlarmStatusView:Landroid/widget/TextView;

    .line 235
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TargetView;->setVibrateEnabled(Z)V

    .line 238
    :cond_0
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyHandler;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    invoke-direct {v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyHandler;-><init>(Landroid/content/Context;Lcom/baidu/internal/keyguard/slide/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mHandler:Landroid/os/Handler;

    .line 239
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyBroadcastReceiver;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyBroadcastReceiver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mReceiver:Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyBroadcastReceiver;

    .line 241
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$3;-><init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mSmsObserver:Landroid/database/ContentObserver;

    .line 255
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$4;-><init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMmsObserver:Landroid/database/ContentObserver;

    .line 269
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$5;-><init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mCallObserver:Landroid/database/ContentObserver;

    .line 283
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$6;-><init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mAlarmObserver:Landroid/database/ContentObserver;

    .line 290
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mInAnimation:Landroid/view/animation/Animation;

    .line 291
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 292
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, #anim@fade_out#t

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mOutAnimation:Landroid/view/animation/Animation;

    .line 293
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 294
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b4

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 295
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 296
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mRotateAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 297
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 298
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mRotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 299
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->initIQiYi()V

    .line 300
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/TransportControlView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mInAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->updateAlarmInfo()V

    return-void
.end method

.method static synthetic access$1200()Landroid/view/View;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissMsg:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300()Landroid/view/View;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissCall:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYimyAdapter:Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissCallCount:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissCallCount:I

    return p0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissMsgCount:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissMsgCount:I

    return p0
.end method

.method static synthetic access$400()Landroid/view/View;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissGroup:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/TargetView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mRotateAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private dip2px(F)I
    .locals 3
    .parameter "dpValue"

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 314
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

    .line 661
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiCR:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiCR:Landroid/content/ContentResolver;

    .line 664
    :cond_0
    const-string v0, "content://com.qiyi.video.MyContentProvider/pushmsg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 665
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiCR:Landroid/content/ContentResolver;

    const-string v5, "_id desc"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiCursor:Landroid/database/Cursor;

    .line 666
    new-instance v0, Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiCursor:Landroid/database/Cursor;

    invoke-direct {v0, v2, v3}, Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYimyAdapter:Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;

    .line 667
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYimyAdapter:Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;

    invoke-virtual {v0, v2}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 668
    invoke-direct {p0, v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->iQiYiRegeistObserver(Landroid/net/Uri;)V

    .line 669
    return-void
.end method

.method private iQiYiParsePushMeg(ILandroid/database/Cursor;I)V
    .locals 26
    .parameter "atValue"
    .parameter "cursor"
    .parameter "did"

    .prologue
    .line 698
    packed-switch p1, :pswitch_data_0

    .line 809
    :pswitch_0
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 810
    .local v10, lauchApp:Landroid/content/Intent;
    const-string v22, "com.qiyi.video"

    const-string v23, "org.qiyi.android.video.MainActivity"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 811
    const-string v22, "org.qiyi.android.video.MAIN"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 812
    const/high16 v22, 0x1000

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 814
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 818
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 821
    .end local v10           #lauchApp:Landroid/content/Intent;
    :cond_0
    :goto_1
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiCR:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    sget-object v23, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiUri:Landroid/net/Uri;

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v23 .. v25}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 822
    .local v16, row:I
    if-lez v16, :cond_1

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYimyAdapter:Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;->notifyDataSetChanged()V

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->invalidate()V

    .line 826
    :cond_1
    if-eqz p2, :cond_2

    .line 827
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 829
    :cond_2
    return-void

    .line 703
    .end local v16           #row:I
    :pswitch_2
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 704
    .local v8, intentToLauchApp:Landroid/content/Intent;
    const-string v22, "com.qiyi.video"

    const-string v23, "org.qiyi.android.video.MainActivity"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 705
    const-string v22, "org.qiyi.android.video.MAIN"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    const/high16 v22, 0x1000

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 707
    const-string v22, "KEY_INIT_TYPE"

    const/16 v23, 0x4

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 709
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 713
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_1

    .line 710
    :catch_0
    move-exception v4

    .line 711
    .local v4, e:Ljava/lang/Exception;
    const-string v22, "SlideLockScreen"

    const-string v23, "startActivity fail:"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 716
    .end local v4           #e:Ljava/lang/Exception;
    .end local v8           #intentToLauchApp:Landroid/content/Intent;
    :pswitch_3
    const-string v22, "pushAlbum_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 717
    .local v14, pushAlbum_id:I
    const/16 v21, 0x0

    .line 719
    .local v21, tvId1:I
    const-string v22, "luke"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onItemClick  pushAlbum_id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    new-instance v22, Ljava/lang/StringBuffer;

    const-string v23, "//self/res.made"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v23, "-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, "aid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, "-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, "cid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, "-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, "tvid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, "-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, "order="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, "-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, "identifier="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, "coolpad"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 723
    .local v11, mUrl:Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 724
    .local v5, intent:Landroid/content/Intent;
    const-string v22, "com.qiyi.video"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    const-string v22, "android.intent.action.qiyivideo.player"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 726
    const/high16 v22, 0x1000

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 727
    const-string v22, "url"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 733
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto/16 :goto_1

    .line 730
    :catch_1
    move-exception v4

    .line 731
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v22, "SlideLockScreen"

    const-string v23, "startActivity fail:"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 736
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v11           #mUrl:Ljava/lang/String;
    .end local v14           #pushAlbum_id:I
    .end local v21           #tvId1:I
    :pswitch_4
    const-string v22, "msgav"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 737
    .local v19, topicIdAndTitleStr:Ljava/lang/String;
    const-string v22, "luke"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "topicIdAndTitleStr  av="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    if-eqz v19, :cond_0

    const-string v22, "_"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 739
    const-string v22, "_"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 740
    .local v18, topicIdAndTitle:[Ljava/lang/String;
    const/16 v22, 0x0

    aget-object v22, v18, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 741
    .local v17, topicId:I
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 742
    .local v9, intentToLauchSpecial:Landroid/content/Intent;
    const-string v22, "com.qiyi.video"

    const-string v23, "org.qiyi.android.video.MainActivity"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 743
    const/high16 v22, 0x1000

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 744
    const-string v22, "KEY_INIT_TYPE"

    const/16 v23, 0x4

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 745
    const-string v22, "START_PAGE_NO"

    const/16 v23, 0xd

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 746
    const-string v22, "AlbumId"

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 747
    const-string v22, "categoryid"

    const/16 v23, 0x14

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 748
    const-string v22, "Title"

    const/16 v23, 0x1

    aget-object v23, v18, v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 750
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 754
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto/16 :goto_1

    .line 751
    :catch_2
    move-exception v4

    .line 752
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v22, "SlideLockScreen"

    const-string v23, "startActivity fail:"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 758
    .end local v4           #e:Ljava/lang/Exception;
    .end local v9           #intentToLauchSpecial:Landroid/content/Intent;
    .end local v17           #topicId:I
    .end local v18           #topicIdAndTitle:[Ljava/lang/String;
    .end local v19           #topicIdAndTitleStr:Ljava/lang/String;
    :pswitch_5
    const-string v22, "fav_albumId"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 759
    .local v15, pushAlbum_id2:I
    const-string v22, "msgtvid"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 760
    .local v20, tvId:I
    const-string v22, "luke"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onItemClick  pushAlbum_id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    new-instance v22, Ljava/lang/StringBuffer;

    const-string v23, "//self/res.made"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v23, "-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, "aid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, "-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, "cid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, "-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, "tvid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, "-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, "order="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, "-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, "identifier="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, "coolpad"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    .line 764
    .local v12, mUrl2:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 765
    .local v6, intent2:Landroid/content/Intent;
    const-string v22, "com.qiyi.video"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 766
    const-string v22, "android.intent.action.qiyivideo.player"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 767
    const/high16 v22, 0x1000

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 768
    const-string v22, "url"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 774
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto/16 :goto_1

    .line 771
    :catch_3
    move-exception v4

    .line 772
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v22, "SlideLockScreen"

    const-string v23, "startActivity fail:"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 777
    .end local v4           #e:Ljava/lang/Exception;
    .end local v6           #intent2:Landroid/content/Intent;
    .end local v12           #mUrl2:Ljava/lang/String;
    .end local v15           #pushAlbum_id2:I
    .end local v20           #tvId:I
    :pswitch_6
    const-string v22, "msgav"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 778
    .local v2, adURL:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v22, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 779
    .local v3, browserIntent:Landroid/content/Intent;
    const/high16 v22, 0x1000

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 781
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 785
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto/16 :goto_1

    .line 782
    :catch_4
    move-exception v4

    .line 783
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v22, "SlideLockScreen"

    const-string v23, "startActivity fail:"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 790
    .end local v2           #adURL:Ljava/lang/String;
    .end local v3           #browserIntent:Landroid/content/Intent;
    .end local v4           #e:Ljava/lang/Exception;
    :pswitch_7
    const/16 v13, 0x9

    .line 791
    .local v13, pageNo:I
    const/16 v22, 0x9

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 792
    const/16 v13, 0xa

    .line 796
    :goto_7
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 797
    .local v7, intentBuy:Landroid/content/Intent;
    const-string v22, "com.qiyi.video"

    const-string v23, "org.qiyi.android.video.MainActivity"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 798
    const/high16 v22, 0x1000

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 799
    const-string v22, "KEY_INIT_TYPE"

    const/16 v23, 0x4

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 800
    const-string v22, "START_PAGE_NO"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 802
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 806
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto/16 :goto_1

    .line 794
    .end local v7           #intentBuy:Landroid/content/Intent;
    :cond_3
    const/16 v13, 0xb

    goto :goto_7

    .line 803
    .restart local v7       #intentBuy:Landroid/content/Intent;
    :catch_5
    move-exception v4

    .line 804
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v22, "SlideLockScreen"

    const-string v23, "startActivity fail:"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 815
    .end local v4           #e:Ljava/lang/Exception;
    .end local v7           #intentBuy:Landroid/content/Intent;
    .end local v13           #pageNo:I
    .restart local v10       #lauchApp:Landroid/content/Intent;
    :catch_6
    move-exception v4

    .line 816
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v22, "SlideLockScreen"

    const-string v23, "startActivity fail:"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 698
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
    .end packed-switch
.end method

.method private iQiYiRegeistObserver(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 673
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiContentObserver:Lcom/baidu/internal/keyguard/slide/SlideLockScreen$QiYiContentObserver;

    if-nez v0, :cond_0

    .line 674
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$QiYiContentObserver;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$QiYiContentObserver;-><init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiContentObserver:Lcom/baidu/internal/keyguard/slide/SlideLockScreen$QiYiContentObserver;

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiContentObserver:Lcom/baidu/internal/keyguard/slide/SlideLockScreen$QiYiContentObserver;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 677
    return-void
.end method

.method private initIQiYi()V
    .locals 3

    .prologue
    .line 643
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 644
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.qiyi.video.screenoffview"

    const-string v2, "com.qiyi.video.screenoffview.data.PushMsgService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 645
    const-string v1, "com.qiyi.video.PushMsgService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 647
    const v1, #id@iqiyi_listview#t

    invoke-virtual {p0, v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    .line 648
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->iQiYiInitView()V

    .line 649
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    invoke-virtual {v1, p0}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->setRemoveListener(Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveListener;)V

    .line 650
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    new-instance v2, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$8;

    invoke-direct {v2, p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$8;-><init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)V

    invoke-virtual {v1, v2}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 658
    return-void
.end method

.method private initializeTransportControlView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    if-nez v0, :cond_0

    .line 359
    const-string v0, "SlideLockScreen"

    const-string v1, "Couldn\'t find transport control widget"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportWidgetCallback:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->setCallback(Lcom/android/internal/widget/LockScreenWidgetCallback;)V

    .line 362
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
    .line 319
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v16, moveParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;>;"
    if-eqz p1, :cond_0

    .line 322
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

    .line 323
    .local v12, entry:Ljava/lang/CharSequence;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p2

    if-lt v0, v1, :cond_1

    .line 354
    .end local v10           #arr$:[Ljava/lang/CharSequence;
    .end local v12           #entry:Ljava/lang/CharSequence;
    .end local v14           #i$:I
    .end local v15           #len$:I
    :cond_0
    :goto_1
    return-object v16

    .line 325
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

    .line 326
    .local v13, group:[Ljava/lang/String;
    if-eqz v13, :cond_4

    array-length v0, v13

    move/from16 v17, v0

    const/16 v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 327
    const/4 v3, -0x1

    .line 328
    .local v3, xParam:I
    const/4 v4, -0x1

    .line 329
    .local v4, yParam:I
    const/16 v5, 0xa

    .line 331
    .local v5, moveScale:I
    const/16 v17, 0x0

    aget-object v17, v13, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string v18, "positive"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 332
    const/4 v3, 0x0

    .line 336
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

    .line 337
    const/4 v4, 0x2

    .line 341
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

    .line 342
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

    .line 343
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

    .line 344
    .local v7, yOriginal:I
    const/16 v17, 0x5

    aget-object v17, v13, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 345
    .local v8, delay:I
    const/16 v17, 0x6

    aget-object v17, v13, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 346
    .local v9, duration:I
    new-instance v2, Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;

    invoke-direct/range {v2 .. v9}, Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;-><init>(IIIIIII)V

    .line 347
    .local v2, moveParam:Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
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

    .line 333
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

    .line 334
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 338
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

    .line 339
    const/4 v4, 0x3

    goto/16 :goto_3

    .line 350
    .end local v3           #xParam:I
    .end local v4           #yParam:I
    .end local v5           #moveScale:I
    .end local v12           #entry:Ljava/lang/CharSequence;
    .end local v13           #group:[Ljava/lang/String;
    .end local v14           #i$:I
    .end local v15           #len$:I
    :catch_0
    move-exception v11

    .line 351
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1
.end method

.method private playItem(I)V
    .locals 8
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 832
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

    .line 833
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 834
    const-string v0, "msgat"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 835
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

    .line 836
    invoke-direct {p0, v6, v7, p1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->iQiYiParsePushMeg(ILandroid/database/Cursor;I)V

    .line 837
    return-void
.end method

.method private updateAlarmInfo()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 303
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 304
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, nextAlarm:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mShowingStatus:Z

    if-eqz v3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 306
    .local v1, showAlarm:Z
    :goto_0
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mAlarmStatusView:Landroid/widget/TextView;

    const v4, #drawable@baidu_keyguard_slide_idle_alarm#t

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 308
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    .end local v0           #nextAlarm:Ljava/lang/String;
    .end local v1           #showAlarm:Z
    :cond_0
    return-void

    .restart local v0       #nextAlarm:Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 305
    goto :goto_0

    .line 308
    .restart local v1       #showAlarm:Z
    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->cleanUp()V

    .line 618
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 612
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 404
    const-string v1, "SlideLockScreen"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    invoke-virtual {v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mSavedState:Landroid/os/Parcelable;

    .line 409
    :cond_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    if-eqz v1, :cond_1

    .line 410
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    invoke-virtual {v1}, Lcom/baidu/internal/keyguard/slide/TargetView;->onPause()V

    .line 413
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mReceiver:Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMmsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 423
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mSmsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 428
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mCallObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 433
    :goto_3
    :try_start_4
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mAlarmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 438
    :goto_4
    :try_start_5
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    .line 439
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 444
    :cond_2
    :goto_5
    return-void

    .line 414
    :catch_0
    move-exception v0

    .line 415
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

    .line 419
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 420
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

    .line 424
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 425
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

    .line 429
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 430
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

    .line 434
    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 435
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

    .line 441
    .end local v0           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 442
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

.method public onResume()V
    .locals 8

    .prologue
    .line 368
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

    .line 370
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    if-eqz v4, :cond_0

    .line 371
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mSavedState:Landroid/os/Parcelable;

    invoke-virtual {v4, v5}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 373
    :cond_0
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    if-eqz v4, :cond_1

    .line 374
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    invoke-virtual {v4}, Lcom/baidu/internal/keyguard/slide/TargetView;->onResume()V

    .line 376
    :cond_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 377
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v4, "com.baidu.keyguard.internal.SMS_MISS_UPDATED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    const-string v4, "com.baidu.keyguard.internal.CALL_MISS_UPDATED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 380
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mReceiver:Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyBroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 383
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 384
    .local v3, smsIntent:Landroid/content/Intent;
    const-string v4, "com.baidu.keyguard.internal.SMS_MISS_UPDATED"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 387
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 388
    .local v0, callIntent:Landroid/content/Intent;
    const-string v4, "com.baidu.keyguard.internal.CALL_MISS_UPDATED"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 390
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->updateAlarmInfo()V

    .line 392
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://sms/"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mSmsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 393
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://mms/"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMmsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 394
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://call_log/calls/"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mCallObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 395
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

    .line 400
    .end local v0           #callIntent:Landroid/content/Intent;
    .end local v3           #smsIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 397
    :catch_0
    move-exception v1

    .line 398
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

    .line 841
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    invoke-virtual {v4}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, p2, v4

    invoke-virtual {v3, v4}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 842
    .local v2, view:Landroid/view/View;
    sget-object v3, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;->LEFT:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    iget-object v4, v4, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->removeDirection:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView$RemoveDirection;

    if-ne v3, v4, :cond_1

    .line 843
    if-eqz v2, :cond_0

    .line 844
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 845
    .local v0, id:I
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiCR:Landroid/content/ContentResolver;

    sget-object v4, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiUri:Landroid/net/Uri;

    int-to-long v5, v0

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 846
    .local v1, row:I
    if-lez v1, :cond_0

    .line 847
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYimyAdapter:Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;

    invoke-virtual {v3}, Lcom/baidu/internal/keyguard/slide/iqiyi/MyCursorAdapter;->notifyDataSetChanged()V

    .line 848
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mIQiYiShowMsgListView:Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;

    invoke-virtual {v3}, Lcom/baidu/internal/keyguard/slide/iqiyi/SlideListView;->invalidate()V

    .line 857
    .end local v0           #id:I
    .end local v1           #row:I
    :cond_0
    :goto_0
    return-void

    .line 852
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 853
    .restart local v0       #id:I
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/internal/keyguard/slide/iqiyi/PackageHelper;->isIQiyiInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 854
    invoke-direct {p0, v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->playItem(I)V

    goto :goto_0
.end method
