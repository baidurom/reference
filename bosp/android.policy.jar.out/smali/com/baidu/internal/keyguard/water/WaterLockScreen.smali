.class public Lcom/baidu/internal/keyguard/water/WaterLockScreen;
.super Landroid/widget/RelativeLayout;
.source "WaterLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/water/WaterLockScreen$SensorWatchThread;,
        Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyBroadcastReceiver;,
        Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyHandler;,
        Lcom/baidu/internal/keyguard/water/WaterLockScreen$BatteryStatus;,
        Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyKeyguardActivityLauncher;
    }
.end annotation


# static fields
.field private static final ACTION_CALL_MISS_UPDATED:Ljava/lang/String; = "com.baidu.keyguard.internal.CALL_MISS_UPDATED"

.field private static final ACTION_SMS_MISS_UPDATED:Ljava/lang/String; = "com.baidu.keyguard.internal.SMS_MISS_UPDATED"

.field private static final ALARM_ICON:I = #drawable@baidu_keyguard_slide_idle_alarm#t

.field private static final MSG_BATTERY_UPDATE:I = 0x67

.field private static final MSG_CALL_MISS_UPDATED:I = 0x66

.field private static final MSG_SMS_MISS_UPDATED:I = 0x65

.field private static final TAG:Ljava/lang/String; = "WaterLockScreen"

.field private static mWaterTextureListener:Lcom/baidu/internal/keyguard/water/textureview/AppTextureListener;

.field private static mWaterTextureView:Lcom/baidu/internal/keyguard/water/textureview/TemplateTextureView;


# instance fields
.field private mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

.field private mAlarmObserver:Landroid/database/ContentObserver;

.field private mAlarmStatusView:Landroid/widget/TextView;

.field private mCallObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mEnable3dLayer:Z

.field private mGsensor:Landroid/hardware/Sensor;

.field private mHandler:Landroid/os/Handler;

.field private mInAnimation:Landroid/view/animation/Animation;

.field private mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMissCallCount:Landroid/widget/TextView;

.field private mMissContainer:Landroid/widget/LinearLayout;

.field private mMissMessageCount:Landroid/widget/TextView;

.field private mMmsObserver:Landroid/database/ContentObserver;

.field private mOutAnimation:Landroid/view/animation/Animation;

.field private mReceiver:Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyBroadcastReceiver;

.field private mRotateAnimation:Landroid/view/animation/Animation;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorWatchObject:Ljava/lang/Object;

.field private mSensorWatchStartTime:J

.field private mSensorWatchThread:Ljava/lang/Thread;

.field private mShowing:Z

.field private mSmsObserver:Landroid/database/ContentObserver;

.field private mTargetView:Lcom/baidu/internal/keyguard/water/TargetView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 10
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/high16 v9, 0x3f00

    const/4 v8, 0x1

    .line 112
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 66
    iput-boolean v8, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mEnable3dLayer:Z

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mSensorWatchObject:Ljava/lang/Object;

    .line 113
    invoke-virtual {p0, v8}, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->setFitsSystemWindows(Z)V

    .line 114
    const-string v0, "WaterLockScreen"

    const-string v1, "create WaterLockScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0, v8}, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->setFocusable(Z)V

    .line 117
    invoke-virtual {p0, v8}, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->setFocusableInTouchMode(Z)V

    .line 118
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->setDescendantFocusability(I)V

    .line 119
    iput-object p1, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mContext:Landroid/content/Context;

    .line 120
    iput-object p5, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 121
    iput-object p3, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 122
    new-instance v0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyKeyguardActivityLauncher;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyKeyguardActivityLauncher;-><init>(Lcom/baidu/internal/keyguard/water/WaterLockScreen;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    .line 123
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 124
    .local v7, inflater:Landroid/view/LayoutInflater;
    const v0, #layout@baidu_keyguard_water#t

    invoke-virtual {v7, v0, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 125
    const v0, #id@target_view#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/water/TargetView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/water/TargetView;

    .line 126
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/water/TargetView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/water/TargetView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 127
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/water/TargetView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/water/TargetView;->setActivityLauncher(Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;)V

    .line 128
    const v0, #id@alarm_status#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mAlarmStatusView:Landroid/widget/TextView;

    .line 129
    const v0, #id@miss_container#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mMissContainer:Landroid/widget/LinearLayout;

    .line 130
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mMissContainer:Landroid/widget/LinearLayout;

    const v1, #id@miss_message_count#t

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mMissMessageCount:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mMissContainer:Landroid/widget/LinearLayout;

    const v1, #id@miss_call_count#t

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mMissCallCount:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/water/TargetView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/water/TargetView;->setVibrateEnabled(Z)V

    .line 135
    :cond_0
    new-instance v0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyHandler;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/water/TargetView;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mMissContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mMissMessageCount:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mMissCallCount:Landroid/widget/TextView;

    invoke-direct/range {v0 .. v5}, Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyHandler;-><init>(Landroid/content/Context;Lcom/baidu/internal/keyguard/water/TargetView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mHandler:Landroid/os/Handler;

    .line 136
    new-instance v0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyBroadcastReceiver;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyBroadcastReceiver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mReceiver:Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyBroadcastReceiver;

    .line 138
    new-instance v0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$1;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/baidu/internal/keyguard/water/WaterLockScreen$1;-><init>(Lcom/baidu/internal/keyguard/water/WaterLockScreen;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mSmsObserver:Landroid/database/ContentObserver;

    .line 152
    new-instance v0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$2;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/baidu/internal/keyguard/water/WaterLockScreen$2;-><init>(Lcom/baidu/internal/keyguard/water/WaterLockScreen;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mMmsObserver:Landroid/database/ContentObserver;

    .line 166
    new-instance v0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$3;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/baidu/internal/keyguard/water/WaterLockScreen$3;-><init>(Lcom/baidu/internal/keyguard/water/WaterLockScreen;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mCallObserver:Landroid/database/ContentObserver;

    .line 180
    new-instance v0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$4;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/baidu/internal/keyguard/water/WaterLockScreen$4;-><init>(Lcom/baidu/internal/keyguard/water/WaterLockScreen;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mAlarmObserver:Landroid/database/ContentObserver;

    .line 187
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mInAnimation:Landroid/view/animation/Animation;

    .line 188
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mInAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 189
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, #anim@fade_out#t

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mOutAnimation:Landroid/view/animation/Animation;

    .line 190
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mOutAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 191
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b4

    move v3, v8

    move v4, v9

    move v5, v8

    move v6, v9

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 192
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 193
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mRotateAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 194
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 195
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mRotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 196
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mEnable3dLayer:Z

    if-eqz v0, :cond_2

    .line 197
    sget-object v0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mWaterTextureView:Lcom/baidu/internal/keyguard/water/textureview/TemplateTextureView;

    if-nez v0, :cond_1

    .line 198
    new-instance v0, Lcom/baidu/internal/keyguard/water/textureview/TemplateTextureView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/internal/keyguard/water/textureview/TemplateTextureView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mWaterTextureView:Lcom/baidu/internal/keyguard/water/textureview/TemplateTextureView;

    .line 199
    new-instance v0, Lcom/baidu/internal/keyguard/water/textureview/AppTextureListener;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/internal/keyguard/water/textureview/AppTextureListener;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mWaterTextureListener:Lcom/baidu/internal/keyguard/water/textureview/AppTextureListener;

    .line 200
    sget-object v0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mWaterTextureView:Lcom/baidu/internal/keyguard/water/textureview/TemplateTextureView;

    sget-object v1, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mWaterTextureListener:Lcom/baidu/internal/keyguard/water/textureview/AppTextureListener;

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/water/textureview/TemplateTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 207
    :cond_1
    :goto_0
    return-void

    .line 203
    :cond_2
    sget-object v0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mWaterTextureView:Lcom/baidu/internal/keyguard/water/textureview/TemplateTextureView;

    if-eqz v0, :cond_1

    .line 204
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mWaterTextureView:Lcom/baidu/internal/keyguard/water/textureview/TemplateTextureView;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/baidu/internal/keyguard/water/WaterLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/internal/keyguard/water/WaterLockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/internal/keyguard/water/WaterLockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/internal/keyguard/water/WaterLockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->updateAlarmInfo()V

    return-void
.end method

.method static synthetic access$500(Lcom/baidu/internal/keyguard/water/WaterLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mShowing:Z

    return v0
.end method

.method static synthetic access$600(Lcom/baidu/internal/keyguard/water/WaterLockScreen;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mSensorWatchStartTime:J

    return-wide v0
.end method

.method static synthetic access$700()Lcom/baidu/internal/keyguard/water/textureview/AppTextureListener;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mWaterTextureListener:Lcom/baidu/internal/keyguard/water/textureview/AppTextureListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/internal/keyguard/water/WaterLockScreen;)Landroid/hardware/SensorManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/baidu/internal/keyguard/water/WaterLockScreen;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mSensorWatchObject:Ljava/lang/Object;

    return-object v0
.end method

.method private dip2px(F)I
    .locals 3
    .parameter "dpValue"

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 227
    .local v0, scale:F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private updateAlarmInfo()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 210
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 211
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, nextAlarm:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 213
    .local v1, showAlarm:Z
    :goto_0
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mAlarmStatusView:Landroid/widget/TextView;

    const v4, #drawable@baidu_keyguard_slide_idle_alarm#t

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 215
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    .end local v0           #nextAlarm:Ljava/lang/String;
    .end local v1           #showAlarm:Z
    :cond_0
    return-void

    .restart local v0       #nextAlarm:Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 212
    goto :goto_0

    .line 215
    .restart local v1       #showAlarm:Z
    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method


# virtual methods
.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 536
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 221
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 222
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->onPause()V

    .line 223
    return-void
.end method

.method public onPause()V
    .locals 6

    .prologue
    .line 297
    const-string v3, "WaterLockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPause,mContext="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :try_start_0
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mReceiver:Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyBroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mMmsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 309
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mSmsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 314
    :goto_2
    :try_start_3
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mCallObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 319
    :goto_3
    :try_start_4
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mAlarmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 323
    :goto_4
    iget-boolean v3, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mEnable3dLayer:Z

    if-eqz v3, :cond_2

    .line 324
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v3, :cond_0

    .line 325
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mContext:Landroid/content/Context;

    const-string v4, "sensor"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mSensorManager:Landroid/hardware/SensorManager;

    .line 328
    :cond_0
    const v3, #id@water_layer_container#t

    invoke-virtual {p0, v3}, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 329
    .local v2, waterLayerContainer:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 330
    sget-object v3, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mWaterTextureView:Lcom/baidu/internal/keyguard/water/textureview/TemplateTextureView;

    invoke-virtual {v3}, Lcom/baidu/internal/keyguard/water/textureview/TemplateTextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 332
    .local v1, parent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 333
    :try_start_5
    sget-object v3, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mWaterTextureView:Lcom/baidu/internal/keyguard/water/textureview/TemplateTextureView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 338
    :cond_1
    :goto_5
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mSensorManager:Landroid/hardware/SensorManager;

    sget-object v4, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mWaterTextureListener:Lcom/baidu/internal/keyguard/water/textureview/AppTextureListener;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 339
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mShowing:Z

    .line 340
    iget-object v4, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mSensorWatchObject:Ljava/lang/Object;

    monitor-enter v4

    .line 341
    :try_start_6
    iget-object v3, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mSensorWatchObject:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 342
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 345
    .end local v1           #parent:Landroid/view/ViewGroup;
    .end local v2           #waterLayerContainer:Landroid/view/ViewGroup;
    :cond_2
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "WaterLockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 305
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 306
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "WaterLockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 310
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 311
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "WaterLockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 315
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 316
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "WaterLockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 320
    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 321
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "WaterLockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 335
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #parent:Landroid/view/ViewGroup;
    .restart local v2       #waterLayerContainer:Landroid/view/ViewGroup;
    :catch_5
    move-exception v0

    .line 336
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "WaterLockScreen"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 342
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v3
.end method

.method public onResume(I)V
    .locals 11
    .parameter "reason"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 232
    const-string v5, "WaterLockScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResume,mContext="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mEnable3dLayer:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mEnable3dLayer:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 234
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v5, "com.baidu.keyguard.internal.SMS_MISS_UPDATED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    const-string v5, "com.baidu.keyguard.internal.CALL_MISS_UPDATED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mReceiver:Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyBroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 240
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 241
    .local v3, smsIntent:Landroid/content/Intent;
    const-string v5, "com.baidu.keyguard.internal.SMS_MISS_UPDATED"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 244
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 245
    .local v0, callIntent:Landroid/content/Intent;
    const-string v5, "com.baidu.keyguard.internal.CALL_MISS_UPDATED"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 247
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->updateAlarmInfo()V

    .line 249
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "content://sms/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mSmsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 250
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "content://mms/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mMmsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 251
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "content://call_log/calls/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mCallObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 252
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "next_alarm_formatted"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mAlarmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v0           #callIntent:Landroid/content/Intent;
    .end local v3           #smsIntent:Landroid/content/Intent;
    :goto_0
    iget-boolean v5, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mEnable3dLayer:Z

    if-eqz v5, :cond_2

    .line 259
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x3a98

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 260
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v5, :cond_0

    .line 261
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mContext:Landroid/content/Context;

    const-string v6, "sensor"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager;

    iput-object v5, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mSensorManager:Landroid/hardware/SensorManager;

    .line 263
    :cond_0
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mGsensor:Landroid/hardware/Sensor;

    .line 265
    const v5, #id@water_layer_container#t

    invoke-virtual {p0, v5}, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 266
    .local v4, waterLayerContainer:Landroid/view/ViewGroup;
    const/4 v5, 0x2

    invoke-virtual {v4, v5, v10}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 268
    :try_start_1
    sget-object v5, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mWaterTextureView:Lcom/baidu/internal/keyguard/water/textureview/TemplateTextureView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 272
    :goto_1
    sget-object v5, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mWaterTextureListener:Lcom/baidu/internal/keyguard/water/textureview/AppTextureListener;

    invoke-virtual {v5}, Lcom/baidu/internal/keyguard/water/textureview/AppTextureListener;->resetSensorData()V

    .line 273
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mSensorManager:Landroid/hardware/SensorManager;

    sget-object v6, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mWaterTextureListener:Lcom/baidu/internal/keyguard/water/textureview/AppTextureListener;

    iget-object v7, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mGsensor:Landroid/hardware/Sensor;

    invoke-virtual {v5, v6, v7, v9}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 275
    const/4 v5, 0x0

    :try_start_2
    iput-boolean v5, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mShowing:Z

    .line 276
    iget-object v6, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mSensorWatchObject:Ljava/lang/Object;

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 277
    :try_start_3
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mSensorWatchObject:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 278
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 279
    :try_start_4
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mSensorWatchThread:Ljava/lang/Thread;

    if-eqz v5, :cond_1

    .line 280
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mSensorWatchThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->join()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 285
    :cond_1
    :goto_2
    iput-boolean v9, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mShowing:Z

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mSensorWatchStartTime:J

    .line 287
    new-instance v5, Lcom/baidu/internal/keyguard/water/WaterLockScreen$SensorWatchThread;

    invoke-direct {v5, p0, v10}, Lcom/baidu/internal/keyguard/water/WaterLockScreen$SensorWatchThread;-><init>(Lcom/baidu/internal/keyguard/water/WaterLockScreen;Lcom/baidu/internal/keyguard/water/WaterLockScreen$1;)V

    iput-object v5, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mSensorWatchThread:Ljava/lang/Thread;

    .line 288
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mSensorWatchThread:Ljava/lang/Thread;

    const-string v6, "SensorWatchThread"

    invoke-virtual {v5, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 289
    iget-object v5, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mSensorWatchThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 293
    .end local v4           #waterLayerContainer:Landroid/view/ViewGroup;
    :cond_2
    return-void

    .line 254
    :catch_0
    move-exception v1

    .line 255
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "WaterLockScreen"

    const-string v6, "error:"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 269
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v4       #waterLayerContainer:Landroid/view/ViewGroup;
    :catch_1
    move-exception v1

    .line 270
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v5, "WaterLockScreen"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 278
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2

    .line 282
    :catch_2
    move-exception v1

    .line 283
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 519
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 509
    iput-object p1, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 510
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter "utils"

    .prologue
    .line 514
    iput-object p1, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 515
    return-void
.end method

.method public showBouncer(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 532
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 528
    return-void
.end method
