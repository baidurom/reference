.class public Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyKeyguardActivityLauncher;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
.source "SpaceLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/space/SpaceLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyKeyguardActivityLauncher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/space/SpaceLockScreen;


# direct methods
.method public constructor <init>(Lcom/baidu/internal/keyguard/space/SpaceLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyKeyguardActivityLauncher;->this$0:Lcom/baidu/internal/keyguard/space/SpaceLockScreen;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyKeyguardActivityLauncher;->this$0:Lcom/baidu/internal/keyguard/space/SpaceLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->access$100(Lcom/baidu/internal/keyguard/space/SpaceLockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyKeyguardActivityLauncher;->this$0:Lcom/baidu/internal/keyguard/space/SpaceLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->access$000(Lcom/baidu/internal/keyguard/space/SpaceLockScreen;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen$MyKeyguardActivityLauncher;->this$0:Lcom/baidu/internal/keyguard/space/SpaceLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;->access$200(Lcom/baidu/internal/keyguard/space/SpaceLockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    return-object v0
.end method
