.class final Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardSecurityViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic val$ecaView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper$1;->val$ecaView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper$1;->mCanceled:Z

    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper$1;->val$ecaView:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 46
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 49
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper$1;->val$ecaView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper$1;->mCanceled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 50
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
