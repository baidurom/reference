.class Lcom/android/phone/UnlockPINLock$TouchInput;
.super Ljava/lang/Object;
.source "UnlockPINLock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UnlockPINLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TouchInput"
.end annotation


# instance fields
.field digit:I

.field private mCancelButton:Landroid/widget/ImageView;

.field private mEight:Landroid/widget/ImageView;

.field private mFive:Landroid/widget/ImageView;

.field private mFour:Landroid/widget/ImageView;

.field private mNine:Landroid/widget/ImageView;

.field private mOk:Landroid/widget/ImageView;

.field private mOne:Landroid/widget/ImageView;

.field private mSeven:Landroid/widget/ImageView;

.field private mSix:Landroid/widget/ImageView;

.field private mThree:Landroid/widget/ImageView;

.field private mTwo:Landroid/widget/ImageView;

.field private mZero:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/phone/UnlockPINLock;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPINLock;)V
    .locals 1
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->digit:I

    .line 360
    const v0, 0x7f070055

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mZero:Landroid/widget/ImageView;

    .line 361
    const v0, 0x7f07004b

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mOne:Landroid/widget/ImageView;

    .line 362
    const v0, 0x7f07004c

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mTwo:Landroid/widget/ImageView;

    .line 363
    const v0, 0x7f07004d

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mThree:Landroid/widget/ImageView;

    .line 364
    const v0, 0x7f07004e

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mFour:Landroid/widget/ImageView;

    .line 365
    const v0, 0x7f07004f

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mFive:Landroid/widget/ImageView;

    .line 366
    const v0, 0x7f070050

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mSix:Landroid/widget/ImageView;

    .line 367
    const v0, 0x7f070051

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mSeven:Landroid/widget/ImageView;

    .line 368
    const v0, 0x7f070052

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mEight:Landroid/widget/ImageView;

    .line 369
    const v0, 0x7f070053

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mNine:Landroid/widget/ImageView;

    .line 370
    const v0, 0x7f070124

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mCancelButton:Landroid/widget/ImageView;

    .line 371
    const v0, 0x7f070123

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPINLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mOk:Landroid/widget/ImageView;

    .line 373
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mZero:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mOne:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mTwo:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mThree:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mFour:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mFive:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mSix:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mSeven:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mEight:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mNine:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mOk:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mCancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mZero:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 387
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mOne:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 388
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mTwo:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 389
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mThree:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 390
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mFour:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 391
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mFive:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 392
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mSix:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 393
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mSeven:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 394
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mEight:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 395
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mNine:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 396
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mOk:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 397
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mCancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 398
    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 518
    const/4 v0, -0x1

    .line 519
    .local v0, keyEventCode:I
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mZero:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_1

    .line 520
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->digit:I

    .line 521
    const/4 v0, 0x7

    .line 550
    :cond_0
    :goto_0
    return v0

    .line 522
    :cond_1
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mOne:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_2

    .line 523
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->digit:I

    .line 524
    const/16 v0, 0x8

    goto :goto_0

    .line 525
    :cond_2
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mTwo:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_3

    .line 526
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->digit:I

    .line 527
    const/16 v0, 0x9

    goto :goto_0

    .line 528
    :cond_3
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mThree:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_4

    .line 529
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->digit:I

    .line 530
    const/16 v0, 0xa

    goto :goto_0

    .line 531
    :cond_4
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mFour:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_5

    .line 532
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->digit:I

    .line 533
    const/16 v0, 0xb

    goto :goto_0

    .line 534
    :cond_5
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mFive:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_6

    .line 535
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->digit:I

    .line 536
    const/16 v0, 0xc

    goto :goto_0

    .line 537
    :cond_6
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mSix:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_7

    .line 538
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->digit:I

    .line 539
    const/16 v0, 0xd

    goto :goto_0

    .line 540
    :cond_7
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mSeven:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_8

    .line 541
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->digit:I

    .line 542
    const/16 v0, 0xe

    goto :goto_0

    .line 543
    :cond_8
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mEight:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_9

    .line 544
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->digit:I

    .line 545
    const/16 v0, 0xf

    goto :goto_0

    .line 546
    :cond_9
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mNine:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_0

    .line 547
    const/16 v1, 0x9

    iput v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->digit:I

    .line 548
    const/16 v0, 0x10

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const v3, 0x7f0b03f9

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 436
    const-string v1, "UnlockPINLock "

    const-string v2, "[onClick]+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v1, v1, Lcom/android/phone/UnlockPINLock;->mPwdDisplay:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 438
    const-string v1, "UnlockPINLock "

    const-string v2, "[onClick][mPwdDisplay] : null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :goto_0
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mCancelButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_2

    .line 444
    const-string v1, "UnlockPINLock "

    const-string v2, "[onClick][Cancel Button]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    const/16 v2, 0x1f5

    invoke-virtual {v1, v2, v4}, Lcom/android/phone/UnlockPINLock;->sendVerifyResult(IZ)V

    .line 446
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    invoke-virtual {v1}, Lcom/android/phone/UnlockPINLock;->finish()V

    .line 513
    :cond_0
    :goto_1
    return-void

    .line 440
    :cond_1
    const-string v1, "UnlockPINLock "

    const-string v2, "[onClick][mPwdDisplay] : not null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 450
    :cond_2
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->mOk:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_3

    .line 451
    const-string v1, "UnlockPINLock "

    const-string v2, "[onClick][OK Button]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v1, v1, Lcom/android/phone/UnlockPINLock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 453
    const-string v1, "UnlockPINLock "

    const-string v2, "[onClick][OK Button][mPwdDisplay] : not null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v1, v1, Lcom/android/phone/UnlockPINLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/UnlockPINLock;->strPwd:Ljava/lang/String;

    .line 455
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    sget-object v2, Lcom/android/phone/UnlockPINLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, v1, Lcom/android/phone/UnlockPINLock;->PwdLength:I

    .line 456
    sget-object v1, Lcom/android/phone/UnlockPINLock;->strPwd:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/phone/UnlockPINLock;->bStringValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 457
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    #getter for: Lcom/android/phone/UnlockPINLock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/phone/UnlockPINLock;->access$000(Lcom/android/phone/UnlockPINLock;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    invoke-virtual {v2, v3}, Lcom/android/phone/UnlockPINLock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    :goto_2
    const/4 v1, 0x0

    sput-object v1, Lcom/android/phone/UnlockPINLock;->strPwd:Ljava/lang/String;

    .line 491
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v1, v1, Lcom/android/phone/UnlockPINLock;->mPwdDisplay:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/phone/UnlockPINLock$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 497
    .local v0, keyEventCode:I
    if-ltz v0, :cond_0

    .line 498
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v1, v1, Lcom/android/phone/UnlockPINLock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 499
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v1, v1, Lcom/android/phone/UnlockPINLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/UnlockPINLock;->strPwd:Ljava/lang/String;

    .line 500
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    sget-object v2, Lcom/android/phone/UnlockPINLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, v1, Lcom/android/phone/UnlockPINLock;->PwdLength:I

    .line 501
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    iget v1, v1, Lcom/android/phone/UnlockPINLock;->PwdLength:I

    if-ge v1, v5, :cond_4

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/phone/UnlockPINLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->digit:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/UnlockPINLock;->strPwd:Ljava/lang/String;

    .line 503
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    invoke-virtual {v1, v0}, Lcom/android/phone/UnlockPINLock;->sendDownUpKeyEvents(I)V

    .line 506
    :cond_4
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v1, v1, Lcom/android/phone/UnlockPINLock;->mPwdDisplay:Landroid/widget/TextView;

    sget-object v2, Lcom/android/phone/UnlockPINLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    :cond_5
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->digit:I

    goto/16 :goto_1

    .line 459
    .end local v0           #keyEventCode:I
    :cond_6
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    iget v1, v1, Lcom/android/phone/UnlockPINLock;->PwdLength:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_8

    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    iget v1, v1, Lcom/android/phone/UnlockPINLock;->PwdLength:I

    if-gt v1, v5, :cond_8

    .line 460
    const-string v1, "UnlockPINLock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onClick][OK Button][strPwd] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/UnlockPINLock;->strPwd:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/android/phone/UnlockPINLock;->progressDialog:Landroid/app/ProgressDialog;

    .line 463
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v1, v1, Lcom/android/phone/UnlockPINLock;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    const v3, 0x7f0b0406

    invoke-virtual {v2, v3}, Lcom/android/phone/UnlockPINLock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v1, v1, Lcom/android/phone/UnlockPINLock;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 465
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v1, v1, Lcom/android/phone/UnlockPINLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 466
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v1, v1, Lcom/android/phone/UnlockPINLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 471
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v1, v1, Lcom/android/phone/UnlockPINLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 473
    const-string v1, "UnlockPINLock "

    const-string v2, "[onClick][OK Button][Start Unlock Process]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    sget v1, Lcom/android/phone/UnlockPINLock;->iSIMMEUnlockNo:I

    if-nez v1, :cond_7

    .line 479
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    sget v2, Lcom/android/phone/UnlockPINLock;->iSIMMEUnlockNo:I

    sget-object v3, Lcom/android/phone/UnlockPINLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/UnlockPINLock;->unlockPIN(ILjava/lang/String;)V

    .line 484
    :goto_3
    const-string v1, "UnlockPINLock "

    const-string v2, "[onClick][OK Button][Finish Unlock Process]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 481
    :cond_7
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    sget v2, Lcom/android/phone/UnlockPINLock;->iSIMMEUnlockNo:I

    sget-object v3, Lcom/android/phone/UnlockPINLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/UnlockPINLock;->unlockPIN(ILjava/lang/String;)V

    goto :goto_3

    .line 487
    :cond_8
    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    #getter for: Lcom/android/phone/UnlockPINLock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/phone/UnlockPINLock;->access$000(Lcom/android/phone/UnlockPINLock;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    invoke-virtual {v2, v3}, Lcom/android/phone/UnlockPINLock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 431
    const/4 v0, 0x0

    return v0
.end method

.method protected showAlertDialog(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 554
    const/16 v1, 0x78

    if-ne p1, v1, :cond_0

    .line 555
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->this$0:Lcom/android/phone/UnlockPINLock;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 556
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 571
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 558
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_0
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/UnlockPINLock$TouchInput;->digit:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/android/phone/UnlockPINLock$TouchInput$1;

    invoke-direct {v3, p0}, Lcom/android/phone/UnlockPINLock$TouchInput$1;-><init>(Lcom/android/phone/UnlockPINLock$TouchInput;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 556
    nop

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_0
    .end packed-switch
.end method
