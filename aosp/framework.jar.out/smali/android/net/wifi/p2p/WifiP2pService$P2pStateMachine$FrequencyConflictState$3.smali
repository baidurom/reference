.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState$3;
.super Ljava/lang/Object;
.source "WifiP2pService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->notifyFrequencyConflict()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;)V
    .locals 0
    .parameter

    .prologue
    .line 1400
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState$3;->this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1403
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState$3;->this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v1, 0x23004

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    .line 1404
    return-void
.end method
