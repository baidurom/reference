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
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ClocksWgtAnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ClocksWgtAnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
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

    .line 129
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mHandler:Landroid/os/Handler;

    .line 116
    iput-boolean v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mIsScreenEnter:Z

    .line 442
    new-instance v2, Landroid/widget/ClocksWgtAnalogClock$1;

    invoke-direct {v2, p0}, Landroid/widget/ClocksWgtAnalogClock$1;-><init>(Landroid/widget/ClocksWgtAnalogClock;)V

    iput-object v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    iget-object v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 134
    .local v1, r:Landroid/content/res/Resources;
    sget-object v2, Lcom/android/internal/R$styleable;->AnalogClock:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 137
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 138
    iget-object v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 139
    const v2, #drawable@clock_dial#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 142
    :cond_0
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 143
    iget-object v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 144
    const v2, #drawable@clock_hand_hour#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 147
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 148
    iget-object v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 149
    const v2, #drawable@clock_hand_minute#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 151
    :cond_2
    iget-object v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mDialWidth:I

    .line 152
    iget-object v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mDialHeight:I

    .line 153
    return-void
.end method

.method static synthetic access$000(Landroid/widget/ClocksWgtAnalogClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Landroid/widget/ClocksWgtAnalogClock;->mIsScreenEnter:Z

    return v0
.end method

.method static synthetic access$100(Landroid/widget/ClocksWgtAnalogClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
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

    .line 314
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 315
    .local v1, paint:Landroid/graphics/Paint;
    iget v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mDateFontSize:F

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 316
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 317
    const-string v4, "k"

    invoke-direct {p0, v4}, Landroid/widget/ClocksWgtAnalogClock;->getFormatStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 318
    .local v0, hour:I
    const/4 v4, 0x5

    if-le v0, v4, :cond_1

    const/16 v4, 0x12

    if-ge v0, v4, :cond_1

    .line 319
    const/high16 v4, -0x100

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 324
    .local v2, rect:Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 325
    .local v3, string:Ljava/lang/String;
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mDateFormatString:Ljava/lang/String;

    invoke-direct {p0, v4}, Landroid/widget/ClocksWgtAnalogClock;->getFormatStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 326
    if-eqz v3, :cond_0

    .line 327
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 328
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

    .line 331
    :cond_0
    return-void

    .line 321
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

    .line 341
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 342
    .local v1, paint:Landroid/graphics/Paint;
    iget v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mDateFontSize:F

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 343
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 344
    const-string v4, "k"

    invoke-direct {p0, v4}, Landroid/widget/ClocksWgtAnalogClock;->getFormatStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 345
    .local v0, hour:I
    const/4 v4, 0x5

    if-le v0, v4, :cond_1

    const/16 v4, 0x12

    if-ge v0, v4, :cond_1

    .line 346
    const/high16 v4, -0x100

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 350
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 351
    .local v2, rect:Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 352
    .local v3, string:Ljava/lang/String;
    const-string v4, "E"

    invoke-direct {p0, v4}, Landroid/widget/ClocksWgtAnalogClock;->getFormatStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 353
    if-eqz v3, :cond_0

    .line 354
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 355
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

    .line 359
    :cond_0
    return-void

    .line 348
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
    .line 369
    iget-object v1, p0, Landroid/widget/ClocksWgtAnalogClock;->mTimeZone:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 370
    if-eqz p1, :cond_1

    .line 371
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, sdf:Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Landroid/widget/ClocksWgtAnalogClock;->mTimeZone:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 373
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 381
    .end local v0           #sdf:Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v1

    .line 376
    :cond_0
    if-eqz p1, :cond_1

    .line 377
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 378
    .restart local v0       #sdf:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 381
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

    .line 388
    const-string v4, "h"

    invoke-direct {p0, v4}, Landroid/widget/ClocksWgtAnalogClock;->getFormatStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 389
    .local v0, hour:I
    const-string v4, "m"

    invoke-direct {p0, v4}, Landroid/widget/ClocksWgtAnalogClock;->getFormatStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 390
    .local v2, minute:I
    const-string v4, "s"

    invoke-direct {p0, v4}, Landroid/widget/ClocksWgtAnalogClock;->getFormatStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 391
    .local v3, second:I
    int-to-float v4, v2

    int-to-float v5, v3

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mMinutes:F

    .line 392
    int-to-float v4, v0

    iget v5, p0, Landroid/widget/ClocksWgtAnalogClock;->mMinutes:F

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mHour:F

    .line 394
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mDayHat:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    .line 395
    iput-boolean v7, p0, Landroid/widget/ClocksWgtAnalogClock;->mChanged:Z

    .line 436
    :goto_0
    return-void

    .line 399
    :cond_0
    const-string v4, "k"

    invoke-direct {p0, v4}, Landroid/widget/ClocksWgtAnalogClock;->getFormatStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 400
    .local v1, hour24:I
    const/4 v4, 0x5

    if-le v1, v4, :cond_5

    const/16 v4, 0x12

    if-ge v1, v4, :cond_5

    .line 401
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mDayDial:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 402
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mDayDial:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 405
    :cond_1
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mDayHourHand:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 406
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mDayHourHand:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 409
    :cond_2
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mDayMinuteHand:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 410
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mDayMinuteHand:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 412
    :cond_3
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mDayHat:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 413
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mDayHat:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mHat:Landroid/graphics/drawable/Drawable;

    .line 435
    :cond_4
    :goto_1
    iput-boolean v7, p0, Landroid/widget/ClocksWgtAnalogClock;->mChanged:Z

    goto :goto_0

    .line 417
    :cond_5
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mNightDial:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 418
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mNightDial:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 421
    :cond_6
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mNightHourHand:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_7

    .line 422
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mNightHourHand:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 425
    :cond_7
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mNightMinuteHand:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_8

    .line 426
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mNightMinuteHand:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 429
    :cond_8
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mNightHat:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 430
    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mNightHat:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mHat:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 157
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 158
    iget-boolean v1, p0, Landroid/widget/ClocksWgtAnalogClock;->mAttached:Z

    if-nez v1, :cond_0

    .line 159
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ClocksWgtAnalogClock;->mAttached:Z

    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 162
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Landroid/widget/ClocksWgtAnalogClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/ClocksWgtAnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/ClocksWgtAnalogClock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 169
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-direct {p0}, Landroid/widget/ClocksWgtAnalogClock;->onTimeChanged()V

    .line 170
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 174
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 175
    iget-boolean v0, p0, Landroid/widget/ClocksWgtAnalogClock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Landroid/widget/ClocksWgtAnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ClocksWgtAnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ClocksWgtAnalogClock;->mAttached:Z

    .line 179
    :cond_0
    invoke-static {p0}, Landroid/widget/Utils;->onDetachedFromWindowClearUp(Landroid/view/View;)V

    .line 180
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .parameter "canvas"

    .prologue
    .line 213
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 214
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/widget/ClocksWgtAnalogClock;->mChanged:Z

    .line 215
    .local v6, changed:Z
    if-eqz v6, :cond_0

    .line 216
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ClocksWgtAnalogClock;->mChanged:Z

    .line 219
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ClocksWgtAnalogClock;->mRight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ClocksWgtAnalogClock;->mLeft:I

    move/from16 v20, v0

    sub-int v5, v19, v20

    .line 220
    .local v5, availableWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ClocksWgtAnalogClock;->mBottom:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ClocksWgtAnalogClock;->mTop:I

    move/from16 v20, v0

    sub-int v4, v19, v20

    .line 222
    .local v4, availableHeight:I
    div-int/lit8 v17, v5, 0x2

    .line 223
    .local v17, x:I
    div-int/lit8 v18, v4, 0x2

    .line 225
    .local v18, y:I
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/ClocksWgtAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 226
    .local v7, dial:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/ClocksWgtAnalogClock;->mHat:Landroid/graphics/drawable/Drawable;

    .line 227
    .local v10, hat:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 228
    .local v15, w:I
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 229
    .local v8, h:I
    const/16 v16, 0x0

    .line 230
    .local v16, wHat:I
    const/4 v9, 0x0

    .line 231
    .local v9, hHat:I
    if-eqz v10, :cond_1

    .line 232
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 233
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 236
    :cond_1
    const/4 v14, 0x0

    .line 238
    .local v14, scaled:Z
    if-lt v5, v15, :cond_2

    if-ge v4, v8, :cond_3

    .line 239
    :cond_2
    const/4 v14, 0x1

    .line 240
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

    .line 242
    .local v13, scale:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 243
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

    .line 246
    .end local v13           #scale:F
    :cond_3
    if-eqz v6, :cond_4

    .line 247
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

    .line 249
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 251
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ClocksWgtAnalogClock;->drawDate(Landroid/graphics/Canvas;II)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ClocksWgtAnalogClock;->mDayHat:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 253
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ClocksWgtAnalogClock;->drawWeekDay(Landroid/graphics/Canvas;II)V

    .line 256
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 257
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

    .line 259
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/ClocksWgtAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 260
    .local v11, hourHand:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_6

    .line 261
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 262
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 263
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

    .line 265
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 266
    const/16 v19, 0xe1

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 267
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 269
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 270
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

    .line 272
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/ClocksWgtAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 273
    .local v12, minuteHand:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_7

    .line 274
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 275
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 276
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

    .line 278
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 279
    const/16 v19, 0xe1

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 280
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 282
    if-eqz v14, :cond_8

    .line 283
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 286
    :cond_8
    move/from16 v0, v16

    if-lt v5, v0, :cond_9

    if-ge v4, v9, :cond_a

    .line 287
    :cond_9
    const/4 v14, 0x1

    .line 288
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

    .line 290
    .restart local v13       #scale:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 291
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

    .line 294
    .end local v13           #scale:F
    :cond_a
    if-eqz v6, :cond_b

    .line 295
    if-eqz v10, :cond_b

    .line 296
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

    .line 300
    :cond_b
    if-eqz v10, :cond_c

    .line 301
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 304
    :cond_c
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 184
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 185
    .local v5, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 186
    .local v6, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 187
    .local v1, heightMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 189
    .local v2, heightSize:I
    const/high16 v0, 0x3f80

    .line 190
    .local v0, hScale:F
    const/high16 v4, 0x3f80

    .line 192
    .local v4, vScale:F
    if-eqz v5, :cond_0

    iget v7, p0, Landroid/widget/ClocksWgtAnalogClock;->mDialWidth:I

    if-ge v6, v7, :cond_0

    .line 193
    int-to-float v7, v6

    iget v8, p0, Landroid/widget/ClocksWgtAnalogClock;->mDialWidth:I

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 196
    :cond_0
    if-eqz v1, :cond_1

    iget v7, p0, Landroid/widget/ClocksWgtAnalogClock;->mDialHeight:I

    if-ge v2, v7, :cond_1

    .line 197
    int-to-float v7, v2

    iget v8, p0, Landroid/widget/ClocksWgtAnalogClock;->mDialHeight:I

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 200
    :cond_1
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 202
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

    .line 204
    return-void
.end method

.method public onScreenStateChanged(II)V
    .locals 2
    .parameter "screen"
    .parameter "state"

    .prologue
    .line 529
    if-nez p2, :cond_0

    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ClocksWgtAnalogClock;->mIsScreenEnter:Z

    .line 531
    new-instance v0, Landroid/widget/ClocksWgtAnalogClock$2;

    invoke-direct {v0, p0}, Landroid/widget/ClocksWgtAnalogClock$2;-><init>(Landroid/widget/ClocksWgtAnalogClock;)V

    iput-object v0, p0, Landroid/widget/ClocksWgtAnalogClock;->mTicker:Ljava/lang/Runnable;

    .line 537
    iget-object v0, p0, Landroid/widget/ClocksWgtAnalogClock;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/ClocksWgtAnalogClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 541
    :goto_0
    return-void

    .line 539
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
    .line 207
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ClocksWgtAnalogClock;->mChanged:Z

    .line 209
    return-void
.end method

.method public setDateFontSize(I)V
    .locals 1
    .parameter "i"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 510
    invoke-virtual {p0}, Landroid/widget/ClocksWgtAnalogClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroid/widget/ClocksWgtAnalogClock;->mDateFontSize:F

    .line 511
    return-void
.end method

.method public setDateFormatString(I)V
    .locals 1
    .parameter "i"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 520
    invoke-virtual {p0}, Landroid/widget/ClocksWgtAnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ClocksWgtAnalogClock;->mDateFormatString:Ljava/lang/String;

    .line 521
    return-void
.end method

.method public setDateHeight(I)V
    .locals 0
    .parameter "i"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 516
    return-void
.end method

.method public setDayDialResource(I)V
    .locals 2
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 460
    invoke-virtual {p0}, Landroid/widget/ClocksWgtAnalogClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 461
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ClocksWgtAnalogClock;->mDayDial:Landroid/graphics/drawable/Drawable;

    .line 462
    return-void
.end method

.method public setDayHatResource(I)V
    .locals 2
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 498
    invoke-virtual {p0}, Landroid/widget/ClocksWgtAnalogClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 499
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ClocksWgtAnalogClock;->mDayHat:Landroid/graphics/drawable/Drawable;

    .line 500
    return-void
.end method

.method public setDayHourResource(I)V
    .locals 2
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 472
    invoke-virtual {p0}, Landroid/widget/ClocksWgtAnalogClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 473
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ClocksWgtAnalogClock;->mDayHourHand:Landroid/graphics/drawable/Drawable;

    .line 475
    return-void
.end method

.method public setDayMinuteResource(I)V
    .locals 2
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 486
    invoke-virtual {p0}, Landroid/widget/ClocksWgtAnalogClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 487
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ClocksWgtAnalogClock;->mDayMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 488
    return-void
.end method

.method public setNightDialResource(I)V
    .locals 2
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 466
    invoke-virtual {p0}, Landroid/widget/ClocksWgtAnalogClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 467
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ClocksWgtAnalogClock;->mNightDial:Landroid/graphics/drawable/Drawable;

    .line 468
    return-void
.end method

.method public setNightHatResource(I)V
    .locals 2
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 504
    invoke-virtual {p0}, Landroid/widget/ClocksWgtAnalogClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 505
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ClocksWgtAnalogClock;->mNightHat:Landroid/graphics/drawable/Drawable;

    .line 506
    return-void
.end method

.method public setNightHourResource(I)V
    .locals 2
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 479
    invoke-virtual {p0}, Landroid/widget/ClocksWgtAnalogClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 480
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ClocksWgtAnalogClock;->mNightHourHand:Landroid/graphics/drawable/Drawable;

    .line 482
    return-void
.end method

.method public setNightMinuteResource(I)V
    .locals 2
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 492
    invoke-virtual {p0}, Landroid/widget/ClocksWgtAnalogClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 493
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ClocksWgtAnalogClock;->mNightMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 494
    return-void
.end method

.method public setOnTimeChanged(I)V
    .locals 0
    .parameter "i"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 525
    invoke-direct {p0}, Landroid/widget/ClocksWgtAnalogClock;->onTimeChanged()V

    .line 526
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .parameter "zoneStr"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 454
    iput-object p1, p0, Landroid/widget/ClocksWgtAnalogClock;->mTimeZone:Ljava/lang/String;

    .line 455
    invoke-direct {p0}, Landroid/widget/ClocksWgtAnalogClock;->onTimeChanged()V

    .line 456
    return-void
.end method
