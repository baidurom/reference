.class Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$1;
.super Ljava/lang/Object;
.source "SimPukUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;

    iput p2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$1;->val$result:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;

    iget v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$1;->val$result:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->onSimLockChangedResponse(I)V

    .line 205
    return-void
.end method
