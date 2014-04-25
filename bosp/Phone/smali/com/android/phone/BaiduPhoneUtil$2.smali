.class final Lcom/android/phone/BaiduPhoneUtil$2;
.super Ljava/lang/Object;
.source "BaiduPhoneUtil.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BaiduPhoneUtil;->expand(Landroid/view/View;ILcom/android/phone/InCallScreen;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mInCallTouchUi:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/phone/BaiduPhoneUtil$2;->val$mInCallTouchUi:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 365
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/phone/BaiduPhoneUtil$2;->val$mInCallTouchUi:Landroid/view/View;

    const v1, 0x7f070069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BaiduPhoneUtil;->startAcceptCallAnimation(Landroid/view/View;)V

    .line 370
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 374
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 378
    return-void
.end method
