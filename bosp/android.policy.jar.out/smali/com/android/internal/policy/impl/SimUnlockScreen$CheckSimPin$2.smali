.class Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$2;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;)V
    .locals 0
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$2;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$2;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$2;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->result:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->access$300(Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->onSimLockChangedResponse(Z)V

    .line 556
    return-void
.end method
