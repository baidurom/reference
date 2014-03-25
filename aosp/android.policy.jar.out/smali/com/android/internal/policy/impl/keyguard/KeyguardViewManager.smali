.class public Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field static final DIGIT_PRESS_WAKE_MILLIS:I = 0x1388

.field private static TAG:Ljava/lang/String;

.field private static final TRANSPARENT_BAR:Z

.field public static USE_UPPER_CASE:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCreateOrientation:I

.field private mCreateScreenHeightDp:I

.field private mCreateScreenWidthDp:I

.field private mKeyguardHost:Landroid/widget/FrameLayout;

.field private mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNeedsInput:Z

.field private mScreenOn:Z

.field mStateContainer:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewManager:Landroid/view/ViewManager;

.field private final mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "KeyguardViewManager"

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->USE_UPPER_CASE:Z

    .line 56
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isTransparentBarSupport()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TRANSPARENT_BAR:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .parameter "context"
    .parameter "viewManager"
    .parameter "callback"
    .parameter "lockPatternUtils"

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mNeedsInput:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mScreenOn:Z

    .line 196
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mStateContainer:Landroid/util/SparseArray;

    .line 87
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    .line 89
    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    .line 90
    iput-object p4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 91
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TRANSPARENT_BAR:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mCreateOrientation:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mCreateOrientation:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mCreateScreenWidthDp:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mCreateScreenWidthDp:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mCreateScreenHeightDp:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mCreateScreenHeightDp:I

    return p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;ZZLandroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    return-object v0
.end method

.method private inflateKeyguardView(Landroid/os/Bundle;)V
    .locals 8
    .parameter "options"

    .prologue
    .line 276
    const v3, #id@keyguard_host_view#t

    .line 277
    .local v3, resId:I
    const v2, #layout@keyguard_host_view#t

    .line 278
    .local v2, layoutId:I
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 279
    const v2, 0x207001b

    .line 280
    const v3, 0x2100067

    .line 283
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 284
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_1

    .line 285
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 292
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mCreateOrientation:I

    .line 293
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mCreateScreenWidthDp:I

    .line 294
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mCreateScreenHeightDp:I

    .line 296
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 297
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const/4 v7, 0x1

    invoke-virtual {v0, v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 298
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .line 299
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 300
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setViewMediatorCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;)V

    .line 305
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v6, :cond_2

    .line 306
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    const v7, #id@keyguard_password_view#t

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;

    .line 309
    .local v1, kpv:Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;
    if-eqz v1, :cond_2

    .line 310
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;->needsInput()Z

    move-result v7

    invoke-interface {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->setNeedsInput(Z)V

    .line 315
    .end local v1           #kpv:Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->updateKeyguardViewFromOptions(Landroid/os/Bundle;)V

    .line 316
    return-void
.end method

.method private maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V
    .locals 9
    .parameter "enableScreenRotation"
    .parameter "force"
    .parameter "options"

    .prologue
    const/high16 v8, 0x100

    const/4 v1, -0x1

    .line 200
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    instance-of v6, v2, Landroid/app/Activity;

    .line 202
    .local v6, isActivity:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mStateContainer:Landroid/util/SparseArray;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 206
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-nez v2, :cond_6

    .line 207
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v5, "keyguard host is null, creating it..."

    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    .line 211
    const v4, 0x110100

    .line 215
    .local v4, flags:I
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TRANSPARENT_BAR:Z

    if-eqz v2, :cond_a

    .line 216
    or-int/lit16 v4, v4, 0x400

    .line 221
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mNeedsInput:Z

    if-nez v2, :cond_1

    .line 222
    const/high16 v2, 0x2

    or-int/2addr v4, v2

    .line 224
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 225
    or-int/2addr v4, v8

    .line 228
    :cond_2
    const/4 v7, -0x1

    .line 229
    .local v7, stretch:I
    if-eqz v6, :cond_b

    const/4 v3, 0x2

    .line 231
    .local v3, type:I
    :goto_1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 233
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 234
    const v1, #style@Animation.LockScreen#t

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 235
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 236
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v1, v8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 237
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 240
    :cond_3
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 241
    if-eqz v6, :cond_4

    .line 242
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 246
    :cond_4
    if-eqz v6, :cond_c

    const-string v1, "KeyguardMock"

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 249
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TRANSPARENT_BAR:Z

    if-eqz v1, :cond_5

    .line 250
    const v1, 0x30000400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 255
    :cond_5
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 256
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v3           #type:I
    .end local v4           #flags:I
    .end local v7           #stretch:I
    :cond_6
    if-eqz p2, :cond_7

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v1, :cond_7

    .line 261
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->cleanUp()V

    .line 264
    :cond_7
    if-nez p2, :cond_8

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-nez v1, :cond_9

    .line 265
    :cond_8
    invoke-direct {p0, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->inflateKeyguardView(Landroid/os/Bundle;)V

    .line 266
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->requestFocus()Z

    .line 268
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->updateUserActivityTimeoutInWindowLayoutParams()V

    .line 269
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v5}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mStateContainer:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 272
    return-void

    .line 218
    .restart local v4       #flags:I
    :cond_a
    or-int/lit16 v4, v4, 0x800

    goto/16 :goto_0

    .line 229
    .restart local v7       #stretch:I
    :cond_b
    const/16 v3, 0x7d4

    goto :goto_1

    .line 246
    .restart local v0       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v3       #type:I
    :cond_c
    const-string v1, "Keyguard"

    goto :goto_2
.end method

.method private maybeEnableScreenRotation(Z)V
    .locals 3
    .parameter "enableScreenRotation"

    .prologue
    .line 339
    if-eqz p1, :cond_0

    .line 340
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "Rotation sensor for lock screen On!"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 346
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    return-void

    .line 343
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "Rotation sensor for lock screen Off!"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_0
.end method

.method private updateKeyguardViewFromOptions(Landroid/os/Bundle;)V
    .locals 3
    .parameter "options"

    .prologue
    .line 527
    if-eqz p1, :cond_0

    .line 528
    const-string v1, "showappwidget"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 530
    .local v0, widgetToShow:I
    if-eqz v0, :cond_0

    .line 531
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->goToWidget(I)V

    .line 534
    .end local v0           #widgetToShow:I
    :cond_0
    return-void
.end method

.method private updateUserActivityTimeoutInWindowLayoutParams()V
    .locals 5

    .prologue
    .line 325
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v2, :cond_0

    .line 326
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getUserActivityTimeout()J

    move-result-wide v0

    .line 327
    .local v0, timeout:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 328
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-wide v0, v2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 335
    .end local v0           #timeout:J
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-wide/16 v3, 0x2710

    iput-wide v3, v2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized dismiss()V
    .locals 3

    .prologue
    .line 507
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismiss mScreenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mScreenOn:Z

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    :cond_0
    monitor-exit p0

    return-void

    .line 507
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hide()V
    .locals 5

    .prologue
    .line 474
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hide() mKeyguardView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 482
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mStateContainer:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 486
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v1, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .line 488
    .local v0, lastView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .line 489
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    .end local v0           #lastView:Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;
    :cond_0
    monitor-exit p0

    return-void

    .line 474
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public ipoShutDownUpdate()V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->ipoShutDownUpdate()V

    .line 541
    :cond_0
    return-void
.end method

.method public isAlarmUnlockScreen()Z
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->isAlarmUnlockScreen()Z

    move-result v0

    .line 552
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isShowing()Z
    .locals 1

    .prologue
    .line 517
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onScreenTurnedOff()V
    .locals 2

    .prologue
    .line 394
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "onScreenTurnedOff()"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mScreenOn:Z

    .line 396
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->onScreenTurnedOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    :cond_0
    monitor-exit p0

    return-void

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    .locals 3
    .parameter "showListener"

    .prologue
    .line 403
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "onScreenTurnedOn()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mScreenOn:Z

    .line 405
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v0, :cond_3

    .line 406
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->onScreenTurnedOn()V

    .line 408
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mCreateOrientation:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 409
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenTurnedOn orientation is different, recreate it. mCreateOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mCreateOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->shouldEnableScreenRotation(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V

    .line 415
    :cond_0
    if-eqz p1, :cond_1

    .line 416
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 419
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "onScreenTurnedOn mKeyguardView visible, post runnable"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 433
    :cond_2
    :try_start_1
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "onScreenTurnedOn else mKeyguardView !visible showListener.onShown"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;->onShown(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 437
    :cond_3
    if-eqz p1, :cond_1

    .line 438
    :try_start_2
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "onScreenTurnedOn mKeyguardView=null showListener.onShown"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;->onShown(Landroid/os/IBinder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized reset(Landroid/os/Bundle;)V
    .locals 4
    .parameter "options"

    .prologue
    .line 377
    monitor-enter p0

    const/4 v0, 0x0

    .line 378
    .local v0, forceReCreate:Z
    if-eqz p1, :cond_1

    .line 379
    :try_start_0
    const-string v1, "dmlock_reset"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "showuserswitcher"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    :cond_0
    const/4 v0, 0x1

    .line 384
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset() mKeyguardView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", forceReCreate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v1, :cond_2

    .line 386
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->reset()V

    .line 387
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->updateKeyguardViewFromOptions(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    :goto_0
    monitor-exit p0

    return-void

    .line 389
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->shouldEnableScreenRotation(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 377
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setNeedsInput(Z)V
    .locals 4
    .parameter "needsInput"

    .prologue
    .line 350
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mNeedsInput:Z

    .line 351
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_0

    .line 352
    if-eqz p1, :cond_1

    .line 353
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x20001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 361
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :cond_0
    :goto_1
    return-void

    .line 356
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x2

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 364
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t update input method on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " window not attached"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public declared-synchronized show(Landroid/os/Bundle;)V
    .locals 5
    .parameter "options"

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show(); mKeyguardView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->shouldEnableScreenRotation(Landroid/content/Context;)Z

    move-result v0

    .line 101
    .local v0, enableScreenRotation:Z
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v3, "show() query screen rotation after"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setQueryBaseTime()V

    .line 106
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V

    .line 108
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v3, "show() maybeCreateKeyguardLocked finish"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->maybeEnableScreenRotation(Z)V

    .line 116
    const/high16 v1, 0x20

    .line 117
    .local v1, visFlags:I
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show:setSystemUiVisibility("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/high16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const/high16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 120
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 122
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->show()V

    .line 123
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->requestFocus()Z

    .line 124
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show() exit; mKeyguardView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    .line 98
    .end local v0           #enableScreenRotation:Z
    .end local v1           #visFlags:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public showAssistant()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showAssistant()V

    .line 524
    :cond_0
    return-void
.end method

.method public updateUserActivityTimeout()V
    .locals 3

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->updateUserActivityTimeoutInWindowLayoutParams()V

    .line 320
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    return-void
.end method

.method public declared-synchronized verifyUnlock()V
    .locals 2

    .prologue
    .line 444
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "verifyUnlock()"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->show(Landroid/os/Bundle;)V

    .line 446
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->verifyUnlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    monitor-exit p0

    return-void

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public wakeWhenReadyTq(I)Z
    .locals 3
    .parameter "keyCode"

    .prologue
    .line 461
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wakeWhenReady("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->wakeWhenReadyTq(I)V

    .line 464
    const/4 v0, 0x1

    .line 467
    :goto_0
    return v0

    .line 466
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "mKeyguardView is null in wakeWhenReadyTq"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const/4 v0, 0x0

    goto :goto_0
.end method
