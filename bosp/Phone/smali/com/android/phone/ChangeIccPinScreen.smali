.class public Lcom/android/phone/ChangeIccPinScreen;
.super Landroid/app/Activity;
.source "ChangeIccPinScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ChangeIccPinScreen$ChangeIccPinScreenBroadcastReceiver;,
        Lcom/android/phone/ChangeIccPinScreen$EntryState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_PIN_CHANGED:I = 0x64

.field private static final GET_SIM_RETRY_EMPTY:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/PhoneApp"

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4

.field private static final NO_ERROR:I = 0x0

.field private static final PIN_INVALID_LENGTH:I = 0x2

.field private static final PIN_MISMATCH:I = 0x1


# instance fields
.field private mBadPinError:Landroid/widget/TextView;

.field private mBadPukError:Landroid/widget/TextView;

.field private mButton:Landroid/widget/Button;

.field private mChangePin2:Z

.field private mClicked:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mIccPUKPanel:Landroid/widget/LinearLayout;

.field private mMismatchError:Landroid/widget/TextView;

.field private mNewPin1:Landroid/widget/EditText;

.field private mNewPin1Label:Landroid/widget/TextView;

.field private mNewPin2:Landroid/widget/EditText;

.field private mNewPin2Label:Landroid/widget/TextView;

.field private mOldPINPanel:Landroid/widget/LinearLayout;

.field private mOldPin:Landroid/widget/EditText;

.field private mOldPinLabel:Landroid/widget/TextView;

.field private mPUKCode:Landroid/widget/EditText;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinRetryLabel:Landroid/widget/TextView;

.field private mPuk2Label:Landroid/widget/TextView;

.field private mPukRetryLabel:Landroid/widget/TextView;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSimId:I

.field private mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    new-instance v0, Lcom/android/phone/ChangeIccPinScreen$ChangeIccPinScreenBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/ChangeIccPinScreen$ChangeIccPinScreenBroadcastReceiver;-><init>(Lcom/android/phone/ChangeIccPinScreen;Lcom/android/phone/ChangeIccPinScreen$1;)V

    iput-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    new-instance v0, Lcom/android/phone/ChangeIccPinScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/ChangeIccPinScreen$1;-><init>(Lcom/android/phone/ChangeIccPinScreen;)V

    iput-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;

    .line 206
    new-instance v0, Lcom/android/phone/ChangeIccPinScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/ChangeIccPinScreen$2;-><init>(Lcom/android/phone/ChangeIccPinScreen;)V

    iput-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    .line 462
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/ChangeIccPinScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/phone/ChangeIccPinScreen;->handleResult(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/ChangeIccPinScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/ChangeIccPinScreen;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/phone/ChangeIccPinScreen;->validateNewPin(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/phone/ChangeIccPinScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/ChangeIccPinScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/phone/ChangeIccPinScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/ChangeIccPinScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->reset()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/ChangeIccPinScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mSimId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/ChangeIccPinScreen;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/ChangeIccPinScreen;)Lcom/android/phone/ChangeIccPinScreen$EntryState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPukError:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;

    return-object v0
.end method

.method private displayPUKAlert()V
    .locals 3

    .prologue
    .line 349
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b016c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0035

    new-instance v2, Lcom/android/phone/ChangeIccPinScreen$3;

    invoke-direct {v2, p0}, Lcom/android/phone/ChangeIccPinScreen$3;-><init>(Lcom/android/phone/ChangeIccPinScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 358
    return-void
.end method

.method private getRetryPin()Ljava/lang/String;
    .locals 5

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->getRetryPinCount()I

    move-result v0

    .line 384
    .local v0, retryCount:I
    packed-switch v0, :pswitch_data_0

    .line 390
    :pswitch_0
    const v1, 0x7f0b016e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/ChangeIccPinScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 386
    :pswitch_1
    const-string v1, " "

    goto :goto_0

    .line 388
    :pswitch_2
    const v1, 0x7f0b016d

    invoke-virtual {p0, v1}, Lcom/android/phone/ChangeIccPinScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 384
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getRetryPinCount()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 374
    iget v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mSimId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 375
    iget-boolean v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v0, :cond_0

    const-string v0, "gsm.sim.retry.pin2.2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 378
    :goto_0
    return v0

    .line 375
    :cond_0
    const-string v0, "gsm.sim.retry.pin1.2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 378
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v0, :cond_2

    const-string v0, "gsm.sim.retry.pin2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_2
    const-string v0, "gsm.sim.retry.pin1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getRetryPuk2()Ljava/lang/String;
    .locals 5

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->getRetryPuk2Count()I

    move-result v0

    .line 403
    .local v0, retryCount:I
    packed-switch v0, :pswitch_data_0

    .line 409
    :pswitch_0
    const v1, 0x7f0b016e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/ChangeIccPinScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 405
    :pswitch_1
    const-string v1, " "

    goto :goto_0

    .line 407
    :pswitch_2
    const v1, 0x7f0b016d

    invoke-virtual {p0, v1}, Lcom/android/phone/ChangeIccPinScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getRetryPuk2Count()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 395
    iget v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mSimId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 396
    const-string v0, "gsm.sim.retry.puk2.2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 398
    :goto_0
    return v0

    :cond_0
    const-string v0, "gsm.sim.retry.puk2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private handleResult(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    .line 303
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 304
    const-string v1, "handleResult: success!"

    invoke-direct {p0, v1}, Lcom/android/phone/ChangeIccPinScreen;->log(Ljava/lang/String;)V

    .line 307
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->showConfirmation()V

    .line 309
    invoke-virtual {p0}, Lcom/android/phone/ChangeIccPinScreen;->finish()V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    sget-object v2, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PIN:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    if-ne v1, v2, :cond_5

    .line 314
    const-string v1, "handleResult: pin failed!"

    invoke-direct {p0, v1}, Lcom/android/phone/ChangeIccPinScreen;->log(Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 316
    iget-boolean v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v1, :cond_2

    const v0, 0x7f0b0179

    .line 317
    .local v0, id:I
    :goto_1
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 318
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->getRetryPinCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 320
    const-string v1, "handleResult: puk requested!"

    invoke-direct {p0, v1}, Lcom/android/phone/ChangeIccPinScreen;->log(Ljava/lang/String;)V

    .line 321
    iget-boolean v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v1, :cond_3

    .line 322
    sget-object v1, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    iput-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    .line 323
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->displayPUKAlert()V

    .line 324
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->showPukPanel()V

    goto :goto_0

    .line 316
    .end local v0           #id:I
    :cond_2
    const v0, 0x7f0b0162

    goto :goto_1

    .line 326
    .restart local v0       #id:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/ChangeIccPinScreen;->finish()V

    goto :goto_0

    .line 329
    :cond_4
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPinRetryLabel:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->getRetryPin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 332
    .end local v0           #id:I
    :cond_5
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    sget-object v2, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    if-ne v1, v2, :cond_0

    .line 334
    const-string v1, "handleResult: puk2 failed!"

    invoke-direct {p0, v1}, Lcom/android/phone/ChangeIccPinScreen;->log(Ljava/lang/String;)V

    .line 335
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->getRetryPuk2Count()I

    move-result v1

    if-nez v1, :cond_6

    .line 336
    const v1, 0x7f0b0171

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 337
    invoke-virtual {p0}, Lcom/android/phone/ChangeIccPinScreen;->finish()V

    .line 339
    :cond_6
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPukError:Landroid/widget/TextView;

    const v2, 0x7f0b0178

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 340
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPukError:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPukRetryLabel:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->getRetryPuk2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 343
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 458
    iget-boolean v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v1, :cond_0

    const-string v0, "[ChgPin2]"

    .line 459
    .local v0, prefix:Ljava/lang/String;
    :goto_0
    const-string v1, "Settings/PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return-void

    .line 458
    .end local v0           #prefix:Ljava/lang/String;
    :cond_0
    const-string v0, "[ChgPin]"

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 182
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 183
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPukError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    return-void
.end method

.method private resolveIntent()V
    .locals 3

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/phone/ChangeIccPinScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 177
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pin2"

    iget-boolean v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    .line 178
    const-string v1, "simId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mSimId:I

    .line 179
    return-void
.end method

.method private showConfirmation()V
    .locals 3

    .prologue
    .line 449
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    sget-object v2, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    if-ne v1, v2, :cond_0

    .line 450
    const v0, 0x7f0b016f

    .line 454
    .local v0, id:I
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 455
    return-void

    .line 452
    .end local v0           #id:I
    :cond_0
    iget-boolean v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v1, :cond_1

    const v0, 0x7f0b017d

    .restart local v0       #id:I
    :goto_1
    goto :goto_0

    .end local v0           #id:I
    :cond_1
    const v0, 0x7f0b016b

    goto :goto_1
.end method

.method private showPinPanel()V
    .locals 3

    .prologue
    .line 422
    iget-boolean v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v1, :cond_0

    const v0, 0x7f0b0136

    .line 423
    .local v0, id:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/ChangeIccPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/ChangeIccPinScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mPinRetryLabel:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->getRetryPin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mIccPUKPanel:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 426
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPINPanel:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 427
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 428
    return-void

    .line 422
    .end local v0           #id:I
    :cond_0
    const v0, 0x7f0b015d

    goto :goto_0
.end method

.method private showPukPanel()V
    .locals 2

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/android/phone/ChangeIccPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0170

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/ChangeIccPinScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPukRetryLabel:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->getRetryPuk2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mIccPUKPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPINPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 419
    return-void
.end method

.method private updateScreenPanel()V
    .locals 1

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v0, :cond_2

    .line 432
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->getRetryPinCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 433
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->getRetryPuk2Count()I

    move-result v0

    if-nez v0, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/android/phone/ChangeIccPinScreen;->finish()V

    .line 436
    :cond_0
    sget-object v0, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    iput-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    .line 437
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->showPukPanel()V

    .line 445
    :goto_0
    return-void

    .line 439
    :cond_1
    sget-object v0, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PIN:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    iput-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    .line 440
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->showPinPanel()V

    goto :goto_0

    .line 443
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->showPinPanel()V

    goto :goto_0
.end method

.method private validateNewPin(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "p1"
    .parameter "p2"

    .prologue
    const/4 v1, 0x2

    .line 189
    if-nez p1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v1

    .line 193
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 194
    const/4 v1, 0x1

    goto :goto_0

    .line 197
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 199
    .local v0, len1:I
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 203
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 111
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->resolveIntent()V

    .line 113
    const v2, 0x7f04001c

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->setContentView(I)V

    .line 117
    const v2, 0x7f0700a7

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPinLabel:Landroid/widget/TextView;

    .line 118
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPinLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 119
    iget-boolean v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v2, :cond_4

    const v0, 0x7f0b0175

    .line 120
    .local v0, id:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPinLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 121
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPinLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/ChangeIccPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0172

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 124
    .end local v0           #id:I
    :cond_0
    const v2, 0x7f0700a8

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mPinRetryLabel:Landroid/widget/TextView;

    .line 125
    const v2, 0x7f0700a6

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPINPanel:Landroid/widget/LinearLayout;

    .line 128
    const v2, 0x7f0700ab

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1Label:Landroid/widget/TextView;

    .line 129
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1Label:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 130
    iget-boolean v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v2, :cond_5

    const v0, 0x7f0b0176

    .line 131
    .restart local v0       #id:I
    :goto_1
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1Label:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 135
    .end local v0           #id:I
    :cond_1
    const v2, 0x7f0700ad

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2Label:Landroid/widget/TextView;

    .line 136
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2Label:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 137
    iget-boolean v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z

    if-eqz v2, :cond_6

    const v0, 0x7f0b0177

    .line 138
    .restart local v0       #id:I
    :goto_2
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2Label:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 141
    .end local v0           #id:I
    :cond_2
    const v2, 0x7f0700a2

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mPuk2Label:Landroid/widget/TextView;

    .line 142
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mPuk2Label:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 143
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mPuk2Label:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/ChangeIccPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0173

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 145
    :cond_3
    const v2, 0x7f0700a3

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mPukRetryLabel:Landroid/widget/TextView;

    .line 146
    const v2, 0x7f0700a5

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPukError:Landroid/widget/TextView;

    .line 147
    const v2, 0x7f0700a9

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;

    .line 148
    const v2, 0x7f0700ac

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;

    .line 149
    const v2, 0x7f0700ae

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;

    .line 151
    const v2, 0x7f0700aa

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;

    .line 152
    const v2, 0x7f0700af

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;

    .line 154
    const v2, 0x7f0700b0

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mButton:Landroid/widget/Button;

    .line 155
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/ChangeIccPinScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v2, 0x7f0700a0

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mScrollView:Landroid/widget/ScrollView;

    .line 159
    const v2, 0x7f0700a4

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;

    .line 161
    const v2, 0x7f0700a1

    invoke-virtual {p0, v2}, Lcom/android/phone/ChangeIccPinScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mIccPUKPanel:Landroid/widget/LinearLayout;

    .line 164
    sget-object v2, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PIN:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    iput-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    .line 165
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 169
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    iget-object v2, p0, Lcom/android/phone/ChangeIccPinScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/ChangeIccPinScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    return-void

    .line 119
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_4
    const v0, 0x7f0b015f

    goto/16 :goto_0

    .line 130
    :cond_5
    const v0, 0x7f0b0160

    goto/16 :goto_1

    .line 137
    :cond_6
    const v0, 0x7f0b0161

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 369
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 370
    iget-object v0, p0, Lcom/android/phone/ChangeIccPinScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/ChangeIccPinScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 371
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 362
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 363
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->updateScreenPanel()V

    .line 364
    invoke-direct {p0}, Lcom/android/phone/ChangeIccPinScreen;->reset()V

    .line 365
    return-void
.end method
