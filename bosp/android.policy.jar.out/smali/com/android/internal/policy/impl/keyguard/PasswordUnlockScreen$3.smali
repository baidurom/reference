.class Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$3;
.super Ljava/lang/Object;
.source "PasswordUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 210
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;->access$400(Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 216
    const/4 v0, 0x1

    return v0
.end method
