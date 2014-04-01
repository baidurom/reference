.class Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$5;
.super Ljava/lang/Object;
.source "SmartKeyguardStatusViewManager.java"

# interfaces
.implements Lcom/baidu/internal/keyguard/slide/SnapHorizontalScrollView$OnHorizontalScrollListener;


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
    .line 439
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$5;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pokeWakelock()V
    .locals 2

    .prologue
    .line 446
    const-string v0, "KeyguardStatusViewManager"

    const-string v1, "wake up lock screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$5;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$600(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 448
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$5;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mWorkspaceLayout:Landroid/widget/GridLayout;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$1200(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/widget/GridLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout;->setBackgroundColor(I)V

    .line 442
    return-void
.end method
