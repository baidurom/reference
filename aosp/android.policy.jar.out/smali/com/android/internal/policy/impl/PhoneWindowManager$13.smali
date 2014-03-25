.class Lcom/android/internal/policy/impl/PhoneWindowManager$13;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 3686
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3689
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 3690
    .local v2, keyEvent:Landroid/view/KeyEvent;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v4, "input"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    .line 3691
    .local v1, inputManager:Landroid/hardware/input/InputManager;
    const-string v3, "WindowManager"

    const-string v4, ">>>>>>>> InjectEvent Start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3692
    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 3694
    :try_start_0
    const-string v3, "WindowManager"

    const-string v4, "***** Sleeping."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3695
    const-wide/16 v3, 0x2710

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 3696
    const-string v3, "WindowManager"

    const-string v4, "***** Waking up."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3702
    :goto_0
    const-string v3, "WindowManager"

    const-string v4, "<<<<<<<< InjectEvent End"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3703
    return-void

    .line 3698
    :catch_0
    move-exception v0

    .line 3700
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "WindowManager"

    const-string v4, "**** Exception: Thread Sleeping "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
