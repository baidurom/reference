.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$MyRunDhcpv6PDSequence;
.super Ljava/lang/Object;
.source "Tethering.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRunDhcpv6PDSequence"
.end annotation


# instance fields
.field private mIface:Ljava/lang/String;

.field final synthetic this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "iface"

    .prologue
    .line 2675
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$MyRunDhcpv6PDSequence;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2673
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$MyRunDhcpv6PDSequence;->mIface:Ljava/lang/String;

    .line 2676
    iput-object p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$MyRunDhcpv6PDSequence;->mIface:Ljava/lang/String;

    .line 2677
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2680
    new-instance v0, Landroid/net/DhcpInfoInternal;

    invoke-direct {v0}, Landroid/net/DhcpInfoInternal;-><init>()V

    .line 2681
    .local v0, dhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runDhcpv6PD:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$MyRunDhcpv6PDSequence;->mIface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$MyRunDhcpv6PDSequence;->mIface:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/net/NetworkUtils;->runDhcpv6PD(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2683
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finish runDhcpv6PD request error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpv6PDError()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$MyRunDhcpv6PDSequence;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->stopDhcpv6PDSequence()V

    .line 2685
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$MyRunDhcpv6PDSequence;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mDhcpv6PDThread:Ljava/lang/Thread;
    invoke-static {v1, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7102(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 2686
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$MyRunDhcpv6PDSequence;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mPreviousDhcpv6PDIface:Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6402(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;

    .line 2695
    :goto_0
    return-void

    .line 2690
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$MyRunDhcpv6PDSequence;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->isIpv6MasterSmOn()Z
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$1000(Lcom/android/server/connectivity/Tethering;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2691
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$MyRunDhcpv6PDSequence;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mIpv6TetherMasterSM:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 2693
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$MyRunDhcpv6PDSequence;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mDhcpv6PDThread:Ljava/lang/Thread;
    invoke-static {v1, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7102(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 2694
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finish runDhcpv6PD:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$MyRunDhcpv6PDSequence;->mIface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
