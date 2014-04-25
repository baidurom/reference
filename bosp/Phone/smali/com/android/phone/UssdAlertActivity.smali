.class public Lcom/android/phone/UssdAlertActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "UssdAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static LOG_TAG:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "UssdAlertActivity"

.field public static USSD_DIALOG_NOTIFICATION:I

.field public static USSD_DIALOG_REQUEST:I

.field public static USSD_MESSAGE_EXTRA:Ljava/lang/String;

.field public static USSD_SLOT_ID:Ljava/lang/String;

.field public static USSD_TYPE_EXTRA:Ljava/lang/String;


# instance fields
.field inputText:Landroid/widget/EditText;

.field private mMsg:Landroid/widget/TextView;

.field private mText:Ljava/lang/String;

.field private mType:I

.field phone:Lcom/android/internal/telephony/Phone;

.field private slotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "UssdAlertActivity"

    sput-object v0, Lcom/android/phone/UssdAlertActivity;->LOG_TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    sput v0, Lcom/android/phone/UssdAlertActivity;->USSD_DIALOG_REQUEST:I

    .line 31
    const/4 v0, 0x2

    sput v0, Lcom/android/phone/UssdAlertActivity;->USSD_DIALOG_NOTIFICATION:I

    .line 32
    const-string v0, "ussd_message"

    sput-object v0, Lcom/android/phone/UssdAlertActivity;->USSD_MESSAGE_EXTRA:Ljava/lang/String;

    .line 33
    const-string v0, "ussd_type"

    sput-object v0, Lcom/android/phone/UssdAlertActivity;->USSD_TYPE_EXTRA:Ljava/lang/String;

    .line 34
    const-string v0, "slot_id"

    sput-object v0, Lcom/android/phone/UssdAlertActivity;->USSD_SLOT_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/android/phone/UssdAlertActivity;->mMsg:Landroid/widget/TextView;

    .line 37
    iput-object v1, p0, Lcom/android/phone/UssdAlertActivity;->inputText:Landroid/widget/EditText;

    .line 39
    iput-object v1, p0, Lcom/android/phone/UssdAlertActivity;->mText:Ljava/lang/String;

    .line 40
    sget v0, Lcom/android/phone/UssdAlertActivity;->USSD_DIALOG_REQUEST:I

    iput v0, p0, Lcom/android/phone/UssdAlertActivity;->mType:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/UssdAlertActivity;->slotId:I

    .line 42
    iput-object v1, p0, Lcom/android/phone/UssdAlertActivity;->phone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/UssdAlertActivity;)Lcom/android/internal/app/AlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/phone/UssdAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/UssdAlertActivity;)Lcom/android/internal/app/AlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/phone/UssdAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    return-object v0
.end method

.method private createView()Landroid/view/View;
    .locals 4

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/phone/UssdAlertActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04001e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, dialogView:Landroid/view/View;
    const v1, 0x7f0700b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/UssdAlertActivity;->mMsg:Landroid/widget/TextView;

    .line 110
    const v1, 0x7f0700b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/UssdAlertActivity;->inputText:Landroid/widget/EditText;

    .line 112
    iget-object v1, p0, Lcom/android/phone/UssdAlertActivity;->mMsg:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/phone/UssdAlertActivity;->mMsg:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/UssdAlertActivity;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_0
    iget v1, p0, Lcom/android/phone/UssdAlertActivity;->mType:I

    sget v2, Lcom/android/phone/UssdAlertActivity;->USSD_DIALOG_NOTIFICATION:I

    if-ne v1, v2, :cond_1

    .line 117
    iget-object v1, p0, Lcom/android/phone/UssdAlertActivity;->inputText:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 120
    :cond_1
    return-object v0
.end method

.method private sendUssd()V
    .locals 3

    .prologue
    .line 141
    sget-object v0, Lcom/android/phone/UssdAlertActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendUssd sendUssdResponseGemini button, simId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/UssdAlertActivity;->slotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object v0, Lcom/android/phone/UssdAlertActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendUssd USSR string :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/UssdAlertActivity;->inputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/android/phone/UssdAlertActivity;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, p0, Lcom/android/phone/UssdAlertActivity;->inputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/UssdAlertActivity;->slotId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->sendUssdResponseGemini(Ljava/lang/String;I)V

    .line 149
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 124
    packed-switch p2, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 126
    :pswitch_0
    iget v0, p0, Lcom/android/phone/UssdAlertActivity;->mType:I

    sget v1, Lcom/android/phone/UssdAlertActivity;->USSD_DIALOG_REQUEST:I

    if-ne v0, v1, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/android/phone/UssdAlertActivity;->sendUssd()V

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/UssdAlertActivity;->finish()V

    goto :goto_0

    .line 133
    :pswitch_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->cancelUssdDialog()V

    .line 134
    invoke-virtual {p0}, Lcom/android/phone/UssdAlertActivity;->finish()V

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    iget-object v1, p0, Lcom/android/phone/UssdAlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 51
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v2, p0, Lcom/android/phone/UssdAlertActivity;->phone:Lcom/android/internal/telephony/Phone;

    .line 52
    invoke-virtual {p0}, Lcom/android/phone/UssdAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 53
    .local v0, intent:Landroid/content/Intent;
    sget-object v2, Lcom/android/phone/UssdAlertActivity;->USSD_MESSAGE_EXTRA:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/UssdAlertActivity;->mText:Ljava/lang/String;

    .line 54
    sget-object v2, Lcom/android/phone/UssdAlertActivity;->USSD_TYPE_EXTRA:Ljava/lang/String;

    sget v3, Lcom/android/phone/UssdAlertActivity;->USSD_DIALOG_REQUEST:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/UssdAlertActivity;->mType:I

    .line 55
    sget-object v2, Lcom/android/phone/UssdAlertActivity;->USSD_SLOT_ID:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/UssdAlertActivity;->slotId:I

    .line 59
    invoke-direct {p0}, Lcom/android/phone/UssdAlertActivity;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 60
    iget v2, p0, Lcom/android/phone/UssdAlertActivity;->mType:I

    sget v3, Lcom/android/phone/UssdAlertActivity;->USSD_DIALOG_REQUEST:I

    if-ne v2, v3, :cond_0

    .line 61
    const v2, 0x7f0b0041

    invoke-virtual {p0, v2}, Lcom/android/phone/UssdAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 62
    const v2, 0x7f0b0039

    invoke-virtual {p0, v2}, Lcom/android/phone/UssdAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 67
    :goto_0
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 68
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 73
    sput-object p0, Lcom/android/phone/PhoneUtils;->mUssdActivity:Lcom/android/phone/UssdAlertActivity;

    .line 74
    invoke-virtual {p0}, Lcom/android/phone/UssdAlertActivity;->setupAlert()V

    .line 75
    return-void

    .line 64
    :cond_0
    const v2, 0x7f0b0035

    invoke-virtual {p0, v2}, Lcom/android/phone/UssdAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 153
    const-string v0, "UssdAlertActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p0}, Lcom/android/phone/UssdAlertActivity;->finish()V

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/phone/UssdAlertActivity;->startActivity(Landroid/content/Intent;)V

    .line 157
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 79
    iget v0, p0, Lcom/android/phone/UssdAlertActivity;->mType:I

    sget v1, Lcom/android/phone/UssdAlertActivity;->USSD_DIALOG_REQUEST:I

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/phone/UssdAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/phone/UssdAlertActivity;->inputText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/phone/UssdAlertActivity$1;

    invoke-direct {v1, p0}, Lcom/android/phone/UssdAlertActivity$1;-><init>(Lcom/android/phone/UssdAlertActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 99
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method
