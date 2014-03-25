.class public Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "SimPukUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;,
        Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$CheckSimPuk;
    }
.end annotation


# static fields
.field private static final DIGITS:[C = null

.field private static final DIGIT_PRESS_WAKE_MILLIS:I = 0x1388


# instance fields
.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCreationOrientation:I

.field private mDelPinButton:Landroid/view/View;

.field private mDelPukButton:Landroid/view/View;

.field private mFocusedEntry:Landroid/widget/TextView;

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHidden:I

.field private mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOkButton:Landroid/view/View;

.field private mPinText:Landroid/widget/TextView;

.field private mPukText:Landroid/widget/TextView;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->DIGITS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 8
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockpatternutils"

    .prologue
    const/4 v2, 0x0

    const v1, #style@Theme.DeviceDefault#t

    const/4 v5, 0x1

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 63
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 77
    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 78
    iput-object p4, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 80
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mCreationOrientation:I

    .line 81
    iget v0, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mKeyboardHidden:I

    .line 82
    iput-object p5, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 84
    new-instance v6, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 85
    .local v6, contexttheme:Landroid/view/ContextThemeWrapper;
    invoke-virtual {v6, v1}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 86
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 87
    .local v7, inflater:Landroid/view/LayoutInflater;
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mKeyboardHidden:I

    if-ne v0, v5, :cond_0

    .line 88
    const v0, #layout@keyguard_screen_sim_puk_landscape#t

    invoke-virtual {v7, v0, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 95
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #color@background_dark#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->setBackgroundColor(I)V

    .line 96
    const v0, #id@headerText#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    .line 98
    const v0, #id@pukDisplay#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    .line 99
    const v0, #id@pinDisplay#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    .line 100
    const v0, #id@pukDel#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mDelPukButton:Landroid/view/View;

    .line 101
    const v0, #id@pinDel#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mDelPinButton:Landroid/view/View;

    .line 102
    const v0, #id@ok#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mOkButton:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mDelPinButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mDelPukButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, #string@keyguard_password_enter_puk_code#t

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 112
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    .line 115
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 119
    return-void

    .line 91
    :cond_0
    const v0, #layout@keyguard_screen_sim_puk_portrait#t

    invoke-virtual {v7, v0, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 93
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$1;)V

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->reportDigit(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    return-object v0
.end method

.method private checkPuk()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 230
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v2, #string@invalidPuk_noremaintime#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 288
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, #string@invalidPin#t

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 248
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 250
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$1;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen$1;->start()V

    goto :goto_0
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v2, #string@lockscreen_sim_unlock_progress_dialog_message#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 221
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private reportDigit(I)V
    .locals 4
    .parameter "digit"

    .prologue
    const/4 v3, 0x7

    .line 324
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    if-ne v1, v2, :cond_1

    .line 325
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 326
    .local v0, len:I
    if-le v0, v3, :cond_1

    .line 334
    .end local v0           #len:I
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    if-ne v1, v2, :cond_2

    .line 329
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 330
    .restart local v0       #len:I
    if-gt v0, v3, :cond_0

    .line 333
    .end local v0           #len:I
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 486
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 348
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 349
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->updateConfiguration()V

    .line 350
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 186
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mDelPukButton:Landroid/view/View;

    if-ne p1, v2, :cond_2

    .line 187
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    if-eq v2, v3, :cond_0

    .line 188
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 189
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 190
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 191
    .local v1, len:I
    if-lez v1, :cond_1

    .line 192
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 205
    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v3, 0x1388

    invoke-interface {v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 207
    return-void

    .line 194
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mDelPinButton:Landroid/view/View;

    if-ne p1, v2, :cond_4

    .line 195
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    if-eq v2, v3, :cond_3

    .line 196
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 197
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 198
    .restart local v0       #digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 199
    .restart local v1       #len:I
    if-lez v1, :cond_1

    .line 200
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 202
    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mOkButton:Landroid/view/View;

    if-ne p1, v2, :cond_1

    .line 203
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->checkPuk()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 355
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 356
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->updateConfiguration()V

    .line 357
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 211
    if-eqz p2, :cond_0

    .line 212
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    .line 213
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 292
    const/4 v4, 0x4

    if-ne p1, v4, :cond_0

    .line 317
    :goto_0
    return v3

    .line 296
    :cond_0
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->DIGITS:[C

    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v2

    .line 297
    .local v2, match:C
    if-eqz v2, :cond_1

    .line 298
    add-int/lit8 v4, v2, -0x30

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->reportDigit(I)V

    goto :goto_0

    .line 301
    :cond_1
    const/16 v4, 0x43

    if-ne p1, v4, :cond_3

    .line 302
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    invoke-virtual {v4, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 303
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 304
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 305
    .local v1, len:I
    if-lez v1, :cond_2

    .line 306
    add-int/lit8 v4, v1, -0x1

    invoke-interface {v0, v4, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 308
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v5, 0x1388

    invoke-interface {v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    goto :goto_0

    .line 312
    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_3
    const/16 v4, 0x42

    if-ne p1, v4, :cond_4

    .line 313
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->checkPuk()V

    goto :goto_0

    .line 317
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->onPause()V

    .line 129
    return-void
.end method

.method public onResume(I)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, #string@keyguard_password_enter_puk_code#t

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->onResume()V

    .line 136
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 146
    :cond_0
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 461
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter "utils"

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 466
    return-void
.end method

.method public showBouncer(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 481
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 476
    return-void
.end method

.method updateConfiguration()V
    .locals 3

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 338
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mCreationOrientation:I

    if-eq v1, v2, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mKeyboardHidden:I

    if-eq v1, v2, :cond_0

    .line 341
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/SimPukUnlockScreen;->mKeyboardHidden:I

    goto :goto_0
.end method
