.class Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$1;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;


# direct methods
.method constructor <init>(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 613
    iput-object p1, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 617
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 620
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl$1;->this$1:Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;

    #getter for: Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->mCommands:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v2}, Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;->access$900(Lcom/baidu/server/sip/SipSessionGroup$SipSessionImpl;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 621
    .local v1, runnable:Ljava/lang/Runnable;
    if-eqz v1, :cond_0

    .line 622
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 624
    .end local v1           #runnable:Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 625
    .local v0, e:Ljava/lang/InterruptedException;
    goto :goto_0
.end method
