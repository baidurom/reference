.class Lcom/baidu/internal/keyguard/slide/SmartLockScreen$1;
.super Ljava/lang/Object;
.source "SmartLockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->requestUnlockScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SmartLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SmartLockScreen;->access$200(Lcom/baidu/internal/keyguard/slide/SmartLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 440
    return-void
.end method
