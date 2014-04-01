.class public Lcom/android/internal/policy/impl/PasswordUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "PasswordUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final MINIMUM_PASSWORD_LENGTH_BEFORE_REPORT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PasswordUnlockScreen"


# instance fields
.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private final mCreationHardKeyboardHidden:I

.field private final mCreationOrientation:I

.field private final mIsAlpha:Z

.field private final mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private final mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mPasswordEntry:Landroid/widget/EditText;

.field private mResuming:Z

.field private final mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private final mUseSystemIME:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 18
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 93
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 83
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUseSystemIME:Z

    .line 95
    move-object/from16 v0, p2

    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    .line 96
    move-object/from16 v0, p2

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationOrientation:I

    .line 97
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 98
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 99
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 101
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 103
    .local v11, layoutInflater:Landroid/view/LayoutInflater;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 104
    .local v15, res:Landroid/content/res/Resources;
    const-string v2, "lockscreen.rot_override"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, #bool@config_enableLockScreenRotation#t

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    const/4 v8, 0x1

    .line 107
    .local v8, enableScreenRotation:Z
    :goto_0
    if-eqz v8, :cond_8

    .line 109
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationOrientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    .line 111
    const-string v2, "PasswordUnlockScreen"

    const-string v3, "we will initialize the password gemini portrait layout"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const v2, #layout@keyguard_screen_password_portrait_gemini#t

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v11, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 140
    :goto_1
    new-instance v2, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 143
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v14

    .line 144
    .local v14, quality:I
    const/high16 v2, 0x4

    if-eq v2, v14, :cond_1

    const/high16 v2, 0x5

    if-eq v2, v14, :cond_1

    const/high16 v2, 0x6

    if-ne v2, v14, :cond_9

    :cond_1
    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsAlpha:Z

    .line 148
    const v2, #id@keypad#t

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    .line 149
    const v2, #id@passwordEntry#t

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 152
    new-instance v2, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v3, v1, v4}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "lock_pattern_tactile_feedback_enabled"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setEnableHaptics(Z)V

    .line 157
    const/4 v9, 0x0

    .line 158
    .local v9, imeOrDeleteButtonVisible:Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsAlpha:Z

    if-eqz v2, :cond_b

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 183
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 186
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsAlpha:Z

    if-eqz v2, :cond_d

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 201
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v3, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v3, Lcom/android/internal/policy/impl/PasswordUnlockScreen$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 221
    const v2, #id@switch_ime_button#t

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 222
    .local v16, switchImeButton:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodManager;

    .line 224
    .local v10, imm:Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsAlpha:Z

    if-eqz v2, :cond_3

    if-eqz v16, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 225
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 226
    new-instance v2, Lcom/android/internal/policy/impl/PasswordUnlockScreen$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v10}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$4;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Landroid/view/inputmethod/InputMethodManager;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    :cond_3
    if-nez v9, :cond_4

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 238
    .local v12, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v12, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_4

    move-object v2, v12

    .line 239
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2, v12}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    .end local v12           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DM_IsLocked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 245
    const-string v2, "PasswordUnlockScreen"

    const-string v3, "passworkunlock dm mode is enable"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const v2, #id@unlock_widget#t

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 247
    .local v17, unlockView:Landroid/view/View;
    const/16 v2, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 250
    .end local v17           #unlockView:Landroid/view/View;
    :cond_5
    return-void

    .line 104
    .end local v8           #enableScreenRotation:Z
    .end local v9           #imeOrDeleteButtonVisible:Z
    .end local v10           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v14           #quality:I
    .end local v16           #switchImeButton:Landroid/view/View;
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 119
    .restart local v8       #enableScreenRotation:Z
    :cond_7
    const-string v2, "PasswordUnlockScreen"

    const-string v3, "we will initialize the password gemini land layout"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const v2, #layout@keyguard_screen_password_landscape_gemini#t

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v11, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_1

    .line 130
    :cond_8
    const-string v2, "PasswordUnlockScreen"

    const-string v3, "we will initialize the password gemini portrait layout"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const v2, #layout@keyguard_screen_password_portrait_gemini#t

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v11, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_1

    .line 144
    .restart local v14       #quality:I
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 153
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 164
    .restart local v9       #imeOrDeleteButtonVisible:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_c

    const/4 v2, 0x4

    :goto_6
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 170
    const v2, #id@pinDel#t

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 171
    .local v13, pinDelete:Landroid/view/View;
    if-eqz v13, :cond_2

    .line 172
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    .line 173
    const/4 v9, 0x1

    .line 174
    new-instance v2, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V

    invoke-virtual {v13, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 165
    .end local v13           #pinDelete:Landroid/view/View;
    :cond_c
    const/4 v2, 0x0

    goto :goto_6

    .line 193
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_5
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/widget/PasswordEntryKeyboardHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mResuming:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/widget/PasswordEntryKeyboardView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    return-object v0
.end method

.method private handleAttemptLockout(J)V
    .locals 8
    .parameter "elapsedRealtimeDeadline"

    .prologue
    const/4 v1, 0x0

    .line 368
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 369
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setEnabled(Z)V

    .line 370
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 371
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$5;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$5;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;JJ)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$5;->start()Landroid/os/CountDownTimer;

    .line 389
    return-void
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .parameter "imm"
    .parameter "shouldIncludeAuxiliarySubtypes"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 261
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 264
    .local v1, enabledImis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 266
    .local v2, filteredImisCount:I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 268
    .local v5, imi:Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1

    .line 294
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v10

    .line 269
    .restart local v5       #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 272
    .local v8, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 273
    add-int/lit8 v2, v2, 0x1

    .line 274
    goto :goto_0

    .line 277
    :cond_2
    const/4 v0, 0x0

    .line 278
    .local v0, auxCount:I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 279
    .local v7, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 283
    .end local v7           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 288
    .local v6, nonAuxCount:I
    if-gtz v6, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v10, :cond_0

    .line 289
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 290
    goto :goto_0

    .line 294
    .end local v0           #auxCount:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v6           #nonAuxCount:I
    .end local v8           #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v10, :cond_7

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_8

    :cond_7
    move v9, v10

    :cond_8
    move v10, v9

    goto :goto_1
.end method

.method private verifyPasswordAndUnlock()Z
    .locals 7

    .prologue
    const v6, #string@lockscreen_password_wrong#t

    const/4 v3, 0x1

    .line 340
    iget-object v4, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, entry:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v4, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 343
    iget-object v4, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 344
    iget-object v4, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 345
    iget-object v4, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 346
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 363
    :goto_0
    return v3

    .line 348
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_3

    .line 351
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportFailedUnlockAttempt()V

    .line 352
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v3

    rem-int/lit8 v3, v3, 0x5

    if-nez v3, :cond_1

    .line 354
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 355
    .local v0, deadline:J
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->handleAttemptLockout(J)V

    .line 357
    .end local v0           #deadline:J
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 363
    :cond_2
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 359
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 360
    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 337
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsAlpha:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 399
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 400
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 401
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationOrientation:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    if-eq v1, v2, :cond_1

    .line 403
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 405
    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 410
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 411
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationOrientation:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    if-eq v0, v1, :cond_1

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 415
    :cond_1
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 425
    if-eqz p2, :cond_0

    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_2

    .line 427
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->verifyPasswordAndUnlock()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 429
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 430
    const-string v1, "PasswordUnlockScreen"

    const-string v2, "onEditorAction, IME is showing, we should hide it"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 434
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const/4 v1, 0x1

    .line 436
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyboardChange(Z)V
    .locals 3
    .parameter "isKeyboardOpen"

    .prologue
    const/4 v1, 0x0

    .line 419
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DM_IsLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 420
    .local v0, invisible:Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    :cond_1
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 421
    return-void

    .end local v0           #invisible:Z
    :cond_2
    move v0, v1

    .line 419
    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 314
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 318
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mResuming:Z

    .line 320
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 323
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 327
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 328
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 329
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->handleAttemptLockout(J)V

    .line 331
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mResuming:Z

    .line 332
    return-void
.end method
