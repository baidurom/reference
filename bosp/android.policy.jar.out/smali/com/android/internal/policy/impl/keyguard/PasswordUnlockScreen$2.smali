.class Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$2;
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
    .line 204
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->access$300(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleBackspace()V

    .line 208
    return-void
.end method
