.class public Lcom/android/internal/policy/impl/keyguard/MediatekClockView;
.super Lcom/android/internal/policy/impl/keyguard/MediatekClock;
.source "MediatekClockView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediatekClockView"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekClock;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/MediatekClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->onFinishInflate()V

    .line 36
    const v0, #id@clock_text#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClockView;->mTimeView:Landroid/widget/TextView;

    .line 37
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClockView;->mTimeView:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClockView;->mTimeView:Landroid/widget/TextView;

    const-string v1, "/system/fonts/AndroidClock.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 39
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MediatekClock$AmPm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekClock$AmPm;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekClock;Landroid/view/View;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClockView;->mAmPm:Lcom/android/internal/policy/impl/keyguard/MediatekClock$AmPm;

    .line 40
    const v0, #id@am_pm#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClockView;->mAmPmTextView:Landroid/widget/TextView;

    .line 41
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClockView;->mCalendar:Ljava/util/Calendar;

    .line 42
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekClockView;->setDateFormat()V

    .line 43
    return-void
.end method

.method public updateTime()V
    .locals 4

    .prologue
    .line 46
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 48
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClockView;->mFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 49
    .local v0, systemTime:Ljava/lang/CharSequence;
    const-string v1, "MediatekClockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyguard updateTime systemTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClockView;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClockView;->mAmPm:Lcom/android/internal/policy/impl/keyguard/MediatekClock$AmPm;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClockView;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekClock$AmPm;->setIsMorning(Z)V

    .line 52
    return-void

    .line 51
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
