.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardSimPukView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;
    }
.end annotation


# instance fields
.field private volatile mCheckInProgress:Z

.field private mPinText:Ljava/lang/String;

.field private mPukText:Ljava/lang/String;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mStateMachine:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 47
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;

    .line 104
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->checkPuk()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->checkPin()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->updateSim()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mCheckInProgress:Z

    return p1
.end method

.method private checkPin()Z
    .locals 2

    .prologue
    .line 238
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 239
    .local v0, length:I
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    .line 241
    const/4 v1, 0x1

    .line 243
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkPuk()Z
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    .line 231
    const/4 v0, 0x1

    .line 233
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 215
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    const v2, #string@kg_sim_unlock_progress_dialog_message#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private updateSim()V
    .locals 3

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 253
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mCheckInProgress:Z

    if-nez v0, :cond_0

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mCheckInProgress:Z

    .line 255
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->start()V

    .line 274
    :cond_0
    return-void
.end method


# virtual methods
.method public confirmPin()Z
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 113
    const v0, #id@pinEntry#t

    return v0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 118
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 120
    const v2, #id@key_enter#t

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 121
    .local v0, ok:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 122
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    :cond_0
    const v2, #id@delete_button#t

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 134
    .local v1, pinDelete:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 136
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 155
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 158
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 160
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    invoke-interface {v2, v4}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    .line 161
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 174
    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    .line 108
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 109
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->next()V

    .line 279
    return-void
.end method
