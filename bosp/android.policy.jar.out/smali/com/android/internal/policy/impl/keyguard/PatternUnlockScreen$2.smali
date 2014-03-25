.class Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$2;
.super Ljava/lang/Object;
.source "PatternUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->showBackupSecurity()V

    .line 96
    return-void
.end method
