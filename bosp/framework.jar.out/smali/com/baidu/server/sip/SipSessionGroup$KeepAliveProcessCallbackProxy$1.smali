.class Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$1;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->onResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

.field final synthetic val$portChanged:Z


# direct methods
.method constructor <init>(Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1949
    iput-object p1, p0, Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$1;->this$0:Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

    iput-boolean p2, p0, Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$1;->val$portChanged:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1952
    :try_start_0
    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$1;->this$0:Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->mCallback:Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;
    invoke-static {v1}, Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->access$3100(Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;)Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$1;->val$portChanged:Z

    invoke-interface {v1, v2}, Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;->onResponse(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1956
    :goto_0
    return-void

    .line 1953
    :catch_0
    move-exception v0

    .line 1954
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "com.baidu.server.sip"

    const-string/jumbo v2, "onResponse"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
