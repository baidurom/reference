.class Lcom/baidu/internal/keyguard/slide/WeatherView;
.super Ljava/lang/Object;
.source "WeatherView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/slide/WeatherView$WeatherStatus;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final FADE_OUT_ANIMATION_TIME:I = 0x1f4

.field private static final FADE_OUT_BACKGROUND_TIME:I = 0x9c4

.field private static final MSG_FADE_BACKGROUND:I = 0x191

.field private static final TAG:Ljava/lang/String; = "WeatherView"


# instance fields
.field private mContainer:Landroid/view/View;

.field private mDigitalClock:Lcom/android/internal/widget/DigitalClock;

.field private final mFadeBackground:Z

.field private final mHandler:Landroid/os/Handler;

.field private mTemperatureUnit:Ljava/lang/String;

.field private mUnlockView:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

.field private mWeatherBackground:Landroid/widget/ImageView;

.field private mWeatherDateFormatString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;ZZLcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)V
    .locals 2
    .parameter "view"
    .parameter "fade"
    .parameter "realFeel"
    .parameter "unlockView"

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/baidu/internal/keyguard/slide/WeatherView$1;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/WeatherView$1;-><init>(Lcom/baidu/internal/keyguard/slide/WeatherView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/WeatherView;->mHandler:Landroid/os/Handler;

    .line 93
    const-string v0, "WeatherView"

    const-string v1, "create WeatherView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/WeatherView;->mContainer:Landroid/view/View;

    .line 96
    iput-object p4, p0, Lcom/baidu/internal/keyguard/slide/WeatherView;->mUnlockView:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    .line 97
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/WeatherView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040587

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/WeatherView;->mTemperatureUnit:Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/WeatherView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040588

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/WeatherView;->mWeatherDateFormatString:Ljava/lang/String;

    .line 100
    const v0, #id@time#t

    invoke-direct {p0, v0}, Lcom/baidu/internal/keyguard/slide/WeatherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/DigitalClock;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/WeatherView;->mDigitalClock:Lcom/android/internal/widget/DigitalClock;

    .line 102
    iput-boolean p2, p0, Lcom/baidu/internal/keyguard/slide/WeatherView;->mFadeBackground:Z

    .line 103
    const v0, #id@unlock#t

    invoke-direct {p0, v0}, Lcom/baidu/internal/keyguard/slide/WeatherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/WeatherView;->mWeatherBackground:Landroid/widget/ImageView;

    .line 104
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/WeatherView;->mFadeBackground:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/WeatherView;->mWeatherBackground:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/internal/keyguard/slide/WeatherView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/WeatherView;->mWeatherBackground:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/internal/keyguard/slide/WeatherView;)Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/WeatherView;->mUnlockView:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    return-object v0
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/WeatherView;->mContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/WeatherView;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private setWeatherBackground(I)V
    .locals 1
    .parameter "backgroundId"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/WeatherView;->mWeatherBackground:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/WeatherView;->mWeatherBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized activateWeatherBackground()V
    .locals 5

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/baidu/internal/keyguard/slide/WeatherView;->mFadeBackground:Z

    if-nez v2, :cond_1

    .line 118
    const-string v2, "WeatherView"

    const-string v3, "Not allow to activate weather background"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 122
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/WeatherView;->mWeatherBackground:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/WeatherView;->mWeatherBackground:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 126
    .local v0, animation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 127
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/WeatherView;->mWeatherBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 128
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/WeatherView;->mWeatherBackground:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/WeatherView;->mUnlockView:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    if-eqz v2, :cond_2

    .line 130
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/WeatherView;->mUnlockView:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->setNotificationTextClr(ZI)V

    .line 134
    :cond_2
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/WeatherView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x191

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/WeatherView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x191

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 136
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/WeatherView;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x9c4

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 117
    .end local v0           #animation:Landroid/view/animation/AlphaAnimation;
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 139
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/WeatherView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x191

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/WeatherView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x191

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 141
    .restart local v1       #msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/WeatherView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
