.class public Lcom/baidu/internal/keyguard/space/DigitalClock;
.super Landroid/widget/RelativeLayout;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/space/DigitalClock$TimeChangedReceiver;
    }
.end annotation


# static fields
.field public static final M12:Ljava/lang/String; = "h:mm"

.field public static final M24:Ljava/lang/String; = "kk:mm"


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
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/internal/keyguard/space/DigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/DigitalClock;->mHandler:Landroid/os/Handler;

    .line 81
    return-void
.end method

.method static synthetic access$002(Lcom/baidu/internal/keyguard/space/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/baidu/internal/keyguard/space/DigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/baidu/internal/keyguard/space/DigitalClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/DigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 95
    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Lcom/baidu/internal/keyguard/space/DigitalClock$TimeChangedReceiver;

    invoke-direct {v1, p0}, Lcom/baidu/internal/keyguard/space/DigitalClock$TimeChangedReceiver;-><init>(Lcom/baidu/internal/keyguard/space/DigitalClock;)V

    iput-object v1, p0, Lcom/baidu/internal/keyguard/space/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/DigitalClock;->updateTime()V

    .line 105
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 110
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 86
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 87
    const v0, #id@clock#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/space/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/DigitalClock;->mClock:Landroid/widget/TextView;

    .line 88
    const v0, #id@am_pm#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/space/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/DigitalClock;->mAmPm:Landroid/widget/TextView;

    .line 89
    const v0, #id@date#t

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/space/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/DigitalClock;->mDate:Landroid/widget/TextView;

    .line 90
    return-void
.end method

.method public updateTime()V
    .locals 5

    .prologue
    .line 118
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 120
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "kk:mm"

    :goto_0
    iput-object v2, p0, Lcom/baidu/internal/keyguard/space/DigitalClock;->mFormat:Ljava/lang/String;

    .line 121
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/DigitalClock;->mFormat:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 122
    .local v1, newTime:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/DigitalClock;->mClock:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, #string@baidu_keyguard_hotword_date_format#t

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 126
    .local v0, newDate:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/DigitalClock;->mDate:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/DigitalClock;->mFormat:Ljava/lang/String;

    const-string v3, "h:mm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/DigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/DigitalClock;->mAmPm:Landroid/widget/TextView;

    const v3, #string@baidu_keyguard_hotword_am#t

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 137
    :goto_1
    return-void

    .line 120
    .end local v0           #newDate:Ljava/lang/CharSequence;
    .end local v1           #newTime:Ljava/lang/CharSequence;
    :cond_0
    const-string v2, "h:mm"

    goto :goto_0

    .line 132
    .restart local v0       #newDate:Ljava/lang/CharSequence;
    .restart local v1       #newTime:Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/DigitalClock;->mAmPm:Landroid/widget/TextView;

    const v3, #string@baidu_keyguard_hotword_pm#t

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 135
    :cond_2
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/DigitalClock;->mAmPm:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
