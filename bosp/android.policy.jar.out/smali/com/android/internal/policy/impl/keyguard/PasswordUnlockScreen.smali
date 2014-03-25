.class public Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "PasswordUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final ANIMITION_DURATION:I = 0xdc

.field private static final DBG:Z = true

.field private static final MINIMUM_PASSWORD_LENGTH_BEFORE_REPORT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PasswordUnlockScreen"


# instance fields
.field private accelerator:Landroid/animation/TimeInterpolator;

.field private decelerator:Landroid/animation/TimeInterpolator;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private final mCreationHardKeyboardHidden:I

.field private final mCreationOrientation:I

.field private mEvent:Landroid/view/MotionEvent;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mGirdLayout:Landroid/widget/GridLayout;

.field private mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private final mInputLayout:Landroid/widget/LinearLayout;

.field private final mInterpretion:Landroid/widget/TextView;

.field private final mIsAlpha:Z

.field private mIsLock:Z

.field private mIsVoicePrint:Z

.field private final mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private final mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOnResumeTime:J

.field private final mPasswordEntry:Landroid/widget/EditText;

.field private mResuming:Z

.field private final mStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

.field private final mUseSystemIME:Z

.field mVoicePrintCallback:Lcom/yi/internal/widget/LockScreenVoicePrintCallback;

.field private final mVoicePrintView:Lcom/yi/internal/widget/VoiceprintUnlockView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 17
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 120
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 93
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mIsLock:Z

    .line 108
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mUseSystemIME:Z

    .line 524
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$8;-><init>(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mVoicePrintCallback:Lcom/yi/internal/widget/LockScreenVoicePrintCallback;

    .line 553
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->accelerator:Landroid/animation/TimeInterpolator;

    .line 554
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->decelerator:Landroid/animation/TimeInterpolator;

    .line 679
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$11;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$11;-><init>(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 122
    move-object/from16 v0, p2

    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    .line 123
    move-object/from16 v0, p2

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mCreationOrientation:I

    .line 124
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 125
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 126
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 128
    new-instance v8, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mContext:Landroid/content/Context;

    const v3, #style@Theme.DeviceDefault#t

    invoke-direct {v8, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 129
    .local v8, contexttheme:Landroid/view/ContextThemeWrapper;
    const v2, #style@Theme.DeviceDefault#t

    invoke-virtual {v8, v2}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 130
    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 131
    .local v11, layoutInflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mCreationOrientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    .line 132
    const v2, #layout@keyguard_screen_password_portrait#t

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v11, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 138
    :goto_0
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    .line 141
    new-instance v2, Landroid/view/GestureDetector;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mGestureDetector:Landroid/view/GestureDetector;

    .line 142
    const v2, #id@voiceprint#t

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/yi/internal/widget/VoiceprintUnlockView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mVoicePrintView:Lcom/yi/internal/widget/VoiceprintUnlockView;

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mVoicePrintView:Lcom/yi/internal/widget/VoiceprintUnlockView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 144
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v14

    .line 145
    .local v14, quality:I
    const/high16 v2, 0x4

    if-eq v2, v14, :cond_0

    const/high16 v2, 0x5

    if-eq v2, v14, :cond_0

    const/high16 v2, 0x6

    if-ne v2, v14, :cond_6

    :cond_0
    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mIsAlpha:Z

    .line 149
    const v2, #id@numeric_input#t

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mInputLayout:Landroid/widget/LinearLayout;

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mInputLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 151
    const v2, #id@keyboard#t

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    .line 152
    const v2, #id@passwordEntry#t

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 155
    const v2, #id@voiceunlock_tips#t

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mInterpretion:Landroid/widget/TextView;

    .line 156
    const v2, #id@root#t

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mGirdLayout:Landroid/widget/GridLayout;

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 159
    new-instance v2, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v3, v1, v4}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setEnableHaptics(Z)V

    .line 161
    const/4 v9, 0x0

    .line 162
    .local v9, imeOrDeleteButtonVisible:Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mIsAlpha:Z

    if-eqz v2, :cond_7

    .line 164
    const v2, #id@unlock#t

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 165
    .local v16, unlockBtn:Landroid/view/View;
    if-eqz v16, :cond_1

    .line 166
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 167
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 220
    .end local v16           #unlockBtn:Landroid/view/View;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 223
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mIsAlpha:Z

    if-eqz v2, :cond_b

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 238
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$4;-><init>(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$5;-><init>(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 258
    const v2, #id@switch_ime_button#t

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 259
    .local v15, switchImeButton:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodManager;

    .line 261
    .local v10, imm:Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mIsAlpha:Z

    if-eqz v2, :cond_3

    if-eqz v15, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 262
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/view/View;->setVisibility(I)V

    .line 263
    const/4 v9, 0x1

    .line 264
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v10}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$6;-><init>(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v15, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    :cond_3
    if-nez v9, :cond_4

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 276
    .local v12, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v12, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_4

    move-object v2, v12

    .line 277
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2, v12}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    .end local v12           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    return-void

    .line 134
    .end local v9           #imeOrDeleteButtonVisible:Z
    .end local v10           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v14           #quality:I
    .end local v15           #switchImeButton:Landroid/view/View;
    :cond_5
    const v2, #layout@keyguard_screen_password_portrait#t

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v11, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 145
    .restart local v14       #quality:I
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 182
    .restart local v9       #imeOrDeleteButtonVisible:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_a

    const/4 v2, 0x4

    :goto_4
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 188
    const v2, #id@pinDel#t

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 189
    .local v13, pinDelete:Landroid/view/View;
    if-eqz v13, :cond_8

    .line 190
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    .line 191
    const/4 v9, 0x1

    .line 192
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)V

    invoke-virtual {v13, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)V

    invoke-virtual {v13, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 208
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->usingVoicePrint()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mIsVoicePrint:Z

    .line 209
    const-string v2, "PasswordUnlockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsVoicePrint = usingVoicePrint(); "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mIsVoicePrint:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->ismIsPasswordLock()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mIsLock:Z

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->ismShowedVoicePrint()Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mIsVoicePrint:Z

    if-eqz v2, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->isPhoneIDLE()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mIsLock:Z

    if-nez v2, :cond_9

    .line 212
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->setVoicePrintVisibility(Z)V

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setmShowedVoicePrint(Z)V

    .line 215
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mIsVoicePrint:Z

    if-eqz v2, :cond_2

    .line 216
    const/high16 v2, -0x4100

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->setBackgroundColor(I)V

    goto/16 :goto_2

    .line 183
    .end local v13           #pinDelete:Landroid/view/View;
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 230
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_3
.end method

.method private ShowInputLayoutAnimation(F)V
    .locals 11
    .parameter "endr"

    .prologue
    const-wide/16 v9, 0xdc

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 601
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mVoicePrintView:Lcom/yi/internal/widget/VoiceprintUnlockView;

    const-string v3, "rotationY"

    new-array v4, v5, [F

    aput v6, v4, v7

    aput p1, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 603
    .local v1, visToInvis:Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 604
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->accelerator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 605
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mInputLayout:Landroid/widget/LinearLayout;

    const-string v3, "rotationY"

    new-array v4, v5, [F

    neg-float v5, p1

    aput v5, v4, v7

    aput v6, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 607
    .local v0, invisToVis:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 608
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->decelerator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 609
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$10;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$10;-><init>(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 618
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 619
    return-void
.end method

.method private ShowVoicePrintAnimation(F)V
    .locals 11
    .parameter "endr"

    .prologue
    const-wide/16 v9, 0xdc

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 581
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mInputLayout:Landroid/widget/LinearLayout;

    const-string v3, "rotationY"

    new-array v4, v5, [F

    aput v6, v4, v7

    aput p1, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 583
    .local v1, visToInvis:Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 584
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->accelerator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 585
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mVoicePrintView:Lcom/yi/internal/widget/VoiceprintUnlockView;

    const-string v3, "rotationY"

    new-array v4, v5, [F

    neg-float v5, p1

    aput v5, v4, v7

    aput v6, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 587
    .local v0, invisToVis:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 588
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->decelerator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 589
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$9;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$9;-><init>(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 597
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 598
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)Lcom/android/internal/widget/PasswordEntryKeyboardView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->ShowInputLayoutAnimation(F)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;Landroid/content/Context;B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->sendToUbcServerForCount(Landroid/content/Context;B)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->setVoicePrintVisibility(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mInputLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)Lcom/yi/internal/widget/VoiceprintUnlockView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mVoicePrintView:Lcom/yi/internal/widget/VoiceprintUnlockView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mIsVoicePrint:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->verifyPasswordAndUnlock()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)Lcom/android/internal/widget/PasswordEntryKeyboardHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mResuming:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mIsLock:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mIsLock:Z

    return p1
.end method

.method private handleAttemptLockout(J)V
    .locals 8
    .parameter "elapsedRealtimeDeadline"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 440
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 441
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setEnabled(Z)V

    .line 442
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setmIsPasswordLock(Z)V

    .line 443
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mIsLock:Z

    .line 444
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 445
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$7;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$7;-><init>(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;JJ)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$7;->start()Landroid/os/CountDownTimer;

    .line 465
    return-void
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .parameter "imm"
    .parameter "shouldIncludeAuxiliarySubtypes"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 292
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 295
    .local v1, enabledImis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 297
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

    .line 299
    .local v5, imi:Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1

    .line 325
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v10

    .line 300
    .restart local v5       #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 303
    .local v8, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 304
    add-int/lit8 v2, v2, 0x1

    .line 305
    goto :goto_0

    .line 308
    :cond_2
    const/4 v0, 0x0

    .line 309
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

    .line 310
    .local v7, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 314
    .end local v7           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 319
    .local v6, nonAuxCount:I
    if-gtz v6, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v10, :cond_0

    .line 320
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 321
    goto :goto_0

    .line 325
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

.method private isPhoneIDLE()Z
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendToUbcServerForCount(Landroid/content/Context;B)V
    .locals 9
    .parameter "context"
    .parameter "type"

    .prologue
    .line 720
    const-wide/16 v2, 0x511

    .line 721
    .local v2, metricCountId:J
    new-instance v0, Lyi/ubc/MetricBuilder;

    invoke-direct {v0}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 722
    .local v0, builder:Lyi/ubc/MetricBuilder;
    const-wide/16 v5, 0x511

    invoke-virtual {v0, v5, v6}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 723
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v4, v5

    .line 724
    .local v4, timestamp:I
    invoke-virtual {v0, v4}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 725
    invoke-virtual {v0, p2}, Lyi/ubc/MetricBuilder;->appendCHAR(B)Lyi/ubc/MetricBuilder;

    .line 726
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lyi/ubc/MetricBuilder;->appendCHAR(B)Lyi/ubc/MetricBuilder;

    .line 728
    new-instance v1, Landroid/content/Intent;

    const-string v5, "yi.intent.action.UBC_SUBMITDATA"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 729
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "METRICID"

    invoke-virtual {v0}, Lyi/ubc/MetricBuilder;->getMetricId()J

    move-result-wide v6

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 730
    const-string v5, "METRICDATA"

    invoke-virtual {v0}, Lyi/ubc/MetricBuilder;->buffer()[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 731
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 732
    return-void
.end method

.method private setVoicePrintVisibility(Z)V
    .locals 4
    .parameter "showVoice"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 381
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mVoicePrintView:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-virtual {v0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->clearAnimation()V

    .line 382
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mInputLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 383
    if-eqz p1, :cond_1

    .line 384
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mInputLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mInterpretion:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mVoicePrintView:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-virtual {v0, v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mVoicePrintView:Lcom/yi/internal/widget/VoiceprintUnlockView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->setVoiceprintState(Z)V

    .line 388
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mVoicePrintView:Lcom/yi/internal/widget/VoiceprintUnlockView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mVoicePrintCallback:Lcom/yi/internal/widget/LockScreenVoicePrintCallback;

    invoke-virtual {v0, v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->setCallback(Lcom/yi/internal/widget/LockScreenVoicePrintCallback;)V

    .line 389
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 392
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->swipeUp()V

    .line 402
    :goto_0
    return-void

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mInputLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mInterpretion:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mVoicePrintView:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-virtual {v0, v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->setVoiceprintState(Z)V

    .line 400
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mVoicePrintView:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-virtual {v0, v2}, Lcom/yi/internal/widget/VoiceprintUnlockView;->setVisibility(I)V

    goto :goto_0
.end method

.method private usingVoicePrint()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 512
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen.voiceprint"

    const-wide/16 v4, 0x1

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v0, v2

    .line 513
    .local v0, mode:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private verifyPasswordAndUnlock()V
    .locals 7

    .prologue
    const v6, #string@lockscreen_password_wrong#t

    const/4 v5, 0x3

    .line 411
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, entry:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 413
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 414
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    .line 415
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 416
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 417
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mIsVoicePrint:Z

    if-eqz v3, :cond_0

    .line 418
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3, v5}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->sendToUbcServerForCount(Landroid/content/Context;B)V

    .line 435
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 436
    return-void

    .line 420
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_3

    .line 423
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->reportFailedUnlockAttempt()V

    .line 424
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v3

    rem-int/lit8 v3, v3, 0x5

    if-nez v3, :cond_2

    .line 426
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 427
    .local v0, deadline:J
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->handleAttemptLockout(J)V

    .line 429
    .end local v0           #deadline:J
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    goto :goto_0

    .line 431
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 432
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 780
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mIsAlpha:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 475
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 476
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 477
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mCreationOrientation:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    if-eq v1, v2, :cond_0

    .line 481
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 486
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 487
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mCreationOrientation:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    if-eq v0, v1, :cond_0

    .line 491
    :cond_0
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 551
    const/4 v0, 0x0

    return v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 500
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 502
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->verifyPasswordAndUnlock()V

    .line 503
    const/4 v0, 0x1

    .line 505
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    const/4 v3, 0x0

    const/high16 v6, -0x3cea

    .line 559
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 577
    :cond_0
    :goto_0
    return v3

    .line 562
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    sub-float v0, v4, v5

    .line 563
    .local v0, disX:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    sub-float v1, v4, v5

    .line 564
    .local v1, disY:F
    const/high16 v2, 0x42b4

    .line 565
    .local v2, endr:F
    const/high16 v4, 0x4316

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_2

    cmpg-float v4, v0, v6

    if-gez v4, :cond_0

    .line 566
    :cond_2
    cmpg-float v3, v0, v6

    if-gez v3, :cond_3

    .line 567
    const/high16 v2, -0x3d4c

    .line 569
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mVoicePrintView:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-virtual {v3}, Lcom/yi/internal/widget/VoiceprintUnlockView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 570
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->ShowInputLayoutAnimation(F)V

    .line 571
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mContext:Landroid/content/Context;

    const/4 v4, 0x5

    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->sendToUbcServerForCount(Landroid/content/Context;B)V

    .line 575
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 573
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->ShowVoicePrintAnimation(F)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 470
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyboardChange(Z)V
    .locals 2
    .parameter "isKeyboardOpen"

    .prologue
    .line 495
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 496
    return-void

    .line 495
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 625
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->onPause()V

    .line 345
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mIsVoicePrint:Z

    if-eqz v0, :cond_0

    .line 346
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->setVoicePrintVisibility(Z)V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 349
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .locals 7
    .parameter "reason"

    .prologue
    const v6, #string@lockscreen_voiceprint_interpretation#t

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 353
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 354
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mResuming:Z

    .line 356
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->onResume()V

    .line 357
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mIsVoicePrint:Z

    if-eqz v2, :cond_0

    .line 358
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->isPhoneIDLE()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mIsLock:Z

    if-nez v2, :cond_2

    .line 359
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->setVoicePrintVisibility(Z)V

    .line 360
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mInterpretion:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mOnResumeTime:J

    .line 369
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 373
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 374
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 375
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->handleAttemptLockout(J)V

    .line 377
    :cond_1
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mResuming:Z

    .line 378
    return-void

    .line 363
    .end local v0           #deadline:J
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mInterpretion:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mInterpretion:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 631
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 638
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 643
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 649
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mIsVoicePrint:Z

    if-eqz v2, :cond_1

    .line 650
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mIsLock:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->isPhoneIDLE()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mVoicePrintView:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-virtual {v2}, Lcom/yi/internal/widget/VoiceprintUnlockView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 651
    .local v0, isslide:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 652
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 653
    .local v1, tag:Z
    if-eqz v1, :cond_1

    .line 654
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mEvent:Landroid/view/MotionEvent;

    .line 659
    .end local v0           #isslide:Z
    .end local v1           #tag:Z
    :cond_1
    return v1

    :cond_2
    move v0, v1

    .line 650
    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    .line 665
    const-string v0, "PasswordUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 667
    if-nez p1, :cond_1

    .line 668
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mVoicePrintView:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-virtual {v0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mVoicePrintView:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-virtual {v0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->setVoiceprintUnlockViewGone()V

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->resetStatusInfo()V

    .line 673
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mVoicePrintView:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-virtual {v0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mVoicePrintView:Lcom/yi/internal/widget/VoiceprintUnlockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->setVisibility(I)V

    .line 675
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mVoicePrintView:Lcom/yi/internal/widget/VoiceprintUnlockView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yi/internal/widget/VoiceprintUnlockView;->setVoiceprintState(Z)V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 407
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mVoicePrintView:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-virtual {v0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->setVoiceprintUnlockViewGone()V

    .line 408
    return-void
.end method

.method public sendToUbcServerForSearchUnlockTime()V
    .locals 10

    .prologue
    .line 736
    const-wide/16 v2, 0x512

    .line 737
    .local v2, metricCountId:J
    new-instance v0, Lyi/ubc/MetricBuilder;

    invoke-direct {v0}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 739
    .local v0, builder:Lyi/ubc/MetricBuilder;
    const-wide/16 v6, 0x512

    invoke-virtual {v0, v6, v7}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 740
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v4, v6

    .line 741
    .local v4, timestamp:I
    invoke-virtual {v0, v4}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 742
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lyi/ubc/MetricBuilder;->appendCHAR(B)Lyi/ubc/MetricBuilder;

    .line 743
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mOnResumeTime:J

    sub-long/2addr v6, v8

    long-to-int v5, v6

    .line 744
    .local v5, usetime:I
    invoke-virtual {v0, v5}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 745
    new-instance v1, Landroid/content/Intent;

    const-string v6, "yi.intent.action.UBC_SUBMITDATA"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 746
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "METRICID"

    invoke-virtual {v0}, Lyi/ubc/MetricBuilder;->getMetricId()J

    move-result-wide v7

    invoke-virtual {v1, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 747
    const-string v6, "METRICDATA"

    invoke-virtual {v0}, Lyi/ubc/MetricBuilder;->buffer()[B

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 748
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 749
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 754
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 755
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter "utils"

    .prologue
    .line 759
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 760
    return-void
.end method

.method public showBouncer(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 775
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 770
    return-void
.end method
