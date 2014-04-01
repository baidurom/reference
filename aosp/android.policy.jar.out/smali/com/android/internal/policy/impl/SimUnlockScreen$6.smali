.class Lcom/android/internal/policy/impl/SimUnlockScreen$6;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1258
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$6;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$6;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$6;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$3200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 1261
    return-void
.end method
