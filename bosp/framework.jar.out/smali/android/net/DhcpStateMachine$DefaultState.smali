.class Landroid/net/DhcpStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "DhcpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DhcpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/DhcpStateMachine;


# direct methods
.method constructor <init>(Landroid/net/DhcpStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Landroid/net/DhcpStateMachine$DefaultState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Landroid/net/DhcpStateMachine$DefaultState;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mIsRegistered:Z
    invoke-static {v0}, Landroid/net/DhcpStateMachine;->access$200(Landroid/net/DhcpStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Landroid/net/DhcpStateMachine$DefaultState;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/net/DhcpStateMachine;->access$400(Landroid/net/DhcpStateMachine;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/net/DhcpStateMachine$DefaultState;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Landroid/net/DhcpStateMachine;->access$300(Landroid/net/DhcpStateMachine;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 211
    iget-object v0, p0, Landroid/net/DhcpStateMachine$DefaultState;->this$0:Landroid/net/DhcpStateMachine;

    const/4 v1, 0x0

    #setter for: Landroid/net/DhcpStateMachine;->mIsRegistered:Z
    invoke-static {v0, v1}, Landroid/net/DhcpStateMachine;->access$202(Landroid/net/DhcpStateMachine;Z)Z

    .line 213
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x1

    .line 216
    const-string v0, "DhcpStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/DhcpStateMachine$DefaultState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 226
    const-string v0, "DhcpStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error! unhandled message  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_0
    return v3

    .line 219
    :sswitch_0
    const-string v1, "DhcpStateMachine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error! Failed to handle a DHCP"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Landroid/net/DhcpStateMachine$DefaultState;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z
    invoke-static {v0}, Landroid/net/DhcpStateMachine;->access$000(Landroid/net/DhcpStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "V6"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " renewal on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/net/DhcpStateMachine$DefaultState;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/DhcpStateMachine;->access$500(Landroid/net/DhcpStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Landroid/net/DhcpStateMachine$DefaultState;->this$0:Landroid/net/DhcpStateMachine;

    #getter for: Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/DhcpStateMachine;->access$100(Landroid/net/DhcpStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 219
    :cond_0
    const-string v0, "V4"

    goto :goto_1

    .line 223
    :sswitch_1
    iget-object v0, p0, Landroid/net/DhcpStateMachine$DefaultState;->this$0:Landroid/net/DhcpStateMachine;

    #calls: Landroid/net/DhcpStateMachine;->setForDhcpV6(Z)V
    invoke-static {v0, v3}, Landroid/net/DhcpStateMachine;->access$600(Landroid/net/DhcpStateMachine;Z)V

    goto :goto_0

    .line 217
    :sswitch_data_0
    .sparse-switch
        0x30003 -> :sswitch_0
        0x30008 -> :sswitch_1
    .end sparse-switch
.end method
