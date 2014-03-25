.class Landroid/os/MessageMonitorLogger$MsgLoggerHandler;
.super Landroid/os/Handler;
.source "MessageMonitorLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageMonitorLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MsgLoggerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/MessageMonitorLogger;


# direct methods
.method public constructor <init>(Landroid/os/MessageMonitorLogger;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 60
    iput-object p1, p0, Landroid/os/MessageMonitorLogger$MsgLoggerHandler;->this$0:Landroid/os/MessageMonitorLogger;

    .line 61
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 62
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 66
    const-string/jumbo v7, "msgmonitorservice"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 67
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/common/msgmonitorservice/IMessageLogger$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/msgmonitorservice/IMessageLogger;

    move-result-object v4

    .line 68
    .local v4, msgLoggerManager:Lcom/mediatek/common/msgmonitorservice/IMessageLogger;
    sget-object v7, Landroid/os/MessageMonitorLogger;->sMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 69
    .local v3, keyiter:Ljava/util/Iterator;
    sget-object v7, Landroid/os/MessageMonitorLogger;->monitorMsg:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 71
    .local v6, valueiter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/MessageMonitorLogger$MonitorMSGInfo;>;"
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 75
    :pswitch_0
    invoke-static {}, Landroid/os/MessageMonitorLogger;->access$000()Landroid/os/MessageMonitorLogger$MessageLoggerCallbacks;

    move-result-object v7

    if-nez v7, :cond_5

    .line 76
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/MessageMonitorLogger$MonitorMSGInfo;

    .line 77
    .local v5, msgMonitorInfo:Landroid/os/MessageMonitorLogger$MonitorMSGInfo;
    if-eqz v5, :cond_0

    .line 78
    const-string v7, "MessageMonitorLogger"

    const-string v8, "Monitor message timeout begin."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 80
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;

    .line 81
    .local v2, key:Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
    iget-object v7, v5, Landroid/os/MessageMonitorLogger$MonitorMSGInfo;->msgLoggerName:Ljava/lang/String;

    iget-object v8, v2, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;->msgLoggerName:Ljava/lang/String;

    if-ne v7, v8, :cond_1

    .line 82
    iget-object v7, p0, Landroid/os/MessageMonitorLogger$MsgLoggerHandler;->this$0:Landroid/os/MessageMonitorLogger;

    iget-object v8, v2, Landroid/os/MessageMonitorLogger$MSGLoggerInfo;->msgLoggerName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/os/MessageMonitorLogger;->dumpMessageHistory(Ljava/lang/String;)V

    .line 84
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-interface {v4, v7}, Lcom/mediatek/common/msgmonitorservice/IMessageLogger;->dumpCallStack(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "MessageMonitorLogger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DumpCallStack fail"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 90
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #key:Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
    :cond_2
    sget-object v7, Landroid/os/MessageMonitorLogger;->mMsgLoggerHandler:Landroid/os/MessageMonitorLogger$MsgLoggerHandler;

    const/16 v8, 0xbba

    invoke-virtual {v7, v8}, Landroid/os/MessageMonitorLogger$MsgLoggerHandler;->removeMessages(I)V

    .line 91
    sget-object v7, Landroid/os/MessageMonitorLogger;->mMsgLoggerHandler:Landroid/os/MessageMonitorLogger$MsgLoggerHandler;

    const/16 v8, 0xbb9

    invoke-virtual {v7, v8}, Landroid/os/MessageMonitorLogger$MsgLoggerHandler;->removeMessages(I)V

    .line 92
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 93
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_3

    .line 94
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 98
    :cond_4
    const-string v7, "MessageMonitorLogger"

    const-string v8, "Monitor message timeout end."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    .end local v5           #msgMonitorInfo:Landroid/os/MessageMonitorLogger$MonitorMSGInfo;
    :cond_5
    invoke-static {}, Landroid/os/MessageMonitorLogger;->access$000()Landroid/os/MessageMonitorLogger$MessageLoggerCallbacks;

    move-result-object v7

    invoke-interface {v7, p1}, Landroid/os/MessageMonitorLogger$MessageLoggerCallbacks;->onMessageTimeout(Landroid/os/Message;)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
