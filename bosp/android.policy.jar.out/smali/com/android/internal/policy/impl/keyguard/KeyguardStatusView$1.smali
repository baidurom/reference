.class Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView$1;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardStatusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onKeyguardVisibilityChanged(Z)V
    .locals 3
    .parameter "showing"

    .prologue
    .line 60
    if-eqz p1, :cond_0

    .line 61
    const-string v0, "KeyguardStatusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh statusview showing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->refresh()V

    .line 64
    :cond_0
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->refresh()V

    .line 56
    return-void
.end method
