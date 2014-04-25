.class Lcom/android/phone/UnlockPIN2Lock$TouchInput;
.super Ljava/lang/Object;
.source "UnlockPIN2Lock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UnlockPIN2Lock;
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

.field final synthetic this$0:Lcom/android/phone/UnlockPIN2Lock;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPIN2Lock;)V
    .locals 1
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->digit:I

    .line 336
    const v0, 0x7f070055

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mZero:Landroid/widget/ImageView;

    .line 337
    const v0, 0x7f07004b

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mOne:Landroid/widget/ImageView;

    .line 338
    const v0, 0x7f07004c

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mTwo:Landroid/widget/ImageView;

    .line 339
    const v0, 0x7f07004d

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mThree:Landroid/widget/ImageView;

    .line 340
    const v0, 0x7f07004e

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mFour:Landroid/widget/ImageView;

    .line 341
    const v0, 0x7f07004f

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mFive:Landroid/widget/ImageView;

    .line 342
    const v0, 0x7f070050

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mSix:Landroid/widget/ImageView;

    .line 343
    const v0, 0x7f070051

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mSeven:Landroid/widget/ImageView;

    .line 344
    const v0, 0x7f070052

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mEight:Landroid/widget/ImageView;

    .line 345
    const v0, 0x7f070053

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mNine:Landroid/widget/ImageView;

    .line 346
    const v0, 0x7f070124

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mCancelButton:Landroid/widget/ImageView;

    .line 347
    const v0, 0x7f070123

    invoke-virtual {p1, v0}, Lcom/android/phone/UnlockPIN2Lock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mOk:Landroid/widget/ImageView;

    .line 349
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mZero:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mOne:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mTwo:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mThree:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mFour:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mFive:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mSix:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mSeven:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mEight:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mNine:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mOk:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mCancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mZero:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 363
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mOne:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 364
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mTwo:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 365
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mThree:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 366
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mFour:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 367
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mFive:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 368
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mSix:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 369
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mSeven:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 370
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mEight:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 371
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mNine:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 372
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mOk:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 373
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mCancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 374
    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 494
    const/4 v0, -0x1

    .line 495
    .local v0, keyEventCode:I
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mZero:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_1

    .line 496
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->digit:I

    .line 497
    const/4 v0, 0x7

    .line 526
    :cond_0
    :goto_0
    return v0

    .line 498
    :cond_1
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mOne:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_2

    .line 499
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->digit:I

    .line 500
    const/16 v0, 0x8

    goto :goto_0

    .line 501
    :cond_2
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mTwo:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_3

    .line 502
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->digit:I

    .line 503
    const/16 v0, 0x9

    goto :goto_0

    .line 504
    :cond_3
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mThree:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_4

    .line 505
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->digit:I

    .line 506
    const/16 v0, 0xa

    goto :goto_0

    .line 507
    :cond_4
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mFour:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_5

    .line 508
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->digit:I

    .line 509
    const/16 v0, 0xb

    goto :goto_0

    .line 510
    :cond_5
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mFive:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_6

    .line 511
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->digit:I

    .line 512
    const/16 v0, 0xc

    goto :goto_0

    .line 513
    :cond_6
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mSix:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_7

    .line 514
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->digit:I

    .line 515
    const/16 v0, 0xd

    goto :goto_0

    .line 516
    :cond_7
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mSeven:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_8

    .line 517
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->digit:I

    .line 518
    const/16 v0, 0xe

    goto :goto_0

    .line 519
    :cond_8
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mEight:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_9

    .line 520
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->digit:I

    .line 521
    const/16 v0, 0xf

    goto :goto_0

    .line 522
    :cond_9
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mNine:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_0

    .line 523
    const/16 v1, 0x9

    iput v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->digit:I

    .line 524
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

    .line 412
    const-string v1, "UnlockPIN2Lock "

    const-string v2, "[onClick]+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v1, v1, Lcom/android/phone/UnlockPIN2Lock;->mPwdDisplay:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 414
    const-string v1, "UnlockPIN2Lock "

    const-string v2, "[onClick][mPwdDisplay] : null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :goto_0
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mCancelButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_2

    .line 420
    const-string v1, "UnlockPIN2Lock "

    const-string v2, "[onClick][Cancel Button]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    const/16 v2, 0x1f8

    invoke-virtual {v1, v2, v4}, Lcom/android/phone/UnlockPIN2Lock;->sendVerifyResult(IZ)V

    .line 422
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v1}, Lcom/android/phone/UnlockPIN2Lock;->finish()V

    .line 489
    :cond_0
    :goto_1
    return-void

    .line 416
    :cond_1
    const-string v1, "UnlockPIN2Lock "

    const-string v2, "[onClick][mPwdDisplay] : not null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 426
    :cond_2
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->mOk:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_3

    .line 427
    const-string v1, "UnlockPIN2Lock "

    const-string v2, "[onClick][OK Button]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v1, v1, Lcom/android/phone/UnlockPIN2Lock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 429
    const-string v1, "UnlockPIN2Lock "

    const-string v2, "[onClick][OK Button][mPwdDisplay] : not null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v1, v1, Lcom/android/phone/UnlockPIN2Lock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/UnlockPIN2Lock;->strPwd:Ljava/lang/String;

    .line 431
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    sget-object v2, Lcom/android/phone/UnlockPIN2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, v1, Lcom/android/phone/UnlockPIN2Lock;->PwdLength:I

    .line 432
    sget-object v1, Lcom/android/phone/UnlockPIN2Lock;->strPwd:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/phone/UnlockPIN2Lock;->bStringValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 433
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    #getter for: Lcom/android/phone/UnlockPIN2Lock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/phone/UnlockPIN2Lock;->access$000(Lcom/android/phone/UnlockPIN2Lock;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v2, v3}, Lcom/android/phone/UnlockPIN2Lock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    :goto_2
    const/4 v1, 0x0

    sput-object v1, Lcom/android/phone/UnlockPIN2Lock;->strPwd:Ljava/lang/String;

    .line 467
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v1, v1, Lcom/android/phone/UnlockPIN2Lock;->mPwdDisplay:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 473
    .local v0, keyEventCode:I
    if-ltz v0, :cond_0

    .line 474
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v1, v1, Lcom/android/phone/UnlockPIN2Lock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 475
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v1, v1, Lcom/android/phone/UnlockPIN2Lock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/UnlockPIN2Lock;->strPwd:Ljava/lang/String;

    .line 476
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    sget-object v2, Lcom/android/phone/UnlockPIN2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, v1, Lcom/android/phone/UnlockPIN2Lock;->PwdLength:I

    .line 477
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget v1, v1, Lcom/android/phone/UnlockPIN2Lock;->PwdLength:I

    if-ge v1, v5, :cond_4

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/phone/UnlockPIN2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->digit:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/UnlockPIN2Lock;->strPwd:Ljava/lang/String;

    .line 479
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v1, v0}, Lcom/android/phone/UnlockPIN2Lock;->sendDownUpKeyEvents(I)V

    .line 482
    :cond_4
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v1, v1, Lcom/android/phone/UnlockPIN2Lock;->mPwdDisplay:Landroid/widget/TextView;

    sget-object v2, Lcom/android/phone/UnlockPIN2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    :cond_5
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->digit:I

    goto/16 :goto_1

    .line 435
    .end local v0           #keyEventCode:I
    :cond_6
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget v1, v1, Lcom/android/phone/UnlockPIN2Lock;->PwdLength:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_8

    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget v1, v1, Lcom/android/phone/UnlockPIN2Lock;->PwdLength:I

    if-gt v1, v5, :cond_8

    .line 436
    const-string v1, "UnlockPIN2Lock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onClick][OK Button][strPwd] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/UnlockPIN2Lock;->strPwd:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/android/phone/UnlockPIN2Lock;->progressDialog:Landroid/app/ProgressDialog;

    .line 439
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v1, v1, Lcom/android/phone/UnlockPIN2Lock;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    const v3, 0x7f0b0406

    invoke-virtual {v2, v3}, Lcom/android/phone/UnlockPIN2Lock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v1, v1, Lcom/android/phone/UnlockPIN2Lock;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 441
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v1, v1, Lcom/android/phone/UnlockPIN2Lock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 442
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v1, v1, Lcom/android/phone/UnlockPIN2Lock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 447
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iget-object v1, v1, Lcom/android/phone/UnlockPIN2Lock;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 449
    const-string v1, "UnlockPIN2Lock "

    const-string v2, "[onClick][OK Button][Start Unlock Process]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    sget v1, Lcom/android/phone/UnlockPIN2Lock;->iSIMMEUnlockNo:I

    if-nez v1, :cond_7

    .line 455
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    sget v2, Lcom/android/phone/UnlockPIN2Lock;->iSIMMEUnlockNo:I

    sget-object v3, Lcom/android/phone/UnlockPIN2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/UnlockPIN2Lock;->unlockPIN2(ILjava/lang/String;)V

    .line 460
    :goto_3
    const-string v1, "UnlockPIN2Lock "

    const-string v2, "[onClick][OK Button][Finish Unlock Process]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 457
    :cond_7
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    sget v2, Lcom/android/phone/UnlockPIN2Lock;->iSIMMEUnlockNo:I

    sget-object v3, Lcom/android/phone/UnlockPIN2Lock;->strPwd:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/UnlockPIN2Lock;->unlockPIN2(ILjava/lang/String;)V

    goto :goto_3

    .line 463
    :cond_8
    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    #getter for: Lcom/android/phone/UnlockPIN2Lock;->mUnlockResultNotify:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/phone/UnlockPIN2Lock;->access$000(Lcom/android/phone/UnlockPIN2Lock;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-virtual {v2, v3}, Lcom/android/phone/UnlockPIN2Lock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 408
    const/4 v0, 0x0

    return v0
.end method

.method protected showAlertDialog(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 530
    const/16 v1, 0x78

    if-ne p1, v1, :cond_0

    .line 531
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 532
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 547
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 534
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_0
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/UnlockPIN2Lock$TouchInput;->digit:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/android/phone/UnlockPIN2Lock$TouchInput$1;

    invoke-direct {v3, p0}, Lcom/android/phone/UnlockPIN2Lock$TouchInput$1;-><init>(Lcom/android/phone/UnlockPIN2Lock$TouchInput;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_0
    .end packed-switch
.end method
