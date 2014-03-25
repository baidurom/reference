.class public Lcom/android/server/am/ActiveServices;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActiveServices$1;,
        Lcom/android/server/am/ActiveServices$ServiceRestarter;,
        Lcom/android/server/am/ActiveServices$ServiceLookupResult;,
        Lcom/android/server/am/ActiveServices$ServiceMap;
    }
.end annotation


# static fields
.field static DEBUG_MU:Z = false

.field static DEBUG_SERVICE:Z = false

.field static DEBUG_SERVICE_EXECUTING:Z = false

#the value of this static final field might be set in the static constructor
.field static final IS_USER_BUILD:Z = false

.field static final MAX_SERVICE_INACTIVITY:I = 0x1b7740

.field static final SERVICE_MIN_RESTART_TIME_BETWEEN:I = 0x2710

.field static final SERVICE_RESET_RUN_DURATION:I = 0xea60

.field static final SERVICE_RESTART_DURATION:I = 0x1388

.field static final SERVICE_RESTART_DURATION_FACTOR:I = 0x4

.field static final SERVICE_TIMEOUT:I = 0x4e20

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final TAG_MU:Ljava/lang/String; = "ActivityManagerServiceMU"


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;

.field final mPendingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mRestartingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mServiceConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceMap:Lcom/android/server/am/ActiveServices$ServiceMap;

.field final mStoppingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_SERVICE:Z

    sput-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    .line 67
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_SERVICE_EXECUTING:Z

    sput-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE_EXECUTING:Z

    .line 68
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_MU:Z

    sput-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_MU:Z

    .line 72
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/am/ActiveServices;->IS_USER_BUILD:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    invoke-direct {v0}, Lcom/android/server/am/ActiveServices$ServiceMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Ljava/util/HashMap;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mStoppingServices:Ljava/util/ArrayList;

    .line 215
    iput-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 216
    return-void
.end method

.method private final bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V
    .locals 12
    .parameter "r"
    .parameter "force"

    .prologue
    .line 1251
    if-nez p2, :cond_1

    iget-boolean v9, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v9, :cond_1

    .line 1375
    :cond_0
    :goto_0
    return-void

    .line 1254
    :cond_1
    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->connections:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 1255
    if-nez p2, :cond_3

    .line 1258
    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->connections:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1259
    .local v8, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1260
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1261
    .local v3, cr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_2

    .line 1262
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ConnectionRecord;

    iget v9, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_0

    .line 1261
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1271
    .end local v3           #cr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v5           #i:I
    .end local v8           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    :cond_3
    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->connections:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1272
    .restart local v8       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1273
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1274
    .local v1, c:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_4

    .line 1275
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    .line 1278
    .local v2, cr:Lcom/android/server/am/ConnectionRecord;
    const/4 v9, 0x1

    iput-boolean v9, v2, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    .line 1280
    :try_start_0
    iget-object v9, v2, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1274
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1281
    :catch_0
    move-exception v4

    .line 1282
    .local v4, e:Ljava/lang/Exception;
    const-string v10, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure disconnecting service "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " to connection "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ConnectionRecord;

    iget-object v9, v9, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v9}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " (in "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ConnectionRecord;

    iget-object v9, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1291
    .end local v1           #c:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v2           #cr:Lcom/android/server/am/ConnectionRecord;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #i:I
    .end local v8           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    :cond_5
    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->bindings:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_8

    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_8

    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v9, :cond_8

    .line 1292
    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->bindings:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1293
    .local v7, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/IntentBindRecord;>;"
    :cond_6
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1294
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/IntentBindRecord;

    .line 1295
    .local v6, ibr:Lcom/android/server/am/IntentBindRecord;
    sget-boolean v9, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v9, :cond_7

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bringing down binding "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": hasBound="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v6, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    :cond_7
    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_6

    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v9, :cond_6

    iget-boolean v9, v6, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    if-eqz v9, :cond_6

    .line 1299
    :try_start_1
    const-string v9, "bring down unbind"

    invoke-direct {p0, p1, v9}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    .line 1300
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 1301
    const/4 v9, 0x0

    iput-boolean v9, v6, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 1302
    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v10, v6, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v10}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-interface {v9, p1, v10}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 1304
    :catch_1
    move-exception v4

    .line 1305
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception when unbinding service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1307
    const/4 v9, 0x1

    invoke-direct {p0, p1, v9}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;Z)V

    goto :goto_4

    .line 1313
    .end local v4           #e:Ljava/lang/Exception;
    .end local v6           #ibr:Lcom/android/server/am/IntentBindRecord;
    .end local v7           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/IntentBindRecord;>;"
    :cond_8
    sget-boolean v9, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v9, :cond_9

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bringing down "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    :cond_9
    iget v10, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_c

    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v9, v9, Lcom/android/server/am/ProcessRecord;->pid:I

    :goto_5
    invoke-static {v10, v11, v9}, Lcom/android/server/am/EventLogTags;->writeAmDestroyService(III)V

    .line 1317
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Lcom/android/server/am/ActiveServices$ServiceMap;

    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget v11, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v9, v10, v11}, Lcom/android/server/am/ActiveServices$ServiceMap;->removeServiceByName(Landroid/content/ComponentName;I)V

    .line 1318
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Lcom/android/server/am/ActiveServices$ServiceMap;

    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    iget v11, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v9, v10, v11}, Lcom/android/server/am/ActiveServices$ServiceMap;->removeServiceByIntent(Landroid/content/Intent$FilterComparison;I)V

    .line 1319
    const/4 v9, 0x0

    iput v9, p1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 1320
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)Z

    .line 1323
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1324
    .local v0, N:I
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_6
    if-ge v5, v0, :cond_d

    .line 1325
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, p1, :cond_b

    .line 1326
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1327
    sget-boolean v9, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v9, :cond_a

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Removed pending: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    :cond_a
    add-int/lit8 v5, v5, -0x1

    .line 1329
    add-int/lit8 v0, v0, -0x1

    .line 1324
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1314
    .end local v0           #N:I
    .end local v5           #i:I
    :cond_c
    const/4 v9, -0x1

    goto :goto_5

    .line 1333
    .restart local v0       #N:I
    .restart local v5       #i:I
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    .line 1334
    const/4 v9, 0x0

    iput-boolean v9, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 1335
    const/4 v9, 0x0

    iput v9, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1336
    const/4 v9, 0x0

    iput-object v9, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 1339
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->clearDeliveredStartsLocked()V

    .line 1340
    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1342
    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_11

    .line 1343
    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v10

    monitor-enter v10

    .line 1344
    :try_start_2
    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked()V

    .line 1345
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1346
    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->services:Ljava/util/HashSet;

    invoke-virtual {v9, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1347
    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v9, :cond_10

    .line 1349
    :try_start_3
    const-string v9, "stop"

    invoke-direct {p0, p1, v9}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    .line 1350
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mStoppingServices:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1351
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 1352
    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v9, p1}, Landroid/app/IApplicationThread;->scheduleStopService(Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1358
    :goto_7
    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1368
    :cond_e
    :goto_8
    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->bindings:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_f

    .line 1369
    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->bindings:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 1372
    :cond_f
    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    instance-of v9, v9, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    if-eqz v9, :cond_0

    .line 1373
    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    check-cast v9, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    goto/16 :goto_0

    .line 1345
    :catchall_0
    move-exception v9

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v9

    .line 1353
    :catch_2
    move-exception v4

    .line 1354
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception when stopping service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1356
    const/4 v9, 0x1

    invoke-direct {p0, p1, v9}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;Z)V

    goto :goto_7

    .line 1360
    .end local v4           #e:Ljava/lang/Exception;
    :cond_10
    sget-boolean v9, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v9, :cond_e

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Removed service that has no process: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1364
    :cond_11
    sget-boolean v9, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v9, :cond_e

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Removed service that is not running: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method private final bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZ)Ljava/lang/String;
    .locals 13
    .parameter "r"
    .parameter "intentFlags"
    .parameter "whileRestarting"

    .prologue
    .line 1027
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_0

    .line 1028
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 1029
    const/4 v11, 0x0

    .line 1129
    :goto_0
    return-object v11

    .line 1032
    :cond_0
    if-nez p3, :cond_1

    iget-wide v2, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 1034
    const/4 v11, 0x0

    goto :goto_0

    .line 1037
    :cond_1
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_2

    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bringing up "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_2
    const/4 v12, 0x0

    .line 1041
    .local v12, restarting:Z
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1042
    const/4 v12, 0x1

    .line 1048
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1052
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to launch app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is stopped"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1057
    .local v11, msg:Ljava/lang/String;
    const-string v0, "ActivityManager"

    invoke-static {v0, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    goto/16 :goto_0

    .line 1064
    .end local v11           #msg:Ljava/lang/String;
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-interface {v0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1072
    :goto_1
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    const/4 v8, 0x1

    .line 1073
    .local v8, isolated:Z
    :goto_2
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 1076
    .local v1, procName:Ljava/lang/String;
    if-nez v8, :cond_8

    .line 1077
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v9

    .line 1078
    .local v9, app:Lcom/android/server/am/ProcessRecord;
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_MU:Z

    if-eqz v0, :cond_5

    .line 1079
    const-string v0, "ActivityManagerServiceMU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bringUpServiceLocked: appInfo.uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_5
    if-eqz v9, :cond_7

    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_7

    .line 1082
    :try_start_1
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;)Z

    .line 1083
    invoke-direct {p0, p1, v9}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1084
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1067
    .end local v1           #procName:Ljava/lang/String;
    .end local v8           #isolated:Z
    .end local v9           #app:Lcom/android/server/am/ProcessRecord;
    :catch_0
    move-exception v10

    .line 1068
    .local v10, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed trying to unstop package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1072
    .end local v10           #e:Ljava/lang/IllegalArgumentException;
    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    .line 1085
    .restart local v1       #procName:Ljava/lang/String;
    .restart local v8       #isolated:Z
    .restart local v9       #app:Lcom/android/server/am/ProcessRecord;
    :catch_1
    move-exception v10

    .line 1086
    .local v10, e:Landroid/os/RemoteException;
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when starting service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1104
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_7
    :goto_3
    if-nez v9, :cond_b

    .line 1105
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x1

    const-string v5, "service"

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    const/4 v7, 0x0

    move v4, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v9

    if-nez v9, :cond_9

    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to launch app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": process is bad"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1111
    .restart local v11       #msg:Ljava/lang/String;
    const-string v0, "ActivityManager"

    invoke-static {v0, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    goto/16 :goto_0

    .line 1099
    .end local v9           #app:Lcom/android/server/am/ProcessRecord;
    .end local v11           #msg:Ljava/lang/String;
    :cond_8
    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .restart local v9       #app:Lcom/android/server/am/ProcessRecord;
    goto :goto_3

    .line 1115
    :cond_9
    if-eqz v8, :cond_a

    .line 1116
    iput-object v9, p1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 1119
    :cond_a
    if-eqz v12, :cond_b

    .line 1120
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->needUpdateLRU:Z

    .line 1125
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1126
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1066
    .end local v1           #procName:Ljava/lang/String;
    .end local v8           #isolated:Z
    .end local v9           #app:Lcom/android/server/am/ProcessRecord;
    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method

.method private final bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V
    .locals 7
    .parameter "r"
    .parameter "why"

    .prologue
    .line 826
    sget-boolean v4, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v4, :cond_5

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>> EXECUTING "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 831
    .local v2, now:J
    iget v4, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-nez v4, :cond_4

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_4

    .line 832
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->executingServices:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 834
    sget-boolean v4, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-nez v4, :cond_1

    sget-boolean v4, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE_EXECUTING:Z

    if-eqz v4, :cond_2

    .line 835
    :cond_1
    const-string v4, "ActivityManager"

    const-string v5, "There is executingService!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 840
    .local v0, msg:Landroid/os/Message;
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 841
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x4e20

    add-long/2addr v5, v2

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 846
    const/4 v4, 0x2

    invoke-static {}, Lcom/android/server/am/ANRManager;->enableANRDebuggingMechanism()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 848
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    const/16 v5, 0x3ea

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 850
    .local v1, msg2:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    const-wide/16 v5, 0x3415

    add-long/2addr v5, v2

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 854
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #msg2:Landroid/os/Message;
    :cond_3
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->executingServices:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 856
    :cond_4
    iget v4, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 857
    iput-wide v2, p1, Lcom/android/server/am/ServiceRecord;->executingStart:J

    .line 858
    return-void

    .line 828
    .end local v2           #now:J
    :cond_5
    sget-boolean v4, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE_EXECUTING:Z

    if-eqz v4, :cond_0

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>> EXECUTING "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private checkServiceRestartMemoryLocked(Lcom/android/server/am/ServiceRecord;)Z
    .locals 12
    .parameter "sr"

    .prologue
    .line 2263
    const/4 v5, 0x0

    .line 2266
    .local v5, isRestart:Z
    iget-object v8, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, i:I
    :goto_0
    if-ltz v4, :cond_2

    .line 2267
    iget-object v8, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 2268
    .local v6, r:Lcom/android/server/am/ProcessRecord;
    iget-object v8, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v8, :cond_1

    iget v8, v6, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/4 v9, 0x6

    if-eq v8, v9, :cond_0

    iget v8, v6, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v9, 0x9

    if-lt v8, v9, :cond_1

    .line 2269
    :cond_0
    const/4 v5, 0x1

    .line 2266
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 2273
    .end local v6           #r:Lcom/android/server/am/ProcessRecord;
    :cond_2
    const-wide/16 v0, 0x0

    .line 2274
    .local v0, avgFreeMem:J
    if-nez v5, :cond_7

    .line 2275
    const/4 v7, 0x0

    .line 2276
    .local v7, slotCount:I
    const/4 v4, 0x0

    :goto_1
    iget-object v8, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->freeMemProfile:[J

    array-length v8, v8

    if-ge v4, v8, :cond_4

    .line 2277
    iget-object v8, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->freeMemProfile:[J

    aget-wide v8, v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    .line 2278
    iget-object v8, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->freeMemProfile:[J

    aget-wide v8, v8, v4

    add-long/2addr v0, v8

    .line 2279
    add-int/lit8 v7, v7, 0x1

    .line 2276
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2282
    :cond_4
    if-eqz v7, :cond_5

    .line 2283
    int-to-long v8, v7

    div-long/2addr v0, v8

    .line 2286
    :cond_5
    iget-object v8, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    sget v9, Lcom/android/server/am/ProcessList;->HIDDEN_APP_MIN_ADJ:I

    invoke-virtual {v8, v9}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v8

    cmp-long v8, v0, v8

    if-gtz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v8

    iget-wide v10, p1, Lcom/android/server/am/ServiceRecord;->memUsage:J

    add-long/2addr v8, v10

    cmp-long v8, v0, v8

    if-lez v8, :cond_9

    .line 2288
    :cond_6
    const/4 v5, 0x1

    .line 2306
    .end local v7           #slotCount:I
    :cond_7
    :goto_2
    if-eqz v5, :cond_8

    .line 2307
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-eqz v8, :cond_b

    .line 2308
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SVC-AccurateRestart: sr="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", free mem="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mem usage="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p1, Lcom/android/server/am/ServiceRecord;->memUsage:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " MIN ADJ level="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    sget v11, Lcom/android/server/am/ProcessList;->HIDDEN_APP_MIN_ADJ:I

    invoke-virtual {v10, v11}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    :goto_3
    const/4 v8, 0x0

    iput-boolean v8, p1, Lcom/android/server/am/ServiceRecord;->killedbyLMK:Z

    .line 2315
    const/4 v8, 0x0

    iput v8, p1, Lcom/android/server/am/ServiceRecord;->noMemCount:I

    .line 2318
    :cond_8
    return v5

    .line 2291
    .restart local v7       #slotCount:I
    :cond_9
    const-wide/16 v2, 0x0

    .line 2292
    .local v2, delayTime:J
    iget v8, p1, Lcom/android/server/am/ServiceRecord;->noMemCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p1, Lcom/android/server/am/ServiceRecord;->noMemCount:I

    .line 2293
    iget v8, p1, Lcom/android/server/am/ServiceRecord;->noMemCount:I

    const/4 v9, 0x6

    if-ge v8, v9, :cond_a

    .line 2294
    iget v8, p1, Lcom/android/server/am/ServiceRecord;->noMemCount:I

    mul-int/lit16 v8, v8, 0x2710

    int-to-long v2, v8

    .line 2300
    :goto_4
    iget-object v8, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v8, v9, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2301
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SVC-DelayRestart: Mem not enough to restart sr="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", wait "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms, free mem="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mem usage="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p1, Lcom/android/server/am/ServiceRecord;->memUsage:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " MIN ADJ level="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    sget v11, Lcom/android/server/am/ProcessList;->HIDDEN_APP_MIN_ADJ:I

    invoke-virtual {v10, v11}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2297
    :cond_a
    const-wide/32 v2, 0xea60

    goto :goto_4

    .line 2312
    .end local v2           #delayTime:J
    .end local v7           #slotCount:I
    :cond_b
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SVC-AccurateRestart: sr="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private collectForceStopServicesLocked(Ljava/lang/String;IZZLjava/util/HashMap;Ljava/util/ArrayList;)Z
    .locals 8
    .parameter "name"
    .parameter "userId"
    .parameter "evenPersistent"
    .parameter "doit"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZZ",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p5, services:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .local p6, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 1612
    const/4 v0, 0x0

    .line 1613
    .local v0, didSomething:Z
    invoke-virtual {p5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 1614
    .local v2, service:Lcom/android/server/am/ServiceRecord;
    if-eqz p1, :cond_1

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_2

    if-nez p3, :cond_2

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v4, v4, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v4, :cond_0

    .line 1616
    :cond_2
    if-nez p4, :cond_4

    move v0, v3

    .line 1629
    .end local v0           #didSomething:Z
    .end local v2           #service:Lcom/android/server/am/ServiceRecord;
    :cond_3
    return v0

    .line 1619
    .restart local v0       #didSomething:Z
    .restart local v2       #service:Lcom/android/server/am/ServiceRecord;
    :cond_4
    const/4 v0, 0x1

    .line 1620
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Force stopping service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_5

    .line 1622
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v3, v4, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 1624
    :cond_5
    iput-object v7, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1625
    iput-object v7, v2, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 1626
    invoke-virtual {p6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ServiceRecord;[Ljava/lang/String;Z)V
    .locals 5
    .parameter "prefix"
    .parameter "fd"
    .parameter "pw"
    .parameter "r"
    .parameter "args"
    .parameter "dumpAll"

    .prologue
    .line 2226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2227
    .local v1, innerPrefix:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 2228
    :try_start_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "SERVICE "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2229
    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2230
    invoke-static {p4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2231
    const-string v3, " pid="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2232
    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_2

    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 2234
    :goto_0
    if-eqz p6, :cond_0

    .line 2235
    invoke-virtual {p4, p3, v1}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2237
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2238
    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_1

    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_1

    .line 2239
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  Client:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2240
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 2242
    :try_start_1
    new-instance v2, Lcom/android/server/am/TransferPipe;

    invoke-direct {v2}, Lcom/android/server/am/TransferPipe;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2244
    .local v2, tp:Lcom/android/server/am/TransferPipe;
    :try_start_2
    iget-object v3, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {v2}, Lcom/android/server/am/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-interface {v3, v4, p4, p5}, Landroid/app/IApplicationThread;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 2245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 2246
    invoke-virtual {v2, p2}, Lcom/android/server/am/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2248
    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/am/TransferPipe;->kill()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2256
    .end local v2           #tp:Lcom/android/server/am/TransferPipe;
    :cond_1
    :goto_1
    return-void

    .line 2233
    :cond_2
    :try_start_4
    const-string v3, "(not running)"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2237
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 2248
    .restart local v2       #tp:Lcom/android/server/am/TransferPipe;
    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v2}, Lcom/android/server/am/TransferPipe;->kill()V

    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2250
    .end local v2           #tp:Lcom/android/server/am/TransferPipe;
    :catch_0
    move-exception v0

    .line 2251
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    Failure while dumping the service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2252
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 2253
    .local v0, e:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    Got a RemoteException while dumping the service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private final findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;
    .locals 2
    .parameter "name"
    .parameter "token"
    .parameter "userId"

    .prologue
    .line 701
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Lcom/android/server/am/ActiveServices$ServiceMap;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/am/ActiveServices$ServiceMap;->getServiceByName(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v0

    .line 702
    .local v0, r:Lcom/android/server/am/ServiceRecord;
    if-ne v0, p2, :cond_0

    .end local v0           #r:Lcom/android/server/am/ServiceRecord;
    :goto_0
    return-object v0

    .restart local v0       #r:Lcom/android/server/am/ServiceRecord;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 9
    .parameter "r"
    .parameter "app"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1144
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_0

    .line 1145
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1147
    :cond_0
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_MU:Z

    if-eqz v0, :cond_1

    .line 1148
    const-string v0, "ActivityManagerServiceMU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "realStartServiceLocked, ServiceRecord.uid = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", ProcessRecord.uid = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :cond_1
    iput-object p2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1151
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iput-wide v0, p1, Lcom/android/server/am/ServiceRecord;->restartTime:J

    .line 1153
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->services:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1154
    const-string v0, "create"

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    .line 1155
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p2, v8}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1157
    const/4 v6, 0x0

    .line 1159
    .local v6, created:Z
    :try_start_0
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0, v1, v3, v5}, Lcom/android/server/am/EventLogTags;->writeAmCreateService(IILjava/lang/String;I)V

    .line 1161
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1162
    :try_start_1
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startLaunchedLocked()V

    .line 1163
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1164
    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->ensurePackageDexOpt(Ljava/lang/String;)V

    .line 1165
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    invoke-interface {v0, p1, v1, v3}, Landroid/app/IApplicationThread;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;)V

    .line 1167
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->postNotification()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1168
    const/4 v6, 0x1

    .line 1170
    if-nez v6, :cond_2

    .line 1171
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->services:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1172
    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    .line 1176
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->requestServiceBindingsLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1181
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1182
    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/ServiceRecord$StartItem;

    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    move-result v3

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/am/ActivityManagerService$NeededUriGrants;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1186
    :cond_3
    invoke-direct {p0, p1, v8}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 1187
    return-void

    .line 1163
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1170
    :catchall_1
    move-exception v0

    if-nez v6, :cond_4

    .line 1171
    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->services:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1172
    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    :cond_4
    throw v0
.end method

.method private final requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;Z)Z
    .locals 5
    .parameter "r"
    .parameter "i"
    .parameter "rebind"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 862
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_1

    .line 880
    :cond_0
    :goto_0
    return v1

    .line 866
    :cond_1
    iget-boolean v3, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    if-eqz v3, :cond_2

    if-eqz p3, :cond_4

    :cond_2
    iget-object v3, p2, Lcom/android/server/am/IntentBindRecord;->apps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 868
    :try_start_0
    const-string v3, "bind"

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    .line 869
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v4, p2, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v4}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-interface {v3, p1, v4, p3}, Landroid/app/IApplicationThread;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 870
    if-nez p3, :cond_3

    .line 871
    const/4 v3, 0x1

    iput-boolean v3, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 873
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p2, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 874
    const/4 v3, 0x0

    iput-boolean v3, p2, Lcom/android/server/am/IntentBindRecord;->doRebind:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move v1, v2

    .line 880
    goto :goto_0

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, e:Landroid/os/RemoteException;
    sget-boolean v2, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v2, :cond_0

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Crashed while binding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final requestServiceBindingsLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 1133
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->bindings:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1134
    .local v0, bindings:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/IntentBindRecord;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/IntentBindRecord;

    .line 1136
    .local v1, i:Lcom/android/server/am/IntentBindRecord;
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1140
    .end local v1           #i:Lcom/android/server/am/IntentBindRecord;
    :cond_1
    return-void
.end method

.method private retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;IIIZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .locals 23
    .parameter "service"
    .parameter "resolvedType"
    .parameter "callingPid"
    .parameter "callingUid"
    .parameter "userId"
    .parameter "createIfNeeded"

    .prologue
    .line 732
    const/16 v19, 0x0

    .line 733
    .local v19, r:Lcom/android/server/am/ServiceRecord;
    sget-boolean v4, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v4, :cond_0

    const-string v4, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "retrieveServiceLocked: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " type="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " callingUid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "service"

    const/4 v10, 0x0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActivityManagerService;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p5

    .line 739
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 740
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Lcom/android/server/am/ActiveServices$ServiceMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    move/from16 v0, p5

    invoke-virtual {v4, v10, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->getServiceByName(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v3

    .line 742
    .end local v19           #r:Lcom/android/server/am/ServiceRecord;
    .local v3, r:Lcom/android/server/am/ServiceRecord;
    :goto_0
    if-nez v3, :cond_1

    .line 743
    new-instance v7, Landroid/content/Intent$FilterComparison;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 744
    .local v7, filter:Landroid/content/Intent$FilterComparison;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Lcom/android/server/am/ActiveServices$ServiceMap;

    move/from16 v0, p5

    invoke-virtual {v4, v7, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->getServiceByIntent(Landroid/content/Intent$FilterComparison;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v3

    .line 746
    .end local v7           #filter:Landroid/content/Intent$FilterComparison;
    :cond_1
    if-nez v3, :cond_7

    .line 748
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/16 v10, 0x400

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-interface {v4, v0, v1, v10, v2}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v20

    .line 752
    .local v20, rInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v20, :cond_2

    move-object/from16 v0, v20

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 754
    .local v8, sInfo:Landroid/content/pm/ServiceInfo;
    :goto_1
    if-nez v8, :cond_3

    .line 755
    const-string v4, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to start service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " U="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": not found"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const/4 v4, 0x0

    .line 822
    .end local v8           #sInfo:Landroid/content/pm/ServiceInfo;
    .end local v20           #rInfo:Landroid/content/pm/ResolveInfo;
    :goto_2
    return-object v4

    .line 752
    .restart local v20       #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 759
    .restart local v8       #sInfo:Landroid/content/pm/ServiceInfo;
    :cond_3
    new-instance v6, Landroid/content/ComponentName;

    iget-object v4, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v4, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    .local v6, name:Landroid/content/ComponentName;
    if-lez p5, :cond_5

    .line 762
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v8, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v11, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget v13, v8, Landroid/content/pm/ServiceInfo;->flags:I

    invoke-virtual {v4, v10, v11, v12, v13}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 764
    const/16 p5, 0x0

    .line 766
    :cond_4
    new-instance v21, Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, v21

    invoke-direct {v0, v8}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 767
    .end local v8           #sInfo:Landroid/content/pm/ServiceInfo;
    .local v21, sInfo:Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v21

    iget-object v10, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v0, p5

    invoke-virtual {v4, v10, v0}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    move-object/from16 v0, v21

    iput-object v4, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v8, v21

    .line 769
    .end local v21           #sInfo:Landroid/content/pm/ServiceInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Lcom/android/server/am/ActiveServices$ServiceMap;

    move/from16 v0, p5

    invoke-virtual {v4, v6, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->getServiceByName(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v19

    .line 770
    .end local v3           #r:Lcom/android/server/am/ServiceRecord;
    .restart local v19       #r:Lcom/android/server/am/ServiceRecord;
    if-nez v19, :cond_b

    if-eqz p6, :cond_b

    .line 771
    :try_start_1
    new-instance v7, Landroid/content/Intent$FilterComparison;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v7, v4}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 773
    .restart local v7       #filter:Landroid/content/Intent$FilterComparison;
    new-instance v9, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v4}, Lcom/android/server/am/ActiveServices$ServiceRestarter;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ActiveServices$1;)V

    .line 774
    .local v9, res:Lcom/android/server/am/ActiveServices$ServiceRestarter;
    const/4 v5, 0x0

    .line 775
    .local v5, ss:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v4}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v22

    .line 776
    .local v22, stats:Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v22
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 777
    :try_start_2
    iget-object v4, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v11, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v5

    .line 780
    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 781
    :try_start_3
    new-instance v3, Lcom/android/server/am/ServiceRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/ServiceRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;Landroid/content/ComponentName;Landroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;Ljava/lang/Runnable;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 782
    .end local v19           #r:Lcom/android/server/am/ServiceRecord;
    .restart local v3       #r:Lcom/android/server/am/ServiceRecord;
    :try_start_4
    invoke-virtual {v9, v3}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    .line 783
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Lcom/android/server/am/ActiveServices$ServiceMap;

    iget-object v10, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-virtual {v4, v6, v10, v3}, Lcom/android/server/am/ActiveServices$ServiceMap;->putServiceByName(Landroid/content/ComponentName;ILcom/android/server/am/ServiceRecord;)V

    .line 784
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Lcom/android/server/am/ActiveServices$ServiceMap;

    iget-object v10, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-virtual {v4, v7, v10, v3}, Lcom/android/server/am/ActiveServices$ServiceMap;->putServiceByIntent(Landroid/content/Intent$FilterComparison;ILcom/android/server/am/ServiceRecord;)V

    .line 787
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 788
    .local v16, N:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_7

    .line 789
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ServiceRecord;

    .line 790
    .local v18, pr:Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v10, :cond_6

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 792
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 793
    add-int/lit8 v17, v17, -0x1

    .line 794
    add-int/lit8 v16, v16, -0x1

    .line 788
    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 780
    .end local v3           #r:Lcom/android/server/am/ServiceRecord;
    .end local v16           #N:I
    .end local v17           #i:I
    .end local v18           #pr:Lcom/android/server/am/ServiceRecord;
    .restart local v19       #r:Lcom/android/server/am/ServiceRecord;
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 798
    .end local v5           #ss:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v7           #filter:Landroid/content/Intent$FilterComparison;
    .end local v9           #res:Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .end local v22           #stats:Lcom/android/internal/os/BatteryStatsImpl;
    :catch_0
    move-exception v4

    move-object/from16 v3, v19

    .line 802
    .end local v6           #name:Landroid/content/ComponentName;
    .end local v19           #r:Lcom/android/server/am/ServiceRecord;
    .end local v20           #rInfo:Landroid/content/pm/ResolveInfo;
    .restart local v3       #r:Lcom/android/server/am/ServiceRecord;
    :cond_7
    :goto_4
    if-eqz v3, :cond_a

    .line 803
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v15, v3, Lcom/android/server/am/ServiceRecord;->exported:Z

    move/from16 v12, p3

    move/from16 v13, p4

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v4

    if-eqz v4, :cond_9

    .line 806
    iget-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->exported:Z

    if-nez v4, :cond_8

    .line 807
    const-string v4, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: Accessing service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " that is not exported from uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    new-instance v4, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "not exported from uid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v10, v11}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 814
    :cond_8
    const-string v4, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: Accessing service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " requires "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    new-instance v4, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const/4 v10, 0x0

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v10, v11}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 820
    :cond_9
    new-instance v4, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3, v10}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 822
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 798
    :catch_1
    move-exception v4

    goto/16 :goto_4

    .end local v3           #r:Lcom/android/server/am/ServiceRecord;
    .restart local v6       #name:Landroid/content/ComponentName;
    .restart local v19       #r:Lcom/android/server/am/ServiceRecord;
    .restart local v20       #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_b
    move-object/from16 v3, v19

    .end local v19           #r:Lcom/android/server/am/ServiceRecord;
    .restart local v3       #r:Lcom/android/server/am/ServiceRecord;
    goto/16 :goto_4

    .end local v3           #r:Lcom/android/server/am/ServiceRecord;
    .end local v6           #name:Landroid/content/ComponentName;
    .end local v20           #rInfo:Landroid/content/pm/ResolveInfo;
    .restart local v19       #r:Lcom/android/server/am/ServiceRecord;
    :cond_c
    move-object/from16 v3, v19

    .end local v19           #r:Lcom/android/server/am/ServiceRecord;
    .restart local v3       #r:Lcom/android/server/am/ServiceRecord;
    goto/16 :goto_0
.end method

.method private final scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z
    .locals 23
    .parameter "r"
    .parameter "allowCancel"

    .prologue
    .line 885
    const/4 v4, 0x0

    .line 887
    .local v4, canceled:Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 889
    .local v10, now:J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x8

    if-nez v17, :cond_f

    .line 891
    const-wide/16 v8, 0x1388

    .line 892
    .local v8, minDuration:J
    const-wide/32 v14, 0xea60

    .line 896
    .local v14, resetTime:J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 897
    .local v3, N:I
    if-lez v3, :cond_6

    .line 898
    add-int/lit8 v7, v3, -0x1

    .local v7, i:I
    :goto_0
    if-ltz v7, :cond_5

    .line 899
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 900
    .local v16, si:Lcom/android/server/am/ServiceRecord$StartItem;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    .line 901
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 898
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 903
    :cond_1
    if-eqz p2, :cond_2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 905
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 906
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    move-wide/from16 v19, v0

    sub-long v5, v17, v19

    .line 907
    .local v5, dur:J
    const-wide/16 v17, 0x2

    mul-long v5, v5, v17

    .line 908
    cmp-long v17, v8, v5

    if-gez v17, :cond_3

    move-wide v8, v5

    .line 909
    :cond_3
    cmp-long v17, v14, v5

    if-gez v17, :cond_0

    move-wide v14, v5

    goto :goto_1

    .line 911
    .end local v5           #dur:J
    :cond_4
    const-string v17, "ActivityManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Canceling start item "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " in service "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const/4 v4, 0x1

    goto :goto_1

    .line 916
    .end local v16           #si:Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 919
    .end local v7           #i:I
    :cond_6
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 920
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-nez v17, :cond_b

    .line 921
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 922
    move-object/from16 v0, p1

    iput-wide v8, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 947
    :cond_7
    :goto_2
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v17, v0

    add-long v17, v17, v10

    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 953
    :cond_8
    const/4 v13, 0x0

    .line 954
    .local v13, repeat:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v7, v17, -0x1

    .restart local v7       #i:I
    :goto_3
    if-ltz v7, :cond_9

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ServiceRecord;

    .line 956
    .local v12, r2:Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, p1

    if-eq v12, v0, :cond_e

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v17, v0

    iget-wide v0, v12, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x2710

    sub-long v19, v19, v21

    cmp-long v17, v17, v19

    if-ltz v17, :cond_e

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v17, v0

    iget-wide v0, v12, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x2710

    add-long v19, v19, v21

    cmp-long v17, v17, v19

    if-gez v17, :cond_e

    .line 960
    iget-wide v0, v12, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x2710

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 961
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v17, v0

    sub-long v17, v17, v10

    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 962
    const/4 v13, 0x1

    .line 966
    .end local v12           #r2:Lcom/android/server/am/ServiceRecord;
    :cond_9
    if-nez v13, :cond_8

    .line 977
    .end local v3           #N:I
    .end local v7           #i:I
    .end local v8           #minDuration:J
    .end local v13           #repeat:Z
    .end local v14           #resetTime:J
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 985
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 986
    const-string v17, "ActivityManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Scheduling restart of crashed service "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " in "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "ms"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const/16 v17, 0x7553

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x2

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 991
    return v4

    .line 929
    .restart local v3       #N:I
    .restart local v8       #minDuration:J
    .restart local v14       #resetTime:J
    :cond_b
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    move-wide/from16 v17, v0

    add-long v17, v17, v14

    cmp-long v17, v10, v17

    if-lez v17, :cond_c

    .line 930
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 931
    move-object/from16 v0, p1

    iput-wide v8, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto/16 :goto_2

    .line 933
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x8

    if-eqz v17, :cond_d

    .line 937
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x2

    div-long v19, v8, v19

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto/16 :goto_2

    .line 939
    :cond_d
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x4

    mul-long v17, v17, v19

    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 940
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-wide/from16 v17, v0

    cmp-long v17, v17, v8

    if-gez v17, :cond_7

    .line 941
    move-object/from16 v0, p1

    iput-wide v8, v0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto/16 :goto_2

    .line 954
    .restart local v7       #i:I
    .restart local v12       #r2:Lcom/android/server/am/ServiceRecord;
    .restart local v13       #repeat:Z
    :cond_e
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_3

    .line 971
    .end local v3           #N:I
    .end local v7           #i:I
    .end local v8           #minDuration:J
    .end local v12           #r2:Lcom/android/server/am/ServiceRecord;
    .end local v13           #repeat:Z
    .end local v14           #resetTime:J
    :cond_f
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 972
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 973
    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 974
    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    goto/16 :goto_4
.end method

.method private final sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;Z)V
    .locals 10
    .parameter "r"
    .parameter "oomAdjusted"

    .prologue
    const/4 v9, 0x1

    .line 1191
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1192
    .local v6, N:I
    if-nez v6, :cond_1

    .line 1244
    :cond_0
    :goto_0
    return-void

    .line 1196
    :cond_1
    :goto_1
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1198
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 1199
    .local v8, si:Lcom/android/server/am/ServiceRecord$StartItem;
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_2

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending arguments to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " args="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :cond_2
    iget-object v0, v8, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    if-nez v0, :cond_3

    if-gt v6, v9, :cond_1

    .line 1208
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    .line 1209
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1210
    iget v0, v8, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    .line 1211
    iget-object v0, v8, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    if-eqz v0, :cond_4

    .line 1212
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v8, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    invoke-virtual {v8}, Lcom/android/server/am/ServiceRecord$StartItem;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionUncheckedFromIntentLocked(Lcom/android/server/am/ActivityManagerService$NeededUriGrants;Lcom/android/server/am/UriPermissionOwner;)V

    .line 1215
    :cond_4
    const-string v0, "start"

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    .line 1216
    if-nez p2, :cond_5

    .line 1217
    const/4 p2, 0x1

    .line 1218
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 1220
    :cond_5
    const/4 v4, 0x0

    .line 1221
    .local v4, flags:I
    iget v0, v8, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    if-le v0, v9, :cond_6

    .line 1222
    or-int/lit8 v4, v4, 0x2

    .line 1224
    :cond_6
    iget v0, v8, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    if-lez v0, :cond_7

    .line 1225
    or-int/lit8 v4, v4, 0x1

    .line 1227
    :cond_7
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-boolean v2, v8, Lcom/android/server/am/ServiceRecord$StartItem;->taskRemoved:Z

    iget v3, v8, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    iget-object v5, v8, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Landroid/app/IApplicationThread;->scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V

    .line 1229
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->IS_USER_BUILD:Z

    if-nez v0, :cond_1

    .line 1230
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SVC-Sent arguments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", args="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 1234
    .end local v4           #flags:I
    .end local v8           #si:Lcom/android/server/am/ServiceRecord$StartItem;
    :catch_0
    move-exception v7

    .line 1237
    .local v7, e:Landroid/os/RemoteException;
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crashed while scheduling start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1239
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 1240
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    const-string v1, "Unexpected exception"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;Z)V
    .locals 3
    .parameter "r"
    .parameter "inStopping"

    .prologue
    .line 1501
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_8

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< DONE EXECUTING "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", inStopping="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :cond_0
    :goto_0
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 1506
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-gtz v0, :cond_7

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_7

    .line 1507
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_1

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nesting at 0 of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1510
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 1511
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE_EXECUTING:Z

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No more executingServices of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1518
    const/4 v0, 0x2

    invoke-static {}, Lcom/android/server/am/ANRManager;->enableANRDebuggingMechanism()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 1520
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    const/16 v1, 0x3ea

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1524
    :cond_4
    if-eqz p2, :cond_6

    .line 1525
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_5

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doneExecuting remove stopping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mStoppingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1528
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->bindings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1530
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 1532
    :cond_7
    return-void

    .line 1504
    :cond_8
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE_EXECUTING:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< DONE EXECUTING "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 3
    .parameter "service"

    .prologue
    const/4 v2, 0x0

    .line 266
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    monitor-enter v1

    .line 267
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked()V

    .line 268
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 270
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 271
    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 272
    return-void

    .line 268
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)Z
    .locals 4
    .parameter "r"

    .prologue
    .line 1013
    iget-wide v0, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1014
    const/4 v0, 0x0

    .line 1019
    :goto_0
    return v0

    .line 1016
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->resetRestartCounter()V

    .line 1017
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1018
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1019
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 4
    .parameter "proc"
    .parameter "oomAdj"

    .prologue
    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, anyForeground:Z
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->services:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 426
    .local v2, sr:Lcom/android/server/am/ServiceRecord;
    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v3, :cond_0

    .line 427
    const/4 v0, 0x1

    .line 431
    .end local v2           #sr:Lcom/android/server/am/ServiceRecord;
    :cond_1
    iget-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    if-eq v0, v3, :cond_2

    .line 432
    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    .line 433
    if-eqz p2, :cond_2

    .line 434
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 437
    :cond_2
    return-void
.end method


# virtual methods
.method attachApplicationLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 9
    .parameter "proc"
    .parameter "processName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1535
    const/4 v1, 0x0

    .line 1537
    .local v1, didSomething:Z
    const/4 v4, 0x0

    .line 1540
    .local v4, needUpdateLRUFromRestart:Z
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 1541
    const/4 v5, 0x0

    .line 1543
    .local v5, sr:Lcom/android/server/am/ServiceRecord;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 1544
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    move-object v5, v0

    .line 1545
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-eq p1, v6, :cond_1

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, v7, :cond_0

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1543
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1551
    :cond_1
    iget-boolean v6, v5, Lcom/android/server/am/ServiceRecord;->needUpdateLRU:Z

    if-eqz v6, :cond_2

    .line 1552
    const/4 v4, 0x1

    .line 1555
    :cond_2
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1556
    add-int/lit8 v3, v3, -0x1

    .line 1557
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;)Z

    .line 1558
    invoke-direct {p0, v5, p1}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1559
    const/4 v1, 0x1

    goto :goto_1

    .line 1561
    :catch_0
    move-exception v2

    .line 1562
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in new application when starting service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1564
    throw v2

    .line 1571
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i:I
    .end local v5           #sr:Lcom/android/server/am/ServiceRecord;
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 1572
    const/4 v5, 0x0

    .line 1573
    .restart local v5       #sr:Lcom/android/server/am/ServiceRecord;
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_7

    .line 1574
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #sr:Lcom/android/server/am/ServiceRecord;
    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 1575
    .restart local v5       #sr:Lcom/android/server/am/ServiceRecord;
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-eq p1, v6, :cond_5

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, v7, :cond_4

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1573
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1579
    :cond_5
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1580
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1582
    if-eqz v4, :cond_6

    .line 1583
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/am/ServiceRecord;->needUpdateLRU:Z

    goto :goto_3

    .line 1585
    :cond_6
    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/ServiceRecord;->needUpdateLRU:Z

    goto :goto_3

    .line 1590
    .end local v3           #i:I
    .end local v5           #sr:Lcom/android/server/am/ServiceRecord;
    :cond_7
    return v1
.end method

.method bindServiceLocked(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I
    .locals 20
    .parameter "caller"
    .parameter "token"
    .parameter "service"
    .parameter "resolvedType"
    .parameter "connection"
    .parameter "flags"
    .parameter "userId"

    .prologue
    .line 442
    sget-boolean v4, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v4, :cond_0

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " conn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p5 .. p5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " flags=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v11

    .line 446
    .local v11, callerApp:Lcom/android/server/am/ProcessRecord;
    if-nez v11, :cond_1

    .line 447
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find app for caller "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") when binding service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 453
    :cond_1
    const/4 v9, 0x0

    .line 454
    .local v9, activity:Lcom/android/server/am/ActivityRecord;
    if-eqz p2, :cond_2

    .line 455
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    .line 456
    if-nez v9, :cond_2

    .line 457
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Binding with unknown activity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v4, 0x0

    .line 582
    :goto_0
    return v4

    .line 462
    :cond_2
    const/4 v13, 0x0

    .line 463
    .local v13, clientLabel:I
    const/4 v12, 0x0

    .line 465
    .local v12, clientIntent:Landroid/app/PendingIntent;
    iget-object v4, v11, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_3

    .line 470
    :try_start_0
    const-string v4, "android.intent.extra.client_intent"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/app/PendingIntent;

    move-object v12, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 474
    :goto_1
    if-eqz v12, :cond_3

    .line 475
    const-string v4, "android.intent.extra.client_label"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 476
    if-eqz v13, :cond_3

    .line 480
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object p3

    .line 485
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;IIIZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v18

    .line 488
    .local v18, res:Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    if-nez v18, :cond_4

    .line 489
    const/4 v4, 0x0

    goto :goto_0

    .line 491
    :cond_4
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-nez v4, :cond_5

    .line 492
    const/4 v4, -0x1

    goto :goto_0

    .line 494
    :cond_5
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    move-object/from16 v19, v0

    .line 496
    .local v19, s:Lcom/android/server/am/ServiceRecord;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 499
    .local v16, origId:J
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 500
    sget-boolean v4, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v4, :cond_6

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BIND SERVICE WHILE RESTART PENDING: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_6
    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v11}, Lcom/android/server/am/ServiceRecord;->retrieveAppBindingLocked(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/AppBindRecord;

    move-result-object v3

    .line 505
    .local v3, b:Lcom/android/server/am/AppBindRecord;
    new-instance v2, Lcom/android/server/am/ConnectionRecord;

    move-object v4, v9

    move-object/from16 v5, p5

    move/from16 v6, p6

    move v7, v13

    move-object v8, v12

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ConnectionRecord;-><init>(Lcom/android/server/am/AppBindRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/IServiceConnection;IILandroid/app/PendingIntent;)V

    .line 508
    .local v2, c:Lcom/android/server/am/ConnectionRecord;
    invoke-interface/range {p5 .. p5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 509
    .local v10, binder:Landroid/os/IBinder;
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Ljava/util/HashMap;

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 510
    .local v14, clist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-nez v14, :cond_7

    .line 511
    new-instance v14, Ljava/util/ArrayList;

    .end local v14           #clist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .restart local v14       #clist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Ljava/util/HashMap;

    invoke-virtual {v4, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    :cond_7
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 516
    if-eqz v9, :cond_9

    .line 517
    iget-object v4, v9, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-nez v4, :cond_8

    .line 518
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v9, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    .line 520
    :cond_8
    iget-object v4, v9, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_9
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 523
    iget v4, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_a

    .line 524
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    .line 526
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Ljava/util/HashMap;

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #clist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    check-cast v14, Ljava/util/ArrayList;

    .line 527
    .restart local v14       #clist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-nez v14, :cond_b

    .line 528
    new-instance v14, Ljava/util/ArrayList;

    .end local v14           #clist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .restart local v14       #clist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Ljava/util/HashMap;

    invoke-virtual {v4, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    :cond_b
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    and-int/lit8 v4, p6, 0x1

    if-eqz v4, :cond_c

    .line 534
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v19

    iput-wide v4, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 535
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZ)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_c

    .line 536
    const/4 v4, 0x0

    .line 579
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 540
    :cond_c
    :try_start_2
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_d

    .line 542
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 545
    :cond_d
    sget-boolean v4, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v4, :cond_e

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bind "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": received="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v6, v6, Lcom/android/server/am/IntentBindRecord;->received:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " apps="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v6, v6, Lcom/android/server/am/IntentBindRecord;->apps:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doRebind="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v6, v6, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_e
    sget-boolean v4, Lcom/android/server/am/ActiveServices;->IS_USER_BUILD:Z

    if-nez v4, :cond_f

    .line 552
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SVC-Binding service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", app="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", activity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_f
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_11

    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v4, v4, Lcom/android/server/am/IntentBindRecord;->received:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_11

    .line 562
    :try_start_3
    iget-object v4, v2, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget-object v6, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v6, v6, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    invoke-interface {v4, v5, v6}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 572
    :goto_2
    :try_start_4
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v4, v4, Lcom/android/server/am/IntentBindRecord;->apps:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_10

    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v4, v4, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    if-eqz v4, :cond_10

    .line 573
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 579
    :cond_10
    :goto_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 582
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 563
    :catch_0
    move-exception v15

    .line 564
    .local v15, e:Ljava/lang/Exception;
    :try_start_5
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure sending service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to connection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v6}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 579
    .end local v2           #c:Lcom/android/server/am/ConnectionRecord;
    .end local v3           #b:Lcom/android/server/am/AppBindRecord;
    .end local v10           #binder:Landroid/os/IBinder;
    .end local v14           #clist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 575
    .restart local v2       #c:Lcom/android/server/am/ConnectionRecord;
    .restart local v3       #b:Lcom/android/server/am/AppBindRecord;
    .restart local v10       #binder:Landroid/os/IBinder;
    .restart local v14       #clist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_11
    :try_start_6
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v4, v4, Lcom/android/server/am/IntentBindRecord;->requested:Z

    if-nez v4, :cond_10

    .line 576
    iget-object v4, v3, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 472
    .end local v2           #c:Lcom/android/server/am/ConnectionRecord;
    .end local v3           #b:Lcom/android/server/am/AppBindRecord;
    .end local v10           #binder:Landroid/os/IBinder;
    .end local v14           #clist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v16           #origId:J
    .end local v18           #res:Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .end local v19           #s:Lcom/android/server/am/ServiceRecord;
    :catch_1
    move-exception v4

    goto/16 :goto_1
.end method

.method cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/content/ComponentName;Landroid/content/Intent;)V
    .locals 10
    .parameter "tr"
    .parameter "component"
    .parameter "baseIntent"

    .prologue
    .line 1660
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1661
    .local v8, services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Lcom/android/server/am/ActiveServices$ServiceMap;

    iget v2, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActiveServices$ServiceMap;->getAllServices(I)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 1662
    .local v1, sr:Lcom/android/server/am/ServiceRecord;
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1663
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1668
    .end local v1           #sr:Lcom/android/server/am/ServiceRecord;
    :cond_1
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_4

    .line 1669
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 1670
    .restart local v1       #sr:Lcom/android/server/am/ServiceRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_2

    .line 1671
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 1672
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": remove task"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1668
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1675
    :cond_3
    iget-object v9, v1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/ServiceRecord$StartItem;

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    move-result v3

    const/4 v5, 0x0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/am/ActivityManagerService$NeededUriGrants;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1677
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_2

    .line 1678
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;Z)V

    goto :goto_2

    .line 1683
    .end local v1           #sr:Lcom/android/server/am/ServiceRecord;
    :cond_4
    return-void
.end method

.method protected dumpService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .locals 21
    .parameter "fd"
    .parameter "pw"
    .parameter "name"
    .parameter "args"
    .parameter "opti"
    .parameter "dumpAll"

    .prologue
    .line 2163
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2165
    .local v18, services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 2166
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getUsersLocked()[I

    move-result-object v20

    .line 2167
    .local v20, users:[I
    const-string v2, "all"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2168
    move-object/from16 v9, v20

    .local v9, arr$:[I
    array-length v14, v9

    .local v14, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    move v13, v12

    .end local v12           #i$:I
    .local v13, i$:I
    :goto_0
    if-ge v13, v14, :cond_8

    aget v19, v9, v13

    .line 2169
    .local v19, user:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Lcom/android/server/am/ActiveServices$ServiceMap;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->getAllServices(I)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v13           #i$:I
    .local v12, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ServiceRecord;

    .line 2170
    .local v17, r1:Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2203
    .end local v9           #arr$:[I
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #len$:I
    .end local v17           #r1:Lcom/android/server/am/ServiceRecord;
    .end local v19           #user:I
    .end local v20           #users:[I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2168
    .restart local v9       #arr$:[I
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v14       #len$:I
    .restart local v19       #user:I
    .restart local v20       #users:[I
    :cond_0
    add-int/lit8 v12, v13, 0x1

    .local v12, i$:I
    move v13, v12

    .end local v12           #i$:I
    .restart local v13       #i$:I
    goto :goto_0

    .line 2174
    .end local v9           #arr$:[I
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v19           #user:I
    :cond_1
    if-eqz p3, :cond_4

    :try_start_1
    invoke-static/range {p3 .. p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 2176
    .local v10, componentName:Landroid/content/ComponentName;
    :goto_2
    const/16 v16, 0x0

    .line 2177
    .local v16, objectId:I
    if-nez v10, :cond_2

    .line 2180
    const/16 v2, 0x10

    :try_start_2
    move-object/from16 v0, p3

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v16

    .line 2181
    const/16 p3, 0x0

    .line 2182
    const/4 v10, 0x0

    .line 2187
    :cond_2
    :goto_3
    move-object/from16 v9, v20

    .restart local v9       #arr$:[I
    :try_start_3
    array-length v14, v9

    .restart local v14       #len$:I
    const/4 v12, 0x0

    .restart local v12       #i$:I
    move v13, v12

    .end local v12           #i$:I
    .restart local v13       #i$:I
    :goto_4
    if-ge v13, v14, :cond_8

    aget v19, v9, v13

    .line 2188
    .restart local v19       #user:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Lcom/android/server/am/ActiveServices$ServiceMap;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->getAllServices(I)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v13           #i$:I
    .local v12, i$:Ljava/util/Iterator;
    :cond_3
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ServiceRecord;

    .line 2189
    .restart local v17       #r1:Lcom/android/server/am/ServiceRecord;
    if-eqz v10, :cond_5

    .line 2190
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2191
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2174
    .end local v9           #arr$:[I
    .end local v10           #componentName:Landroid/content/ComponentName;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #len$:I
    .end local v16           #objectId:I
    .end local v17           #r1:Lcom/android/server/am/ServiceRecord;
    .end local v19           #user:I
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 2193
    .restart local v9       #arr$:[I
    .restart local v10       #componentName:Landroid/content/ComponentName;
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v14       #len$:I
    .restart local v16       #objectId:I
    .restart local v17       #r1:Lcom/android/server/am/ServiceRecord;
    .restart local v19       #user:I
    :cond_5
    if-eqz p3, :cond_6

    .line 2194
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2195
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2197
    :cond_6
    invoke-static/range {v17 .. v17}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    move/from16 v0, v16

    if-ne v2, v0, :cond_3

    .line 2198
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2187
    .end local v17           #r1:Lcom/android/server/am/ServiceRecord;
    :cond_7
    add-int/lit8 v12, v13, 0x1

    .local v12, i$:I
    move v13, v12

    .end local v12           #i$:I
    .restart local v13       #i$:I
    goto :goto_4

    .line 2203
    .end local v10           #componentName:Landroid/content/ComponentName;
    .end local v16           #objectId:I
    .end local v19           #user:I
    :cond_8
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2205
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_9

    .line 2206
    const/4 v2, 0x0

    .line 2217
    :goto_6
    return v2

    .line 2209
    :cond_9
    const/4 v15, 0x0

    .line 2210
    .local v15, needSep:Z
    const/4 v11, 0x0

    .local v11, i:I
    :goto_7
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_b

    .line 2211
    if-eqz v15, :cond_a

    .line 2212
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2214
    :cond_a
    const/4 v15, 0x1

    .line 2215
    const-string v3, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ActiveServices;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ServiceRecord;[Ljava/lang/String;Z)V

    .line 2210
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 2217
    :cond_b
    const/4 v2, 0x1

    goto :goto_6

    .line 2183
    .end local v9           #arr$:[I
    .end local v11           #i:I
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v15           #needSep:Z
    .restart local v10       #componentName:Landroid/content/ComponentName;
    .restart local v16       #objectId:I
    :catch_0
    move-exception v2

    goto/16 :goto_3
.end method

.method dumpServicesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)Z
    .locals 32
    .parameter "fd"
    .parameter "pw"
    .parameter "args"
    .parameter "opti"
    .parameter "dumpAll"
    .parameter "dumpClient"
    .parameter "dumpPackage"

    .prologue
    .line 1962
    const/16 v17, 0x0

    .line 1964
    .local v17, needSep:Z
    new-instance v16, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct/range {v16 .. v16}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .line 1965
    .local v16, matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build([Ljava/lang/String;I)I

    .line 1967
    const-string v27, "ACTIVITY MANAGER SERVICES (dumpsys activity services)"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1969
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/am/ActivityManagerService;->getUsersLocked()[I

    move-result-object v26

    .line 1970
    .local v26, users:[I
    move-object/from16 v5, v26

    .local v5, arr$:[I
    array-length v15, v5

    .local v15, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    move v12, v11

    .end local v11           #i$:I
    .local v12, i$:I
    :goto_0
    if-ge v12, v15, :cond_9

    aget v25, v5, v12

    .line 1971
    .local v25, user:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Lcom/android/server/am/ActiveServices$ServiceMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActiveServices$ServiceMap;->getAllServices(I)Ljava/util/Collection;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->size()I

    move-result v27

    if-lez v27, :cond_c

    .line 1972
    const/16 v20, 0x0

    .line 1973
    .local v20, printed:Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 1974
    .local v18, nowReal:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Lcom/android/server/am/ActiveServices$ServiceMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActiveServices$ServiceMap;->getAllServices(I)Ljava/util/Collection;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 1976
    .local v13, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ServiceRecord;>;"
    const/16 v17, 0x0

    .line 1977
    .end local v12           #i$:I
    :cond_0
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_b

    .line 1978
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/ServiceRecord;

    .line 1979
    .local v22, r:Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v27, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 1982
    if-eqz p7, :cond_1

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 1985
    :cond_1
    if-nez v20, :cond_3

    .line 1986
    if-eqz v25, :cond_2

    .line 1987
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1989
    :cond_2
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "  User "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " active services:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1990
    const/16 v20, 0x1

    .line 1992
    :cond_3
    if-eqz v17, :cond_4

    .line 1993
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1995
    :cond_4
    const-string v27, "  * "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1996
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1997
    if-eqz p5, :cond_6

    .line 1998
    const-string v27, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1999
    const/16 v17, 0x1

    .line 2024
    :cond_5
    if-eqz p6, :cond_0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    .line 2025
    const-string v27, "    Client:"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2026
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2028
    :try_start_1
    new-instance v24, Lcom/android/server/am/TransferPipe;

    invoke-direct/range {v24 .. v24}, Lcom/android/server/am/TransferPipe;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2030
    .local v24, tp:Lcom/android/server/am/TransferPipe;
    :try_start_2
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v27, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v22

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IApplicationThread;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 2032
    const-string v27, "      "

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/am/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 2035
    const-wide/16 v27, 0x7d0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2037
    :try_start_3
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TransferPipe;->kill()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2044
    .end local v24           #tp:Lcom/android/server/am/TransferPipe;
    :goto_2
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 2001
    :cond_6
    :try_start_4
    const-string v27, "    app="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2002
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2003
    const-string v27, "    created="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2004
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/server/am/ServiceRecord;->createTime:J

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    move-wide/from16 v2, v18

    move-object/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2005
    const-string v27, " started="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2006
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    move/from16 v27, v0

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2007
    const-string v27, " connections="

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2008
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->connections:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->size()I

    move-result v27

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2009
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->connections:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->size()I

    move-result v27

    if-lez v27, :cond_5

    .line 2010
    const-string v27, "    Connections:"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2011
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->connections:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 2012
    .local v6, clist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v10, v0, :cond_7

    .line 2013
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ConnectionRecord;

    .line 2014
    .local v7, conn:Lcom/android/server/am/ConnectionRecord;
    const-string v27, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2015
    iget-object v0, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-virtual/range {v27 .. v31}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2017
    const-string v27, " -> "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2018
    iget-object v0, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    .line 2019
    .local v21, proc:Lcom/android/server/am/ProcessRecord;
    if-eqz v21, :cond_8

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v27

    :goto_4
    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2012
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 2019
    :cond_8
    const-string v27, "null"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 2037
    .end local v6           #clist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v7           #conn:Lcom/android/server/am/ConnectionRecord;
    .end local v10           #i:I
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v21           #proc:Lcom/android/server/am/ProcessRecord;
    .restart local v24       #tp:Lcom/android/server/am/TransferPipe;
    :catchall_0
    move-exception v27

    :try_start_5
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TransferPipe;->kill()V

    throw v27
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 2039
    .end local v24           #tp:Lcom/android/server/am/TransferPipe;
    :catch_0
    move-exception v9

    .line 2040
    .local v9, e:Ljava/io/IOException;
    :try_start_6
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "      Failure while dumping the service: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 2050
    .end local v5           #arr$:[I
    .end local v9           #e:Ljava/io/IOException;
    .end local v13           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ServiceRecord;>;"
    .end local v15           #len$:I
    .end local v18           #nowReal:J
    .end local v20           #printed:Z
    .end local v22           #r:Lcom/android/server/am/ServiceRecord;
    .end local v25           #user:I
    .end local v26           #users:[I
    :catch_1
    move-exception v9

    .line 2051
    .local v9, e:Ljava/lang/Exception;
    const-string v27, "ActivityManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Exception in dumpServicesLocked: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    .end local v9           #e:Ljava/lang/Exception;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-lez v27, :cond_12

    .line 2055
    const/16 v20, 0x0

    .line 2056
    .restart local v20       #printed:Z
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v10, v0, :cond_11

    .line 2057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/ServiceRecord;

    .line 2058
    .restart local v22       #r:Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v27, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v27

    if-nez v27, :cond_d

    .line 2056
    :cond_a
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 2041
    .end local v10           #i:I
    .restart local v5       #arr$:[I
    .restart local v13       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ServiceRecord;>;"
    .restart local v15       #len$:I
    .restart local v18       #nowReal:J
    .restart local v25       #user:I
    .restart local v26       #users:[I
    :catch_2
    move-exception v9

    .line 2042
    .local v9, e:Landroid/os/RemoteException;
    :try_start_7
    const-string v27, "      Got a RemoteException while dumping the service"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    .line 2047
    .end local v9           #e:Landroid/os/RemoteException;
    .end local v22           #r:Lcom/android/server/am/ServiceRecord;
    :cond_b
    move/from16 v17, v20

    .line 1970
    .end local v13           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ServiceRecord;>;"
    .end local v18           #nowReal:J
    .end local v20           #printed:Z
    :cond_c
    add-int/lit8 v11, v12, 0x1

    .local v11, i$:I
    move v12, v11

    .end local v11           #i$:I
    .restart local v12       #i$:I
    goto/16 :goto_0

    .line 2061
    .end local v5           #arr$:[I
    .end local v12           #i$:I
    .end local v15           #len$:I
    .end local v25           #user:I
    .end local v26           #users:[I
    .restart local v10       #i:I
    .restart local v20       #printed:Z
    .restart local v22       #r:Lcom/android/server/am/ServiceRecord;
    :cond_d
    if-eqz p7, :cond_e

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 2064
    :cond_e
    if-nez v20, :cond_10

    .line 2065
    if-eqz v17, :cond_f

    const-string v27, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2066
    :cond_f
    const/16 v17, 0x1

    .line 2067
    const-string v27, "  Pending services:"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2068
    const/16 v20, 0x1

    .line 2070
    :cond_10
    const-string v27, "  * Pending "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2071
    const-string v27, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_6

    .line 2073
    .end local v22           #r:Lcom/android/server/am/ServiceRecord;
    :cond_11
    const/16 v17, 0x1

    .line 2076
    .end local v10           #i:I
    .end local v20           #printed:Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-lez v27, :cond_19

    .line 2077
    const/16 v20, 0x0

    .line 2078
    .restart local v20       #printed:Z
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v10, v0, :cond_18

    .line 2079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/ServiceRecord;

    .line 2080
    .restart local v22       #r:Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v27, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v27

    if-nez v27, :cond_14

    .line 2078
    :cond_13
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 2083
    :cond_14
    if-eqz p7, :cond_15

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_13

    .line 2086
    :cond_15
    if-nez v20, :cond_17

    .line 2087
    if-eqz v17, :cond_16

    const-string v27, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2088
    :cond_16
    const/16 v17, 0x1

    .line 2089
    const-string v27, "  Restarting services:"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2090
    const/16 v20, 0x1

    .line 2092
    :cond_17
    const-string v27, "  * Restarting "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2093
    const-string v27, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_8

    .line 2095
    .end local v22           #r:Lcom/android/server/am/ServiceRecord;
    :cond_18
    const/16 v17, 0x1

    .line 2098
    .end local v10           #i:I
    .end local v20           #printed:Z
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mStoppingServices:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-lez v27, :cond_20

    .line 2099
    const/16 v20, 0x0

    .line 2100
    .restart local v20       #printed:Z
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mStoppingServices:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v10, v0, :cond_1f

    .line 2101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mStoppingServices:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/ServiceRecord;

    .line 2102
    .restart local v22       #r:Lcom/android/server/am/ServiceRecord;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v27, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v27

    if-nez v27, :cond_1b

    .line 2100
    :cond_1a
    :goto_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 2105
    :cond_1b
    if-eqz p7, :cond_1c

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1a

    .line 2108
    :cond_1c
    if-nez v20, :cond_1e

    .line 2109
    if-eqz v17, :cond_1d

    const-string v27, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2110
    :cond_1d
    const/16 v17, 0x1

    .line 2111
    const-string v27, "  Stopping services:"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2112
    const/16 v20, 0x1

    .line 2114
    :cond_1e
    const-string v27, "  * Stopping "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2115
    const-string v27, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_a

    .line 2117
    .end local v22           #r:Lcom/android/server/am/ServiceRecord;
    :cond_1f
    const/16 v17, 0x1

    .line 2120
    .end local v10           #i:I
    .end local v20           #printed:Z
    :cond_20
    if-eqz p5, :cond_28

    .line 2121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->size()I

    move-result v27

    if-lez v27, :cond_28

    .line 2122
    const/16 v20, 0x0

    .line 2123
    .restart local v20       #printed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 2125
    .local v14, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    :cond_21
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_27

    .line 2126
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/ArrayList;

    .line 2127
    .local v23, r:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_b
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v10, v0, :cond_21

    .line 2128
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ConnectionRecord;

    .line 2129
    .local v8, cr:Lcom/android/server/am/ConnectionRecord;
    iget-object v0, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    move-object/from16 v27, v0

    iget-object v0, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v28, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v27

    if-nez v27, :cond_23

    .line 2127
    :cond_22
    :goto_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 2132
    :cond_23
    if-eqz p7, :cond_24

    iget-object v0, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v27, v0

    if-eqz v27, :cond_22

    iget-object v0, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p7

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_22

    .line 2136
    :cond_24
    if-nez v20, :cond_26

    .line 2137
    if-eqz v17, :cond_25

    const-string v27, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2138
    :cond_25
    const/16 v17, 0x1

    .line 2139
    const-string v27, "  Connection bindings to services:"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2140
    const/16 v20, 0x1

    .line 2142
    :cond_26
    const-string v27, "  * "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2143
    const-string v27, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Lcom/android/server/am/ConnectionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_c

    .line 2146
    .end local v8           #cr:Lcom/android/server/am/ConnectionRecord;
    .end local v10           #i:I
    .end local v23           #r:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_27
    const/16 v17, 0x1

    .line 2150
    .end local v14           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v20           #printed:Z
    :cond_28
    return v17
.end method

.method forceStopLocked(Ljava/lang/String;IZZ)Z
    .locals 11
    .parameter "name"
    .parameter "userId"
    .parameter "evenPersistent"
    .parameter "doit"

    .prologue
    const/4 v10, 0x1

    .line 1633
    const/4 v8, 0x0

    .line 1634
    .local v8, didSomething:Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1635
    .local v6, services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 1636
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Lcom/android/server/am/ActiveServices$ServiceMap;

    #getter for: Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByNamePerUser:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->access$100(Lcom/android/server/am/ActiveServices$ServiceMap;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_2

    .line 1637
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Lcom/android/server/am/ActiveServices$ServiceMap;

    #getter for: Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByNamePerUser:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->access$100(Lcom/android/server/am/ActiveServices$ServiceMap;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActiveServices;->collectForceStopServicesLocked(Ljava/lang/String;IZZLjava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result v0

    or-int/2addr v8, v0

    .line 1639
    if-nez p4, :cond_0

    if-eqz v8, :cond_0

    move v0, v10

    .line 1656
    :goto_1
    return v0

    .line 1636
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1644
    .end local v9           #i:I
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Lcom/android/server/am/ActiveServices$ServiceMap;

    #getter for: Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByNamePerUser:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->access$100(Lcom/android/server/am/ActiveServices$ServiceMap;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 1646
    .local v5, items:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    if-eqz v5, :cond_2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1647
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActiveServices;->collectForceStopServicesLocked(Ljava/lang/String;IZZLjava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result v8

    .line 1652
    .end local v5           #items:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1653
    .local v7, N:I
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_2
    if-ge v9, v7, :cond_3

    .line 1654
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    invoke-direct {p0, v0, v10}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 1653
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    move v0, v8

    .line 1656
    goto :goto_1
.end method

.method public getRunningServiceControlPanelLocked(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 6
    .parameter "name"

    .prologue
    .line 1906
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1907
    .local v4, userId:I
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Lcom/android/server/am/ActiveServices$ServiceMap;

    invoke-virtual {v5, p1, v4}, Lcom/android/server/am/ActiveServices$ServiceMap;->getServiceByName(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v3

    .line 1908
    .local v3, r:Lcom/android/server/am/ServiceRecord;
    if-eqz v3, :cond_2

    .line 1909
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->connections:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1910
    .local v0, conn:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 1911
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    iget-object v5, v5, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_1

    .line 1912
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    iget-object v5, v5, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    .line 1917
    .end local v0           #conn:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_1
    return-object v5

    .line 1910
    .restart local v0       #conn:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v1       #i:I
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1917
    .end local v0           #conn:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method getRunningServiceInfoLocked(II)Ljava/util/List;
    .locals 13
    .parameter "maxNum"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1851
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1854
    .local v6, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1855
    .local v8, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1857
    .local v1, ident:J
    :try_start_0
    const-string v11, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {v11, v8}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_2

    .line 1860
    iget-object v11, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityManagerService;->getUsersLocked()[I

    move-result-object v10

    .line 1861
    .local v10, users:[I
    const/4 v7, 0x0

    .local v7, ui:I
    :goto_0
    array-length v11, v10

    if-ge v7, v11, :cond_1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v11, p1, :cond_1

    .line 1862
    iget-object v11, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Lcom/android/server/am/ActiveServices$ServiceMap;

    aget v12, v10, v7

    invoke-virtual {v11, v12}, Lcom/android/server/am/ActiveServices$ServiceMap;->getAllServices(I)Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 1863
    iget-object v11, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Lcom/android/server/am/ActiveServices$ServiceMap;

    aget v12, v10, v7

    invoke-virtual {v11, v12}, Lcom/android/server/am/ActiveServices$ServiceMap;->getAllServices(I)Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1865
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ServiceRecord;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v11, p1, :cond_0

    .line 1866
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {p0, v11}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1899
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ServiceRecord;>;"
    .end local v7           #ui:I
    .end local v10           #users:[I
    :catchall_0
    move-exception v11

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .line 1861
    .restart local v7       #ui:I
    .restart local v10       #users:[I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1871
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    :try_start_1
    iget-object v11, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v11, p1, :cond_5

    .line 1872
    iget-object v11, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 1873
    .local v5, r:Lcom/android/server/am/ServiceRecord;
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v3

    .line 1875
    .local v3, info:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-wide v11, v5, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iput-wide v11, v3, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    .line 1876
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1871
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1879
    .end local v0           #i:I
    .end local v3           #info:Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v5           #r:Lcom/android/server/am/ServiceRecord;
    .end local v7           #ui:I
    .end local v10           #users:[I
    :cond_2
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 1880
    .local v9, userId:I
    iget-object v11, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Lcom/android/server/am/ActiveServices$ServiceMap;

    invoke-virtual {v11, v9}, Lcom/android/server/am/ActiveServices$ServiceMap;->getAllServices(I)Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    if-lez v11, :cond_3

    .line 1881
    iget-object v11, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Lcom/android/server/am/ActiveServices$ServiceMap;

    invoke-virtual {v11, v9}, Lcom/android/server/am/ActiveServices$ServiceMap;->getAllServices(I)Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1883
    .restart local v4       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ServiceRecord;>;"
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v11, p1, :cond_3

    .line 1884
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {p0, v11}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1888
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ServiceRecord;>;"
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    iget-object v11, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v11, p1, :cond_5

    .line 1889
    iget-object v11, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 1890
    .restart local v5       #r:Lcom/android/server/am/ServiceRecord;
    iget v11, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    if-ne v11, v9, :cond_4

    .line 1891
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v3

    .line 1893
    .restart local v3       #info:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-wide v11, v5, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iput-wide v11, v3, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    .line 1894
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1888
    .end local v3           #info:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1899
    .end local v5           #r:Lcom/android/server/am/ServiceRecord;
    .end local v9           #userId:I
    :cond_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1902
    return-object v6
.end method

.method final killServicesLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 13
    .parameter "app"
    .parameter "allowRestart"

    .prologue
    .line 1720
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 1721
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1722
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1723
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ConnectionRecord;

    .line 1724
    .local v7, r:Lcom/android/server/am/ConnectionRecord;
    const/4 v9, 0x0

    invoke-virtual {p0, v7, p1, v9}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .line 1727
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v7           #r:Lcom/android/server/am/ConnectionRecord;
    :cond_0
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    .line 1729
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->services:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    if-eqz v9, :cond_a

    .line 1732
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->services:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1733
    .local v6, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ServiceRecord;>;"
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1734
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ServiceRecord;

    .line 1735
    .local v8, sr:Lcom/android/server/am/ServiceRecord;
    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v10

    monitor-enter v10

    .line 1736
    :try_start_0
    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked()V

    .line 1737
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1739
    iget-wide v9, p1, Lcom/android/server/am/ProcessRecord;->lruWeight:J

    iput-wide v9, v8, Lcom/android/server/am/ServiceRecord;->lruWeight:J

    .line 1740
    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/server/am/ServiceRecord;->needUpdateLRU:Z

    .line 1742
    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1743
    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 1744
    const/4 v9, 0x0

    iput v9, v8, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 1745
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mStoppingServices:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1746
    sget-boolean v9, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v9, :cond_2

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "killServices remove stopping "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    :cond_2
    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->bindings:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_4

    const/4 v3, 0x1

    .line 1750
    .local v3, hasClients:Z
    :goto_2
    if-eqz v3, :cond_5

    .line 1751
    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->bindings:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1753
    .local v1, bindings:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/IntentBindRecord;>;"
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1754
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IntentBindRecord;

    .line 1755
    .local v0, b:Lcom/android/server/am/IntentBindRecord;
    sget-boolean v9, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v9, :cond_3

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Killing binding "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": shouldUnbind="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v0, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    :cond_3
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 1758
    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    iput-boolean v9, v0, Lcom/android/server/am/IntentBindRecord;->received:Z

    iput-boolean v9, v0, Lcom/android/server/am/IntentBindRecord;->requested:Z

    goto :goto_3

    .line 1737
    .end local v0           #b:Lcom/android/server/am/IntentBindRecord;
    .end local v1           #bindings:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/IntentBindRecord;>;"
    .end local v3           #hasClients:Z
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 1749
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 1762
    .restart local v3       #hasClients:Z
    :cond_5
    iget v9, v8, Lcom/android/server/am/ServiceRecord;->crashCount:I

    const/4 v10, 0x2

    if-lt v9, v10, :cond_6

    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_6

    .line 1764
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Service crashed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " times, stopping: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    const/16 v9, 0x7552

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v8, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, v8, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget-object v12, v8, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    iget v12, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1768
    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    goto/16 :goto_1

    .line 1769
    :cond_6
    if-nez p2, :cond_7

    .line 1770
    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    goto/16 :goto_1

    .line 1772
    :cond_7
    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    move-result v2

    .line 1777
    .local v2, canceled:Z
    iget-boolean v9, v8, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v9, :cond_1

    iget-boolean v9, v8, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    if-nez v9, :cond_8

    if-eqz v2, :cond_1

    .line 1778
    :cond_8
    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 1779
    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 1780
    if-nez v3, :cond_1

    .line 1782
    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    goto/16 :goto_1

    .line 1789
    .end local v2           #canceled:Z
    .end local v3           #hasClients:Z
    .end local v8           #sr:Lcom/android/server/am/ServiceRecord;
    :cond_9
    if-nez p2, :cond_a

    .line 1790
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->services:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    .line 1795
    .end local v6           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ServiceRecord;>;"
    :cond_a
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mStoppingServices:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1796
    .local v4, i:I
    :cond_b
    :goto_4
    if-lez v4, :cond_c

    .line 1797
    add-int/lit8 v4, v4, -0x1

    .line 1798
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mStoppingServices:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ServiceRecord;

    .line 1799
    .restart local v8       #sr:Lcom/android/server/am/ServiceRecord;
    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v9, p1, :cond_b

    .line 1800
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mStoppingServices:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1801
    sget-boolean v9, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v9, :cond_b

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "killServices remove stopping "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1805
    .end local v8           #sr:Lcom/android/server/am/ServiceRecord;
    :cond_c
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->executingServices:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    .line 1806
    return-void
.end method

.method makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;
    .locals 7
    .parameter "r"

    .prologue
    .line 1809
    new-instance v4, Landroid/app/ActivityManager$RunningServiceInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$RunningServiceInfo;-><init>()V

    .line 1811
    .local v4, info:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iput-object v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 1812
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_0

    .line 1813
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    .line 1815
    :cond_0
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    .line 1816
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iput-object v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    .line 1817
    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    iput-boolean v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    .line 1818
    iget-wide v5, p1, Lcom/android/server/am/ServiceRecord;->createTime:J

    iput-wide v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    .line 1819
    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    iput-boolean v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    .line 1820
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->connections:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientCount:I

    .line 1821
    iget v5, p1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->crashCount:I

    .line 1822
    iget-wide v5, p1, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iput-wide v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->lastActivityTime:J

    .line 1823
    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v5, :cond_1

    .line 1824
    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 1826
    :cond_1
    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v5, :cond_2

    .line 1827
    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 1829
    :cond_2
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_3

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v5, v6, :cond_3

    .line 1830
    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 1832
    :cond_3
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_4

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v5, v5, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v5, :cond_4

    .line 1833
    iget v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 1836
    :cond_4
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->connections:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1837
    .local v1, connl:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 1838
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 1839
    .local v0, conn:Lcom/android/server/am/ConnectionRecord;
    iget v5, v0, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    if-eqz v5, :cond_7

    .line 1840
    iget-object v5, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    .line 1841
    iget v5, v0, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    iput v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    .line 1846
    .end local v0           #conn:Lcom/android/server/am/ConnectionRecord;
    .end local v1           #connl:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v2           #i:I
    :cond_6
    return-object v4

    .line 1837
    .restart local v0       #conn:Lcom/android/server/am/ConnectionRecord;
    .restart local v1       #connl:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v2       #i:I
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method peekServiceLocked(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 10
    .parameter "service"
    .parameter "resolvedType"

    .prologue
    .line 313
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;IIIZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v8

    .line 317
    .local v8, r:Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    const/4 v9, 0x0

    .line 318
    .local v9, ret:Landroid/os/IBinder;
    if-eqz v8, :cond_1

    .line 320
    iget-object v0, v8, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: Accessing service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_0
    iget-object v0, v8, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->bindings:Ljava/util/HashMap;

    iget-object v1, v8, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/IntentBindRecord;

    .line 328
    .local v7, ib:Lcom/android/server/am/IntentBindRecord;
    if-eqz v7, :cond_1

    .line 329
    iget-object v9, v7, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 333
    .end local v7           #ib:Lcom/android/server/am/IntentBindRecord;
    :cond_1
    return-object v9
.end method

.method final performServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1010
    :goto_0
    return-void

    .line 1009
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZ)Ljava/lang/String;

    goto :goto_0
.end method

.method processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 5
    .parameter "proc"

    .prologue
    .line 1594
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1595
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 1596
    .local v1, sr:Lcom/android/server/am/ServiceRecord;
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p1, :cond_2

    .line 1599
    :cond_1
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Forcing bringing down service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 1601
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1602
    add-int/lit8 v0, v0, -0x1

    .line 1603
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 1594
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1606
    .end local v1           #sr:Lcom/android/server/am/ServiceRecord;
    :cond_3
    return-void
.end method

.method publishServiceLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 12
    .parameter "r"
    .parameter "intent"
    .parameter "service"

    .prologue
    .line 586
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 588
    .local v7, origId:J
    :try_start_0
    sget-boolean v9, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v9, :cond_0

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PUBLISHING "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_0
    if-eqz p1, :cond_8

    .line 591
    new-instance v4, Landroid/content/Intent$FilterComparison;

    invoke-direct {v4, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 593
    .local v4, filter:Landroid/content/Intent$FilterComparison;
    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->bindings:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IntentBindRecord;

    .line 594
    .local v0, b:Lcom/android/server/am/IntentBindRecord;
    if-eqz v0, :cond_7

    iget-boolean v9, v0, Lcom/android/server/am/IntentBindRecord;->received:Z

    if-nez v9, :cond_7

    .line 595
    iput-object p3, v0, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 596
    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 597
    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/android/server/am/IntentBindRecord;->received:Z

    .line 598
    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->connections:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_7

    .line 599
    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->connections:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 601
    .local v6, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 602
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 603
    .local v2, clist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_1

    .line 604
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    .line 605
    .local v1, c:Lcom/android/server/am/ConnectionRecord;
    iget-object v9, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v9, v9, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v4, v9}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 606
    sget-boolean v9, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v9, :cond_2

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Not publishing to: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_2
    sget-boolean v9, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v9, :cond_3

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bound intent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v11, v11, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_3
    sget-boolean v9, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v9, :cond_4

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Published intent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 614
    :cond_5
    sget-boolean v9, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v9, :cond_6

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Publishing to: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    :cond_6
    :try_start_1
    iget-object v9, v1, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v10, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-interface {v9, v10, p3}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 617
    :catch_0
    move-exception v3

    .line 618
    .local v3, e:Ljava/lang/Exception;
    :try_start_2
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure sending service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to connection "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v11}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 630
    .end local v0           #b:Lcom/android/server/am/IntentBindRecord;
    .end local v1           #c:Lcom/android/server/am/ConnectionRecord;
    .end local v2           #clist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #filter:Landroid/content/Intent$FilterComparison;
    .end local v5           #i:I
    .end local v6           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    :catchall_0
    move-exception v9

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 627
    .restart local v0       #b:Lcom/android/server/am/IntentBindRecord;
    .restart local v4       #filter:Landroid/content/Intent$FilterComparison;
    :cond_7
    :try_start_3
    iget-object v9, p0, Lcom/android/server/am/ActiveServices;->mStoppingServices:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    invoke-direct {p0, p1, v9}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 630
    .end local v0           #b:Lcom/android/server/am/IntentBindRecord;
    .end local v4           #filter:Landroid/content/Intent$FilterComparison;
    :cond_8
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 632
    return-void
.end method

.method removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 9
    .parameter "c"
    .parameter "skipApp"
    .parameter "skipAct"

    .prologue
    const/4 v8, 0x0

    .line 1379
    iget-object v5, p1, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1380
    .local v1, binder:Landroid/os/IBinder;
    iget-object v0, p1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 1381
    .local v0, b:Lcom/android/server/am/AppBindRecord;
    iget-object v4, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 1382
    .local v4, s:Lcom/android/server/am/ServiceRecord;
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->connections:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1383
    .local v2, clist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-eqz v2, :cond_0

    .line 1384
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1385
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 1386
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->connections:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    :cond_0
    iget-object v5, v0, Lcom/android/server/am/AppBindRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1390
    iget-object v5, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_1

    iget-object v5, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    if-eq v5, p3, :cond_1

    .line 1391
    iget-object v5, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v5, :cond_1

    .line 1392
    iget-object v5, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1395
    :cond_1
    iget-object v5, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eq v5, p2, :cond_2

    .line 1396
    iget-object v5, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1397
    iget v5, p1, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_2

    .line 1398
    iget-object v5, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->updateHasAboveClientLocked()V

    .line 1401
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #clist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    check-cast v2, Ljava/util/ArrayList;

    .line 1402
    .restart local v2       #clist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-eqz v2, :cond_3

    .line 1403
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1404
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 1405
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    :cond_3
    iget-object v5, v0, Lcom/android/server/am/AppBindRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 1410
    iget-object v5, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v5, v5, Lcom/android/server/am/IntentBindRecord;->apps:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    :cond_4
    iget-boolean v5, p1, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-nez v5, :cond_7

    .line 1414
    sget-boolean v5, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v5, :cond_5

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Disconnecting binding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": shouldUnbind="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v7, v7, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    :cond_5
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_6

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_6

    iget-object v5, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v5, v5, Lcom/android/server/am/IntentBindRecord;->apps:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v5, v5, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    if-eqz v5, :cond_6

    .line 1419
    :try_start_0
    const-string v5, "unbind"

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    .line 1420
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 1421
    iget-object v5, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 1424
    iget-object v5, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    .line 1425
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v6, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v6, v6, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v6}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1432
    :cond_6
    :goto_0
    iget v5, p1, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7

    .line 1433
    invoke-direct {p0, v4, v8}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 1436
    :cond_7
    return-void

    .line 1426
    :catch_0
    move-exception v3

    .line 1427
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception when unbinding service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1428
    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;Z)V

    goto :goto_0
.end method

.method serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;III)V
    .locals 7
    .parameter "r"
    .parameter "type"
    .parameter "startId"
    .parameter "res"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1439
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mStoppingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1440
    .local v0, inStopping:Z
    if-eqz p1, :cond_2

    .line 1441
    if-ne p2, v5, :cond_1

    .line 1444
    iput-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 1445
    sparse-switch p4, :sswitch_data_0

    .line 1484
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown service start result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1449
    :sswitch_0
    invoke-virtual {p1, p3, v5}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    .line 1451
    iput-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    .line 1487
    :cond_0
    :goto_0
    if-nez p4, :cond_1

    .line 1488
    iput-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 1491
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1492
    .local v1, origId:J
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 1493
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1498
    .end local v1           #origId:J
    :goto_1
    return-void

    .line 1456
    :sswitch_1
    invoke-virtual {p1, p3, v5}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    .line 1457
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v4

    if-ne v4, p3, :cond_0

    .line 1460
    iput-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    goto :goto_0

    .line 1468
    :sswitch_2
    invoke-virtual {p1, p3, v6}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    move-result-object v3

    .line 1469
    .local v3, si:Lcom/android/server/am/ServiceRecord$StartItem;
    if-eqz v3, :cond_0

    .line 1470
    iput v6, v3, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    .line 1471
    iget v4, v3, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    .line 1473
    iput-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    goto :goto_0

    .line 1480
    .end local v3           #si:Lcom/android/server/am/ServiceRecord$StartItem;
    :sswitch_3
    invoke-virtual {p1, p3, v5}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    goto :goto_0

    .line 1495
    :cond_2
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Done executing unknown service from pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1445
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x3e8 -> :sswitch_3
    .end sparse-switch
.end method

.method serviceTimeout(Lcom/android/server/am/ProcessRecord;)V
    .locals 17
    .parameter "proc"

    .prologue
    .line 1921
    const/4 v6, 0x0

    .line 1923
    .local v6, anrMessage:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 1924
    :try_start_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v1, :cond_2

    .line 1925
    :cond_0
    monitor-exit v2

    .line 1955
    :cond_1
    :goto_0
    return-void

    .line 1927
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v15, 0x4e20

    sub-long v8, v3, v15

    .line 1928
    .local v8, maxTime:J
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1929
    .local v7, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ServiceRecord;>;"
    const/4 v14, 0x0

    .line 1930
    .local v14, timeout:Lcom/android/server/am/ServiceRecord;
    const-wide/16 v11, 0x0

    .line 1931
    .local v11, nextTime:J
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1932
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ServiceRecord;

    .line 1933
    .local v13, sr:Lcom/android/server/am/ServiceRecord;
    iget-wide v3, v13, Lcom/android/server/am/ServiceRecord;->executingStart:J

    cmp-long v1, v3, v8

    if-gez v1, :cond_5

    .line 1934
    move-object v14, v13

    .line 1941
    .end local v13           #sr:Lcom/android/server/am/ServiceRecord;
    :cond_4
    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1942
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout executing service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing service "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1950
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1952
    if-eqz v6, :cond_1

    .line 1953
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V

    goto :goto_0

    .line 1937
    .restart local v13       #sr:Lcom/android/server/am/ServiceRecord;
    :cond_5
    :try_start_1
    iget-wide v3, v13, Lcom/android/server/am/ServiceRecord;->executingStart:J

    cmp-long v1, v3, v11

    if-lez v1, :cond_3

    .line 1938
    iget-wide v11, v13, Lcom/android/server/am/ServiceRecord;->executingStart:J

    goto :goto_1

    .line 1945
    .end local v13           #sr:Lcom/android/server/am/ServiceRecord;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 1947
    .local v10, msg:Landroid/os/Message;
    move-object/from16 v0, p1

    iput-object v0, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1948
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x4e20

    add-long/2addr v3, v11

    invoke-virtual {v1, v10, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_2

    .line 1950
    .end local v7           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ServiceRecord;>;"
    .end local v8           #maxTime:J
    .end local v10           #msg:Landroid/os/Message;
    .end local v11           #nextTime:J
    .end local v14           #timeout:Lcom/android/server/am/ServiceRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setServiceForegroundLocked(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V
    .locals 7
    .parameter "className"
    .parameter "token"
    .parameter "id"
    .parameter "notification"
    .parameter "removeNotification"

    .prologue
    .line 383
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 384
    .local v3, userId:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 386
    .local v0, origId:J
    :try_start_0
    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v2

    .line 387
    .local v2, r:Lcom/android/server/am/ServiceRecord;
    if-eqz v2, :cond_2

    .line 388
    if-eqz p3, :cond_3

    .line 389
    if-nez p4, :cond_0

    .line 390
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "null notification"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    .end local v2           #r:Lcom/android/server/am/ServiceRecord;
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 392
    .restart local v2       #r:Lcom/android/server/am/ServiceRecord;
    :cond_0
    :try_start_1
    iget v4, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eq v4, p3, :cond_1

    .line 393
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    .line 394
    iput p3, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 396
    :cond_1
    iget v4, p4, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p4, Landroid/app/Notification;->flags:I

    .line 397
    iput-object p4, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 398
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 399
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->postNotification()V

    .line 400
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_2

    .line 401
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    :cond_2
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 421
    return-void

    .line 404
    :cond_3
    :try_start_2
    iget-boolean v4, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v4, :cond_4

    .line 405
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 406
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_4

    .line 407
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 408
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 411
    :cond_4
    if-eqz p5, :cond_2

    .line 412
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    .line 413
    const/4 v4, 0x0

    iput v4, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 414
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/ComponentName;
    .locals 11
    .parameter "caller"
    .parameter "service"
    .parameter "resolvedType"
    .parameter "callingPid"
    .parameter "callingUid"
    .parameter "userId"

    .prologue
    .line 221
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " args="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    if-eqz p1, :cond_1

    .line 225
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v7

    .line 226
    .local v7, callerApp:Lcom/android/server/am/ProcessRecord;
    if-nez v7, :cond_1

    .line 227
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find app for caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") when starting service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    .end local v7           #callerApp:Lcom/android/server/am/ProcessRecord;
    :cond_1
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;IIIZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v10

    .line 237
    .local v10, res:Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    if-nez v10, :cond_2

    .line 238
    const/4 v0, 0x0

    .line 262
    :goto_0
    return-object v0

    .line 240
    :cond_2
    iget-object v0, v10, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-nez v0, :cond_4

    .line 241
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "!"

    iget-object v0, v10, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v10, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    :goto_1
    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    const-string v0, "private to package"

    goto :goto_1

    .line 244
    :cond_4
    iget-object v9, v10, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    .line 245
    .local v9, r:Lcom/android/server/am/ServiceRecord;
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v9, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/4 v5, 0x0

    move/from16 v1, p5

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->checkGrantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/am/ActivityManagerService$NeededUriGrants;)Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    move-result-object v5

    .line 247
    .local v5, neededGrants:Lcom/android/server/am/ActivityManagerService$NeededUriGrants;
    invoke-direct {p0, v9}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 248
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_5

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "START SERVICE WHILE RESTART PENDING: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 252
    iget-object v6, v9, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/ServiceRecord$StartItem;

    const/4 v2, 0x0

    invoke-virtual {v9}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    move-result v3

    move-object v1, v9

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/am/ActivityManagerService$NeededUriGrants;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 255
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    monitor-enter v1

    .line 256
    :try_start_0
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startRunningLocked()V

    .line 257
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v9, v0, v1}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZ)Ljava/lang/String;

    move-result-object v8

    .line 259
    .local v8, error:Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 260
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "!!"

    invoke-direct {v0, v1, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 257
    .end local v8           #error:Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 262
    .restart local v8       #error:Ljava/lang/String;
    :cond_6
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    goto/16 :goto_0
.end method

.method stopServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 11
    .parameter "caller"
    .parameter "service"
    .parameter "resolvedType"
    .parameter "userId"

    .prologue
    const/4 v6, 0x0

    .line 276
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v7

    .line 280
    .local v7, callerApp:Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_1

    if-nez v7, :cond_1

    .line 281
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find app for caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") when stopping service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;IIIZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v10

    .line 290
    .local v10, r:Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    if-eqz v10, :cond_3

    .line 291
    iget-object v0, v10, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-eqz v0, :cond_4

    .line 292
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 295
    .local v8, origId:J
    :try_start_0
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->IS_USER_BUILD:Z

    if-nez v0, :cond_2

    .line 296
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SVC-Stopping service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_2
    iget-object v0, v10, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 304
    const/4 v6, 0x1

    .line 309
    .end local v8           #origId:J
    :cond_3
    :goto_0
    return v6

    .line 302
    .restart local v8       #origId:J
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 306
    .end local v8           #origId:J
    :cond_4
    const/4 v6, -0x1

    goto :goto_0
.end method

.method stopServiceTokenLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    .locals 9
    .parameter "className"
    .parameter "token"
    .parameter "startId"

    .prologue
    const/4 v5, 0x0

    .line 338
    sget-boolean v6, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v6, :cond_0

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stopServiceToken: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " startId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-direct {p0, p1, p2, v6}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v3

    .line 341
    .local v3, r:Lcom/android/server/am/ServiceRecord;
    if-eqz v3, :cond_3

    .line 342
    if-ltz p3, :cond_5

    .line 346
    invoke-virtual {v3, p3, v5}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZ)Lcom/android/server/am/ServiceRecord$StartItem;

    move-result-object v4

    .line 347
    .local v4, si:Lcom/android/server/am/ServiceRecord$StartItem;
    if-eqz v4, :cond_2

    .line 348
    :cond_1
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 349
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 350
    .local v0, cur:Lcom/android/server/am/ServiceRecord$StartItem;
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    .line 351
    if-ne v0, v4, :cond_1

    .line 357
    .end local v0           #cur:Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v6

    if-eq v6, p3, :cond_4

    .line 378
    .end local v4           #si:Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_3
    :goto_0
    return v5

    .line 361
    .restart local v4       #si:Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_4
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 362
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stopServiceToken startId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is last, but have "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " remaining args"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .end local v4           #si:Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_5
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v6

    monitor-enter v6

    .line 369
    :try_start_0
    iget-object v7, v3, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked()V

    .line 370
    const/4 v7, 0x0

    iput-boolean v7, v3, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 371
    const/4 v7, 0x0

    iput-boolean v7, v3, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 372
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 374
    .local v1, origId:J
    invoke-direct {p0, v3, v5}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 375
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 376
    const/4 v5, 0x1

    goto :goto_0

    .line 372
    .end local v1           #origId:J
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method unbindFinishedLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Z)V
    .locals 8
    .parameter "r"
    .parameter "intent"
    .parameter "doRebind"

    .prologue
    .line 669
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 671
    .local v3, origId:J
    if-eqz p1, :cond_2

    .line 672
    :try_start_0
    new-instance v1, Landroid/content/Intent$FilterComparison;

    invoke-direct {v1, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 674
    .local v1, filter:Landroid/content/Intent$FilterComparison;
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->bindings:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IntentBindRecord;

    .line 675
    .local v0, b:Lcom/android/server/am/IntentBindRecord;
    sget-boolean v5, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v5, :cond_0

    const-string v6, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unbindFinished in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " at "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": apps="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v0, :cond_3

    iget-object v5, v0, Lcom/android/server/am/IntentBindRecord;->apps:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mStoppingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 680
    .local v2, inStopping:Z
    if-eqz v0, :cond_1

    .line 681
    iget-object v5, v0, Lcom/android/server/am/IntentBindRecord;->apps:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_4

    if-nez v2, :cond_4

    .line 684
    const/4 v5, 0x1

    invoke-direct {p0, p1, v0, v5}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;Z)Z

    .line 692
    :cond_1
    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    .end local v0           #b:Lcom/android/server/am/IntentBindRecord;
    .end local v1           #filter:Landroid/content/Intent$FilterComparison;
    .end local v2           #inStopping:Z
    :cond_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 697
    return-void

    .line 675
    .restart local v0       #b:Lcom/android/server/am/IntentBindRecord;
    .restart local v1       #filter:Landroid/content/Intent$FilterComparison;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 688
    .restart local v2       #inStopping:Z
    :cond_4
    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, v0, Lcom/android/server/am/IntentBindRecord;->doRebind:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 695
    .end local v0           #b:Lcom/android/server/am/IntentBindRecord;
    .end local v1           #filter:Landroid/content/Intent$FilterComparison;
    .end local v2           #inStopping:Z
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method unbindServiceLocked(Landroid/app/IServiceConnection;)Z
    .locals 9
    .parameter "connection"

    .prologue
    const/4 v5, 0x0

    .line 635
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 636
    .local v0, binder:Landroid/os/IBinder;
    sget-boolean v6, Lcom/android/server/am/ActiveServices;->DEBUG_SERVICE:Z

    if-eqz v6, :cond_0

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unbindService: conn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_0
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 638
    .local v1, clist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-nez v1, :cond_1

    .line 639
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unbind failed: could not find connection for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :goto_0
    return v5

    .line 644
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 646
    .local v2, origId:J
    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 647
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    .line 649
    .local v4, r:Lcom/android/server/am/ConnectionRecord;
    sget-boolean v5, Lcom/android/server/am/ActiveServices;->IS_USER_BUILD:Z

    if-nez v5, :cond_3

    .line 650
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SVC-Unbinding service: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", app="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 656
    iget-object v5, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_2

    .line 658
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 662
    .end local v4           #r:Lcom/android/server/am/ConnectionRecord;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 665
    const/4 v5, 0x1

    goto :goto_0
.end method
