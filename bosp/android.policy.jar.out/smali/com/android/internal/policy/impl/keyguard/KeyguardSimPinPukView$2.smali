.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$2;
.super Ljava/lang/Object;
.source "KeyguardSimPinPukView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->doHapticKeyClick()V

    .line 223
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->verifyPasswordAndUnlock()V

    .line 224
    return-void
.end method
