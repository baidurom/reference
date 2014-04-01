.class Lcom/android/internal/policy/impl/KeyguardStatusViewManager$7;
.super Ljava/lang/Object;
.source "KeyguardStatusViewManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$7;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .locals 1
    .parameter "phoneState"

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$7;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iput p1, v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPhoneState:I

    .line 1284
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$7;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$3100(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;I)V

    .line 1285
    return-void
.end method
