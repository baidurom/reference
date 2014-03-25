.class public Landroid/widget/TextClock;
.super Landroid/widget/TextView;
.source "TextClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

.field public static final DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;


# instance fields
.field private mAttached:Z

.field private mFormat:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mFormat12:Ljava/lang/CharSequence;

.field private mFormat24:Ljava/lang/CharSequence;

.field private final mFormatChangeObserver:Landroid/database/ContentObserver;

.field private mHasSeconds:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mTicker:Ljava/lang/Runnable;

.field private mTime:Ljava/util/Calendar;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-string v0, "h:mm aa"

    sput-object v0, Landroid/widget/TextClock;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    .line 106
    const-string v0, "k:mm"

    sput-object v0, Landroid/widget/TextClock;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 108
    sget-object v0, Landroid/widget/TextClock;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 109
    sget-object v0, Landroid/widget/TextClock;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 121
    new-instance v0, Landroid/widget/TextClock$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/widget/TextClock$1;-><init>(Landroid/widget/TextClock;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 135
    new-instance v0, Landroid/widget/TextClock$2;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$2;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    new-instance v0, Landroid/widget/TextClock$3;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$3;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    .line 168
    invoke-direct {p0}, Landroid/widget/TextClock;->init()V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 200
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    sget-object v2, Landroid/widget/TextClock;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 109
    sget-object v2, Landroid/widget/TextClock;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 121
    new-instance v2, Landroid/widget/TextClock$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Landroid/widget/TextClock$1;-><init>(Landroid/widget/TextClock;Landroid/os/Handler;)V

    iput-object v2, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 135
    new-instance v2, Landroid/widget/TextClock$2;

    invoke-direct {v2, p0}, Landroid/widget/TextClock$2;-><init>(Landroid/widget/TextClock;)V

    iput-object v2, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    new-instance v2, Landroid/widget/TextClock$3;

    invoke-direct {v2, p0}, Landroid/widget/TextClock$3;-><init>(Landroid/widget/TextClock;)V

    iput-object v2, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    .line 202
    sget-object v2, Lcom/android/internal/R$styleable;->TextClock:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 206
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 207
    .local v1, format:Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    sget-object v1, Landroid/widget/TextClock;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    .end local v1           #format:Ljava/lang/CharSequence;
    :cond_0
    iput-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 209
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 210
    .restart local v1       #format:Ljava/lang/CharSequence;
    if-nez v1, :cond_1

    sget-object v1, Landroid/widget/TextClock;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    .end local v1           #format:Ljava/lang/CharSequence;
    :cond_1
    iput-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 212
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 217
    invoke-direct {p0}, Landroid/widget/TextClock;->init()V

    .line 218
    return-void

    .line 214
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method private static abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 417
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    move-object p2, p1

    goto :goto_0

    :cond_1
    move-object p2, p0

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/widget/TextClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/TextClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/TextClock;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/TextClock;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/TextClock;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method private chooseFormat()V
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->chooseFormat(Z)V

    .line 386
    return-void
.end method

.method private chooseFormat(Z)V
    .locals 5
    .parameter "handleTicker"

    .prologue
    .line 396
    invoke-virtual {p0}, Landroid/widget/TextClock;->is24HourModeEnabled()Z

    move-result v0

    .line 398
    .local v0, format24Requested:Z
    if-eqz v0, :cond_1

    .line 399
    iget-object v2, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    sget-object v4, Landroid/widget/TextClock;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    .line 404
    :goto_0
    iget-boolean v1, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    .line 405
    .local v1, hadSeconds:Z
    iget-object v2, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/format/DateFormat;->hasSeconds(Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    .line 407
    if-eqz p1, :cond_0

    iget-boolean v2, p0, Landroid/widget/TextClock;->mAttached:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    if-eq v1, v2, :cond_0

    .line 408
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 411
    :cond_0
    :goto_1
    return-void

    .line 401
    .end local v1           #hadSeconds:Z
    :cond_1
    iget-object v2, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    sget-object v4, Landroid/widget/TextClock;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    goto :goto_0

    .line 409
    .restart local v1       #hadSeconds:Z
    :cond_2
    iget-object v2, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method private createTime(Ljava/lang/String;)V
    .locals 1
    .parameter "timeZone"

    .prologue
    .line 227
    if-eqz p1, :cond_0

    .line 228
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->chooseFormat(Z)V

    .line 224
    return-void
.end method

.method private onTimeChanged()V
    .locals 3

    .prologue
    .line 479
    iget-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 480
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setText(Ljava/lang/CharSequence;)V

    .line 481
    return-void
.end method

.method private registerObserver()V
    .locals 4

    .prologue
    .line 465
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 466
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 467
    return-void
.end method

.method private registerReceiver()V
    .locals 5

    .prologue
    .line 455
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 457
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 458
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 462
    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    .prologue
    .line 474
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 475
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 476
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 470
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 471
    return-void
.end method


# virtual methods
.method public getFormat12Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormat24Hour()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public is24HourModeEnabled()Z
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 422
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 424
    iget-boolean v0, p0, Landroid/widget/TextClock;->mAttached:Z

    if-nez v0, :cond_0

    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextClock;->mAttached:Z

    .line 427
    invoke-direct {p0}, Landroid/widget/TextClock;->registerReceiver()V

    .line 428
    invoke-direct {p0}, Landroid/widget/TextClock;->registerObserver()V

    .line 430
    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    .line 432
    iget-boolean v0, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 442
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 444
    iget-boolean v0, p0, Landroid/widget/TextClock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 445
    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterReceiver()V

    .line 446
    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterObserver()V

    .line 448
    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 450
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextClock;->mAttached:Z

    .line 452
    :cond_0
    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "format"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 270
    iput-object p1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 272
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 273
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 274
    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "format"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 312
    iput-object p1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 314
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 315
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 316
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .parameter "timeZone"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 372
    iput-object p1, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    .line 374
    invoke-direct {p0, p1}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    .line 375
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 376
    return-void
.end method
