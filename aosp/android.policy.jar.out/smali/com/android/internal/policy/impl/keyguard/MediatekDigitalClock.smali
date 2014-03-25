.class public Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;
.super Landroid/widget/LinearLayout;
.source "MediatekDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$FormatChangeObserver;,
        Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;
    }
.end annotation


# static fields
.field private static final HOURS:Ljava/lang/String; = "h"

.field private static final HOURS_24:Ljava/lang/String; = "kk"

.field private static final MINUTES:Ljava/lang/String; = ":mm"


# instance fields
.field private mAmPm:Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mHoursFormat:Ljava/lang/String;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLive:Z

.field private mTimeDisplayHours:Landroid/widget/TextView;

.field private mTimeDisplayMinutes:Landroid/widget/TextView;

.field private mTimeZoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mLive:Z

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$1;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mLive:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->updateTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->setDateFormat()V

    return-void
.end method

.method private setDateFormat()V
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kk"

    :goto_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mHoursFormat:Ljava/lang/String;

    .line 216
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mAmPm:Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;->setShowAmPm(Z)V

    .line 217
    return-void

    .line 215
    :cond_0
    const-string v0, "h"

    goto :goto_0

    .line 216
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateTime()V
    .locals 6

    .prologue
    .line 189
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mLive:Z

    if-eqz v3, :cond_0

    .line 190
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 192
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mTimeZoneId:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 193
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mCalendar:Ljava/util/Calendar;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mTimeZoneId:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 196
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v0, fullTimeStr:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mHoursFormat:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 198
    .local v2, newTime:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mTimeDisplayHours:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 200
    const-string v3, ":mm"

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 201
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mTimeDisplayMinutes:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_3

    const/4 v1, 0x1

    .line 205
    .local v1, isMorning:Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mAmPm:Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;

    invoke-virtual {v3, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;->setIsMorning(Z)V

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 207
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mAmPm:Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;->getAmPmText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 211
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 212
    return-void

    .line 204
    .end local v1           #isMorning:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 135
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 137
    const-string v1, "PowerOffAlarm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAttachedToWindow "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mAttached:Z

    if-eqz v1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 140
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mAttached:Z

    .line 142
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mLive:Z

    if-eqz v1, :cond_1

    .line 144
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$FormatChangeObserver;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 156
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->updateTime()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 163
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mAttached:Z

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 164
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mAttached:Z

    .line 166
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mLive:Z

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 125
    const v0, 0x2100070

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mTimeDisplayHours:Landroid/widget/TextView;

    .line 126
    const v0, 0x2100071

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mTimeDisplayMinutes:Landroid/widget/TextView;

    .line 127
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mAmPm:Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock$AmPm;

    .line 128
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 130
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->setDateFormat()V

    .line 131
    return-void
.end method

.method setLive(Z)V
    .locals 0
    .parameter "live"

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mLive:Z

    .line 221
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mTimeZoneId:Ljava/lang/String;

    .line 225
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->updateTime()V

    .line 226
    return-void
.end method

.method public updateTime(II)V
    .locals 2
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 181
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 182
    .local v0, c:Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 183
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 184
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 185
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->updateTime()V

    .line 186
    return-void
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 176
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDigitalClock;->updateTime()V

    .line 177
    return-void
.end method
