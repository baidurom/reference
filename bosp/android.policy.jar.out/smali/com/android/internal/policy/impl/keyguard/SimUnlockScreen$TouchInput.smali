.class Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchInput"
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/ImageButton;

.field private mEight:Landroid/widget/ImageButton;

.field private mFive:Landroid/widget/ImageButton;

.field private mFour:Landroid/widget/ImageButton;

.field private mNine:Landroid/widget/ImageButton;

.field private mOne:Landroid/widget/ImageButton;

.field private mSeven:Landroid/widget/ImageButton;

.field private mSix:Landroid/widget/ImageButton;

.field private mThree:Landroid/widget/ImageButton;

.field private mTwo:Landroid/widget/ImageButton;

.field private mZero:Landroid/widget/ImageButton;

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;)V
    .locals 1
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 339
    const v0, #id@zero#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mZero:Landroid/widget/ImageButton;

    .line 340
    const v0, #id@one#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mOne:Landroid/widget/ImageButton;

    .line 341
    const v0, #id@two#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mTwo:Landroid/widget/ImageButton;

    .line 342
    const v0, #id@three#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mThree:Landroid/widget/ImageButton;

    .line 343
    const v0, #id@four#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mFour:Landroid/widget/ImageButton;

    .line 344
    const v0, #id@five#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mFive:Landroid/widget/ImageButton;

    .line 345
    const v0, #id@six#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mSix:Landroid/widget/ImageButton;

    .line 346
    const v0, #id@seven#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mSeven:Landroid/widget/ImageButton;

    .line 347
    const v0, #id@eight#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mEight:Landroid/widget/ImageButton;

    .line 348
    const v0, #id@nine#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mNine:Landroid/widget/ImageButton;

    .line 349
    const v0, #id@cancel#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/ImageButton;

    .line 351
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mZero:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mOne:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mTwo:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mThree:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mFour:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mFive:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mSix:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mSeven:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mEight:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mNine:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 325
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;)V

    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 380
    const/4 v0, -0x1

    .line 381
    .local v0, digit:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mZero:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_1

    .line 382
    const/4 v0, 0x0

    .line 402
    :cond_0
    :goto_0
    return v0

    .line 383
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mOne:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_2

    .line 384
    const/4 v0, 0x1

    goto :goto_0

    .line 385
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mTwo:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_3

    .line 386
    const/4 v0, 0x2

    goto :goto_0

    .line 387
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mThree:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_4

    .line 388
    const/4 v0, 0x3

    goto :goto_0

    .line 389
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mFour:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_5

    .line 390
    const/4 v0, 0x4

    goto :goto_0

    .line 391
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mFive:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_6

    .line 392
    const/4 v0, 0x5

    goto :goto_0

    .line 393
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mSix:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_7

    .line 394
    const/4 v0, 0x6

    goto :goto_0

    .line 395
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mSeven:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_8

    .line 396
    const/4 v0, 0x7

    goto :goto_0

    .line 397
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mEight:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_9

    .line 398
    const/16 v0, 0x8

    goto :goto_0

    .line 399
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mNine:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_0

    .line 400
    const/16 v0, 0x9

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 366
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_1

    .line 367
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->access$800(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 373
    .local v0, digit:I
    if-ltz v0, :cond_0

    .line 374
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->access$300(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 375
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->reportDigit(I)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;I)V

    goto :goto_0
.end method
