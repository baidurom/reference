.class Lcom/baidu/server/sip/SipService$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/server/sip/SipService;


# direct methods
.method private constructor <init>(Lcom/baidu/server/sip/SipService;)V
    .locals 0
    .parameter

    .prologue
    .line 1177
    iput-object p1, p0, Lcom/baidu/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/baidu/server/sip/SipService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/server/sip/SipService;Lcom/baidu/server/sip/SipService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1177
    invoke-direct {p0, p1}, Lcom/baidu/server/sip/SipService$ConnectivityReceiver;-><init>(Lcom/baidu/server/sip/SipService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1180
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1181
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1182
    const-string/jumbo v2, "networkInfo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 1186
    .local v1, info:Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/baidu/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/baidu/server/sip/SipService;

    #getter for: Lcom/baidu/server/sip/SipService;->mExecutor:Lcom/baidu/server/sip/SipService$MyExecutor;
    invoke-static {v2}, Lcom/baidu/server/sip/SipService;->access$1000(Lcom/baidu/server/sip/SipService;)Lcom/baidu/server/sip/SipService$MyExecutor;

    move-result-object v2

    new-instance v3, Lcom/baidu/server/sip/SipService$ConnectivityReceiver$1;

    invoke-direct {v3, p0, v1}, Lcom/baidu/server/sip/SipService$ConnectivityReceiver$1;-><init>(Lcom/baidu/server/sip/SipService$ConnectivityReceiver;Landroid/net/NetworkInfo;)V

    invoke-virtual {v2, v3}, Lcom/baidu/server/sip/SipService$MyExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1192
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_0
    return-void
.end method
