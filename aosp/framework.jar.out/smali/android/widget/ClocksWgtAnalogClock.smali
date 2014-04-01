.class public Landroid/widget/ClocksWgtAnalogClock;
.super Landroid/view/View;
.source "ClocksWgtAnalogClock.java"

# interfaces
.implements Landroid/widget/ScreenStateChangeListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClocksWgtAnalogClock"

.field private static final WEEK_FORMAT:Ljava/lang/String; = "E"


# instance fields
.field private mAttached:Z

.field private mChanged:Z

.field private mDateFontSize:F

.field private mDateFormatString:Ljava/lang/String;

.field private mDayDial:Landroid/graphics/drawable/Drawable;

.field private mDayHat:Landroid/graphics/drawable/Drawable;

.field private mDayHourHand:Landroid/graphics/drawable/Drawable;

.field private mDayMinuteHand:Landroid/graphics/drawable/Drawable;

.field private mDial:Landroid/graphics/drawable/Drawable;

.field private mDialHeight:I

.field private mDialWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private mHat:Landroid/graphics/drawable/Drawable;

.field private mHour:F

.field private mHourHand:Landroid/graphics/drawable/Drawable;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsScreenEnter:Z

.field private mMinuteHand:Landroid/graphics/drawable/Drawable;

.field private mMinutes:F

.field private mNightDial:Landroid/graphics/drawable/Drawable;

.field private mNightHat:Landroid/graphics/drawable/Drawable;

.field private mNightHourHand:Landroid/graphics/drawable/Drawable;

.field private mNightMinuteHand:Landroid/graphics/drawable/Drawable;

.field private mTicker:Ljava/lang/Runnable;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ClocksWgtAnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ClocksWgtAnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mHandler:Landroid/os/Handler;

    .line 118
    iput-boolean v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mIsScreenEnter:Z

    .line 444
    new-instance v2, Landroid/widget/ClocksWgtAnalogClock$1;

    invoke-direct {v2, p0}, Landroid/widget/ClocksWgtAnalogClock$1;-><init>(Landroid/widget/ClocksWgtAnalogClock;)V

    iput-object v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    iget-object v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 136
    .local v1, r:Landroid/content/res/Resources;
    sget-object v2, Lcom/android/internal/R$styleable;->AnalogClock:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 139
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 140
    iget-object v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 141
    const v2, #drawable@clock_dial#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 144
    :cond_0
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 145
    iget-object v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 146
    const v2, #drawable@clock_hand_hour#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 149
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 150
    iget-object v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 151
    const v2, #drawable@clock_hand_minute#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 153
    :cond_2
    iget-object v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mDialWidth:I

    .line 154
    iget-object v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mDialHeight:I

    .line 155
    return-void
.end method

.method static synthetic access$000(Landroid/widget/ClocksWgtAnalogClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Landroid/widget/ClocksWgtAnalogClock;->mIsScreenEnter:Z

    return v0
.end method

.method static synthetic access$100(Landroid/widget/ClocksWgtAnalogClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/widget/ClocksWgtAnalogClock;->onTimeChanged()V

    return-void
.end method

.method private drawDate(Landroid/graphics/Canvas;II)V
    .locals 11
    .parameter "canvas"
    .parameter "halfWidth"
    .parameter "HalfHeight"

    .prologue
    const-wide/high16 v9, 0x4000

    .line 316
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 317
    .local v1, paint:Landroid/graphics/Paint;
    iget v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mDateFontSize:F

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 318
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 319
    const-string v4, "k"

    invoke-direct {p0, v4}, Landroid/widget/ClocksWgtAnalogClock;->getFormatStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 320
    .local v0, hour:I
    const/4 v4, 0x5

    if-le v0, v4, :cond_1

    const/16 v4, 0x12

    if-ge v0, v4, :cond_1

    .line 321
    const/high16 v4, -0x100

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 325
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 326
    .local v2, rect:Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 327
    .local v3, string:Ljava/lang/String;
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mDateFormatString:Ljava/lang/String;

    invoke-direct {p0, v4}, Landroid/widget/ClocksWgtAnalogClock;->getFormatStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 328
    if-eqz v3, :cond_0

    .line 329
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 330
    int-to-double v4, p2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v6, v9

    sub-double/2addr v4, v6

    double-to-float v4, v4

    int-to-double v5, p3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-double v7, v7

    div-double/2addr v7, v9

    sub-double/2addr v5, v7

    double-to-float v5, v5

    int-to-float v6, p3

    const/high16 v7, 0x4000

    mul-float/2addr v6, v7

    const/high16 v7, 0x4080

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {p1, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 333
    :cond_0
    return-void

    .line 323
    .end local v2           #rect:Landroid/graphics/Rect;
    .end local v3           #string:Ljava/lang/String;
    :cond_1
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method private drawWeekDay(Landroid/graphics/Canvas;II)V
    .locals 8
    .parameter "canvas"
    .parameter "halfWidth"
    .parameter "HalfHeight"

    .prologue
    const/high16 v7, 0x4000

    .line 343
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 344
    .local v1, paint:Landroid/graphics/Paint;
    iget v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mDateFontSize:F

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 345
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 346
    const-string v4, "k"

    invoke-direct {p0, v4}, Landroid/widget/ClocksWgtAnalogClock;->getFormatStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 347
    .local v0, hour:I
    const/4 v4, 0x5

    if-le v0, v4, :cond_1

    const/16 v4, 0x12

    if-ge v0, v4, :cond_1

    .line 348
    const/high16 v4, -0x100

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 353
    .local v2, rect:Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 354
    .local v3, string:Ljava/lang/String;
    const-string v4, "E"

    invoke-direct {p0, v4}, Landroid/widget/ClocksWgtAnalogClock;->getFormatStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 355
    if-eqz v3, :cond_0

    .line 356
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 357
    int-to-float v4, p2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    int-to-float v5, p2

    const v6, 0x3fcccccd

    mul-float/2addr v5, v6

    const/high16 v6, 0x4080

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    int-to-float v5, p3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {p1, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 361
    :cond_0
    return-void

    .line 350
    .end local v2           #rect:Landroid/graphics/Rect;
    .end local v3           #string:Ljava/lang/String;
    :cond_1
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method private getFormatStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "format"

    .prologue
    .line 371
    iget-object v1, p0, Landroid/widget/ClocksWgtAnalogClock;->mTimeZone:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 372
    if-eqz p1, :cond_1

    .line 373
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 374
    .local v0, sdf:Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Landroid/widget/ClocksWgtAnalogClock;->mTimeZone:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 375
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 383
    .end local v0           #sdf:Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v1

    .line 378
    :cond_0
    if-eqz p1, :cond_1

    .line 379
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 380
    .restart local v0       #sdf:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 383
    .end local v0           #sdf:Ljava/text/SimpleDateFormat;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onTimeChanged()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x4270

    .line 390
    const-string v4, "h"

    invoke-direct {p0, v4}, Landroid/widget/ClocksWgtAnalogClock;->getFormatStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 391
    .local v0, hour:I
    const-string v4, "m"

    invoke-direct {p0, v4}, Landroid/widget/ClocksWgtAnalogClock;->getFormatStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 392
    .local v2, minute:I
    const-string/jumbo v4, "s"

    invoke-direct {p0, v4}, Landroid/widget/ClocksWgtAnalogClock;->getFormatStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 393
    .local v3, second:I
    int-to-float v4, v2

    int-to-float v5, v3

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mMinutes:F

    .line 394
    int-to-float v4, v0

    iget v5, p0, Landroid/widget/ClocksWgtAnalogClock;->mMinutes:F

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mHour:F

    .line 396
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mDayHat:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    .line 397
    iput-boolean v7, p0, Landroid/widget/ClocksWgtAnalogClock;->mChanged:Z

    .line 438
    :goto_0
    return-void

    .line 401
    :cond_0
    const-string v4, "k"

    invoke-direct {p0, v4}, Landroid/widget/ClocksWgtAnalogClock;->getFormatStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 402
    .local v1, hour24:I
    const/4 v4, 0x5

    if-le v1, v4, :cond_5

    const/16 v4, 0x12

    if-ge v1, v4, :cond_5

    .line 403
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mDayDial:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 404
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mDayDial:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 407
    :cond_1
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mDayHourHand:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 408
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mDayHourHand:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 411
    :cond_2
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mDayMinuteHand:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 412
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mDayMinuteHand:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 414
    :cond_3
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mDayHat:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 415
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mDayHat:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mHat:Landroid/graphics/drawable/Drawable;

    .line 437
    :cond_4
    :goto_1
    iput-boolean v7, p0, Landroid/widget/ClocksWgtAnalogClock;->mChanged:Z

    goto :goto_0

    .line 419
    :cond_5
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mNightDial:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 420
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mNightDial:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 423
    :cond_6
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mNightHourHand:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_7

    .line 424
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mNightHourHand:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 427
    :cond_7
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mNightMinuteHand:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_8

    .line 428
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mNightMinuteHand:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 431
    :cond_8
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mNightHat:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 432
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mNightHat:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mHat:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 159
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 160
    iget-boolean v1, p0, Landroid/widget/ClocksWgtAnalogClock;->mAttached:Z

    if-nez v1, :cond_0

    .line 161
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ClocksWgtAnalogClock;->mAttached:Z

    .line 162
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Landroid/widget/ClocksWgtAnalogClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 171
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-direct {p0}, Landroid/widget/ClocksWgtAnalogClock;->onTimeChanged()V

    .line 172
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 177
    iget-boolean v0, p0, Landroid/widget/ClocksWgtAnalogClock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Landroid/widget/ClocksWgtAnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ClocksWgtAnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ClocksWgtAnalogClock;->mAttached:Z

    .line 181
    :cond_0
    invoke-static {p0}, Landroid/widget/Utils;->onDetachedFromWindowClearUp(Landroid/view/View;)V

    .line 182
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .parameter "canvas"

    .prologue
    .line 215
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 216
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/widget/ClocksWgtAnalogClock;->mChanged:Z

    .line 217
    .local v6, changed:Z
    if-eqz v6, :cond_0

    .line 218
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ClocksWgtAnalogClock;->mChanged:Z

    .line 221
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ClocksWgtAnalogClock;->mRight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ClocksWgtAnalogClock;->mLeft:I

    move/from16 v20, v0

    sub-int v5, v19, v20

    .line 222
    .local v5, availableWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ClocksWgtAnalogClock;->mBottom:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ClocksWgtAnalogClock;->mTop:I

    move/from16 v20, v0

    sub-int v4, v19, v20

    .line 224
    .local v4, availableHeight:I
    div-int/lit8 v17, v5, 0x2

    .line 225
    .local v17, x:I
    div-int/lit8 v18, v4, 0x2

    .line 227
    .local v18, y:I
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/ClocksWgtAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 228
    .local v7, dial:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/ClocksWgtAnalogClock;->mHat:Landroid/graphics/drawable/Drawable;

    .line 229
    .local v10, hat:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 230
    .local v15, w:I
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 231
    .local v8, h:I
    const/16 v16, 0x0

    .line 232
    .local v16, wHat:I
    const/4 v9, 0x0

    .line 233
    .local v9, hHat:I
    if-eqz v10, :cond_1

    .line 234
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 235
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 238
    :cond_1
    const/4 v14, 0x0

    .line 240
    .local v14, scaled:Z
    if-lt v5, v15, :cond_2

    if-ge v4, v8, :cond_3

    .line 241
    :cond_2
    const/4 v14, 0x1

    .line 242
    int-to-float v0, v5

    move/from16 v19, v0

    int-to-float v0, v15

    move/from16 v20, v0

    div-float v19, v19, v20

    int-to-float v0, v4

    move/from16 v20, v0

    int-to-float v0, v8

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 244
    .local v13, scale:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 245
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v13, v13, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 248
    .end local v13           #scale:F
    :cond_3
    if-eqz v6, :cond_4

    .line 249
    div-int/lit8 v19, v15, 0x2

    sub-int v19, v17, v19

    div-int/lit8 v20, v8, 0x2

    sub-int v20, v18, v20

    div-int/lit8 v21, v15, 0x2

    add-int v21, v21, v17

    div-int/lit8 v22, v8, 0x2

    add-int v22, v22, v18

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 251
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 253
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ClocksWgtAnalogClock;->drawDate(Landroid/graphics/Canvas;II)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ClocksWgtAnalogClock;->mDayHat:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 255
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ClocksWgtAnalogClock;->drawWeekDay(Landroid/graphics/Canvas;II)V

    .line 258
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 259
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ClocksWgtAnalogClock;->mHour:F

    move/from16 v19, v0

    const/high16 v20, 0x4140

    div-float v19, v19, v20

    const/high16 v20, 0x43b4

    mul-float v19, v19, v20

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 261
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/ClocksWgtAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 262
    .local v11, hourHand:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_6

    .line 263
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 264
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 265
    div-int/lit8 v19, v15, 0x2

    sub-int v19, v17, v19

    div-int/lit8 v20, v8, 0x2

    sub-int v20, v18, v20

    div-int/lit8 v21, v15, 0x2

    add-int v21, v21, v17

    div-int/lit8 v22, v8, 0x2

    add-int v22, v22, v18

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 267
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 268
    const/16 v19, 0xe1

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 269
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 271
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 272
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ClocksWgtAnalogClock;->mMinutes:F

    move/from16 v19, v0

    const/high16 v20, 0x4270

    div-float v19, v19, v20

    const/high16 v20, 0x43b4

    mul-float v19, v19, v20

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 274
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/ClocksWgtAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 275
    .local v12, minuteHand:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_7

    .line 276
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 277
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 278
    div-int/lit8 v19, v15, 0x2

    sub-int v19, v17, v19

    div-int/lit8 v20, v8, 0x2

    sub-int v20, v18, v20

    div-int/lit8 v21, v15, 0x2

    add-int v21, v21, v17

    div-int/lit8 v22, v8, 0x2

    add-int v22, v22, v18

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 280
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 281
    const/16 v19, 0xe1

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 282
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 284
    if-eqz v14, :cond_8

    .line 285
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 288
    :cond_8
    move/from16 v0, v16

    if-lt v5, v0, :cond_9

    if-ge v4, v9, :cond_a

    .line 289
    :cond_9
    const/4 v14, 0x1

    .line 290
    int-to-float v0, v5

    move/from16 v19, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    int-to-float v0, v4

    move/from16 v20, v0

    int-to-float v0, v9

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 292
    .restart local v13       #scale:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 293
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v13, v13, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 296
    .end local v13           #scale:F
    :cond_a
    if-eqz v6, :cond_b

    .line 297
    if-eqz v10, :cond_b

    .line 298
    div-int/lit8 v19, v16, 0x2

    sub-int v19, v17, v19

    div-int/lit8 v20, v9, 0x2

    sub-int v20, v18, v20

    div-int/lit8 v21, v16, 0x2

    add-int v21, v21, v17

    div-int/lit8 v22, v9, 0x2

    add-int v22, v22, v18

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 302
    :cond_b
    if-eqz v10, :cond_c

    .line 303
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 306
    :cond_c
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 186
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 187
    .local v5, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 188
    .local v6, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 189
    .local v1, heightMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 191
    .local v2, heightSize:I
    const/high16 v0, 0x3f80

    .line 192
    .local v0, hScale:F
    const/high16 v4, 0x3f80

    .line 194
    .local v4, vScale:F
    if-eqz v5, :cond_0

    iget v7, p0, Landroid/widget/ClocksWgtAnalogClock;->mDialWidth:I

    if-ge v6, v7, :cond_0

    .line 195
    int-to-float v7, v6

    iget v8, p0, Landroid/widget/ClocksWgtAnalogClock;->mDialWidth:I

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 198
    :cond_0
    if-eqz v1, :cond_1

    iget v7, p0, Landroid/widget/ClocksWgtAnalogClock;->mDialHeight:I

    if-ge v2, v7, :cond_1

    .line 199
    int-to-float v7, v2

    iget v8, p0, Landroid/widget/ClocksWgtAnalogClock;->mDialHeight:I

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 202
    :cond_1
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 204
    .local v3, scale:F
    iget v7, p0, Landroid/widget/ClocksWgtAnalogClock;->mDialWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v7, p1}, Landroid/widget/ClocksWgtAnalogClock;->resolveSize(II)I

    move-result v7

    iget v8, p0, Landroid/widget/ClocksWgtAnalogClock;->mDialHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-static {v8, p2}, Landroid/widget/ClocksWgtAnalogClock;->resolveSize(II)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Landroid/widget/ClocksWgtAnalogClock;->setMeasuredDimension(II)V

    .line 206
    return-void
.end method

.method public onScreenStateChanged(II)V
    .locals 2
    .parameter "screen"
    .parameter "state"

    .prologue
    .line 531
    if-nez p2, :cond_0

    .line 532
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ClocksWgtAnalogClock;->mIsScreenEnter:Z

    .line 533
    new-instance v0, Landroid/widget/ClocksWgtAnalogClock$2;

    invoke-direct {v0, p0}, Landroid/widget/ClocksWgtAnalogClock$2;-><init>(Landroid/widget/ClocksWgtAnalogClock;)V

    iput-object v0, p0, Landroid/widget/ClocksWgtAnalogClock;->mTicker:Ljava/lang/Runnable;

    .line 539
    iget-object v0, p0, Landroid/widget/ClocksWgtAnalogClock;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/ClocksWgtAnalogClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 543
    :goto_0
    return-void

    .line 541
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ClocksWgtAnalogClock;->mIsScreenEnter:Z

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 209
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ClocksWgtAnalogClock;->mChanged:Z

    .line 211
    return-void
.end method

.method public setDateFontSize(I)V
    .locals 1
    .parameter "i"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 512
    invoke-virtual {p0}, Landroid/widget/ClocksWgtAnalogClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroid/widget/ClocksWgtAnalogClock;->mDateFontSize:F

    .line 513
    return-void
.end method

.method public setDateFormatString(I)V
    .locals 1
    .parameter "i"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 522
    invoke-virtual {p0}, Landroid/widget/ClocksWgtAnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ClocksWgtAnalogClock;->mDateFormatString:Ljava/lang/String;

    .line 523
    return-void
.end method

.method public setDateHeight(I)V
    .locals 0
    .parameter "i"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 518
    return-void
.end method

.method public setDayDialResource(I)V
    .locals 2
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 462
    invoke-virtual {p0}, Landroid/widget/ClocksWgtAnalogClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 463
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ClocksWgtAnalogClock;->mDayDial:Landroid/graphics/drawable/Drawable;

    .line 464
    return-void
.end method

.method public setDayHatResource(I)V
    .locals 2
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 500
    invoke-virtual {p0}, Landroid/widget/ClocksWgtAnalogClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 501
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ClocksWgtAnalogClock;->mDayHat:Landroid/graphics/drawable/Drawable;

    .line 502
    return-void
.end method

.method public setDayHourResource(I)V
    .locals 2
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 474
    invoke-virtual {p0}, Landroid/widget/ClocksWgtAnalogClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 475
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ClocksWgtAnalogClock;->mDayHourHand:Landroid/graphics/drawable/Drawable;

    .line 477
    return-void
.end method

.method public setDayMinuteResource(I)V
    .locals 2
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 488
    invoke-virtual {p0}, Landroid/widget/ClocksWgtAnalogClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 489
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ClocksWgtAnalogClock;->mDayMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 490
    return-void
.end method

.method public setNightDialResource(I)V
    .locals 2
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 468
    invoke-virtual {p0}, Landroid/widget/ClocksWgtAnalogClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 469
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ClocksWgtAnalogClock;->mNightDial:Landroid/graphics/drawable/Drawable;

    .line 470
    return-void
.end method

.method public setNightHatResource(I)V
    .locals 2
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 506
    invoke-virtual {p0}, Landroid/widget/ClocksWgtAnalogClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 507
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ClocksWgtAnalogClock;->mNightHat:Landroid/graphics/drawable/Drawable;

    .line 508
    return-void
.end method

.method public setNightHourResource(I)V
    .locals 2
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 481
    invoke-virtual {p0}, Landroid/widget/ClocksWgtAnalogClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 482
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ClocksWgtAnalogClock;->mNightHourHand:Landroid/graphics/drawable/Drawable;

    .line 484
    return-void
.end method

.method public setNightMinuteResource(I)V
    .locals 2
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 494
    invoke-virtual {p0}, Landroid/widget/ClocksWgtAnalogClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 495
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ClocksWgtAnalogClock;->mNightMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 496
    return-void
.end method

.method public setOnTimeChanged(I)V
    .locals 0
    .parameter "i"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 527
    invoke-direct {p0}, Landroid/widget/ClocksWgtAnalogClock;->onTimeChanged()V

    .line 528
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .parameter "zoneStr"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 456
    iput-object p1, p0, Landroid/widget/ClocksWgtAnalogClock;->mTimeZone:Ljava/lang/String;

    .line 457
    invoke-direct {p0}, Landroid/widget/ClocksWgtAnalogClock;->onTimeChanged()V

    .line 458
    return-void
.end method
