.class Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PasswordUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->ShowVoicePrintAnimation(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;

.field final synthetic val$invisToVis:Landroid/animation/ObjectAnimator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;Landroid/animation/ObjectAnimator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;

    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$9;->val$invisToVis:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "anim"

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$9;->val$invisToVis:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 605
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;

    const/4 v1, 0x1

    #calls: Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->setVoicePrintVisibility(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->access$1400(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;Z)V

    .line 606
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mInputLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->access$1500(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setRotationY(F)V

    .line 607
    return-void
.end method
