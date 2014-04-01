.class Lcom/android/internal/policy/impl/KeyguardViewManager$1;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SystemStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSysBootup()V
    .locals 3

    .prologue
    .line 157
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onSysBootup called"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->mH:Lcom/android/internal/policy/impl/KeyguardViewManager$H;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewManager$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 159
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mScrnOrientationModeBeforeShutdown:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$500(Lcom/android/internal/policy/impl/KeyguardViewManager;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 160
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->mH:Lcom/android/internal/policy/impl/KeyguardViewManager$H;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/KeyguardViewManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 161
    return-void
.end method

.method public onSysShutdown()V
    .locals 3

    .prologue
    .line 147
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onSysShutdown called."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$200(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mScrnOrientationModeBeforeShutdown:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$502(Lcom/android/internal/policy/impl/KeyguardViewManager;I)I

    .line 151
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->mH:Lcom/android/internal/policy/impl/KeyguardViewManager$H;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewManager$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 152
    .local v0, m:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 153
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->mH:Lcom/android/internal/policy/impl/KeyguardViewManager$H;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/KeyguardViewManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 154
    return-void
.end method
