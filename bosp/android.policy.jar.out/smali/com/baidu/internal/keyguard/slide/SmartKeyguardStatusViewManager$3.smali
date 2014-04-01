.class Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$3;
.super Ljava/lang/Object;
.source "SmartKeyguardStatusViewManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;ZLcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$3;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$3;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    const/4 v1, 0x1

    iput v1, v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->promptStatus:I

    .line 395
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$3;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPrompt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$1100(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 399
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 391
    return-void
.end method
