.class Lcom/android/internal/policy/impl/MSimSimUnlockScreen$1;
.super Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin;
.source "MSimSimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->checkPin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MSimSimUnlockScreen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin;-><init>(Lcom/android/internal/policy/impl/MSimSimUnlockScreen;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(I)V
    .locals 2
    .parameter "result"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mPinText:Landroid/widget/TextView;

    new-instance v1, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$1$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$1$1;-><init>(Lcom/android/internal/policy/impl/MSimSimUnlockScreen$1;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 209
    return-void
.end method
