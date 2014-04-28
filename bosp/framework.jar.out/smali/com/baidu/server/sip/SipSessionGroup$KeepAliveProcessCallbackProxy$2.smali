.class Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->onError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2045
    iput-object p1, p0, Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;->this$0:Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

    iput p2, p0, Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;->val$errorCode:I

    iput-object p3, p0, Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;->val$description:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2048
    :try_start_0
    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;->this$0:Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->mCallback:Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;
    invoke-static {v1}, Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->access$3300(Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;)Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    move-result-object v1

    iget v2, p0, Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;->val$errorCode:I

    iget-object v3, p0, Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;->val$description:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/baidu/server/sip/SipSessionGroup$KeepAliveProcessCallback;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2052
    :goto_0
    return-void

    .line 2049
    :catch_0
    move-exception v0

    .line 2050
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "com.baidu.server.sip"

    const-string/jumbo v2, "onError"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
