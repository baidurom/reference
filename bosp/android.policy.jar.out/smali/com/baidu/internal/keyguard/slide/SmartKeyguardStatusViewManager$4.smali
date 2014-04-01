.class Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;
.super Landroid/os/Handler;
.source "SmartKeyguardStatusViewManager.java"


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
    .line 402
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 407
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 415
    :goto_0
    return-void

    .line 409
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPrompt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$1100(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 412
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPrompt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$1100(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$4;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iget-object v1, v1, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->aa:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 407
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
