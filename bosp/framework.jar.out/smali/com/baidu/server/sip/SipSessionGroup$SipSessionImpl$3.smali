.class Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$3;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->changeCall(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

.field final synthetic val$command:Ljava/util/EventObject;


# direct methods
.method constructor <init>(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 809
    iput-object p1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$3;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iput-object p2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$3;->val$command:Ljava/util/EventObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 813
    :try_start_0
    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$3;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$3;->val$command:Ljava/util/EventObject;

    #calls: Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->processCommand(Ljava/util/EventObject;)V
    invoke-static {v1, v2}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->access$1600(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)V

    .line 814
    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$3;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->syncWait()V
    invoke-static {v1}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->access$1900(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    :goto_0
    return-void

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "com.baidu.server.sip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "command error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$3;->val$command:Ljava/util/EventObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$3;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v3, v3, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup;->mLocalProfile:Lbaidu/net/sip/SipProfile;
    invoke-static {v3}, Lcom/baidu/server/sip/SipSessionGroup;->access$1500(Lcom/baidu/server/sip/SipSessionGroup;)Lbaidu/net/sip/SipProfile;

    move-result-object v3

    invoke-virtual {v3}, Lbaidu/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$3;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    iget-object v3, v3, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->this$0:Lcom/baidu/server/sip/SipSessionGroup;

    #calls: Lcom/baidu/server/sip/SipSessionGroup;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    invoke-static {v3, v0}, Lcom/baidu/server/sip/SipSessionGroup;->access$1700(Lcom/baidu/server/sip/SipSessionGroup;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 819
    iget-object v1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$3;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    #calls: Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljava/lang/Throwable;)V
    invoke-static {v1, v0}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->access$100(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
