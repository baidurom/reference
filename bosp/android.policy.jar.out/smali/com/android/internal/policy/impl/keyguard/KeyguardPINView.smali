.class public Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardPINView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 61
    const v0, #id@pinEntry#t

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 124
    const v0, #string@kg_wrong_pin#t

    return v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 66
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 68
    const v2, #id@key_enter#t

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, ok:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 70
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/LiftToActivateListener;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/policy/impl/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 84
    :cond_0
    const v2, #id@delete_button#t

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 85
    .local v1, pinDelete:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 86
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 87
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 112
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 115
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 116
    return-void
.end method

.method public onResume(I)V
    .locals 4
    .parameter "reason"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 134
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->onResume(I)V

    .line 135
    const/4 v2, 0x3

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0xa

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 137
    .local v0, mediaPlaying:Z
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->usingVoiceWeak()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 138
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v3, 0x2050119

    invoke-interface {v2, v3, v1}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 140
    :cond_2
    return-void
.end method

.method protected resetState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, #string@faceunlock_multiple_failures#t

    invoke-interface {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 56
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 57
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingVoiceWeak()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x205011a

    invoke-interface {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, #string@kg_pin_instructions#t

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method
