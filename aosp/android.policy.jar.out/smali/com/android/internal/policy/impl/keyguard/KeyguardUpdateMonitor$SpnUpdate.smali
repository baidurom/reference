.class Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpnUpdate"
.end annotation


# instance fields
.field simId:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 2467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2468
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;->simId:I

    .line 2469
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 2471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2472
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;->simId:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;->simId:I

    .line 2473
    return-void
.end method
