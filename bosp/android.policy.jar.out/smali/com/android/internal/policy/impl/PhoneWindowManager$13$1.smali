.class Lcom/android/internal/policy/impl/PhoneWindowManager$13$1;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$13;->handleMotion(Landroid/view/MotionEvent;Landroid/view/InputQueue$FinishedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$13;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$13;)V
    .locals 0
    .parameter

    .prologue
    .line 2417
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$13$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2419
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$13$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$13;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2420
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$13$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$13;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 2422
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2423
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$13$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$13;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V

    .line 2424
    return-void

    .line 2422
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
