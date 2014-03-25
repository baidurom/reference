.class Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$TransientTextManager$Data;
.super Ljava/lang/Object;
.source "KeyguardStatusViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$TransientTextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data"
.end annotation


# instance fields
.field final icon:I

.field final text:Ljava/lang/CharSequence;

.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$TransientTextManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$TransientTextManager;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter
    .parameter "t"
    .parameter "i"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$TransientTextManager$Data;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$TransientTextManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$TransientTextManager$Data;->text:Ljava/lang/CharSequence;

    .line 128
    iput p3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager$TransientTextManager$Data;->icon:I

    .line 129
    return-void
.end method
