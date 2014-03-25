.class public Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "SimUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;,
        Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$CheckSimPin;
    }
.end annotation


# static fields
.field private static final DIGITS:[C = null

.field private static final DIGIT_PRESS_WAKE_MILLIS:I = 0x1388


# instance fields
.field private mBackSpaceButton:Landroid/view/View;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCreationOrientation:I

.field private mEnteredDigits:I

.field private final mEnteredPin:[I

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHidden:I

.field private mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOkButton:Landroid/widget/ImageButton;

.field private mPinText:Landroid/widget/TextView;

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

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->DIGITS:[C

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
    .locals 9
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockpatternutils"

    .prologue
    const/4 v2, 0x0

    const v1, #style@Theme.DeviceDefault#t

    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mEnteredPin:[I

    .line 59
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mEnteredDigits:I

    .line 61
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 77
    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 78
    iput-object p4, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 80
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mCreationOrientation:I

    .line 81
    iget v0, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mKeyboardHidden:I

    .line 82
    iput-object p5, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 84
    new-instance v6, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 85
    .local v6, contexttheme:Landroid/view/ContextThemeWrapper;
    invoke-virtual {v6, v1}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 86
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 87
    .local v7, inflater:Landroid/view/LayoutInflater;
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mKeyboardHidden:I

    if-ne v0, v8, :cond_0

    .line 88
    const v0, #layout@keyguard_screen_sim_pin_landscape#t

    invoke-virtual {v7, v0, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 93
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #color@background_dark#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->setBackgroundColor(I)V

    .line 94
    const v0, #id@headerText#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    .line 95
    const v0, #id@pinDisplay#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    .line 96
    const v0, #id@backspace#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v0, #id@ok#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mOkButton:Landroid/widget/ImageButton;

    .line 101
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, #string@keyguard_password_enter_pin_code#t

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 104
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mOkButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    .line 109
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 110
    return-void

    .line 90
    :cond_0
    const v0, #layout@keyguard_screen_sim_pin_portrait#t

    invoke-virtual {v7, v0, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 91
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;)V

    goto :goto_0

    .line 58
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->reportDigit(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mEnteredDigits:I

    return p1
.end method

.method private checkPin()V
    .locals 3

    .prologue
    .line 210
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mEnteredDigits:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, #string@invalidPin#t

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 215
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mEnteredDigits:I

    .line 217
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 258
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 222
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen$1;->start()V

    goto :goto_0
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 197
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mContext:Landroid/content/Context;

    const v2, #string@lockscreen_sim_unlock_progress_dialog_message#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 201
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private reportDigit(I)V
    .locals 3
    .parameter "digit"

    .prologue
    .line 289
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mEnteredDigits:I

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mEnteredDigits:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mEnteredPin:[I

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mEnteredDigits:I

    aput p1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 434
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 310
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 311
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->updateConfiguration()V

    .line 312
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 181
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    if-ne p1, v2, :cond_2

    .line 182
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 183
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 184
    .local v1, len:I
    if-lez v1, :cond_0

    .line 185
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 186
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mEnteredDigits:I

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v3, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 192
    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_1
    :goto_0
    return-void

    .line 189
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mOkButton:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_1

    .line 190
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->checkPin()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 317
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 318
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->updateConfiguration()V

    .line 319
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 262
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v1

    .line 267
    :cond_1
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->DIGITS:[C

    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v0

    .line 268
    .local v0, match:C
    if-eqz v0, :cond_2

    .line 269
    add-int/lit8 v2, v0, -0x30

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->reportDigit(I)V

    goto :goto_0

    .line 272
    :cond_2
    const/16 v2, 0x43

    if-ne p1, v2, :cond_3

    .line 273
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mEnteredDigits:I

    if-lez v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 275
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mEnteredDigits:I

    goto :goto_0

    .line 280
    :cond_3
    const/16 v2, 0x42

    if-ne p1, v2, :cond_4

    .line 281
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->checkPin()V

    goto :goto_0

    .line 285
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->onPause()V

    .line 120
    return-void
.end method

.method public onResume(I)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, #string@keyguard_password_enter_pin_code#t

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 129
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mEnteredDigits:I

    .line 132
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->onResume()V

    .line 133
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 143
    :cond_0
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 409
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter "utils"

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 414
    return-void
.end method

.method public showBouncer(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 429
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 424
    return-void
.end method

.method updateConfiguration()V
    .locals 3

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 301
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mCreationOrientation:I

    if-eq v1, v2, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mKeyboardHidden:I

    if-eq v1, v2, :cond_0

    .line 304
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/SimUnlockScreen;->mKeyboardHidden:I

    goto :goto_0
.end method
