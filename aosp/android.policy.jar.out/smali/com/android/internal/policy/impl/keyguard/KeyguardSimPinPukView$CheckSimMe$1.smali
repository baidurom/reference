.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimMe$1;
.super Ljava/lang/Object;
.source "KeyguardSimPinPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimMe;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimMe;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimMe;)V
    .locals 0
    .parameter

    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimMe$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimMe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimMe$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimMe;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimMe$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimMe;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimMe;->mResult:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimMe;->access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimMe;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimMe;->onSimMeCheckResponse(I)V

    .line 625
    return-void
.end method
