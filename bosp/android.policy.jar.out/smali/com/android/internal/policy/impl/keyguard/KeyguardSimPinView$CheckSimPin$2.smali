.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$CheckSimPin$2;
.super Ljava/lang/Object;
.source "KeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$CheckSimPin;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$CheckSimPin;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$CheckSimPin;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$CheckSimPin$2;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$CheckSimPin;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$CheckSimPin$2;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$CheckSimPin;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$CheckSimPin;->onSimCheckResponse(Z)V

    .line 150
    return-void
.end method
