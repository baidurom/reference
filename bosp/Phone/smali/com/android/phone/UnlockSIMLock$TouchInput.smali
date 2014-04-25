.class Lcom/android/phone/UnlockSIMLock$TouchInput;
.super Ljava/lang/Object;
.source "UnlockSIMLock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UnlockSIMLock;
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

.field final synthetic this$0:Lcom/android/phone/UnlockSIMLock;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockSIMLock;)V
    .locals 1
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->digit:I

    .line 462
    const v0, 0x7f070055

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mZero:Landroid/widget/ImageView;

    .line 463
    const v0, 0x7f07004b

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mOne:Landroid/widget/ImageView;

    .line 464
    const v0, 0x7f07004c

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mTwo:Landroid/widget/ImageView;

    .line 465
    const v0, 0x7f07004d

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mThree:Landroid/widget/ImageView;

    .line 466
    const v0, 0x7f07004e

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mFour:Landroid/widget/ImageView;

    .line 467
    const v0, 0x7f07004f

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mFive:Landroid/widget/ImageView;

    .line 468
    const v0, 0x7f070050

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mSix:Landroid/widget/ImageView;

    .line 469
    const v0, 0x7f070051

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mSeven:Landroid/widget/ImageView;

    .line 470
    const v0, 0x7f070052

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mEight:Landroid/widget/ImageView;

    .line 471
    const v0, 0x7f070053

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mNine:Landroid/widget/ImageView;

    .line 472
    const v0, 0x7f070124

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mCancelButton:Landroid/widget/ImageView;

    .line 473
    const v0, 0x7f070123

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mOk:Landroid/widget/ImageView;

    .line 475
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mZero:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mOne:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mTwo:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mThree:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mFour:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mFive:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mSix:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mSeven:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mEight:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mNine:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mOk:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mCancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mZero:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 489
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mOne:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 490
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mTwo:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 491
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mThree:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 492
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mFour:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 493
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mFive:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 494
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mSix:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 495
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mSeven:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 496
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mEight:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 497
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mNine:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 498
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mOk:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 499
    iget-object v0, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mCancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 500
    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 621
    const/4 v0, -0x1

    .line 622
    .local v0, keyEventCode:I
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mZero:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_1

    .line 623
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->digit:I

    .line 624
    const/4 v0, 0x7

    .line 653
    :cond_0
    :goto_0
    return v0

    .line 625
    :cond_1
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mOne:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_2

    .line 626
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->digit:I

    .line 627
    const/16 v0, 0x8

    goto :goto_0

    .line 628
    :cond_2
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mTwo:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_3

    .line 629
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->digit:I

    .line 630
    const/16 v0, 0x9

    goto :goto_0

    .line 631
    :cond_3
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mThree:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_4

    .line 632
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->digit:I

    .line 633
    const/16 v0, 0xa

    goto :goto_0

    .line 634
    :cond_4
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mFour:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_5

    .line 635
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->digit:I

    .line 636
    const/16 v0, 0xb

    goto :goto_0

    .line 637
    :cond_5
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mFive:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_6

    .line 638
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->digit:I

    .line 639
    const/16 v0, 0xc

    goto :goto_0

    .line 640
    :cond_6
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mSix:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_7

    .line 641
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->digit:I

    .line 642
    const/16 v0, 0xd

    goto :goto_0

    .line 643
    :cond_7
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mSeven:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_8

    .line 644
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->digit:I

    .line 645
    const/16 v0, 0xe

    goto :goto_0

    .line 646
    :cond_8
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mEight:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_9

    .line 647
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->digit:I

    .line 648
    const/16 v0, 0xf

    goto :goto_0

    .line 649
    :cond_9
    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mNine:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_0

    .line 650
    const/16 v1, 0x9

    iput v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->digit:I

    .line 651
    const/16 v0, 0x10

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const v5, 0x7f0b03f9

    const/16 v9, 0x78

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 537
    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mCancelButton:Landroid/widget/ImageView;

    if-ne p1, v3, :cond_1

    .line 538
    const-string v3, "UnlockSIMLock "

    const-string v4, "[onClick][mCandelButton]+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    const/16 v4, 0x1f7

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/UnlockSIMLock;->sendVerifyResult(IZ)V

    .line 540
    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    invoke-virtual {v3}, Lcom/android/phone/UnlockSIMLock;->finish()V

    .line 541
    const-string v3, "UnlockSIMLock "

    const-string v4, "[onClick][mCandelButton]-"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->mOk:Landroid/widget/ImageView;

    if-ne p1, v3, :cond_2

    .line 545
    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v3, v3, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 546
    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v4, v4, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/UnlockSIMLock;->strPwd:Ljava/lang/String;

    .line 547
    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v4, v4, Lcom/android/phone/UnlockSIMLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, v3, Lcom/android/phone/UnlockSIMLock;->PwdLength:I

    .line 548
    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v3, v3, Lcom/android/phone/UnlockSIMLock;->strPwd:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/phone/UnlockSIMLock;->bStringValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 549
    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    #getter for: Lcom/android/phone/UnlockSIMLock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/phone/UnlockSIMLock;->access$200(Lcom/android/phone/UnlockSIMLock;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    invoke-virtual {v4, v5}, Lcom/android/phone/UnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    :goto_1
    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/phone/UnlockSIMLock;->strPwd:Ljava/lang/String;

    .line 593
    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v3, v3, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    :cond_2
    const-string v3, "UnlockSIMLock "

    const-string v4, "[onClick][digit]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-direct {p0, p1}, Lcom/android/phone/UnlockSIMLock$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v1

    .line 600
    .local v1, keyEventCode:I
    if-ltz v1, :cond_0

    .line 601
    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v3, v3, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 602
    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v4, v4, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/UnlockSIMLock;->strPwd:Ljava/lang/String;

    .line 603
    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v4, v4, Lcom/android/phone/UnlockSIMLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, v3, Lcom/android/phone/UnlockSIMLock;->PwdLength:I

    .line 604
    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget v3, v3, Lcom/android/phone/UnlockSIMLock;->PwdLength:I

    if-ge v3, v8, :cond_3

    .line 605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v5, v4, Lcom/android/phone/UnlockSIMLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->digit:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/android/phone/UnlockSIMLock;->strPwd:Ljava/lang/String;

    .line 606
    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    invoke-virtual {v3, v1}, Lcom/android/phone/UnlockSIMLock;->sendDownUpKeyEvents(I)V

    .line 609
    :cond_3
    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v3, v3, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v4, v4, Lcom/android/phone/UnlockSIMLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    :cond_4
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->digit:I

    goto/16 :goto_0

    .line 551
    .end local v1           #keyEventCode:I
    :cond_5
    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget v3, v3, Lcom/android/phone/UnlockSIMLock;->PwdLength:I

    const/4 v4, 0x4

    if-lt v3, v4, :cond_8

    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget v3, v3, Lcom/android/phone/UnlockSIMLock;->PwdLength:I

    if-gt v3, v8, :cond_8

    .line 553
    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    new-instance v4, Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    invoke-direct {v4, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/android/phone/UnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    .line 554
    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v3, v3, Lcom/android/phone/UnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    const v5, 0x7f0b0406

    invoke-virtual {v4, v5}, Lcom/android/phone/UnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v3, v3, Lcom/android/phone/UnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 556
    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v3, v3, Lcom/android/phone/UnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 557
    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v3, v3, Lcom/android/phone/UnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 562
    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v3, v3, Lcom/android/phone/UnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 571
    const-string v3, "UnlockSIMLock "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onClick][mOK][Gemini Card][SetSIMLock]+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v5, v5, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 573
    .local v2, mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget v3, v3, Lcom/android/phone/UnlockSIMLock;->iSIMMEUnlockNo:I

    if-nez v3, :cond_7

    .line 574
    const-string v3, "UnlockSIMLock "

    const-string v4, "[onClick][mOK][Gemini Card][SetSIMLock][SIM 1]+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    #getter for: Lcom/android/phone/UnlockSIMLock;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/UnlockSIMLock;->access$000(Lcom/android/phone/UnlockSIMLock;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 576
    .local v0, callback:Landroid/os/Message;
    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v4, v4, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lcom/android/internal/telephony/IccCard;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 577
    const-string v3, "UnlockSIMLock "

    const-string v4, "[onClick][mOK][Gemini Card][SetSIMLock][SIM 1]-"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    .end local v0           #callback:Landroid/os/Message;
    :cond_6
    :goto_2
    const-string v3, "UnlockSIMLock "

    const-string v4, "[onClick][mOK][Gemini Card][SetSIMLock]-"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 578
    :cond_7
    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget v3, v3, Lcom/android/phone/UnlockSIMLock;->iSIMMEUnlockNo:I

    if-ne v3, v7, :cond_6

    .line 579
    const-string v3, "UnlockSIMLock "

    const-string v4, "[onClick][mOK][Gemini Card][SetSIMLock][SIM 2]+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    #getter for: Lcom/android/phone/UnlockSIMLock;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/UnlockSIMLock;->access$000(Lcom/android/phone/UnlockSIMLock;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 581
    .restart local v0       #callback:Landroid/os/Message;
    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    iget-object v4, v4, Lcom/android/phone/UnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lcom/android/internal/telephony/IccCard;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 582
    const-string v3, "UnlockSIMLock "

    const-string v4, "[onClick][mOK][Gemini Card][SetSIMLock][SIM 2]-"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 589
    .end local v0           #callback:Landroid/os/Message;
    .end local v2           #mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_8
    iget-object v3, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    #getter for: Lcom/android/phone/UnlockSIMLock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/phone/UnlockSIMLock;->access$200(Lcom/android/phone/UnlockSIMLock;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    invoke-virtual {v4, v5}, Lcom/android/phone/UnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 533
    const/4 v0, 0x0

    return v0
.end method

.method protected showAlertDialog(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 657
    const/16 v1, 0x78

    if-ne p1, v1, :cond_0

    .line 658
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/UnlockSIMLock;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 659
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 674
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 661
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_0
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/UnlockSIMLock$TouchInput;->digit:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/android/phone/UnlockSIMLock$TouchInput$1;

    invoke-direct {v3, p0}, Lcom/android/phone/UnlockSIMLock$TouchInput$1;-><init>(Lcom/android/phone/UnlockSIMLock$TouchInput;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 659
    nop

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_0
    .end packed-switch
.end method
