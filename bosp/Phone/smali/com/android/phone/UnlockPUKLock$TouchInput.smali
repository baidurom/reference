.class Lcom/android/phone/UnlockPUKLock$TouchInput;
.super Ljava/lang/Object;
.source "UnlockPUKLock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UnlockPUKLock;
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

.field final synthetic this$0:Lcom/android/phone/UnlockPUKLock;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPUKLock;)V
    .locals 1
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->digit:I

    .line 389
    const v0, 0x7f070055

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mZero:Landroid/widget/ImageView;

    .line 390
    const v0, 0x7f07004b

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mOne:Landroid/widget/ImageView;

    .line 391
    const v0, 0x7f07004c

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mTwo:Landroid/widget/ImageView;

    .line 392
    const v0, 0x7f07004d

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mThree:Landroid/widget/ImageView;

    .line 393
    const v0, 0x7f07004e

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mFour:Landroid/widget/ImageView;

    .line 394
    const v0, 0x7f07004f

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mFive:Landroid/widget/ImageView;

    .line 395
    const v0, 0x7f070050

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mSix:Landroid/widget/ImageView;

    .line 396
    const v0, 0x7f070051

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mSeven:Landroid/widget/ImageView;

    .line 397
    const v0, 0x7f070052

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mEight:Landroid/widget/ImageView;

    .line 398
    const v0, 0x7f070053

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mNine:Landroid/widget/ImageView;

    .line 399
    const v0, 0x7f070124

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mCancelButton:Landroid/widget/ImageView;

    .line 400
    const v0, 0x7f070123

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPUKLock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mOk:Landroid/widget/ImageView;

    .line 402
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mZero:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mOne:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mTwo:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mThree:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mFour:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mFive:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mSix:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mSeven:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mEight:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mNine:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mOk:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mCancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mZero:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 416
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mOne:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 417
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mTwo:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 418
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mThree:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 419
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mFour:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 420
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mFive:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 421
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mSix:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 422
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mSeven:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 423
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mEight:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 424
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mNine:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 425
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mOk:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 426
    iget-object v0, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mCancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 427
    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 612
    const/4 v0, -0x1

    .line 613
    .local v0, keyEventCode:I
    iget-object v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mZero:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_1

    .line 614
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->digit:I

    .line 615
    const/4 v0, 0x7

    .line 644
    :cond_0
    :goto_0
    return v0

    .line 616
    :cond_1
    iget-object v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mOne:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_2

    .line 617
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->digit:I

    .line 618
    const/16 v0, 0x8

    goto :goto_0

    .line 619
    :cond_2
    iget-object v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mTwo:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_3

    .line 620
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->digit:I

    .line 621
    const/16 v0, 0x9

    goto :goto_0

    .line 622
    :cond_3
    iget-object v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mThree:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_4

    .line 623
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->digit:I

    .line 624
    const/16 v0, 0xa

    goto :goto_0

    .line 625
    :cond_4
    iget-object v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mFour:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_5

    .line 626
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->digit:I

    .line 627
    const/16 v0, 0xb

    goto :goto_0

    .line 628
    :cond_5
    iget-object v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mFive:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_6

    .line 629
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->digit:I

    .line 630
    const/16 v0, 0xc

    goto :goto_0

    .line 631
    :cond_6
    iget-object v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mSix:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_7

    .line 632
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->digit:I

    .line 633
    const/16 v0, 0xd

    goto :goto_0

    .line 634
    :cond_7
    iget-object v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mSeven:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_8

    .line 635
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->digit:I

    .line 636
    const/16 v0, 0xe

    goto :goto_0

    .line 637
    :cond_8
    iget-object v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mEight:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_9

    .line 638
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->digit:I

    .line 639
    const/16 v0, 0xf

    goto :goto_0

    .line 640
    :cond_9
    iget-object v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mNine:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_0

    .line 641
    const/16 v1, 0x9

    iput v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->digit:I

    .line 642
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

    .line 464
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mCancelButton:Landroid/widget/ImageView;

    if-ne p1, v3, :cond_1

    .line 465
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    const/16 v4, 0x1f6

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/UnlockPUKLock;->sendVerifyResult(IZ)V

    .line 466
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v3}, Lcom/android/phone/UnlockPUKLock;->finish()V

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->mOk:Landroid/widget/ImageView;

    if-ne p1, v3, :cond_3

    .line 471
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUKLock;->strPUKUnlockPhase:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUKLock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 472
    :cond_2
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 473
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    .line 474
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, v3, Lcom/android/phone/UnlockPUKLock;->PwdLength:I

    .line 475
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/phone/UnlockPUKLock;->bStringValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 476
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    #getter for: Lcom/android/phone/UnlockPUKLock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/phone/UnlockPUKLock;->access$000(Lcom/android/phone/UnlockPUKLock;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    const v5, 0x7f0b03fa

    invoke-virtual {v4, v5}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    :goto_1
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iput-object v8, v3, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    .line 495
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/phone/UnlockPUKLock$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v2

    .line 591
    .local v2, keyEventCode:I
    if-ltz v2, :cond_0

    .line 592
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 593
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    .line 594
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, v3, Lcom/android/phone/UnlockPUKLock;->PwdLength:I

    .line 595
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v3, v3, Lcom/android/phone/UnlockPUKLock;->PwdLength:I

    if-ge v3, v7, :cond_4

    .line 596
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, v4, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->digit:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    .line 597
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v3, v2}, Lcom/android/phone/UnlockPUKLock;->sendDownUpKeyEvents(I)V

    .line 600
    :cond_4
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    :cond_5
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->digit:I

    goto/16 :goto_0

    .line 478
    .end local v2           #keyEventCode:I
    :cond_6
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v3, v3, Lcom/android/phone/UnlockPUKLock;->PwdLength:I

    if-ne v3, v7, :cond_7

    .line 480
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    const-class v4, Lcom/android/phone/UnlockPUKLock;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 481
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 482
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "PUKPHASE"

    const-string v4, "2"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v3, "PUKLEFTRETRIES"

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v4, v4, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 484
    const-string v3, "PhoneConstants.GEMINI_SIM_ID_KEY"

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v4, v4, Lcom/android/phone/UnlockPUKLock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 485
    const-string v3, "INPUTPUK"

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 487
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v3, v1}, Lcom/android/phone/UnlockPUKLock;->startActivity(Landroid/content/Intent;)V

    .line 488
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v3}, Lcom/android/phone/UnlockPUKLock;->finish()V

    goto/16 :goto_0

    .line 491
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_7
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    #getter for: Lcom/android/phone/UnlockPUKLock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/phone/UnlockPUKLock;->access$000(Lcom/android/phone/UnlockPUKLock;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    const v5, 0x7f0b03fa

    invoke-virtual {v4, v5}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 497
    :cond_8
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUKLock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 498
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 499
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    .line 500
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, v3, Lcom/android/phone/UnlockPUKLock;->PwdLength:I

    .line 501
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/phone/UnlockPUKLock;->bStringValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 502
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    #getter for: Lcom/android/phone/UnlockPUKLock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/phone/UnlockPUKLock;->access$000(Lcom/android/phone/UnlockPUKLock;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v4, v5}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    :goto_3
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iput-object v8, v3, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    .line 522
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 504
    :cond_9
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v3, v3, Lcom/android/phone/UnlockPUKLock;->PwdLength:I

    if-lt v3, v9, :cond_a

    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v3, v3, Lcom/android/phone/UnlockPUKLock;->PwdLength:I

    if-gt v3, v7, :cond_a

    .line 506
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    const-class v4, Lcom/android/phone/UnlockPUKLock;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 507
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 508
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v3, "PUKPHASE"

    const-string v4, "3"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string v3, "PUKLEFTRETRIES"

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v4, v4, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 510
    const-string v3, "PhoneConstants.GEMINI_SIM_ID_KEY"

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v4, v4, Lcom/android/phone/UnlockPUKLock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 511
    const-string v3, "INPUTPUK"

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->strPUK:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v3, "INPUTORIPIN"

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 514
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v3, v1}, Lcom/android/phone/UnlockPUKLock;->startActivity(Landroid/content/Intent;)V

    .line 515
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v3}, Lcom/android/phone/UnlockPUKLock;->finish()V

    goto/16 :goto_0

    .line 518
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_a
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    #getter for: Lcom/android/phone/UnlockPUKLock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/phone/UnlockPUKLock;->access$000(Lcom/android/phone/UnlockPUKLock;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v4, v5}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 524
    :cond_b
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUKLock;->strPUKUnlockPhase:Ljava/lang/String;

    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 525
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 526
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    .line 527
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, v3, Lcom/android/phone/UnlockPUKLock;->PwdLength:I

    .line 528
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/phone/UnlockPUKLock;->bStringValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 529
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    #getter for: Lcom/android/phone/UnlockPUKLock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/phone/UnlockPUKLock;->access$000(Lcom/android/phone/UnlockPUKLock;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v4, v5}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    :goto_4
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iput-object v8, v3, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    .line 583
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 531
    :cond_c
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v3, v3, Lcom/android/phone/UnlockPUKLock;->PwdLength:I

    if-lt v3, v9, :cond_f

    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v3, v3, Lcom/android/phone/UnlockPUKLock;->PwdLength:I

    if-gt v3, v7, :cond_f

    .line 532
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUKLock;->strOriPIN:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 534
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    const-class v4, Lcom/android/phone/UnlockPUKLock;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 535
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 536
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v3, "PUKPHASE"

    const-string v4, "2"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string v3, "PUKLEFTRETRIES"

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v4, v4, Lcom/android/phone/UnlockPUKLock;->retryCount:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 538
    const-string v3, "PhoneConstants.GEMINI_SIM_ID_KEY"

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v4, v4, Lcom/android/phone/UnlockPUKLock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 539
    const-string v3, "WRONGCODE"

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    const v5, 0x7f0b0405

    invoke-virtual {v4, v5}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v3, "INPUTPUK"

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->strPUK:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 542
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v3, v1}, Lcom/android/phone/UnlockPUKLock;->startActivity(Landroid/content/Intent;)V

    .line 543
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v3}, Lcom/android/phone/UnlockPUKLock;->finish()V

    goto/16 :goto_0

    .line 547
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_d
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    new-instance v4, Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-direct {v4, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/android/phone/UnlockPUKLock;->progressDialog:Landroid/app/ProgressDialog;

    .line 548
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUKLock;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    const v5, 0x7f0b0406

    invoke-virtual {v4, v5}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUKLock;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 550
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUKLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 551
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUKLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 556
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUKLock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 559
    const-string v3, "UnlockPUKLock "

    const-string v4, "[onClick][OK Button][Start Unlock Process]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v3, v3, Lcom/android/phone/UnlockPUKLock;->iSIMMEUnlockNo:I

    if-nez v3, :cond_e

    .line 565
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v4, v4, Lcom/android/phone/UnlockPUKLock;->iSIMMEUnlockNo:I

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUKLock;->strPUK:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v6, v6, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/phone/UnlockPUKLock;->unlockPUK(ILjava/lang/String;Ljava/lang/String;)V

    .line 570
    :goto_5
    const-string v3, "UnlockPUKLock "

    const-string v4, "[onClick][OK Button][Finish Unlock Process]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 567
    :cond_e
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget v4, v4, Lcom/android/phone/UnlockPUKLock;->iSIMMEUnlockNo:I

    iget-object v5, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v5, v5, Lcom/android/phone/UnlockPUKLock;->strPUK:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v6, v6, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/phone/UnlockPUKLock;->unlockPUK(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 579
    :cond_f
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    #getter for: Lcom/android/phone/UnlockPUKLock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/phone/UnlockPUKLock;->access$000(Lcom/android/phone/UnlockPUKLock;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v4, v5}, Lcom/android/phone/UnlockPUKLock;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method protected showAlertDialog(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 648
    const/16 v1, 0x78

    if-ne p1, v1, :cond_0

    .line 649
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 650
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 665
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 652
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_0
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/UnlockPUKLock$TouchInput;->digit:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/android/phone/UnlockPUKLock$TouchInput$1;

    invoke-direct {v3, p0}, Lcom/android/phone/UnlockPUKLock$TouchInput$1;-><init>(Lcom/android/phone/UnlockPUKLock$TouchInput;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 650
    nop

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_0
    .end packed-switch
.end method
