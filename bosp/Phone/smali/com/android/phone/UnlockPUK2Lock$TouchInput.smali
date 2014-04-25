.class Lcom/android/phone/UnlockPUK2Lock$TouchInput;
.super Ljava/lang/Object;
.source "UnlockPUK2Lock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UnlockPUK2Lock;
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

.field final synthetic this$0:Lcom/android/phone/UnlockPUK2Lock;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPUK2Lock;)V
    .locals 1
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->digit:I

    .line 368
    const v0, 0x7f070055

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mZero:Landroid/widget/ImageView;

    .line 369
    const v0, 0x7f07004b

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mOne:Landroid/widget/ImageView;

    .line 370
    const v0, 0x7f07004c

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mTwo:Landroid/widget/ImageView;

    .line 371
    const v0, 0x7f07004d

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mThree:Landroid/widget/ImageView;

    .line 372
    const v0, 0x7f07004e

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mFour:Landroid/widget/ImageView;

    .line 373
    const v0, 0x7f07004f

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mFive:Landroid/widget/ImageView;

    .line 374
    const v0, 0x7f070050

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mSix:Landroid/widget/ImageView;

    .line 375
    const v0, 0x7f070051

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mSeven:Landroid/widget/ImageView;

    .line 376
    const v0, 0x7f070052

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mEight:Landroid/widget/ImageView;

    .line 377
    const v0, 0x7f070053

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mNine:Landroid/widget/ImageView;

    .line 378
    const v0, 0x7f070124

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mCancelButton:Landroid/widget/ImageView;

    .line 379
    const v0, 0x7f070123

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUK2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mOk:Landroid/widget/ImageView;

    .line 381
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mZero:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mOne:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mTwo:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mThree:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mFour:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mFive:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mSix:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mSeven:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mEight:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mNine:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mOk:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mCancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mZero:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 395
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mOne:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 396
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mTwo:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 397
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mThree:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 398
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mFour:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 399
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mFive:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 400
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mSix:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 401
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mSeven:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 402
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mEight:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 403
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mNine:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 404
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mOk:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 405
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mCancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 406
    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 582
    const/4 v0, -0x1

    .line 583
    .local v0, keyEventCode:I
    iget-object v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mZero:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_1

    .line 584
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->digit:I

    .line 585
    const/4 v0, 0x7

    .line 614
    :cond_0
    :goto_0
    return v0

    .line 586
    :cond_1
    iget-object v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mOne:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_2

    .line 587
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->digit:I

    .line 588
    const/16 v0, 0x8

    goto :goto_0

    .line 589
    :cond_2
    iget-object v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mTwo:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_3

    .line 590
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->digit:I

    .line 591
    const/16 v0, 0x9

    goto :goto_0

    .line 592
    :cond_3
    iget-object v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mThree:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_4

    .line 593
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->digit:I

    .line 594
    const/16 v0, 0xa

    goto :goto_0

    .line 595
    :cond_4
    iget-object v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mFour:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_5

    .line 596
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->digit:I

    .line 597
    const/16 v0, 0xb

    goto :goto_0

    .line 598
    :cond_5
    iget-object v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mFive:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_6

    .line 599
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->digit:I

    .line 600
    const/16 v0, 0xc

    goto :goto_0

    .line 601
    :cond_6
    iget-object v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mSix:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_7

    .line 602
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->digit:I

    .line 603
    const/16 v0, 0xd

    goto :goto_0

    .line 604
    :cond_7
    iget-object v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mSeven:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_8

    .line 605
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->digit:I

    .line 606
    const/16 v0, 0xe

    goto :goto_0

    .line 607
    :cond_8
    iget-object v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mEight:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_9

    .line 608
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->digit:I

    .line 609
    const/16 v0, 0xf

    goto :goto_0

    .line 610
    :cond_9
    iget-object v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mNine:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_0

    .line 611
    const/16 v1, 0x9

    iput v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->digit:I

    .line 612
    const/16 v0, 0x10

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v5, 0x7f0b03f9

    const/16 v7, 0x8

    .line 443
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mCancelButton:Landroid/widget/ImageView;

    if-ne p1, v3, :cond_1

    .line 444
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    const/16 v4, 0x1f9

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/UnlockPUK2Lock;->sendVerifyResult(IZ)V

    .line 445
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->mOk:Landroid/widget/ImageView;

    if-ne p1, v3, :cond_4

    .line 450
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUK2Lock;->strPUKUnlockPhase:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUK2Lock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 451
    :cond_2
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 452
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    .line 453
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, v3, Lcom/android/phone/UnlockPUK2Lock;->PwdLength:I

    .line 454
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v3, v3, Lcom/android/phone/UnlockPUK2Lock;->PwdLength:I

    if-ne v3, v7, :cond_3

    .line 456
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    const-class v4, Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 457
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 458
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "PUKPHASE"

    const-string v4, "2"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v3, "PUKLEFTRETRIES"

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v4, v4, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 460
    const-string v3, "PhoneConstants.GEMINI_SIM_ID_KEY"

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v4, v4, Lcom/android/phone/UnlockPUK2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 461
    const-string v3, "INPUTPUK"

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 463
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3, v1}, Lcom/android/phone/UnlockPUK2Lock;->startActivity(Landroid/content/Intent;)V

    .line 464
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    goto :goto_0

    .line 467
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    #getter for: Lcom/android/phone/UnlockPUK2Lock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/phone/UnlockPUK2Lock;->access$000(Lcom/android/phone/UnlockPUK2Lock;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    const v5, 0x7f0b03fa

    invoke-virtual {v4, v5}, Lcom/android/phone/UnlockPUK2Lock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iput-object v8, v3, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    .line 470
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v2

    .line 561
    .local v2, keyEventCode:I
    if-ltz v2, :cond_0

    .line 562
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    .line 563
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    .line 564
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, v3, Lcom/android/phone/UnlockPUK2Lock;->PwdLength:I

    .line 565
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v3, v3, Lcom/android/phone/UnlockPUK2Lock;->PwdLength:I

    if-ge v3, v7, :cond_5

    .line 566
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v5, v4, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->digit:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    .line 567
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3, v2}, Lcom/android/phone/UnlockPUK2Lock;->sendDownUpKeyEvents(I)V

    .line 570
    :cond_5
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    :cond_6
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->digit:I

    goto/16 :goto_0

    .line 472
    .end local v2           #keyEventCode:I
    :cond_7
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUK2Lock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 473
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 474
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    .line 475
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, v3, Lcom/android/phone/UnlockPUK2Lock;->PwdLength:I

    .line 476
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v3, v3, Lcom/android/phone/UnlockPUK2Lock;->PwdLength:I

    if-lt v3, v9, :cond_8

    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v3, v3, Lcom/android/phone/UnlockPUK2Lock;->PwdLength:I

    if-gt v3, v7, :cond_8

    .line 478
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    const-class v4, Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 479
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 480
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v3, "PUKPHASE"

    const-string v4, "3"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v3, "PUKLEFTRETRIES"

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v4, v4, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 482
    const-string v3, "PhoneConstants.GEMINI_SIM_ID_KEY"

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v4, v4, Lcom/android/phone/UnlockPUK2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 483
    const-string v3, "INPUTPUK"

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->strPUK:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v3, "INPUTORIPIN"

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 486
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3, v1}, Lcom/android/phone/UnlockPUK2Lock;->startActivity(Landroid/content/Intent;)V

    .line 487
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    goto/16 :goto_0

    .line 490
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_8
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    #getter for: Lcom/android/phone/UnlockPUK2Lock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/phone/UnlockPUK2Lock;->access$000(Lcom/android/phone/UnlockPUK2Lock;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v4, v5}, Lcom/android/phone/UnlockPUK2Lock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iput-object v8, v3, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    .line 493
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 495
    :cond_9
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUK2Lock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 496
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 497
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    .line 498
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, v3, Lcom/android/phone/UnlockPUK2Lock;->PwdLength:I

    .line 499
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/phone/UnlockPUK2Lock;->bStringValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 500
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    #getter for: Lcom/android/phone/UnlockPUK2Lock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/phone/UnlockPUK2Lock;->access$000(Lcom/android/phone/UnlockPUK2Lock;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v4, v5}, Lcom/android/phone/UnlockPUK2Lock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    :goto_2
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iput-object v8, v3, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    .line 553
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUK2Lock;->mPwdDisplay:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 502
    :cond_a
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v3, v3, Lcom/android/phone/UnlockPUK2Lock;->PwdLength:I

    if-lt v3, v9, :cond_d

    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v3, v3, Lcom/android/phone/UnlockPUK2Lock;->PwdLength:I

    if-gt v3, v7, :cond_d

    .line 503
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUK2Lock;->strOriPIN:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 504
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    #getter for: Lcom/android/phone/UnlockPUK2Lock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/phone/UnlockPUK2Lock;->access$000(Lcom/android/phone/UnlockPUK2Lock;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    const v5, 0x7f0b0405

    invoke-virtual {v4, v5}, Lcom/android/phone/UnlockPUK2Lock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    const-class v4, Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 506
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 507
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v3, "PUKPHASE"

    const-string v4, "2"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v3, "PUKLEFTRETRIES"

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v4, v4, Lcom/android/phone/UnlockPUK2Lock;->retryCount:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 509
    const-string v3, "PhoneConstants.GEMINI_SIM_ID_KEY"

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v4, v4, Lcom/android/phone/UnlockPUK2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 510
    const-string v3, "INPUTPUK"

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUK2Lock;->strPUK:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 512
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3, v1}, Lcom/android/phone/UnlockPUK2Lock;->startActivity(Landroid/content/Intent;)V

    .line 513
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v3}, Lcom/android/phone/UnlockPUK2Lock;->finish()V

    goto/16 :goto_0

    .line 517
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_b
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    new-instance v4, Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct {v4, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/android/phone/UnlockPUK2Lock;->progressDialog:Landroid/app/ProgressDialog;

    .line 518
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUK2Lock;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    const v5, 0x7f0b0406

    invoke-virtual {v4, v5}, Lcom/android/phone/UnlockPUK2Lock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUK2Lock;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 520
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUK2Lock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 521
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUK2Lock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 526
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUK2Lock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 529
    const-string v3, "UnlockPUK2Lock "

    const-string v4, "[onClick][OK Button][Start Unlock Process]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v3, v3, Lcom/android/phone/UnlockPUK2Lock;->iSIMMEUnlockNo:I

    if-nez v3, :cond_c

    .line 535
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v4, v4, Lcom/android/phone/UnlockPUK2Lock;->iSIMMEUnlockNo:I

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUK2Lock;->strPUK:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v6, v6, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/phone/UnlockPUK2Lock;->unlockPUK2(ILjava/lang/String;Ljava/lang/String;)V

    .line 540
    :goto_3
    const-string v3, "UnlockPUK2Lock "

    const-string v4, "[onClick][OK Button][Finish Unlock Process]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 537
    :cond_c
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget v4, v4, Lcom/android/phone/UnlockPUK2Lock;->iSIMMEUnlockNo:I

    iget-object v5, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUK2Lock;->strPUK:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iget-object v6, v6, Lcom/android/phone/UnlockPUK2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/phone/UnlockPUK2Lock;->unlockPUK2(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 549
    :cond_d
    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    #getter for: Lcom/android/phone/UnlockPUK2Lock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/phone/UnlockPUK2Lock;->access$000(Lcom/android/phone/UnlockPUK2Lock;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-virtual {v4, v5}, Lcom/android/phone/UnlockPUK2Lock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 439
    const/4 v0, 0x0

    return v0
.end method

.method protected showAlertDialog(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 618
    const/16 v1, 0x78

    if-ne p1, v1, :cond_0

    .line 619
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 620
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 635
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 622
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_0
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/UnlockPUK2Lock$TouchInput;->digit:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/android/phone/UnlockPUK2Lock$TouchInput$1;

    invoke-direct {v3, p0}, Lcom/android/phone/UnlockPUK2Lock$TouchInput$1;-><init>(Lcom/android/phone/UnlockPUK2Lock$TouchInput;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 620
    nop

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_0
    .end packed-switch
.end method
