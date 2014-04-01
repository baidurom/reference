.class Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods$1;
.super Ljava/lang/Object;
.source "SmartLockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->onTrigger(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods$1;->this$1:Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods$1;->this$1:Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$200(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods$1;->this$1:Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$SmartMultiUnlockViewMethods;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$200(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 349
    :cond_0
    return-void
.end method
