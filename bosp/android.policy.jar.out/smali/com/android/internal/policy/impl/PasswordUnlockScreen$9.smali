.class Lcom/android/internal/policy/impl/PasswordUnlockScreen$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PasswordUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PasswordUnlockScreen;->ShowVoicePrintAnimation(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

.field final synthetic val$invisToVis:Landroid/animation/ObjectAnimator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Landroid/animation/ObjectAnimator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$9;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$9;->val$invisToVis:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "anim"

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$9;->val$invisToVis:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 601
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$9;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    const/4 v1, 0x1

    #calls: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->setVoicePrintVisibility(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1400(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Z)V

    .line 602
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$9;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mInputLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1500(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setRotationY(F)V

    .line 603
    return-void
.end method
