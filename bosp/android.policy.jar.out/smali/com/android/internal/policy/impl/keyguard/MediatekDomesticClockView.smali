.class public Lcom/android/internal/policy/impl/keyguard/MediatekDomesticClockView;
.super Lcom/android/internal/policy/impl/keyguard/MediatekClock;
.source "MediatekDomesticClockView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediatekDomesticClockView"

.field private static final TIMEZONE_BEIJING:Ljava/lang/String; = "GMT+8:00"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekClock;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/MediatekClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->onFinishInflate()V

    .line 32
    const v0, 0x210002a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekDomesticClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDomesticClockView;->mTimeView:Landroid/widget/TextView;

    .line 33
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDomesticClockView;->mTimeView:Landroid/widget/TextView;

    const-string v1, "/system/fonts/AndroidClock.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 35
    const v0, 0x210002e

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekDomesticClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDomesticClockView;->mWeekDayView:Landroid/widget/TextView;

    .line 36
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDomesticClockView;->mTimeView:Landroid/widget/TextView;

    const-string v1, "/system/fonts/AndroidClock.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 38
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MediatekClock$AmPm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekClock$AmPm;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekClock;Landroid/view/View;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDomesticClockView;->mAmPm:Lcom/android/internal/policy/impl/keyguard/MediatekClock$AmPm;

    .line 39
    const v0, 0x210002b

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekDomesticClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDomesticClockView;->mAmPmTextView:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekDomesticClockView;->setDateFormat()V

    .line 41
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDomesticClockView;->mCalendar:Ljava/util/Calendar;

    .line 42
    return-void
.end method

.method public updateTime()V
    .locals 9

    .prologue
    .line 45
    const-string v4, "GMT+8:00"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    .line 46
    .local v2, beijingoffset:I
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    .line 48
    .local v3, currentoffset:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDomesticClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-int v7, v2, v3

    int-to-long v7, v7

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 50
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDomesticClockView;->mFormat:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDomesticClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 51
    .local v0, beijingTime:Ljava/lang/CharSequence;
    const-string v4, "MediatekDomesticClockView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keyguard updateTime beijingTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDomesticClockView;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDomesticClockView;->mAmPm:Lcom/android/internal/policy/impl/keyguard/MediatekClock$AmPm;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDomesticClockView;->mCalendar:Ljava/util/Calendar;

    const/16 v6, 0x9

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v5, v4}, Lcom/android/internal/policy/impl/keyguard/MediatekClock$AmPm;->setIsMorning(Z)V

    .line 55
    const-string v4, "E"

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDomesticClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 56
    .local v1, beijingWeekDay:Ljava/lang/CharSequence;
    const-string v4, "MediatekDomesticClockView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keyguard updateTime beijingWeekDay="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekDomesticClockView;->mWeekDayView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void

    .line 53
    .end local v1           #beijingWeekDay:Ljava/lang/CharSequence;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
