.class public Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;
.super Ljava/lang/Object;
.source "LockPatternKeyguardViewProperties.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardViewProperties;


# instance fields
.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 45
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 46
    return-void
.end method

.method private isSimPinSecure()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    .line 61
    .local v1, simState:Lcom/android/internal/telephony/IccCard$State;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 63
    .local v0, sim2State:Lcom/android/internal/telephony/IccCard$State;
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v4, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    return v2
.end method


# virtual methods
.method public createKeyguardView(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardWindowController;)Lcom/android/internal/policy/impl/KeyguardViewBase;
    .locals 2
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "controller"

    .prologue
    .line 51
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V

    return-object v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->isSimPinSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
