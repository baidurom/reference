.class Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;
.super Landroid/widget/TextView;
.source "KeyguardMessageArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;
    }
.end annotation


# static fields
.field static final BATTERY_LOW_ICON:I = 0x0

.field private static final BATTERY_NUMBER:I = 0x2

.field static final CHARGING_ICON:I = 0x0

.field protected static final FADE_DURATION:I = 0x0

.field static final SECURITY_MESSAGE_DURATION:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "KeyguardMessageArea"


# instance fields
.field protected mBatteryCharged:[Z

.field protected mBatteryIsLow:[Z

.field mBatteryLevel:[I

.field mCharging:[Z

.field mClearMessageRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field mMessage:Ljava/lang/CharSequence;

.field private mSeparator:Ljava/lang/CharSequence;

.field mShowingBatteryInfo:[Z

.field mShowingBouncer:Z

.field mShowingMessage:Z

.field mTimeout:J

.field mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 163
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingBouncer:Z

    .line 69
    const-wide/16 v1, 0x1388

    iput-wide v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mTimeout:J

    .line 79
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    .line 140
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 165
    new-array v1, v3, [Z

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingBatteryInfo:[Z

    .line 166
    new-array v1, v3, [Z

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mCharging:[Z

    .line 167
    new-array v1, v3, [Z

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryCharged:[Z

    .line 168
    new-array v1, v3, [Z

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryIsLow:[Z

    .line 169
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryLevel:[I

    .line 170
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingBatteryInfo:[Z

    aput-boolean v4, v1, v0

    .line 172
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mCharging:[Z

    aput-boolean v4, v1, v0

    .line 173
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryCharged:[Z

    aput-boolean v4, v1, v0

    .line 174
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryIsLow:[Z

    aput-boolean v4, v1, v0

    .line 175
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryLevel:[I

    const/16 v2, 0x64

    aput v2, v1, v0

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setSelected(Z)V

    .line 182
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 183
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 184
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    .line 186
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #string@kg_text_message_separator#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mSeparator:Ljava/lang/CharSequence;

    .line 188
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->update()V

    .line 189
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->hideMessage(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->showMessage(I)V

    return-void
.end method

.method private varargs concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "args"

    .prologue
    const/4 v4, 0x0

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .local v0, b:Ljava/lang/StringBuilder;
    aget-object v3, p1, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 253
    aget-object v3, p1, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 255
    :cond_0
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_3

    .line 256
    aget-object v2, p1, v1

    .line 257
    .local v2, text:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 259
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 261
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 255
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    .end local v2           #text:Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getChargeInfo(Llibcore/util/MutableInt;I)Ljava/lang/CharSequence;
    .locals 6
    .parameter "icon"
    .parameter "idx"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, string:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingBatteryInfo:[Z

    aget-boolean v1, v1, p2

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    if-nez v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mCharging:[Z

    aget-boolean v1, v1, p2

    if-eqz v1, :cond_2

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryCharged:[Z

    aget-boolean v1, v1, p2

    if-eqz v1, :cond_1

    const v1, #string@lockscreen_charged#t

    :goto_0
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryLevel:[I

    aget v4, v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 289
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    .line 303
    :cond_0
    :goto_1
    return-object v0

    .line 286
    :cond_1
    const v1, #string@lockscreen_plugged_in#t

    goto :goto_0

    .line 290
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryIsLow:[Z

    aget-boolean v1, v1, p2

    if-eqz v1, :cond_3

    .line 292
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, #string@lockscreen_low_battery#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 294
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_1

    .line 296
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, #string@lockscreen_battery_short#t

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryLevel:[I

    aget v4, v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 299
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_1
.end method

.method private hideMessage(IZ)V
    .locals 5
    .parameter "duration"
    .parameter "thenUpdate"

    .prologue
    const/4 v4, 0x0

    .line 307
    if-lez p1, :cond_2

    .line 308
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 309
    .local v0, anim:Landroid/animation/Animator;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 310
    if-eqz p2, :cond_0

    .line 311
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 318
    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 325
    .end local v0           #anim:Landroid/animation/Animator;
    :cond_1
    :goto_0
    return-void

    .line 320
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setAlpha(F)V

    .line 321
    if-eqz p2, :cond_1

    .line 322
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->update()V

    goto :goto_0
.end method

.method private setTextMediatek(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .local v0, b:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 343
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 344
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x20500b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setText(Ljava/lang/CharSequence;)V

    .line 348
    return-void
.end method

.method private showMessage(I)V
    .locals 5
    .parameter "duration"

    .prologue
    const/high16 v4, 0x3f80

    .line 328
    if-lez p1, :cond_0

    .line 329
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 330
    .local v0, anim:Landroid/animation/Animator;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 331
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 335
    .end local v0           #anim:Landroid/animation/Animator;
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method getCurrentMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getOwnerInfo()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x2

    .line 272
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 273
    .local v1, res:Landroid/content/ContentResolver;
    const-string v2, "lock_screen_owner_info_enabled"

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    .local v0, ownerInfoEnabled:Z
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    if-nez v2, :cond_1

    const-string v2, "lock_screen_owner_info"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    .line 273
    .end local v0           #ownerInfoEnabled:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 275
    .restart local v0       #ownerInfoEnabled:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 353
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 355
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 357
    return-void
.end method

.method public securityMessageChanged()V
    .locals 4

    .prologue
    .line 192
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setAlpha(F)V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    .line 194
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->update()V

    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 196
    iget-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 200
    return-void
.end method

.method update()V
    .locals 14

    .prologue
    const/4 v8, 0x0

    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 212
    new-array v2, v11, [Ljava/lang/CharSequence;

    .line 213
    .local v2, deviceStatus:[Ljava/lang/CharSequence;
    new-instance v5, Llibcore/util/MutableInt;

    invoke-direct {v5, v10}, Llibcore/util/MutableInt;-><init>(I)V

    .line 215
    .local v5, icon:Llibcore/util/MutableInt;
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDocktoDesk()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 216
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v11, :cond_1

    .line 217
    const/4 v1, 0x0

    .line 218
    .local v1, deviceName:Ljava/lang/CharSequence;
    invoke-direct {p0, v5, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getChargeInfo(Llibcore/util/MutableInt;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 219
    .local v0, chargingStr:Ljava/lang/CharSequence;
    packed-switch v4, :pswitch_data_0

    .line 228
    :goto_1
    if-eqz v0, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    aput-object v7, v2, v4

    .line 216
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 221
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v7

    const v9, #string@default_audio_route_name#t

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 223
    goto :goto_1

    .line 225
    :pswitch_1
    const-string v1, "SmartBook"

    goto :goto_1

    :cond_0
    move-object v7, v8

    .line 228
    goto :goto_2

    .line 230
    .end local v0           #chargingStr:Ljava/lang/CharSequence;
    .end local v1           #deviceName:Ljava/lang/CharSequence;
    :cond_1
    aget-object v7, v2, v10

    if-eqz v7, :cond_2

    new-array v7, v11, [Ljava/lang/CharSequence;

    aget-object v8, v2, v10

    aput-object v8, v7, v10

    aget-object v8, v2, v12

    aput-object v8, v7, v12

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 231
    .local v6, statusStr:Ljava/lang/CharSequence;
    :goto_3
    new-array v7, v13, [Ljava/lang/CharSequence;

    aput-object v6, v7, v10

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getOwnerInfo()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getCurrentMessage()Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 238
    .end local v4           #i:I
    :goto_4
    const-string v7, "KeyguardMessageArea"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "statusStr="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v3

    .line 242
    .local v3, dmLocked:Z
    if-nez v3, :cond_4

    .line 243
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :goto_5
    return-void

    .end local v3           #dmLocked:Z
    .end local v6           #statusStr:Ljava/lang/CharSequence;
    .restart local v4       #i:I
    :cond_2
    move-object v6, v8

    .line 230
    goto :goto_3

    .line 234
    .end local v4           #i:I
    :cond_3
    new-array v7, v13, [Ljava/lang/CharSequence;

    invoke-direct {p0, v5, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getChargeInfo(Llibcore/util/MutableInt;I)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getOwnerInfo()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getCurrentMessage()Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 235
    .restart local v6       #statusStr:Ljava/lang/CharSequence;
    iget v7, v5, Llibcore/util/MutableInt;->value:I

    invoke-virtual {p0, v7, v10, v10, v10}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_4

    .line 245
    .restart local v3       #dmLocked:Z
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setTextMediatek(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
