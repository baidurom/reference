.class public Lcom/baidu/internal/keyguard/space/SpaceLockScreen;
.super Landroid/widget/RelativeLayout;
.source "SpaceLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/space/SpaceLockScreen$SensorWatchThread;,
        Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyBroadcastReceiver;,
        Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyHandler;,
        Lcom/baidu/internal/keyguard/space/SpaceLockScreen$BatteryStatus;
    }
.end annotation


# static fields
.field private static final ACTION_CALL_MISS_UPDATED:Ljava/lang/String; = "com.baidu.keyguard.internal.CALL_MISS_UPDATED"

.field private static final ACTION_SMS_MISS_UPDATED:Ljava/lang/String; = "com.baidu.keyguard.internal.SMS_MISS_UPDATED"

.field private static final ALARM_ICON:I = #drawable@baidu_keyguard_slide_idle_alarm#t

.field private static final MSG_BATTERY_UPDATE:I = 0x67

.field private static final MSG_CALL_MISS_UPDATED:I = 0x66

.field private static final MSG_SMS_MISS_UPDATED:I = 0x65

.field private static final TAG:Ljava/lang/String; = "SpaceLockScreen"

.field private static mWaterTextureListener:Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;

.field private static mWaterTextureView:Lcom/baidu/internal/keyguard/space/textureview/TemplateTextureView;


# instance fields
.field private mAlarmObserver:Landroid/database/ContentObserver;

.field private mAlarmStatusView:Landroid/widget/TextView;

.field private mCallObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mEnable3dLayer:Z

.field private mGsensor:Landroid/hardware/Sensor;

.field private mHandler:Landroid/os/Handler;

.field private mInAnimation:Landroid/view/animation/Animation;

.field private mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMissCallCount:Landroid/widget/TextView;

.field private mMissContainer:Landroid/widget/LinearLayout;

.field private mMissMessageCount:Landroid/widget/TextView;

.field private mMmsObserver:Landroid/database/ContentObserver;

.field private mOutAnimation:Landroid/view/animation/Animation;

.field private mReceiver:Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyBroadcastReceiver;

.field private mRotateAnimation:Landroid/view/animation/Animation;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorWatchObject:Ljava/lang/Object;

.field private mSensorWatchStartTime:J

.field private mSensorWatchThread:Ljava/lang/Thread;

.field private mShowing:Z

.field private mSmsObserver:Landroid/database/ContentObserver;

.field private mTargetView:Lcom/baidu/internal/keyguard/space/TargetView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 10
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/high16 v9, 0x3f00

    const/4 v8, 0x1

    .line 91
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 64
    iput-boolean v8, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mEnable3dLayer:Z

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mSensorWatchObject:Ljava/lang/Object;

    .line 93
    invoke-virtual {p0, v8}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->setFocusable(Z)V

    .line 94
    invoke-virtual {p0, v8}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->setFocusableInTouchMode(Z)V

    .line 95
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->setDescendantFocusability(I)V

    .line 96
    iput-object p1, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mContext:Landroid/content/Context;

    .line 97
    iput-object p5, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 98
    iput-object p3, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 99
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 100
    .local v7, inflater:Landroid/view/LayoutInflater;
    const v0, #layout@baidu_keyguard_space#t

    invoke-virtual {v7, v0, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 101
    const v0, #id@target_view#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/space/TargetView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/space/TargetView;

    .line 102
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/space/TargetView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView;->setKeyguardCallback(Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 103
    const v0, #id@alarm_status#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mAlarmStatusView:Landroid/widget/TextView;

    .line 104
    const v0, #id@miss_container#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mMissContainer:Landroid/widget/LinearLayout;

    .line 105
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mMissContainer:Landroid/widget/LinearLayout;

    const v1, #id@miss_message_count#t

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mMissMessageCount:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mMissContainer:Landroid/widget/LinearLayout;

    const v1, #id@miss_call_count#t

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mMissCallCount:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/space/TargetView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView;->setVibrateEnabled(Z)V

    .line 110
    :cond_0
    new-instance v0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyHandler;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/space/TargetView;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mMissContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mMissMessageCount:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mMissCallCount:Landroid/widget/TextView;

    invoke-direct/range {v0 .. v5}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyHandler;-><init>(Landroid/content/Context;Lcom/baidu/internal/keyguard/space/TargetView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mHandler:Landroid/os/Handler;

    .line 111
    new-instance v0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyBroadcastReceiver;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyBroadcastReceiver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mReceiver:Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyBroadcastReceiver;

    .line 113
    new-instance v0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$1;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$1;-><init>(Lcom/baidu/internal/keyguard/space/SpaceLockScreen;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mSmsObserver:Landroid/database/ContentObserver;

    .line 127
    new-instance v0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$2;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$2;-><init>(Lcom/baidu/internal/keyguard/space/SpaceLockScreen;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mMmsObserver:Landroid/database/ContentObserver;

    .line 141
    new-instance v0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$3;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$3;-><init>(Lcom/baidu/internal/keyguard/space/SpaceLockScreen;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mCallObserver:Landroid/database/ContentObserver;

    .line 155
    new-instance v0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$4;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$4;-><init>(Lcom/baidu/internal/keyguard/space/SpaceLockScreen;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mAlarmObserver:Landroid/database/ContentObserver;

    .line 162
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mInAnimation:Landroid/view/animation/Animation;

    .line 163
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mInAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 164
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, #anim@fade_out#t

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mOutAnimation:Landroid/view/animation/Animation;

    .line 165
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mOutAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 166
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b4

    move v3, v8

    move v4, v9

    move v5, v8

    move v6, v9

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 167
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 168
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mRotateAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 169
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 170
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mRotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 171
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mEnable3dLayer:Z

    if-eqz v0, :cond_2

    .line 172
    sget-object v0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mWaterTextureView:Lcom/baidu/internal/keyguard/space/textureview/TemplateTextureView;

    if-nez v0, :cond_1

    .line 173
    new-instance v0, Lcom/baidu/internal/keyguard/space/textureview/TemplateTextureView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/internal/keyguard/space/textureview/TemplateTextureView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mWaterTextureView:Lcom/baidu/internal/keyguard/space/textureview/TemplateTextureView;

    .line 174
    new-instance v0, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mWaterTextureListener:Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;

    .line 175
    sget-object v0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mWaterTextureView:Lcom/baidu/internal/keyguard/space/textureview/TemplateTextureView;

    sget-object v1, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mWaterTextureListener:Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/space/textureview/TemplateTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 182
    :cond_1
    :goto_0
    return-void

    .line 178
    :cond_2
    sget-object v0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mWaterTextureView:Lcom/baidu/internal/keyguard/space/textureview/TemplateTextureView;

    if-eqz v0, :cond_1

    .line 179
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mWaterTextureView:Lcom/baidu/internal/keyguard/space/textureview/TemplateTextureView;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/baidu/internal/keyguard/space/SpaceLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/internal/keyguard/space/SpaceLockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->updateAlarmInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/baidu/internal/keyguard/space/SpaceLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mShowing:Z

    return v0
.end method

.method static synthetic access$400(Lcom/baidu/internal/keyguard/space/SpaceLockScreen;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mSensorWatchStartTime:J

    return-wide v0
.end method

.method static synthetic access$500()Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mWaterTextureListener:Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/internal/keyguard/space/SpaceLockScreen;)Landroid/hardware/SensorManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/internal/keyguard/space/SpaceLockScreen;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mSensorWatchObject:Ljava/lang/Object;

    return-object v0
.end method

.method private dip2px(F)I
    .locals 3
    .parameter "dpValue"

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 196
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

    .line 185
    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 186
    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, nextAlarm:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 188
    .local v1, showAlarm:Z
    :goto_0
    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mAlarmStatusView:Landroid/widget/TextView;

    const v4, #drawable@baidu_keyguard_slide_idle_alarm#t

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 190
    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    .end local v0           #nextAlarm:Ljava/lang/String;
    .end local v1           #showAlarm:Z
    :cond_0
    return-void

    .restart local v0       #nextAlarm:Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 187
    goto :goto_0

    .line 190
    .restart local v1       #showAlarm:Z
    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    .prologue
    .line 483
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 6

    .prologue
    .line 269
    const-string v3, "SpaceLockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPause,mContext="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :try_start_0
    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mReceiver:Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyBroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mMmsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 281
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mSmsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 286
    :goto_2
    :try_start_3
    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mCallObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 291
    :goto_3
    :try_start_4
    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mAlarmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 295
    :goto_4
    iget-boolean v3, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mEnable3dLayer:Z

    if-eqz v3, :cond_2

    .line 296
    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v3, :cond_0

    .line 297
    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mContext:Landroid/content/Context;

    const-string v4, "sensor"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mSensorManager:Landroid/hardware/SensorManager;

    .line 300
    :cond_0
    const v3, #id@water_layer_container#t

    invoke-virtual {p0, v3}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 301
    .local v2, waterLayerContainer:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 302
    sget-object v3, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mWaterTextureView:Lcom/baidu/internal/keyguard/space/textureview/TemplateTextureView;

    invoke-virtual {v3}, Lcom/baidu/internal/keyguard/space/textureview/TemplateTextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 304
    .local v1, parent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 305
    :try_start_5
    sget-object v3, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mWaterTextureView:Lcom/baidu/internal/keyguard/space/textureview/TemplateTextureView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 310
    :cond_1
    :goto_5
    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mSensorManager:Landroid/hardware/SensorManager;

    sget-object v4, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mWaterTextureListener:Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 311
    const-string v3, "SpaceLockScreen"

    const-string v4, "onPause unregister sensor listener "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mShowing:Z

    .line 313
    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mSensorWatchObject:Ljava/lang/Object;

    monitor-enter v4

    .line 314
    :try_start_6
    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mSensorWatchObject:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 315
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 318
    .end local v1           #parent:Landroid/view/ViewGroup;
    .end local v2           #waterLayerContainer:Landroid/view/ViewGroup;
    :cond_2
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "SpaceLockScreen"

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

    .line 277
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 278
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "SpaceLockScreen"

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

    .line 282
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 283
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "SpaceLockScreen"

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

    .line 287
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 288
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "SpaceLockScreen"

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

    .line 292
    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 293
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "SpaceLockScreen"

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

    .line 307
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #parent:Landroid/view/ViewGroup;
    .restart local v2       #waterLayerContainer:Landroid/view/ViewGroup;
    :catch_5
    move-exception v0

    .line 308
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "SpaceLockScreen"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 315
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v3
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 201
    const-string v5, "SpaceLockScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResume,mContext="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mEnable3dLayer:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mEnable3dLayer:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 203
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v5, "com.baidu.keyguard.internal.SMS_MISS_UPDATED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string v5, "com.baidu.keyguard.internal.CALL_MISS_UPDATED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mReceiver:Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyBroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 209
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 210
    .local v3, smsIntent:Landroid/content/Intent;
    const-string v5, "com.baidu.keyguard.internal.SMS_MISS_UPDATED"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 213
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 214
    .local v0, callIntent:Landroid/content/Intent;
    const-string v5, "com.baidu.keyguard.internal.CALL_MISS_UPDATED"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 216
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->updateAlarmInfo()V

    .line 218
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "content://sms/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mSmsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 219
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "content://mms/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mMmsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 220
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "content://call_log/calls/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mCallObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 221
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "next_alarm_formatted"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mAlarmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v0           #callIntent:Landroid/content/Intent;
    .end local v3           #smsIntent:Landroid/content/Intent;
    :goto_0
    iget-boolean v5, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mEnable3dLayer:Z

    if-eqz v5, :cond_2

    .line 228
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x3a98

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 229
    const-string v5, "SpaceLockScreen"

    const-string v6, "baidu_keyguard_water_shake_background"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const v5, #drawable@baidu_keyguard_water_shake_background#t

    invoke-virtual {p0, v5}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->setBackgroundResource(I)V

    .line 231
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v5, :cond_0

    .line 232
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mContext:Landroid/content/Context;

    const-string v6, "sensor"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager;

    iput-object v5, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mSensorManager:Landroid/hardware/SensorManager;

    .line 234
    :cond_0
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mGsensor:Landroid/hardware/Sensor;

    .line 236
    const v5, #id@water_layer_container#t

    invoke-virtual {p0, v5}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 237
    .local v4, waterLayerContainer:Landroid/view/ViewGroup;
    const/4 v5, 0x2

    invoke-virtual {v4, v5, v10}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 239
    :try_start_1
    sget-object v5, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mWaterTextureView:Lcom/baidu/internal/keyguard/space/textureview/TemplateTextureView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 243
    :goto_1
    sget-object v5, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mWaterTextureListener:Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;

    invoke-virtual {v5}, Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;->resetSensorData()V

    .line 244
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mSensorManager:Landroid/hardware/SensorManager;

    sget-object v6, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mWaterTextureListener:Lcom/baidu/internal/keyguard/space/textureview/AppTextureListener;

    iget-object v7, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mGsensor:Landroid/hardware/Sensor;

    invoke-virtual {v5, v6, v7, v9}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 245
    const-string v5, "SpaceLockScreen"

    const-string v6, "onResume register sensor listener "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v5, 0x0

    :try_start_2
    iput-boolean v5, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mShowing:Z

    .line 248
    iget-object v6, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mSensorWatchObject:Ljava/lang/Object;

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 249
    :try_start_3
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mSensorWatchObject:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 250
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 251
    :try_start_4
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mSensorWatchThread:Ljava/lang/Thread;

    if-eqz v5, :cond_1

    .line 252
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mSensorWatchThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->join()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 257
    :cond_1
    :goto_2
    iput-boolean v9, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mShowing:Z

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mSensorWatchStartTime:J

    .line 259
    new-instance v5, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$SensorWatchThread;

    invoke-direct {v5, p0, v10}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$SensorWatchThread;-><init>(Lcom/baidu/internal/keyguard/space/SpaceLockScreen;Lcom/baidu/internal/keyguard/space/SpaceLockScreen$1;)V

    iput-object v5, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mSensorWatchThread:Ljava/lang/Thread;

    .line 260
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mSensorWatchThread:Ljava/lang/Thread;

    const-string v6, "SensorWatchThread"

    invoke-virtual {v5, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 261
    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mSensorWatchThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 265
    .end local v4           #waterLayerContainer:Landroid/view/ViewGroup;
    :cond_2
    return-void

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "SpaceLockScreen"

    const-string v6, "error:"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 240
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v4       #waterLayerContainer:Landroid/view/ViewGroup;
    :catch_1
    move-exception v1

    .line 241
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v5, "SpaceLockScreen"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 250
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

    .line 254
    :catch_2
    move-exception v1

    .line 255
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method
