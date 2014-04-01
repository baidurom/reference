.class public Lcom/android/internal/widget/DigitalClock;
.super Landroid/widget/RelativeLayout;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/DigitalClock$FormatChangeObserver;,
        Lcom/android/internal/widget/DigitalClock$AmPm;,
        Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver;
    }
.end annotation


# static fields
.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field private static final SYSTEM:Ljava/lang/String; = "/system/fonts/"

.field private static final SYSTEM_FONT_TIME_BACKGROUND:Ljava/lang/String; = "/system/fonts/DroidSans.ttf"

.field private static final SYSTEM_FONT_TIME_FOREGROUND:Ljava/lang/String; = "/system/fonts/DroidSans.ttf"

.field private static final sBackgroundFont:Landroid/graphics/Typeface;

.field private static final sForegroundFont:Landroid/graphics/Typeface;


# instance fields
.field private mAmPm:Lcom/android/internal/widget/DigitalClock$AmPm;

.field private mAttached:I

.field private mCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeDisplayBackground:Landroid/widget/TextView;

.field private mTimeDisplayForeground:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "/system/fonts/DroidSans.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/DigitalClock;->sBackgroundFont:Landroid/graphics/Typeface;

    .line 69
    const-string v0, "/system/fonts/DroidSans.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/DigitalClock;->sForegroundFont:Landroid/graphics/Typeface;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/DigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/DigitalClock;->mAttached:I

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mHandler:Landroid/os/Handler;

    .line 179
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/widget/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/internal/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/DigitalClock;)Lcom/android/internal/widget/DigitalClock$AmPm;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/internal/widget/DigitalClock;->getAmPm()Lcom/android/internal/widget/DigitalClock$AmPm;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/DigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/internal/widget/DigitalClock;->updateTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/widget/DigitalClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/DigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/internal/widget/DigitalClock;->setDateFormat()V

    return-void
.end method

.method private getAmPm()Lcom/android/internal/widget/DigitalClock$AmPm;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mAmPm:Lcom/android/internal/widget/DigitalClock$AmPm;

    return-object v0
.end method

.method private setDateFormat()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/widget/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    .line 259
    .local v5, is24Format:Z
    if-eqz v5, :cond_3

    const v2, #string@twenty_four_hour_time_format#t

    .line 262
    .local v2, fommatStringId:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, format:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/widget/DigitalClock;->mAmPm:Lcom/android/internal/widget/DigitalClock$AmPm;

    if-nez v5, :cond_4

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Lcom/android/internal/widget/DigitalClock$AmPm;->setShowAmPm(Z)V

    .line 264
    const/4 v0, -0x1

    .line 265
    .local v0, a:I
    const/4 v6, 0x0

    .line 266
    .local v6, quoted:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 267
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 268
    .local v1, c:C
    const/16 v7, 0x27

    if-ne v1, v7, :cond_0

    .line 269
    if-nez v6, :cond_5

    move v6, v8

    .line 271
    :cond_0
    :goto_3
    if-nez v6, :cond_6

    const/16 v7, 0x61

    if-ne v1, v7, :cond_6

    .line 272
    move v0, v4

    .line 276
    .end local v1           #c:C
    :cond_1
    if-nez v0, :cond_7

    .line 277
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 281
    :cond_2
    :goto_4
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 282
    iput-object v3, p0, Lcom/android/internal/widget/DigitalClock;->mFormat:Ljava/lang/String;

    .line 283
    return-void

    .line 259
    .end local v0           #a:I
    .end local v2           #fommatStringId:I
    .end local v3           #format:Ljava/lang/String;
    .end local v4           #i:I
    .end local v6           #quoted:Z
    :cond_3
    const v2, #string@twelve_hour_time_format#t

    goto :goto_0

    .restart local v2       #fommatStringId:I
    .restart local v3       #format:Ljava/lang/String;
    :cond_4
    move v7, v9

    .line 263
    goto :goto_1

    .restart local v0       #a:I
    .restart local v1       #c:C
    .restart local v4       #i:I
    .restart local v6       #quoted:Z
    :cond_5
    move v6, v9

    .line 269
    goto :goto_3

    .line 266
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 278
    .end local v1           #c:C
    :cond_7
    if-lez v0, :cond_2

    .line 279
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v3, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4
.end method

.method private updateTime()V
    .locals 4

    .prologue
    .line 249
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 251
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/internal/widget/DigitalClock;->mFormat:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, newTime:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mTimeDisplayBackground:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mTimeDisplayForeground:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v2, p0, Lcom/android/internal/widget/DigitalClock;->mAmPm:Lcom/android/internal/widget/DigitalClock$AmPm;

    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/DigitalClock$AmPm;->setIsMorning(Z)V

    .line 255
    return-void

    .line 254
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 200
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 202
    iget v1, p0, Lcom/android/internal/widget/DigitalClock;->mAttached:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/DigitalClock;->mAttached:I

    .line 205
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 206
    new-instance v1, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver;-><init>(Lcom/android/internal/widget/DigitalClock;)V

    iput-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 207
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 208
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 216
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_1

    .line 217
    new-instance v1, Lcom/android/internal/widget/DigitalClock$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/DigitalClock$FormatChangeObserver;-><init>(Lcom/android/internal/widget/DigitalClock;)V

    iput-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 218
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/widget/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 222
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/DigitalClock;->updateTime()V

    .line 223
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 227
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 229
    iget v0, p0, Lcom/android/internal/widget/DigitalClock;->mAttached:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/DigitalClock;->mAttached:I

    .line 231
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 239
    :cond_1
    iput-object v2, p0, Lcom/android/internal/widget/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 240
    iput-object v2, p0, Lcom/android/internal/widget/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 241
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 186
    const v0, #id@timeDisplayBackground#t

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mTimeDisplayBackground:Landroid/widget/TextView;

    .line 187
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mTimeDisplayBackground:Landroid/widget/TextView;

    sget-object v1, Lcom/android/internal/widget/DigitalClock;->sBackgroundFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 188
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mTimeDisplayBackground:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    const v0, #id@timeDisplayForeground#t

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mTimeDisplayForeground:Landroid/widget/TextView;

    .line 191
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mTimeDisplayForeground:Landroid/widget/TextView;

    sget-object v1, Lcom/android/internal/widget/DigitalClock;->sForegroundFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 192
    new-instance v0, Lcom/android/internal/widget/DigitalClock$AmPm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/DigitalClock$AmPm;-><init>(Landroid/view/View;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mAmPm:Lcom/android/internal/widget/DigitalClock$AmPm;

    .line 193
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 195
    invoke-direct {p0}, Lcom/android/internal/widget/DigitalClock;->setDateFormat()V

    .line 196
    return-void
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/internal/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 245
    invoke-direct {p0}, Lcom/android/internal/widget/DigitalClock;->updateTime()V

    .line 246
    return-void
.end method
