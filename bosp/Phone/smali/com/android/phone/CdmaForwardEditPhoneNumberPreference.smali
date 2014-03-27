.class public Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;
.super Landroid/preference/EditTextPreference;
.source "CdmaForwardEditPhoneNumberPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaForwardEditPhoneNumberPreference$GetDefaultNumberListener;,
        Lcom/android/phone/CdmaForwardEditPhoneNumberPreference$OnDialogClosedListener;
    }
.end annotation


# static fields
.field private static final CM_ACTIVATION:I = 0x1

.field private static final CM_CONFIRM:I = 0x0

.field private static final VALUE_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field private static final VALUE_SEPARATOR:Ljava/lang/String; = ":"


# instance fields
.field private mButtonClicked:I

.field private mChangeNumberText:Ljava/lang/CharSequence;

.field private mChecked:Z

.field private mConfirmationMode:I

.field private mContactListIntent:Landroid/content/Intent;

.field private mContactPickButton:Landroid/widget/ImageButton;

.field private mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mDialogOnClosedListener:Lcom/android/phone/CdmaForwardEditPhoneNumberPreference$OnDialogClosedListener;

.field private mDisableText:Ljava/lang/CharSequence;

.field private mEnableText:Ljava/lang/CharSequence;

.field private mEncodedText:Ljava/lang/String;

.field private mGetDefaultNumberListener:Lcom/android/phone/CdmaForwardEditPhoneNumberPreference$GetDefaultNumberListener;

.field private mParentActivity:Landroid/app/Activity;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPrefId:I

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 442
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    .line 130
    const v1, 0x7f040006

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->setDialogLayoutResource(I)V

    .line 133
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    sget-object v1, Lcom/android/phone/R$styleable;->EditPhoneNumberPreference:[I

    const v2, 0x7f0e000d

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 140
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mEnableText:Ljava/lang/CharSequence;

    .line 142
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mDisableText:Ljava/lang/CharSequence;

    .line 144
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mChangeNumberText:Ljava/lang/CharSequence;

    .line 146
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mConfirmationMode:I

    .line 148
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 151
    sget-object v1, Landroid/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 153
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 155
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 157
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mPrefId:I

    return v0
.end method


# virtual methods
.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRawPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method protected getStringValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->isToggled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public getSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isToggled()Z
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mChecked:Z

    return v0
.end method

.method protected onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 3
    .parameter "dialogView"
    .parameter "editText"

    .prologue
    .line 256
    const v1, 0x7f070046

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 260
    .local v0, container:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 261
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 264
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 207
    const/4 v2, -0x2

    iput v2, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mButtonClicked:I

    .line 209
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 212
    invoke-virtual {p0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 214
    .local v1, editText:Landroid/widget/EditText;
    const v2, 0x7f070047

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    .line 217
    if-eqz v1, :cond_1

    .line 220
    iget-object v2, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/CdmaForwardEditPhoneNumberPreference$GetDefaultNumberListener;

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/CdmaForwardEditPhoneNumberPreference$GetDefaultNumberListener;

    invoke-interface {v2, p0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference$GetDefaultNumberListener;->onGetDefaultNumber(Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, defaultNumber:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 224
    iput-object v0, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    .line 227
    .end local v0           #defaultNumber:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 228
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 229
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 230
    iget-object v2, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 234
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_2

    .line 235
    iget-object v2, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mContactPickButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference$1;

    invoke-direct {v3, p0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference$1;-><init>(Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    :cond_2
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindView(Landroid/view/View;)V

    .line 173
    const v3, #id@summary#t

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 175
    .local v1, summaryView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 180
    iget v3, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mConfirmationMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 181
    iget-boolean v3, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mChecked:Z

    if-eqz v3, :cond_2

    .line 182
    iget-object v3, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 190
    .local v0, sum:Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_5

    .line 191
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    const/4 v2, 0x0

    .line 196
    .local v2, vis:I
    :goto_1
    const/16 v2, 0x8

    .line 197
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 198
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    .end local v0           #sum:Ljava/lang/CharSequence;
    .end local v2           #vis:I
    :cond_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    goto :goto_0

    .line 184
    :cond_2
    iget-object v3, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #sum:Ljava/lang/CharSequence;
    :goto_2
    goto :goto_0

    .end local v0           #sum:Ljava/lang/CharSequence;
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    goto :goto_2

    .line 187
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #sum:Ljava/lang/CharSequence;
    goto :goto_0

    .line 194
    :cond_5
    const/16 v2, 0x8

    .restart local v2       #vis:I
    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 337
    iput p2, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mButtonClicked:I

    .line 338
    invoke-super {p0, p1, p2}, Landroid/preference/EditTextPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 339
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 347
    iget v0, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mButtonClicked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mButtonClicked:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_2

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;

    .line 350
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 351
    invoke-virtual {p0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    .line 356
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mDialogOnClosedListener:Lcom/android/phone/CdmaForwardEditPhoneNumberPreference$OnDialogClosedListener;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mDialogOnClosedListener:Lcom/android/phone/CdmaForwardEditPhoneNumberPreference$OnDialogClosedListener;

    iget v1, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mButtonClicked:I

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference$OnDialogClosedListener;->onDialogClosed(Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;IZ)V

    .line 360
    :cond_1
    return-void

    .line 353
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    goto :goto_0
.end method

.method public onPickActivityResult(Ljava/lang/String;)V
    .locals 1
    .parameter "pickedValue"

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 318
    .local v0, editText:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 272
    iget v0, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mConfirmationMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mEnableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 274
    iget-object v0, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mDisableText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 277
    :cond_0
    const v0, 0x7f0200a9

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 278
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 412
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->setValueFromString(Ljava/lang/String;)V

    .line 414
    return-void

    .line 412
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    .line 447
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->persistString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDialogOnClosedListener(Lcom/android/phone/CdmaForwardEditPhoneNumberPreference$OnDialogClosedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mDialogOnClosedListener:Lcom/android/phone/CdmaForwardEditPhoneNumberPreference$OnDialogClosedListener;

    .line 302
    return-void
.end method

.method public setDialogOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mDialogFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 297
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;I)V
    .locals 1
    .parameter "parent"
    .parameter "identifier"

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;

    .line 308
    iput p2, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mPrefId:I

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/CdmaForwardEditPhoneNumberPreference$GetDefaultNumberListener;

    .line 310
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;ILcom/android/phone/CdmaForwardEditPhoneNumberPreference$GetDefaultNumberListener;)V
    .locals 0
    .parameter "parent"
    .parameter "identifier"
    .parameter "l"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;

    .line 286
    iput p2, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mPrefId:I

    .line 287
    iput-object p3, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mGetDefaultNumberListener:Lcom/android/phone/CdmaForwardEditPhoneNumberPreference$GetDefaultNumberListener;

    .line 288
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;
    .locals 1
    .parameter "number"

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    .line 399
    invoke-virtual {p0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->notifyChanged()V

    .line 402
    return-object p0
.end method

.method public setSummaryOff(I)Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->setSummaryOff(Ljava/lang/CharSequence;)Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;

    move-result-object v0

    return-object v0
.end method

.method public setSummaryOff(Ljava/lang/CharSequence;)Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;
    .locals 1
    .parameter "summary"

    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 481
    invoke-virtual {p0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->isToggled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->notifyChanged()V

    .line 484
    :cond_0
    return-object p0
.end method

.method public setSummaryOn(I)Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;

    move-result-object v0

    return-object v0
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;
    .locals 1
    .parameter "summary"

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 457
    invoke-virtual {p0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->isToggled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->notifyChanged()V

    .line 460
    :cond_0
    return-object p0
.end method

.method public setToggled(Z)Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;
    .locals 1
    .parameter "checked"

    .prologue
    .line 374
    iput-boolean p1, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mChecked:Z

    .line 375
    invoke-virtual {p0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->setText(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->notifyChanged()V

    .line 378
    return-object p0
.end method

.method protected setValueFromString(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 503
    const-string v1, ":"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, inValues:[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;

    .line 506
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 428
    const/4 v1, 0x0

    .line 429
    .local v1, shouldDisable:Z
    iget v4, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mConfirmationMode:I

    if-ne v4, v2, :cond_0

    iget-object v4, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 430
    iget-object v2, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mEncodedText:Ljava/lang/String;

    const-string v4, ":"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, inValues:[Ljava/lang/String;
    aget-object v2, v0, v3

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 435
    .end local v0           #inValues:[Ljava/lang/String;
    :goto_0
    return v1

    .line 433
    :cond_0
    iget-object v4, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mConfirmationMode:I

    if-nez v4, :cond_1

    move v1, v2

    :goto_1
    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1
.end method

.method public showPhoneNumberDialog()V
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->showDialog(Landroid/os/Bundle;)V

    .line 520
    return-void
.end method
