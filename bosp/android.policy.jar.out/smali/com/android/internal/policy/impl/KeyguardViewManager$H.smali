.class final Lcom/android/internal/policy/impl/KeyguardViewManager$H;
.super Landroid/os/Handler;
.source "KeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final SET_LOCKSCREEN_SENSOR_MODE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$H;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 123
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 128
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", arg1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", curr_orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$H;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$200(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 142
    :cond_1
    :goto_0
    return-void

    .line 134
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$H;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$200(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$H;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$200(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$H;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$400(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/view/ViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$H;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$300(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$H;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$200(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
