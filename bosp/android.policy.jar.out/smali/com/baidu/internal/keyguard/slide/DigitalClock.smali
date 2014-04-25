.class public Lcom/baidu/internal/keyguard/slide/DigitalClock;
.super Landroid/widget/RelativeLayout;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/slide/DigitalClock$TimeChangedReceiver;
    }
.end annotation


# static fields
.field public static final M12:Ljava/lang/String; = "h:mm"

.field public static final M24:Ljava/lang/String; = "kk:mm"

.field private static final TAG:Ljava/lang/String; = "DigitalClock"


# instance fields
.field private mAmPm:Landroid/widget/TextView;

.field private mCalendar:Ljava/util/Calendar;

.field private mClock:Landroid/widget/TextView;

.field private mDate:Landroid/widget/TextView;

.field private mFormat:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/internal/keyguard/slide/DigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock;->mHandler:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method static synthetic access$002(Lcom/baidu/internal/keyguard/slide/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/baidu/internal/keyguard/slide/DigitalClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 106
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 107
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 108
    new-instance v1, Lcom/baidu/internal/keyguard/slide/DigitalClock$TimeChangedReceiver;

    invoke-direct {v1, p0}, Lcom/baidu/internal/keyguard/slide/DigitalClock$TimeChangedReceiver;-><init>(Lcom/baidu/internal/keyguard/slide/DigitalClock;)V

    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/DigitalClock;->updateTime()V

    .line 117
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 122
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 126
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 88
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 89
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 90
    const v2, #id@clock#t

    invoke-virtual {p0, v2}, Lcom/baidu/internal/keyguard/slide/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock;->mClock:Landroid/widget/TextView;

    .line 91
    const v2, #id@am_pm#t

    invoke-virtual {p0, v2}, Lcom/baidu/internal/keyguard/slide/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock;->mAmPm:Landroid/widget/TextView;

    .line 92
    const v2, #id@date#t

    invoke-virtual {p0, v2}, Lcom/baidu/internal/keyguard/slide/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock;->mDate:Landroid/widget/TextView;

    .line 95
    :try_start_0
    const-string v2, "/system/fonts/Roboto-Thin.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 96
    .local v1, mFace:Landroid/graphics/Typeface;
    if-eqz v1, :cond_0

    .line 97
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock;->mClock:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v1           #mFace:Landroid/graphics/Typeface;
    :cond_0
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "DigitalClock"

    const-string v3, "can not read font roboto-Thin "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateTime()V
    .locals 5

    .prologue
    .line 130
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 132
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "kk:mm"

    :goto_0
    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock;->mFormat:Ljava/lang/String;

    .line 133
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock;->mFormat:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 134
    .local v1, newTime:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock;->mClock:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const-string v2, "yyyy-MM-dd E"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 139
    .local v0, newDate:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock;->mDate:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/DigitalClock;->mAmPm:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    return-void

    .line 132
    .end local v0           #newDate:Ljava/lang/CharSequence;
    .end local v1           #newTime:Ljava/lang/CharSequence;
    :cond_0
    const-string v2, "h:mm"

    goto :goto_0
.end method
