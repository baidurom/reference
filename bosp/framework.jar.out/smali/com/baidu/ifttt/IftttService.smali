.class public Lcom/baidu/ifttt/IftttService;
.super Lcom/baidu/ifttt/IIftttService$Stub;
.source "IftttService.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "Ifttt"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLoopThread:Ljava/lang/Thread;

.field private mTriggerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/ifttt/trigger/Trigger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Lcom/baidu/ifttt/IIftttService$Stub;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/ifttt/IftttService;->mTriggerList:Ljava/util/ArrayList;

    .line 29
    iput-object v1, p0, Lcom/baidu/ifttt/IftttService;->mHandler:Landroid/os/Handler;

    .line 30
    iput-object v1, p0, Lcom/baidu/ifttt/IftttService;->mContext:Landroid/content/Context;

    .line 32
    new-instance v0, Lcom/baidu/ifttt/IftttService$1;

    invoke-direct {v0, p0}, Lcom/baidu/ifttt/IftttService$1;-><init>(Lcom/baidu/ifttt/IftttService;)V

    iput-object v0, p0, Lcom/baidu/ifttt/IftttService;->mLoopThread:Ljava/lang/Thread;

    .line 113
    iput-object p1, p0, Lcom/baidu/ifttt/IftttService;->mContext:Landroid/content/Context;

    .line 114
    iget-object v0, p0, Lcom/baidu/ifttt/IftttService;->mLoopThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 115
    return-void
.end method

.method static synthetic access$002(Lcom/baidu/ifttt/IftttService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/baidu/ifttt/IftttService;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method public static main(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 45
    const-string v1, "Ifttt"

    const-string v2, "Ifttt Service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v0, Lcom/baidu/ifttt/IftttService;

    invoke-direct {v0, p0}, Lcom/baidu/ifttt/IftttService;-><init>(Landroid/content/Context;)V

    .line 47
    .local v0, ifService:Lcom/baidu/ifttt/IftttService;
    const-string v1, "Ifttt"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 48
    return-void
.end method


# virtual methods
.method public registerTask(Lcom/baidu/ifttt/Task;)Z
    .locals 5
    .parameter "task"

    .prologue
    const/4 v3, 0x1

    .line 57
    iget-object v4, p0, Lcom/baidu/ifttt/IftttService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lcom/baidu/ifttt/Task;->setContext(Landroid/content/Context;)V

    .line 58
    iget-object v4, p0, Lcom/baidu/ifttt/IftttService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Lcom/baidu/ifttt/Task;->setHandler(Landroid/os/Handler;)V

    .line 59
    invoke-virtual {p1}, Lcom/baidu/ifttt/Task;->getTrigger()Lcom/baidu/ifttt/trigger/Trigger;

    move-result-object v2

    .line 60
    .local v2, trigger:Lcom/baidu/ifttt/trigger/Trigger;
    iget-object v4, p0, Lcom/baidu/ifttt/IftttService;->mTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 61
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/baidu/ifttt/trigger/Trigger;>;"
    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/baidu/ifttt/Task;->getActions()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 62
    :cond_0
    const/4 v3, 0x0

    .line 74
    :goto_0
    return v3

    .line 63
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/ifttt/trigger/Trigger;

    .line 65
    .local v1, t:Lcom/baidu/ifttt/trigger/Trigger;
    invoke-virtual {v1, v2}, Lcom/baidu/ifttt/trigger/Trigger;->equals(Lcom/baidu/ifttt/trigger/Trigger;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    invoke-virtual {v1, p1}, Lcom/baidu/ifttt/trigger/Trigger;->addTask(Lcom/baidu/ifttt/Task;)V

    goto :goto_0

    .line 70
    .end local v1           #t:Lcom/baidu/ifttt/trigger/Trigger;
    :cond_2
    invoke-virtual {v2, p1}, Lcom/baidu/ifttt/trigger/Trigger;->addTask(Lcom/baidu/ifttt/Task;)V

    .line 71
    invoke-virtual {v2}, Lcom/baidu/ifttt/trigger/Trigger;->registerTrigger()V

    .line 72
    iget-object v4, p0, Lcom/baidu/ifttt/IftttService;->mTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public registerTask4Str(Ljava/lang/String;)Z
    .locals 2
    .parameter "args"

    .prologue
    .line 102
    new-instance v0, Lcom/baidu/ifttt/Task;

    invoke-direct {v0, p1}, Lcom/baidu/ifttt/Task;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, task:Lcom/baidu/ifttt/Task;
    invoke-virtual {p0, v0}, Lcom/baidu/ifttt/IftttService;->registerTask(Lcom/baidu/ifttt/Task;)Z

    move-result v1

    return v1
.end method

.method public unregisterTask(Lcom/baidu/ifttt/Task;)Z
    .locals 4
    .parameter "task"

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/baidu/ifttt/Task;->getTrigger()Lcom/baidu/ifttt/trigger/Trigger;

    move-result-object v2

    .line 84
    .local v2, trigger:Lcom/baidu/ifttt/trigger/Trigger;
    iget-object v3, p0, Lcom/baidu/ifttt/IftttService;->mTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 85
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/baidu/ifttt/trigger/Trigger;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/ifttt/trigger/Trigger;

    .line 87
    .local v1, t:Lcom/baidu/ifttt/trigger/Trigger;
    invoke-virtual {v1, v2}, Lcom/baidu/ifttt/trigger/Trigger;->equals(Lcom/baidu/ifttt/trigger/Trigger;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    invoke-virtual {v1, p1}, Lcom/baidu/ifttt/trigger/Trigger;->removeTask(Lcom/baidu/ifttt/Task;)V

    .line 90
    invoke-virtual {v1}, Lcom/baidu/ifttt/trigger/Trigger;->getTasksSize()I

    move-result v3

    if-nez v3, :cond_1

    .line 91
    invoke-virtual {v1}, Lcom/baidu/ifttt/trigger/Trigger;->unRegisterTrigger()V

    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 94
    :cond_1
    const/4 v3, 0x1

    .line 97
    .end local v1           #t:Lcom/baidu/ifttt/trigger/Trigger;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public unregisterTask4Str(Ljava/lang/String;)Z
    .locals 2
    .parameter "args"

    .prologue
    .line 108
    new-instance v0, Lcom/baidu/ifttt/Task;

    invoke-direct {v0, p1}, Lcom/baidu/ifttt/Task;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, task:Lcom/baidu/ifttt/Task;
    invoke-virtual {p0, v0}, Lcom/baidu/ifttt/IftttService;->unregisterTask(Lcom/baidu/ifttt/Task;)Z

    move-result v1

    return v1
.end method
