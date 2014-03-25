.class public Landroid/app/Instrumentation;
.super Ljava/lang/Object;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Instrumentation$1;,
        Landroid/app/Instrumentation$Idler;,
        Landroid/app/Instrumentation$ActivityGoing;,
        Landroid/app/Instrumentation$ActivityWaiter;,
        Landroid/app/Instrumentation$SyncRunnable;,
        Landroid/app/Instrumentation$EmptyRunnable;,
        Landroid/app/Instrumentation$InstrumentationThread;,
        Landroid/app/Instrumentation$ActivityResult;,
        Landroid/app/Instrumentation$ActivityMonitor;
    }
.end annotation


# static fields
.field public static final REPORT_KEY_IDENTIFIER:Ljava/lang/String; = "id"

.field public static final REPORT_KEY_STREAMRESULT:Ljava/lang/String; = "stream"

.field private static final TAG:Ljava/lang/String; = "Instrumentation"


# instance fields
.field private mActivityMonitors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Instrumentation$ActivityMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private mAppContext:Landroid/content/Context;

.field private mAutomaticPerformanceSnapshots:Z

.field private mComponent:Landroid/content/ComponentName;

.field private mInstrContext:Landroid/content/Context;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mPerfMetrics:Landroid/os/Bundle;

.field private mPerformanceCollector:Landroid/os/PerformanceCollector;

.field private mRunner:Ljava/lang/Thread;

.field private final mSync:Ljava/lang/Object;

.field private mThread:Landroid/app/ActivityThread;

.field private mWaitingActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Instrumentation$ActivityWaiter;",
            ">;"
        }
    .end annotation
.end field

.field private mWatcher:Landroid/app/IInstrumentationWatcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    .line 94
    iput-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    .line 95
    iput-object v1, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    .line 108
    return-void
.end method

.method static synthetic access$100(Landroid/app/Instrumentation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    return v0
.end method

.method static synthetic access$200(Landroid/app/Instrumentation;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/Instrumentation;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    return-object v0
.end method

.method private addValue(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .parameter "key"
    .parameter "value"
    .parameter "results"

    .prologue
    .line 1349
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1350
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1351
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    .line 1352
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1359
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    return-void

    .line 1355
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1356
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1357
    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method static checkStartActivityResult(ILjava/lang/Object;)V
    .locals 3
    .parameter "res"
    .parameter "intent"

    .prologue
    .line 1686
    if-ltz p0, :cond_0

    .line 1705
    :goto_0
    return-void

    .line 1690
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 1713
    :pswitch_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1693
    :pswitch_1
    instance-of v0, p1, Landroid/content/Intent;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1694
    new-instance v0, Landroid/content/ActivityNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find explicit activity class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Landroid/content/Intent;

    .end local p1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; have you declared this activity in your AndroidManifest.xml?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1698
    .restart local p1
    :cond_1
    new-instance v0, Landroid/content/ActivityNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Activity found to handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1701
    :pswitch_2
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to start activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1704
    :pswitch_3
    const-string v0, "Instrumentation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User denied to start activity with intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1707
    :pswitch_4
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "FORWARD_RESULT_FLAG used while also requesting a result"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1710
    :pswitch_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PendingIntent is not an activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1690
    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
    .locals 1
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/content/Context;",
            ")",
            "Landroid/app/Application;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1053
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 1054
    .local v0, app:Landroid/app/Application;
    invoke-virtual {v0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V

    .line 1055
    return-object v0
.end method

.method private final validateNotAppThread()V
    .locals 2

    .prologue
    .line 1719
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1720
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This method can not be called from the main application thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1723
    :cond_0
    return-void
.end method


# virtual methods
.method public addMonitor(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .locals 1
    .parameter "filter"
    .parameter "result"
    .parameter "block"

    .prologue
    .line 695
    new-instance v0, Landroid/app/Instrumentation$ActivityMonitor;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;-><init>(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)V

    .line 696
    .local v0, am:Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    .line 697
    return-object v0
.end method

.method public addMonitor(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .locals 1
    .parameter "cls"
    .parameter "result"
    .parameter "block"

    .prologue
    .line 718
    new-instance v0, Landroid/app/Instrumentation$ActivityMonitor;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;-><init>(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)V

    .line 719
    .local v0, am:Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    .line 720
    return-object v0
.end method

.method public addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .locals 2
    .parameter "monitor"

    .prologue
    .line 668
    iget-object v1, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 669
    :try_start_0
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 670
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    .line 672
    :cond_0
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    monitor-exit v1

    .line 674
    return-void

    .line 673
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 8
    .parameter "activity"
    .parameter "icicle"

    .prologue
    .line 1136
    iget-object v5, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 1137
    iget-object v6, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v6

    .line 1138
    :try_start_0
    iget-object v5, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 1139
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 1140
    iget-object v5, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Instrumentation$ActivityWaiter;

    .line 1141
    .local v2, aw:Landroid/app/Instrumentation$ActivityWaiter;
    iget-object v4, v2, Landroid/app/Instrumentation$ActivityWaiter;->intent:Landroid/content/Intent;

    .line 1142
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1143
    iput-object p1, v2, Landroid/app/Instrumentation$ActivityWaiter;->activity:Landroid/app/Activity;

    .line 1144
    iget-object v5, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    new-instance v7, Landroid/app/Instrumentation$ActivityGoing;

    invoke-direct {v7, p0, v2}, Landroid/app/Instrumentation$ActivityGoing;-><init>(Landroid/app/Instrumentation;Landroid/app/Instrumentation$ActivityWaiter;)V

    invoke-virtual {v5, v7}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1139
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1147
    .end local v2           #aw:Landroid/app/Instrumentation$ActivityWaiter;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    .end local v0           #N:I
    .end local v3           #i:I
    :cond_2
    const-string v5, "Instrumentation"

    const-string v6, "activity.onCreate +"

    invoke-static {v5, v6}, Landroid/app/ActivityThread;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performCreate(Landroid/os/Bundle;)V

    .line 1152
    const-string v5, "Instrumentation"

    const-string v6, "activity.onCreate -"

    invoke-static {v5, v6}, Landroid/app/ActivityThread;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    iget-object v5, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v5, :cond_4

    .line 1155
    iget-object v6, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v6

    .line 1156
    :try_start_1
    iget-object v5, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 1157
    .restart local v0       #N:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 1158
    iget-object v5, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1159
    .local v1, am:Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v1, p1, p1, v5}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1157
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1147
    .end local v0           #N:I
    .end local v1           #am:Landroid/app/Instrumentation$ActivityMonitor;
    .end local v3           #i:I
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1161
    .restart local v0       #N:I
    .restart local v3       #i:I
    :cond_3
    :try_start_3
    monitor-exit v6

    .line 1163
    .end local v0           #N:I
    .end local v3           #i:I
    :cond_4
    return-void

    .line 1161
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5
.end method

.method public callActivityOnDestroy(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 1182
    invoke-virtual {p1}, Landroid/app/Activity;->performDestroy()V

    .line 1184
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 1185
    iget-object v4, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1186
    :try_start_0
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1187
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1188
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1189
    .local v1, am:Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, p1, p1, v3}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 1187
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1191
    .end local v1           #am:Landroid/app/Instrumentation$ActivityMonitor;
    :cond_0
    monitor-exit v4

    .line 1193
    .end local v0           #N:I
    .end local v2           #i:I
    :cond_1
    return-void

    .line 1191
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0
    .parameter "activity"
    .parameter "intent"

    .prologue
    .line 1226
    invoke-virtual {p1, p2}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1227
    return-void
.end method

.method public callActivityOnPause(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 1302
    invoke-virtual {p1}, Landroid/app/Activity;->performPause()V

    .line 1303
    return-void
.end method

.method public callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "icicle"

    .prologue
    .line 1215
    invoke-virtual {p1, p2}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 1216
    return-void
.end method

.method public callActivityOnRestart(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 1248
    invoke-virtual {p1}, Landroid/app/Activity;->onRestart()V

    .line 1249
    return-void
.end method

.method public callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "savedInstanceState"

    .prologue
    .line 1203
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1204
    return-void
.end method

.method public callActivityOnResume(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 1258
    const-string v3, "Instrumentation"

    const-string v4, "activity.onResume +"

    invoke-static {v3, v4}, Landroid/app/ActivityThread;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    const/4 v3, 0x1

    iput-boolean v3, p1, Landroid/app/Activity;->mResumed:Z

    .line 1260
    invoke-virtual {p1}, Landroid/app/Activity;->onResume()V

    .line 1261
    const-string v3, "Instrumentation"

    const-string v4, "activity.onResume -"

    invoke-static {v3, v4}, Landroid/app/ActivityThread;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 1264
    iget-object v4, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1265
    :try_start_0
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1266
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1267
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1268
    .local v1, am:Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, p1, p1, v3}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 1266
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1270
    .end local v1           #am:Landroid/app/Instrumentation$ActivityMonitor;
    :cond_0
    monitor-exit v4

    .line 1272
    .end local v0           #N:I
    .end local v2           #i:I
    :cond_1
    return-void

    .line 1270
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "outState"

    .prologue
    .line 1292
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 1293
    return-void
.end method

.method public callActivityOnStart(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 1236
    const-string v0, "Instrumentation"

    const-string v1, "activity.onStart +"

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    invoke-virtual {p1}, Landroid/app/Activity;->onStart()V

    .line 1238
    const-string v0, "Instrumentation"

    const-string v1, "activity.onStart -"

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    return-void
.end method

.method public callActivityOnStop(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 1281
    invoke-virtual {p1}, Landroid/app/Activity;->onStop()V

    .line 1282
    return-void
.end method

.method public callActivityOnUserLeaving(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 1312
    invoke-virtual {p1}, Landroid/app/Activity;->performUserLeaving()V

    .line 1313
    return-void
.end method

.method public callApplicationOnCreate(Landroid/app/Application;)V
    .locals 0
    .parameter "app"

    .prologue
    .line 1070
    invoke-virtual {p1}, Landroid/app/Application;->onCreate()V

    .line 1071
    return-void
.end method

.method public checkMonitorHit(Landroid/app/Instrumentation$ActivityMonitor;I)Z
    .locals 2
    .parameter "monitor"
    .parameter "minHits"

    .prologue
    .line 737
    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 738
    iget-object v1, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 739
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityMonitor;->getHits()I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 740
    const/4 v0, 0x0

    monitor-exit v1

    .line 744
    :goto_0
    return v0

    .line 742
    :cond_0
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 743
    monitor-exit v1

    .line 744
    const/4 v0, 0x1

    goto :goto_0

    .line 743
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public endPerformanceSnapshot()V
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0}, Landroid/app/Instrumentation;->isProfiling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerformanceCollector:Landroid/os/PerformanceCollector;

    invoke-virtual {v0}, Landroid/os/PerformanceCollector;->endSnapshot()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    .line 277
    :cond_0
    return-void
.end method

.method public execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 8
    .parameter "who"
    .parameter "contextThread"
    .parameter "token"
    .parameter "target"
    .parameter "intents"
    .parameter "options"

    .prologue
    .line 1509
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivitiesAsUser(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;I)V

    .line 1511
    return-void
.end method

.method public execStartActivitiesAsUser(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;I)V
    .locals 12
    .parameter "who"
    .parameter "contextThread"
    .parameter "token"
    .parameter "target"
    .parameter "intents"
    .parameter "options"
    .parameter "userId"

    .prologue
    .line 1524
    move-object v2, p2

    check-cast v2, Landroid/app/IApplicationThread;

    .line 1525
    .local v2, whoThread:Landroid/app/IApplicationThread;
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 1526
    iget-object v3, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1527
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    .line 1528
    .local v8, N:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v8, :cond_1

    .line 1529
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1530
    .local v9, am:Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v1, 0x0

    const/4 v5, 0x0

    aget-object v5, p5, v5

    invoke-virtual {v9, p1, v1, v5}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1531
    iget v1, v9, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 1532
    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1533
    monitor-exit v3

    .line 1552
    .end local v8           #N:I
    .end local v9           #am:Landroid/app/Instrumentation$ActivityMonitor;
    .end local v10           #i:I
    :goto_1
    return-void

    .line 1528
    .restart local v8       #N:I
    .restart local v9       #am:Landroid/app/Instrumentation$ActivityMonitor;
    .restart local v10       #i:I
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1538
    .end local v9           #am:Landroid/app/Instrumentation$ActivityMonitor;
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1541
    .end local v8           #N:I
    .end local v10           #i:I
    :cond_2
    :try_start_1
    move-object/from16 v0, p5

    array-length v1, v0

    new-array v4, v1, [Ljava/lang/String;

    .line 1542
    .local v4, resolvedTypes:[Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_2
    move-object/from16 v0, p5

    array-length v1, v0

    if-ge v10, v1, :cond_3

    .line 1543
    aget-object v1, p5, v10

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 1544
    aget-object v1, p5, v10

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v10
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1542
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1538
    .end local v4           #resolvedTypes:[Ljava/lang/String;
    .end local v10           #i:I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1546
    .restart local v4       #resolvedTypes:[Ljava/lang/String;
    .restart local v10       #i:I
    :cond_3
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    move-object/from16 v3, p5

    move-object v5, p3

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-interface/range {v1 .. v7}, Landroid/app/IActivityManager;->startActivities(Landroid/app/IApplicationThread;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v11

    .line 1549
    .local v11, result:I
    const/4 v1, 0x0

    aget-object v1, p5, v1

    invoke-static {v11, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1550
    .end local v4           #resolvedTypes:[Ljava/lang/String;
    .end local v10           #i:I
    .end local v11           #result:I
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 17
    .parameter "who"
    .parameter "contextThread"
    .parameter "token"
    .parameter "target"
    .parameter "intent"
    .parameter "requestCode"
    .parameter "options"

    .prologue
    .line 1469
    move-object/from16 v3, p2

    check-cast v3, Landroid/app/IApplicationThread;

    .line 1470
    .local v3, whoThread:Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 1471
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1472
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    .line 1473
    .local v13, N:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    if-ge v15, v13, :cond_2

    .line 1474
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1475
    .local v14, am:Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v14, v0, v2, v1}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1476
    iget v2, v14, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v14, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 1477
    invoke-virtual {v14}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1478
    if-ltz p6, :cond_0

    invoke-virtual {v14}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v2

    :goto_1
    monitor-exit v4

    .line 1496
    .end local v13           #N:I
    .end local v14           #am:Landroid/app/Instrumentation$ActivityMonitor;
    .end local v15           #i:I
    :goto_2
    return-object v2

    .line 1478
    .restart local v13       #N:I
    .restart local v14       #am:Landroid/app/Instrumentation$ActivityMonitor;
    .restart local v15       #i:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1473
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1483
    .end local v14           #am:Landroid/app/Instrumentation$ActivityMonitor;
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1486
    .end local v13           #N:I
    .end local v15           #i:I
    :cond_3
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 1487
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 1488
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    :goto_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p5

    move-object/from16 v6, p3

    move/from16 v8, p6

    move-object/from16 v12, p7

    invoke-interface/range {v2 .. v12}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I

    move-result v16

    .line 1493
    .local v16, result:I
    move/from16 v0, v16

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1496
    .end local v16           #result:I
    :goto_4
    const/4 v2, 0x0

    goto :goto_2

    .line 1483
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1488
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 1494
    :catch_0
    move-exception v2

    goto :goto_4
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 18
    .parameter "who"
    .parameter "contextThread"
    .parameter "token"
    .parameter "target"
    .parameter "intent"
    .parameter "requestCode"
    .parameter "options"
    .parameter "user"

    .prologue
    .line 1644
    move-object/from16 v3, p2

    check-cast v3, Landroid/app/IApplicationThread;

    .line 1645
    .local v3, whoThread:Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 1646
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1647
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    .line 1648
    .local v14, N:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v14, :cond_2

    .line 1649
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1650
    .local v15, am:Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v15, v0, v2, v1}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1651
    iget v2, v15, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 1652
    invoke-virtual {v15}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1653
    if-ltz p6, :cond_0

    invoke-virtual {v15}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v2

    :goto_1
    monitor-exit v4

    .line 1671
    .end local v14           #N:I
    .end local v15           #am:Landroid/app/Instrumentation$ActivityMonitor;
    .end local v16           #i:I
    :goto_2
    return-object v2

    .line 1653
    .restart local v14       #N:I
    .restart local v15       #am:Landroid/app/Instrumentation$ActivityMonitor;
    .restart local v16       #i:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1648
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1658
    .end local v15           #am:Landroid/app/Instrumentation$ActivityMonitor;
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1661
    .end local v14           #N:I
    .end local v16           #i:I
    :cond_3
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 1662
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 1663
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    :goto_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p8 .. p8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    move-object/from16 v4, p5

    move-object/from16 v6, p3

    move/from16 v8, p6

    move-object/from16 v12, p7

    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)I

    move-result v17

    .line 1668
    .local v17, result:I
    move/from16 v0, v17

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1671
    .end local v17           #result:I
    :goto_4
    const/4 v2, 0x0

    goto :goto_2

    .line 1658
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1663
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 1669
    :catch_0
    move-exception v2

    goto :goto_4
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 17
    .parameter "who"
    .parameter "contextThread"
    .parameter "token"
    .parameter "target"
    .parameter "intent"
    .parameter "requestCode"
    .parameter "options"

    .prologue
    .line 1584
    move-object/from16 v3, p2

    check-cast v3, Landroid/app/IApplicationThread;

    .line 1585
    .local v3, whoThread:Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 1586
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1587
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    .line 1588
    .local v13, N:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    if-ge v15, v13, :cond_2

    .line 1589
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1590
    .local v14, am:Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v14, v0, v2, v1}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1591
    iget v2, v14, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v14, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 1592
    invoke-virtual {v14}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1593
    if-ltz p6, :cond_0

    invoke-virtual {v14}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v2

    :goto_1
    monitor-exit v4

    .line 1611
    .end local v13           #N:I
    .end local v14           #am:Landroid/app/Instrumentation$ActivityMonitor;
    .end local v15           #i:I
    :goto_2
    return-object v2

    .line 1593
    .restart local v13       #N:I
    .restart local v14       #am:Landroid/app/Instrumentation$ActivityMonitor;
    .restart local v15       #i:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1588
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1598
    .end local v14           #am:Landroid/app/Instrumentation$ActivityMonitor;
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1601
    .end local v13           #N:I
    .end local v15           #i:I
    :cond_3
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 1602
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 1603
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    :goto_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p5

    move-object/from16 v6, p3

    move/from16 v8, p6

    move-object/from16 v12, p7

    invoke-interface/range {v2 .. v12}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I

    move-result v16

    .line 1608
    .local v16, result:I
    move/from16 v0, v16

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1611
    .end local v16           #result:I
    :goto_4
    const/4 v2, 0x0

    goto :goto_2

    .line 1598
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1603
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 1609
    :catch_0
    move-exception v2

    goto :goto_4
.end method

.method public finish(ILandroid/os/Bundle;)V
    .locals 24
    .parameter "resultCode"
    .parameter "results"

    .prologue
    .line 198
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 199
    invoke-virtual/range {p0 .. p0}, Landroid/app/Instrumentation;->endPerformanceSnapshot()V

    .line 201
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 205
    :cond_1
    const-string v18, "/data/meminfo/"

    .line 206
    .local v18, pathPrefix:Ljava/lang/String;
    new-instance v20, Ljava/io/File;

    const-string v21, "/data/meminfo/"

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v20, projDir:Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_3

    const-string v21, "1"

    const-string v22, "genmeminfo.debug"

    const-string v23, "0"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 215
    const-string v21, "Instrumentation"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Start to dump "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " hprof and smaps"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    .line 218
    .local v19, proc_id:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 219
    .local v6, c:Ljava/util/Calendar;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v21, "yyyyMMddHHmmss"

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 220
    .local v7, df:Ljava/text/SimpleDateFormat;
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 223
    .local v12, formattedDate:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "/data/meminfo/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 224
    .local v16, locPath:Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .local v15, locDir:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_2

    .line 226
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 231
    :cond_2
    :try_start_0
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".hprof"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 237
    :goto_0
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "/proc/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/smaps"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, SrcSmapPath:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".smaps"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, DstSmapPath:Ljava/lang/String;
    :try_start_1
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    .local v10, f1:Ljava/io/File;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v11, f2:Ljava/io/File;
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 243
    .local v13, in:Ljava/io/InputStream;
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 244
    .local v17, out:Ljava/io/OutputStream;
    const/16 v21, 0x400

    move/from16 v0, v21

    new-array v5, v0, [B

    .line 246
    .local v5, buf:[B
    :goto_1
    invoke-virtual {v13, v5}, Ljava/io/InputStream;->read([B)I

    move-result v14

    .local v14, len:I
    if-lez v14, :cond_4

    .line 247
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v5, v1, v14}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 252
    .end local v5           #buf:[B
    .end local v10           #f1:Ljava/io/File;
    .end local v11           #f2:Ljava/io/File;
    .end local v13           #in:Ljava/io/InputStream;
    .end local v14           #len:I
    .end local v17           #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v9

    .line 253
    .local v9, ex:Ljava/io/FileNotFoundException;
    const-string v21, "Instrumentation"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Fail to dump "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " Smaps"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .end local v3           #DstSmapPath:Ljava/lang/String;
    .end local v4           #SrcSmapPath:Ljava/lang/String;
    .end local v6           #c:Ljava/util/Calendar;
    .end local v7           #df:Ljava/text/SimpleDateFormat;
    .end local v9           #ex:Ljava/io/FileNotFoundException;
    .end local v12           #formattedDate:Ljava/lang/String;
    .end local v15           #locDir:Ljava/io/File;
    .end local v16           #locPath:Ljava/lang/String;
    .end local v19           #proc_id:I
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->finishInstrumentation(ILandroid/os/Bundle;)V

    .line 260
    return-void

    .line 233
    .restart local v6       #c:Ljava/util/Calendar;
    .restart local v7       #df:Ljava/text/SimpleDateFormat;
    .restart local v12       #formattedDate:Ljava/lang/String;
    .restart local v15       #locDir:Ljava/io/File;
    .restart local v16       #locPath:Ljava/lang/String;
    .restart local v19       #proc_id:I
    :catch_1
    move-exception v8

    .line 234
    .local v8, e:Ljava/io/IOException;
    const-string v21, "Instrumentation"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Fail to dump "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " hprof"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 249
    .end local v8           #e:Ljava/io/IOException;
    .restart local v3       #DstSmapPath:Ljava/lang/String;
    .restart local v4       #SrcSmapPath:Ljava/lang/String;
    .restart local v5       #buf:[B
    .restart local v10       #f1:Ljava/io/File;
    .restart local v11       #f2:Ljava/io/File;
    .restart local v13       #in:Ljava/io/InputStream;
    .restart local v14       #len:I
    .restart local v17       #out:Ljava/io/OutputStream;
    :cond_4
    :try_start_2
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 250
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 255
    .end local v5           #buf:[B
    .end local v10           #f1:Ljava/io/File;
    .end local v11           #f2:Ljava/io/File;
    .end local v13           #in:Ljava/io/InputStream;
    .end local v14           #len:I
    .end local v17           #out:Ljava/io/OutputStream;
    :catch_2
    move-exception v8

    .line 256
    .restart local v8       #e:Ljava/io/IOException;
    const-string v21, "Instrumentation"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Fail to dump "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " Smaps:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "   "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getAllocCounts()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 1365
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1366
    .local v0, results:Landroid/os/Bundle;
    const-string v1, "global_alloc_count"

    invoke-static {}, Landroid/os/Debug;->getGlobalAllocCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1367
    const-string v1, "global_alloc_size"

    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1368
    const-string v1, "global_freed_count"

    invoke-static {}, Landroid/os/Debug;->getGlobalFreedCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1369
    const-string v1, "global_freed_size"

    invoke-static {}, Landroid/os/Debug;->getGlobalFreedSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1370
    const-string v1, "gc_invocation_count"

    invoke-static {}, Landroid/os/Debug;->getGlobalGcInvocationCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1371
    return-object v0
.end method

.method public getBinderCounts()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 1379
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1380
    .local v0, results:Landroid/os/Bundle;
    const-string v1, "sent_transactions"

    invoke-static {}, Landroid/os/Debug;->getBinderSentTransactions()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1381
    const-string v1, "received_transactions"

    invoke-static {}, Landroid/os/Debug;->getBinderReceivedTransactions()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1382
    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    return-object v0
.end method

.method public getTargetContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Landroid/app/Instrumentation;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method final init(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/content/Context;Landroid/content/ComponentName;Landroid/app/IInstrumentationWatcher;)V
    .locals 1
    .parameter "thread"
    .parameter "instrContext"
    .parameter "appContext"
    .parameter "component"
    .parameter "watcher"

    .prologue
    .line 1677
    iput-object p1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    .line 1678
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    .line 1679
    iput-object p2, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    .line 1680
    iput-object p3, p0, Landroid/app/Instrumentation;->mAppContext:Landroid/content/Context;

    .line 1681
    iput-object p4, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    .line 1682
    iput-object p5, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    .line 1683
    return-void
.end method

.method public invokeContextMenuAction(Landroid/app/Activity;II)Z
    .locals 8
    .parameter "targetActivity"
    .parameter "id"
    .parameter "flag"

    .prologue
    const/16 v7, 0x17

    const/4 v4, 0x0

    .line 847
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 853
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v4, v7}, Landroid/view/KeyEvent;-><init>(II)V

    .line 854
    .local v1, downEvent:Landroid/view/KeyEvent;
    invoke-virtual {p0, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 857
    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 859
    :try_start_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v7}, Landroid/view/KeyEvent;-><init>(II)V

    .line 866
    .local v3, upEvent:Landroid/view/KeyEvent;
    invoke-virtual {p0, v3}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 869
    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 893
    new-instance v0, Landroid/app/Instrumentation$1ContextMenuRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/app/Instrumentation$1ContextMenuRunnable;-><init>(Landroid/app/Instrumentation;Landroid/app/Activity;II)V

    .line 894
    .local v0, cmr:Landroid/app/Instrumentation$1ContextMenuRunnable;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 895
    iget-boolean v4, v0, Landroid/app/Instrumentation$1ContextMenuRunnable;->returnValue:Z

    .end local v0           #cmr:Landroid/app/Instrumentation$1ContextMenuRunnable;
    .end local v3           #upEvent:Landroid/view/KeyEvent;
    :goto_0
    return v4

    .line 860
    :catch_0
    move-exception v2

    .line 861
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v5, "Instrumentation"

    const-string v6, "Could not sleep for long press timeout"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public invokeMenuActionSync(Landroid/app/Activity;II)Z
    .locals 2
    .parameter "targetActivity"
    .parameter "id"
    .parameter "flag"

    .prologue
    .line 831
    new-instance v0, Landroid/app/Instrumentation$1MenuRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/app/Instrumentation$1MenuRunnable;-><init>(Landroid/app/Instrumentation;Landroid/app/Activity;II)V

    .line 832
    .local v0, mr:Landroid/app/Instrumentation$1MenuRunnable;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 833
    iget-boolean v1, v0, Landroid/app/Instrumentation$1MenuRunnable;->returnValue:Z

    return v1
.end method

.method public isProfiling()Z
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->isProfiling()Z

    move-result v0

    return v0
.end method

.method public newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;
    .locals 13
    .parameter
    .parameter "context"
    .parameter "token"
    .parameter "application"
    .parameter "intent"
    .parameter "info"
    .parameter "title"
    .parameter "parent"
    .parameter "id"
    .parameter "lastNonConfigurationInstance"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/content/Context;",
            "Landroid/os/IBinder;",
            "Landroid/app/Application;",
            "Landroid/content/Intent;",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/lang/CharSequence;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/app/Activity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1099
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1100
    .local v0, activity:Landroid/app/Activity;
    const/4 v2, 0x0

    .local v2, aThread:Landroid/app/ActivityThread;
    move-object/from16 v11, p10

    .line 1101
    check-cast v11, Landroid/app/Activity$NonConfigurationInstances;

    new-instance v12, Landroid/content/res/Configuration;

    invoke-direct {v12}, Landroid/content/res/Configuration;-><init>()V

    move-object v1, p2

    move-object v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v12}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;)V

    .line 1105
    return-object v0
.end method

.method public newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 1
    .parameter "cl"
    .parameter "className"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1124
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
    .locals 1
    .parameter "cl"
    .parameter "className"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1038
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "arguments"

    .prologue
    .line 126
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method public onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 1
    .parameter "obj"
    .parameter "e"

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public removeMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .locals 2
    .parameter "monitor"

    .prologue
    .line 792
    iget-object v1, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 793
    :try_start_0
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 794
    monitor-exit v1

    .line 795
    return-void

    .line 794
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public runOnMainSync(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runner"

    .prologue
    .line 407
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 408
    new-instance v0, Landroid/app/Instrumentation$SyncRunnable;

    invoke-direct {v0, p1}, Landroid/app/Instrumentation$SyncRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 409
    .local v0, sr:Landroid/app/Instrumentation$SyncRunnable;
    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 410
    invoke-virtual {v0}, Landroid/app/Instrumentation$SyncRunnable;->waitForComplete()V

    .line 411
    return-void
.end method

.method public sendCharacterSync(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 980
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 981
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 982
    return-void
.end method

.method public sendKeyDownUpSync(I)V
    .locals 2
    .parameter "key"

    .prologue
    .line 967
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 968
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 969
    return-void
.end method

.method public sendKeySync(Landroid/view/KeyEvent;)V
    .locals 16
    .parameter "event"

    .prologue
    .line 934
    invoke-direct/range {p0 .. p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 936
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    .line 937
    .local v1, downTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    .line 938
    .local v3, eventTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    .line 939
    .local v5, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 940
    .local v6, code:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    .line 941
    .local v7, repeatCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v8

    .line 942
    .local v8, metaState:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    .line 943
    .local v9, deviceId:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v10

    .line 944
    .local v10, scancode:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v12

    .line 945
    .local v12, source:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v13

    .line 946
    .local v13, flags:I
    if-nez v12, :cond_0

    .line 947
    const/16 v12, 0x101

    .line 949
    :cond_0
    const-wide/16 v14, 0x0

    cmp-long v11, v3, v14

    if-nez v11, :cond_1

    .line 950
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 952
    :cond_1
    const-wide/16 v14, 0x0

    cmp-long v11, v1, v14

    if-nez v11, :cond_2

    .line 953
    move-wide v1, v3

    .line 955
    :cond_2
    new-instance v0, Landroid/view/KeyEvent;

    or-int/lit8 v11, v13, 0x8

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 957
    .local v0, newEvent:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v11

    const/4 v14, 0x2

    invoke-virtual {v11, v0, v14}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 959
    return-void
.end method

.method public sendPointerSync(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 996
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 997
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 998
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1000
    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1002
    return-void
.end method

.method public sendStatus(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "resultCode"
    .parameter "results"

    .prologue
    .line 178
    iget-object v1, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    if-eqz v1, :cond_0

    .line 180
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    iget-object v2, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    invoke-interface {v1, v2, p1, p2}, Landroid/app/IInstrumentationWatcher;->instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    goto :goto_0
.end method

.method public sendStringSync(Ljava/lang/String;)V
    .locals 7
    .parameter "text"

    .prologue
    .line 905
    if-nez p1, :cond_1

    .line 922
    :cond_0
    return-void

    .line 908
    :cond_1
    const/4 v3, -0x1

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 910
    .local v2, keyCharacterMap:Landroid/view/KeyCharacterMap;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v0

    .line 912
    .local v0, events:[Landroid/view/KeyEvent;
    if-eqz v0, :cond_0

    .line 913
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 919
    aget-object v3, v0, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 913
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public sendTrackballEventSync(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 1016
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 1017
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 1018
    const v0, 0x10004

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1020
    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1022
    return-void
.end method

.method public setAutomaticPerformanceSnapshots()V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    .line 264
    new-instance v0, Landroid/os/PerformanceCollector;

    invoke-direct {v0}, Landroid/os/PerformanceCollector;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mPerformanceCollector:Landroid/os/PerformanceCollector;

    .line 265
    return-void
.end method

.method public setInTouchMode(Z)V
    .locals 1
    .parameter "inTouch"

    .prologue
    .line 367
    :try_start_0
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_0
    return-void

    .line 369
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Instrumentation already started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    new-instance v0, Landroid/app/Instrumentation$InstrumentationThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/Instrumentation$InstrumentationThread;-><init>(Landroid/app/Instrumentation;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    .line 138
    iget-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 139
    return-void
.end method

.method public startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;
    .locals 8
    .parameter "intent"

    .prologue
    .line 434
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 436
    iget-object v5, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v5

    .line 437
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 439
    .end local p1
    .local v2, intent:Landroid/content/Intent;
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 441
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_0

    .line 442
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to resolve activity for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :catchall_0
    move-exception v4

    move-object p1, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local p1
    :goto_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 444
    .end local p1
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_0
    :try_start_3
    iget-object v4, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getProcessName()Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, myProc:Ljava/lang/String;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 448
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intent in process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " resolved to different process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 453
    :cond_1
    new-instance v4, Landroid/content/ComponentName;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 455
    new-instance v1, Landroid/app/Instrumentation$ActivityWaiter;

    invoke-direct {v1, v2}, Landroid/app/Instrumentation$ActivityWaiter;-><init>(Landroid/content/Intent;)V

    .line 457
    .local v1, aw:Landroid/app/Instrumentation$ActivityWaiter;
    iget-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    if-nez v4, :cond_2

    .line 458
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    .line 460
    :cond_2
    iget-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 466
    :cond_3
    :try_start_4
    iget-object v4, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 469
    :goto_1
    :try_start_5
    iget-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 471
    iget-object v4, v1, Landroid/app/Instrumentation$ActivityWaiter;->activity:Landroid/app/Activity;

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-object v4

    .line 472
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #aw:Landroid/app/Instrumentation$ActivityWaiter;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #myProc:Ljava/lang/String;
    .restart local p1
    :catchall_1
    move-exception v4

    goto :goto_0

    .line 467
    .end local p1
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v1       #aw:Landroid/app/Instrumentation$ActivityWaiter;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #myProc:Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public startAllocCounting()V
    .locals 1

    .prologue
    .line 1323
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1324
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 1325
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1327
    invoke-static {}, Landroid/os/Debug;->resetAllCounts()V

    .line 1330
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 1331
    return-void
.end method

.method public startPerformanceSnapshot()V
    .locals 2

    .prologue
    .line 268
    invoke-virtual {p0}, Landroid/app/Instrumentation;->isProfiling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerformanceCollector:Landroid/os/PerformanceCollector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PerformanceCollector;->beginSnapshot(Ljava/lang/String;)V

    .line 271
    :cond_0
    return-void
.end method

.method public startProfiling()V
    .locals 3

    .prologue
    .line 341
    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->isProfiling()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getProfileFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 344
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x80

    invoke-static {v1, v2}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 346
    .end local v0           #file:Ljava/io/File;
    :cond_0
    return-void
.end method

.method public stopAllocCounting()V
    .locals 1

    .prologue
    .line 1337
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1338
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 1339
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1340
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 1341
    return-void
.end method

.method public stopProfiling()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->isProfiling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 355
    :cond_0
    return-void
.end method

.method public waitForIdle(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "recipient"

    .prologue
    .line 382
    iget-object v0, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    new-instance v1, Landroid/app/Instrumentation$Idler;

    invoke-direct {v1, p1}, Landroid/app/Instrumentation$Idler;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 383
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/Instrumentation$EmptyRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/Instrumentation$EmptyRunnable;-><init>(Landroid/app/Instrumentation$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 384
    return-void
.end method

.method public waitForIdleSync()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 392
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 393
    new-instance v0, Landroid/app/Instrumentation$Idler;

    invoke-direct {v0, v3}, Landroid/app/Instrumentation$Idler;-><init>(Ljava/lang/Runnable;)V

    .line 394
    .local v0, idler:Landroid/app/Instrumentation$Idler;
    iget-object v1, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    invoke-virtual {v1, v0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 395
    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/app/Instrumentation$EmptyRunnable;

    invoke-direct {v2, v3}, Landroid/app/Instrumentation$EmptyRunnable;-><init>(Landroid/app/Instrumentation$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 396
    invoke-virtual {v0}, Landroid/app/Instrumentation$Idler;->waitForIdle()V

    .line 397
    return-void
.end method

.method public waitForMonitor(Landroid/app/Instrumentation$ActivityMonitor;)Landroid/app/Activity;
    .locals 3
    .parameter "monitor"

    .prologue
    .line 757
    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityMonitor;->waitForActivity()Landroid/app/Activity;

    move-result-object v0

    .line 758
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 759
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 760
    monitor-exit v2

    .line 761
    return-object v0

    .line 760
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public waitForMonitorWithTimeout(Landroid/app/Instrumentation$ActivityMonitor;J)Landroid/app/Activity;
    .locals 3
    .parameter "monitor"
    .parameter "timeOut"

    .prologue
    .line 776
    invoke-virtual {p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;->waitForActivityWithTimeout(J)Landroid/app/Activity;

    move-result-object v0

    .line 777
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 778
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 779
    monitor-exit v2

    .line 780
    return-object v0

    .line 779
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
