.class Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;
.super Landroid/os/Handler;
.source "KeyguardStatusViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 342
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 350
    :goto_0
    return-void

    .line 344
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPrompt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$600(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 347
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPrompt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$600(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->aa:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
