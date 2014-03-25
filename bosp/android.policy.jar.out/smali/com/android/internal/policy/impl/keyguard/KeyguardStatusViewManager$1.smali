.class Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$1;
.super Landroid/database/ContentObserver;
.source "KeyguardStatusViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->updateAlarmInfo()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;)V

    .line 278
    return-void
.end method
