.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIMStatus"
.end annotation


# instance fields
.field private _dialogType:I

.field private _total:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;II)V
    .locals 1
    .parameter
    .parameter "dialogType"
    .parameter "total"

    .prologue
    const/4 v0, 0x0

    .line 263
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;->_total:I

    .line 261
    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;->_dialogType:I

    .line 264
    iput p2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;->_dialogType:I

    .line 265
    iput p3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;->_total:I

    .line 266
    return-void
.end method


# virtual methods
.method public getSIMCardCount()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;->_total:I

    return v0
.end method

.method public getSimType()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;->_dialogType:I

    return v0
.end method
