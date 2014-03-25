.class Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;
.super Ljava/lang/Object;
.source "SimPukUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;
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

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;)V
    .locals 1
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 377
    const v0, #id@zero#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mZero:Landroid/widget/ImageButton;

    .line 378
    const v0, #id@one#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mOne:Landroid/widget/ImageButton;

    .line 379
    const v0, #id@two#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mTwo:Landroid/widget/ImageButton;

    .line 380
    const v0, #id@three#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mThree:Landroid/widget/ImageButton;

    .line 381
    const v0, #id@four#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mFour:Landroid/widget/ImageButton;

    .line 382
    const v0, #id@five#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mFive:Landroid/widget/ImageButton;

    .line 383
    const v0, #id@six#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mSix:Landroid/widget/ImageButton;

    .line 384
    const v0, #id@seven#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mSeven:Landroid/widget/ImageButton;

    .line 385
    const v0, #id@eight#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mEight:Landroid/widget/ImageButton;

    .line 386
    const v0, #id@nine#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mNine:Landroid/widget/ImageButton;

    .line 387
    const v0, #id@cancel#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/ImageButton;

    .line 400
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mZero:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mOne:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mTwo:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mThree:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mFour:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mFive:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mSix:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mSeven:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mEight:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mNine:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;)V

    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 431
    const/4 v0, -0x1

    .line 432
    .local v0, digit:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mZero:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_1

    .line 433
    const/4 v0, 0x0

    .line 453
    :cond_0
    :goto_0
    return v0

    .line 434
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mOne:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_2

    .line 435
    const/4 v0, 0x1

    goto :goto_0

    .line 436
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mTwo:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_3

    .line 437
    const/4 v0, 0x2

    goto :goto_0

    .line 438
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mThree:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_4

    .line 439
    const/4 v0, 0x3

    goto :goto_0

    .line 440
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mFour:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_5

    .line 441
    const/4 v0, 0x4

    goto :goto_0

    .line 442
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mFive:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_6

    .line 443
    const/4 v0, 0x5

    goto :goto_0

    .line 444
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mSix:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_7

    .line 445
    const/4 v0, 0x6

    goto :goto_0

    .line 446
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mSeven:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_8

    .line 447
    const/4 v0, 0x7

    goto :goto_0

    .line 448
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mEight:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_9

    .line 449
    const/16 v0, 0x8

    goto :goto_0

    .line 450
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mNine:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_0

    .line 451
    const/16 v0, 0x9

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 415
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_1

    .line 417
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->access$900(Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 424
    .local v0, digit:I
    if-ltz v0, :cond_0

    .line 425
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->access$300(Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 426
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->reportDigit(I)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->access$1100(Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;I)V

    goto :goto_0
.end method
