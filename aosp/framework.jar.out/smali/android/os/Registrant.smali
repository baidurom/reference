.class public Landroid/os/Registrant;
.super Ljava/lang/Object;
.source "Registrant.java"


# instance fields
.field refH:Ljava/lang/ref/WeakReference;

.field userObj:Ljava/lang/Object;

.field what:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/os/Registrant;->refH:Ljava/lang/ref/WeakReference;

    .line 35
    iput p2, p0, Landroid/os/Registrant;->what:I

    .line 36
    iput-object p3, p0, Landroid/os/Registrant;->userObj:Ljava/lang/Object;

    .line 37
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Landroid/os/Registrant;->refH:Ljava/lang/ref/WeakReference;

    .line 43
    iput-object v0, p0, Landroid/os/Registrant;->userObj:Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Landroid/os/Registrant;->refH:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/os/Registrant;->refH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    goto :goto_0
.end method

.method internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 5
    .parameter "result"
    .parameter "exception"

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 78
    .local v0, h:Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Landroid/os/Registrant;->clear()V

    .line 82
    const-string v2, "Registrant"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "internalNotifyRegistrant(): Warning! Handler is null, it could be already GCed. ( what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/os/Registrant;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userObj="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/Registrant;->userObj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 86
    .local v1, msg:Landroid/os/Message;
    iget v2, p0, Landroid/os/Registrant;->what:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 88
    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p0, Landroid/os/Registrant;->userObj:Ljava/lang/Object;

    invoke-direct {v2, v3, p1, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 90
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public messageForRegistrant()Landroid/os/Message;
    .locals 5

    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 103
    .local v0, h:Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0}, Landroid/os/Registrant;->clear()V

    .line 107
    const-string v2, "Registrant"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "messageForRegistrant(): Warning! Handler is null, it could be already GCed. ( what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/os/Registrant;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userObj="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/Registrant;->userObj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v1, 0x0

    .line 115
    :goto_0
    return-object v1

    .line 110
    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 112
    .local v1, msg:Landroid/os/Message;
    iget v2, p0, Landroid/os/Registrant;->what:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 113
    iget-object v2, p0, Landroid/os/Registrant;->userObj:Ljava/lang/Object;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public notifyException(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 62
    return-void
.end method

.method public notifyRegistrant()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, v0, v0}, Landroid/os/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 50
    return-void
.end method

.method public notifyRegistrant(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 70
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v0, v1}, Landroid/os/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 71
    return-void
.end method

.method public notifyResult(Ljava/lang/Object;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 56
    return-void
.end method
