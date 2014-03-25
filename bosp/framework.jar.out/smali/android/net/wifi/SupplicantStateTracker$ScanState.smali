.class Landroid/net/wifi/SupplicantStateTracker$ScanState;
.super Lcom/android/internal/util/State;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/SupplicantStateTracker;


# direct methods
.method constructor <init>(Landroid/net/wifi/SupplicantStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Landroid/net/wifi/SupplicantStateTracker$ScanState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker$ScanState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    const/4 v1, 0x0

    #setter for: Landroid/net/wifi/SupplicantStateTracker;->mConnecting:Z
    invoke-static {v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->access$1002(Landroid/net/wifi/SupplicantStateTracker;Z)Z

    .line 284
    return-void
.end method
