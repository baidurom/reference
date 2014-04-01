.class Lcom/baidu/server/sip/SipSessionListenerProxy$5;
.super Ljava/lang/Object;
.source "SipSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/server/sip/SipSessionListenerProxy;->onInfoReceived(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/server/sip/SipSessionListenerProxy;

.field final synthetic val$info:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/server/sip/SipSessionListenerProxy;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/baidu/server/sip/SipSessionListenerProxy$5;->this$0:Lcom/baidu/server/sip/SipSessionListenerProxy;

    iput-object p2, p0, Lcom/baidu/server/sip/SipSessionListenerProxy$5;->val$info:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionListenerProxy$5;->this$0:Lcom/baidu/server/sip/SipSessionListenerProxy;

    #getter for: Lcom/baidu/server/sip/SipSessionListenerProxy;->mListener:Lbaidu/net/sip/ISipSessionListener;
    invoke-static {v1}, Lcom/baidu/server/sip/SipSessionListenerProxy;->access$000(Lcom/baidu/server/sip/SipSessionListenerProxy;)Lbaidu/net/sip/ISipSessionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/server/sip/SipSessionListenerProxy$5;->val$info:Ljava/lang/String;

    invoke-interface {v1, v2}, Lbaidu/net/sip/ISipSessionListener;->onInfoReceived(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, t:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionListenerProxy$5;->this$0:Lcom/baidu/server/sip/SipSessionListenerProxy;

    const-string/jumbo v2, "onInfoReceived()"

    #calls: Lcom/baidu/server/sip/SipSessionListenerProxy;->handle(Ljava/lang/Throwable;Ljava/lang/String;)V
    invoke-static {v1, v0, v2}, Lcom/baidu/server/sip/SipSessionListenerProxy;->access$100(Lcom/baidu/server/sip/SipSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
