.class Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;
.super Ljava/lang/Object;
.source "PowerOnUnlockSIMLock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PowerOnUnlockSIMLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TouchInput"
.end annotation


# instance fields
.field digit:I

.field private mCancelButton:Landroid/widget/TextView;

.field private mEight:Landroid/widget/TextView;

.field private mFive:Landroid/widget/TextView;

.field private mFour:Landroid/widget/TextView;

.field private mNine:Landroid/widget/TextView;

.field private mOk:Landroid/widget/TextView;

.field private mOne:Landroid/widget/TextView;

.field private mSeven:Landroid/widget/TextView;

.field private mSix:Landroid/widget/TextView;

.field private mThree:Landroid/widget/TextView;

.field private mTwo:Landroid/widget/TextView;

.field private mZero:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/phone/PowerOnUnlockSIMLock;


# direct methods
.method constructor <init>(Lcom/android/phone/PowerOnUnlockSIMLock;)V
    .locals 2
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->digit:I

    .line 562
    const v0, 0x7f070055

    invoke-virtual {p1, v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mZero:Landroid/widget/TextView;

    .line 563
    const v0, 0x7f07004b

    invoke-virtual {p1, v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mOne:Landroid/widget/TextView;

    .line 564
    const v0, 0x7f07004c

    invoke-virtual {p1, v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mTwo:Landroid/widget/TextView;

    .line 565
    const v0, 0x7f07004d

    invoke-virtual {p1, v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mThree:Landroid/widget/TextView;

    .line 566
    const v0, 0x7f07004e

    invoke-virtual {p1, v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mFour:Landroid/widget/TextView;

    .line 567
    const v0, 0x7f07004f

    invoke-virtual {p1, v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mFive:Landroid/widget/TextView;

    .line 568
    const v0, 0x7f070050

    invoke-virtual {p1, v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mSix:Landroid/widget/TextView;

    .line 569
    const v0, 0x7f070051

    invoke-virtual {p1, v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mSeven:Landroid/widget/TextView;

    .line 570
    const v0, 0x7f070052

    invoke-virtual {p1, v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mEight:Landroid/widget/TextView;

    .line 571
    const v0, 0x7f070053

    invoke-virtual {p1, v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mNine:Landroid/widget/TextView;

    .line 572
    const v0, 0x7f070124

    invoke-virtual {p1, v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    .line 573
    const v0, 0x7f070123

    invoke-virtual {p1, v0}, Lcom/android/phone/PowerOnUnlockSIMLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mOk:Landroid/widget/TextView;

    .line 575
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mZero:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mOne:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mTwo:Landroid/widget/TextView;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mThree:Landroid/widget/TextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mFour:Landroid/widget/TextView;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mFive:Landroid/widget/TextView;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mSix:Landroid/widget/TextView;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mSeven:Landroid/widget/TextView;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mEight:Landroid/widget/TextView;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mNine:Landroid/widget/TextView;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mOk:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 599
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 600
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 601
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 602
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 603
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 604
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 605
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 606
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 607
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 608
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 609
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mOk:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 610
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 611
    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 766
    const/4 v0, -0x1

    .line 767
    .local v0, keyEventCode:I
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mZero:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 768
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->digit:I

    .line 769
    const/4 v0, 0x7

    .line 798
    :cond_0
    :goto_0
    return v0

    .line 770
    :cond_1
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mOne:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 771
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->digit:I

    .line 772
    const/16 v0, 0x8

    goto :goto_0

    .line 773
    :cond_2
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mTwo:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 774
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->digit:I

    .line 775
    const/16 v0, 0x9

    goto :goto_0

    .line 776
    :cond_3
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mThree:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    .line 777
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->digit:I

    .line 778
    const/16 v0, 0xa

    goto :goto_0

    .line 779
    :cond_4
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mFour:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    .line 780
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->digit:I

    .line 781
    const/16 v0, 0xb

    goto :goto_0

    .line 782
    :cond_5
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mFive:Landroid/widget/TextView;

    if-ne p1, v1, :cond_6

    .line 783
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->digit:I

    .line 784
    const/16 v0, 0xc

    goto :goto_0

    .line 785
    :cond_6
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mSix:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    .line 786
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->digit:I

    .line 787
    const/16 v0, 0xd

    goto :goto_0

    .line 788
    :cond_7
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mSeven:Landroid/widget/TextView;

    if-ne p1, v1, :cond_8

    .line 789
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->digit:I

    .line 790
    const/16 v0, 0xe

    goto :goto_0

    .line 791
    :cond_8
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mEight:Landroid/widget/TextView;

    if-ne p1, v1, :cond_9

    .line 792
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->digit:I

    .line 793
    const/16 v0, 0xf

    goto :goto_0

    .line 794
    :cond_9
    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mNine:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 795
    const/16 v1, 0x9

    iput v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->digit:I

    .line 796
    const/16 v0, 0x10

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    const/16 v13, 0x78

    const/16 v12, 0x8

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 648
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v6, :cond_5

    .line 649
    const-string v6, "PowerOnUnlockSIMLock "

    const-string v7, "[onClick][mCandelButton]+"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    const/16 v7, 0x1f7

    invoke-virtual {v6, v7, v9}, Lcom/android/phone/PowerOnUnlockSIMLock;->sendVerifyResult(IZ)V

    .line 652
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    if-nez v6, :cond_2

    .line 653
    sget-object v6, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    aput v9, v6, v9

    .line 654
    const-string v6, "PowerOnUnlockSIMLock "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[changed][arySIMLockStatus]: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    aget v8, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    sget-object v6, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    aget v6, v6, v10

    if-ne v6, v11, :cond_0

    .line 656
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    const-class v7, Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 657
    .local v2, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 658
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "PhoneConstants.GEMINI_SIM_ID_KEY"

    invoke-virtual {v0, v6, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 659
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 660
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-virtual {v6, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->startActivity(Landroid/content/Intent;)V

    .line 662
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    #calls: Lcom/android/phone/PowerOnUnlockSIMLock;->setSimLockScreenDone(II)V
    invoke-static {v6, v9, v11}, Lcom/android/phone/PowerOnUnlockSIMLock;->access$400(Lcom/android/phone/PowerOnUnlockSIMLock;II)V

    .line 663
    new-instance v5, Landroid/content/Intent;

    const-string v6, "action_melock_dismiss"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 664
    .local v5, t:Landroid/content/Intent;
    const-string v6, "simslot"

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 665
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-virtual {v6, v5}, Lcom/android/phone/PowerOnUnlockSIMLock;->sendBroadcast(Landroid/content/Intent;)V

    .line 666
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-virtual {v6}, Lcom/android/phone/PowerOnUnlockSIMLock;->finish()V

    .line 761
    .end local v5           #t:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 668
    :cond_2
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    if-ne v6, v10, :cond_4

    .line 669
    sget-object v6, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    aput v9, v6, v10

    .line 670
    const-string v6, "PowerOnUnlockSIMLock "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[changed][arySIMLockStatus]: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    aget v8, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    sget-object v6, Lcom/android/phone/PhoneApp;->arySIMLockStatus:[I

    aget v6, v6, v9

    if-ne v6, v11, :cond_3

    .line 672
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    const-class v7, Lcom/android/phone/PowerOnSetupUnlockSIMLock;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 673
    .restart local v2       #intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 674
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v6, "PhoneConstants.GEMINI_SIM_ID_KEY"

    invoke-virtual {v0, v6, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 675
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 676
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-virtual {v6, v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->startActivity(Landroid/content/Intent;)V

    .line 678
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    #calls: Lcom/android/phone/PowerOnUnlockSIMLock;->setSimLockScreenDone(II)V
    invoke-static {v6, v10, v11}, Lcom/android/phone/PowerOnUnlockSIMLock;->access$400(Lcom/android/phone/PowerOnUnlockSIMLock;II)V

    .line 679
    new-instance v5, Landroid/content/Intent;

    const-string v6, "action_melock_dismiss"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 680
    .restart local v5       #t:Landroid/content/Intent;
    const-string v6, "simslot"

    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 681
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-virtual {v6, v5}, Lcom/android/phone/PowerOnUnlockSIMLock;->sendBroadcast(Landroid/content/Intent;)V

    .line 682
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-virtual {v6}, Lcom/android/phone/PowerOnUnlockSIMLock;->finish()V

    goto :goto_0

    .line 685
    .end local v5           #t:Landroid/content/Intent;
    :cond_4
    const-string v6, "PowerOnUnlockSIMLock "

    const-string v7, "[onClick][mCandelButton]-"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 688
    :cond_5
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->mOk:Landroid/widget/TextView;

    if-ne p1, v6, :cond_6

    .line 689
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v6, :cond_6

    .line 690
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v7, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v7, v7, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->strPwd:Ljava/lang/String;

    .line 691
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v7, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v7, v7, Lcom/android/phone/PowerOnUnlockSIMLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iput v7, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->PwdLength:I

    .line 692
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->strPwd:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/phone/PowerOnUnlockSIMLock;->bStringValid(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 693
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    #getter for: Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/phone/PowerOnUnlockSIMLock;->access$300(Lcom/android/phone/PowerOnUnlockSIMLock;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    const v8, 0x7f0b03f9

    invoke-virtual {v7, v8}, Lcom/android/phone/PowerOnUnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    :goto_1
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->strPwd:Ljava/lang/String;

    .line 738
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    :cond_6
    const-string v6, "PowerOnUnlockSIMLock "

    const-string v7, "[onClick][digit]"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-direct {p0, p1}, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v3

    .line 745
    .local v3, keyEventCode:I
    if-ltz v3, :cond_1

    .line 746
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v6, :cond_8

    .line 747
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v7, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v7, v7, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->strPwd:Ljava/lang/String;

    .line 748
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v7, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v7, v7, Lcom/android/phone/PowerOnUnlockSIMLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iput v7, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->PwdLength:I

    .line 749
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->PwdLength:I

    if-ge v6, v12, :cond_7

    .line 750
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v8, v7, Lcom/android/phone/PowerOnUnlockSIMLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->digit:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/android/phone/PowerOnUnlockSIMLock;->strPwd:Ljava/lang/String;

    .line 751
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-virtual {v6, v3}, Lcom/android/phone/PowerOnUnlockSIMLock;->sendDownUpKeyEvents(I)V

    .line 754
    :cond_7
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v7, v7, Lcom/android/phone/PowerOnUnlockSIMLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 758
    :cond_8
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->digit:I

    goto/16 :goto_0

    .line 695
    .end local v3           #keyEventCode:I
    :cond_9
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->PwdLength:I

    const/4 v7, 0x4

    if-lt v6, v7, :cond_c

    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->PwdLength:I

    if-gt v6, v12, :cond_c

    .line 697
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    new-instance v7, Landroid/app/ProgressDialog;

    iget-object v8, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-direct {v7, v8}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v7, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    .line 698
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v7, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    const v8, 0x7f0b0406

    invoke-virtual {v7, v8}, Lcom/android/phone/PowerOnUnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 699
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6, v10}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 700
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6, v9}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 701
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 706
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    .line 715
    const-string v6, "PowerOnUnlockSIMLock "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onClick][mOK][Gemini Card][SetSIMLock]+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v8, v8, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 717
    .local v4, mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    if-nez v6, :cond_b

    .line 718
    const-string v6, "PowerOnUnlockSIMLock "

    const-string v7, "[onClick][mOK][Gemini Card][SetSIMLock][SIM 1]+"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    #getter for: Lcom/android/phone/PowerOnUnlockSIMLock;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/phone/PowerOnUnlockSIMLock;->access$100(Lcom/android/phone/PowerOnUnlockSIMLock;)Landroid/os/Handler;

    move-result-object v6

    invoke-static {v6, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 720
    .local v1, callback:Landroid/os/Message;
    invoke-virtual {v4, v9}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v7, v7, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Lcom/android/internal/telephony/IccCard;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 721
    const-string v6, "PowerOnUnlockSIMLock "

    const-string v7, "[onClick][mOK][Gemini Card][SetSIMLock][SIM 1]-"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    .end local v1           #callback:Landroid/os/Message;
    :cond_a
    :goto_2
    const-string v6, "PowerOnUnlockSIMLock "

    const-string v7, "[onClick][mOK][Gemini Card][SetSIMLock]-"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 722
    :cond_b
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget v6, v6, Lcom/android/phone/PowerOnUnlockSIMLock;->iSIMMEUnlockNo:I

    if-ne v6, v10, :cond_a

    .line 723
    const-string v6, "PowerOnUnlockSIMLock "

    const-string v7, "[onClick][mOK][Gemini Card][SetSIMLock][SIM 2]+"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    #getter for: Lcom/android/phone/PowerOnUnlockSIMLock;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/phone/PowerOnUnlockSIMLock;->access$100(Lcom/android/phone/PowerOnUnlockSIMLock;)Landroid/os/Handler;

    move-result-object v6

    invoke-static {v6, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 725
    .restart local v1       #callback:Landroid/os/Message;
    invoke-virtual {v4, v10}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v7, v7, Lcom/android/phone/PowerOnUnlockSIMLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Lcom/android/internal/telephony/IccCard;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 726
    const-string v6, "PowerOnUnlockSIMLock "

    const-string v7, "[onClick][mOK][Gemini Card][SetSIMLock][SIM 2]-"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 733
    .end local v1           #callback:Landroid/os/Message;
    .end local v4           #mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_c
    iget-object v6, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    #getter for: Lcom/android/phone/PowerOnUnlockSIMLock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/phone/PowerOnUnlockSIMLock;->access$300(Lcom/android/phone/PowerOnUnlockSIMLock;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    const v8, 0x7f0b03f9

    invoke-virtual {v7, v8}, Lcom/android/phone/PowerOnUnlockSIMLock;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 644
    const/4 v0, 0x0

    return v0
.end method

.method protected showAlertDialog(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 802
    const/16 v1, 0x78

    if-ne p1, v1, :cond_0

    .line 803
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 804
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 819
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 806
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_0
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;->digit:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput$1;

    invoke-direct {v3, p0}, Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput$1;-><init>(Lcom/android/phone/PowerOnUnlockSIMLock$TouchInput;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 804
    nop

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_0
    .end packed-switch
.end method
