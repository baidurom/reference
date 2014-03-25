.class Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$1;
.super Ljava/lang/Object;
.source "PasswordUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->access$100(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 172
    .local v0, vibrator:Landroid/os/Vibrator;
    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 174
    .end local v0           #vibrator:Landroid/os/Vibrator;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->verifyPasswordAndUnlock()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->access$200(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)V

    .line 175
    return-void
.end method
