.class public Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;
.super Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;
.source "MSimSimUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MSimSimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MSimTouchInput"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/MSimSimUnlockScreen;)V
    .locals 1
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;)V

    .line 220
    const v0, #id@zero#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mZero:Landroid/widget/ImageButton;

    .line 221
    const v0, #id@one#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mOne:Landroid/widget/ImageButton;

    .line 222
    const v0, #id@two#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mTwo:Landroid/widget/ImageButton;

    .line 223
    const v0, #id@three#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mThree:Landroid/widget/ImageButton;

    .line 224
    const v0, #id@four#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mFour:Landroid/widget/ImageButton;

    .line 225
    const v0, #id@five#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mFive:Landroid/widget/ImageButton;

    .line 226
    const v0, #id@six#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mSix:Landroid/widget/ImageButton;

    .line 227
    const v0, #id@seven#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mSeven:Landroid/widget/ImageButton;

    .line 228
    const v0, #id@eight#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mEight:Landroid/widget/ImageButton;

    .line 229
    const v0, #id@nine#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mNine:Landroid/widget/ImageButton;

    .line 230
    const v0, #id@cancel#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mCancelButton:Landroid/widget/ImageButton;

    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mZero:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mOne:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mTwo:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mThree:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mFour:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mFive:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mSix:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mSeven:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mEight:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mNine:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mCancelButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mCancelButton:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mSubscription:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->access$000(Lcom/android/internal/policy/impl/MSimSimUnlockScreen;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->updatePinUnlockCancel(I)V

    .line 250
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 255
    .local v0, digit:I
    if-ltz v0, :cond_0

    .line 256
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v2, 0x1388

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 257
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->reportDigit(I)V

    goto :goto_0
.end method
