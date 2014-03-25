.class public final Landroid/app/ANRAppManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/app/ANRAppManager;

.field private static b:Landroid/os/MessageLogger;

.field protected static sMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/MessageLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/ANRAppManager;->sMap:Ljava/util/HashMap;

    .line 29
    sput-object v1, Landroid/app/ANRAppManager;->a:Landroid/app/ANRAppManager;

    .line 30
    sput-object v1, Landroid/app/ANRAppManager;->b:Landroid/os/MessageLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static dumpAllMessageHistory()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 72
    sget-object v0, Landroid/app/ANRAppManager;->b:Landroid/os/MessageLogger;

    if-eqz v0, :cond_1

    .line 73
    const-string v0, "ANRAppManager"

    const-string v1, "!!! It is under multiple instance mode, but you are in singleton usage style. !!!\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :try_start_0
    invoke-static {}, Landroid/app/ANRManagerNative;->getDefault()Landroid/app/IANRManager;

    move-result-object v0

    const-string v1, "!!! It is under multiple instance mode, but you are in singleton usage style. !!!\n"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/app/IANRManager;->informMessageDump(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    const-string v1, "ANRAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "informMessageDump exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_1
    sget-object v0, Landroid/app/ANRAppManager;->sMap:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 82
    const-string v0, "ANRAppManager"

    const-string v1, "!!! DumpAll, sMap is null\n"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :try_start_1
    invoke-static {}, Landroid/app/ANRManagerNative;->getDefault()Landroid/app/IANRManager;

    move-result-object v0

    const-string v1, "!!! DumpAll, sMap is null\n"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/app/IANRManager;->informMessageDump(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 85
    :catch_1
    move-exception v0

    .line 86
    const-string v1, "ANRAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "informMessageDump exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :cond_2
    sget-object v0, Landroid/app/ANRAppManager;->sMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 91
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 93
    const-string v0, "ANRAppManager"

    const-string v3, ">>> DumpByName, Thread name: %s dump is starting <<<\n"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v0, Landroid/app/ANRAppManager;->sMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageLogger;

    const-string v3, ">>> DumpByName, Thread name: %s dump is starting <<<\n"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/MessageLogger;->setInitStr(Ljava/lang/String;)V

    .line 95
    sget-object v0, Landroid/app/ANRAppManager;->sMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageLogger;

    invoke-virtual {v0}, Landroid/os/MessageLogger;->dump()V

    goto :goto_1
.end method

.method public static dumpMessageHistory()V
    .locals 4

    .prologue
    .line 57
    sget-object v0, Landroid/app/ANRAppManager;->b:Landroid/os/MessageLogger;

    if-nez v0, :cond_0

    .line 58
    const-string v0, "ANRAppManager"

    const-string v1, "!!! It is not under singleton mode, U can\'t use it. !!!\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :try_start_0
    invoke-static {}, Landroid/app/ANRManagerNative;->getDefault()Landroid/app/IANRManager;

    move-result-object v0

    const-string v1, "!!! It is not under singleton mode, U can\'t use it. !!!\n"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/app/IANRManager;->informMessageDump(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const-string v1, "ANRAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "informMessageDump exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    :cond_0
    sget-object v0, Landroid/app/ANRAppManager;->b:Landroid/os/MessageLogger;

    invoke-virtual {v0}, Landroid/os/MessageLogger;->dump()V

    goto :goto_0
.end method

.method public static getDefault()Landroid/app/ANRAppManager;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Landroid/app/ANRAppManager;->a:Landroid/app/ANRAppManager;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Landroid/app/ANRAppManager;

    invoke-direct {v0}, Landroid/app/ANRAppManager;-><init>()V

    sput-object v0, Landroid/app/ANRAppManager;->a:Landroid/app/ANRAppManager;

    .line 36
    :cond_0
    sget-object v0, Landroid/app/ANRAppManager;->a:Landroid/app/ANRAppManager;

    return-object v0
.end method


# virtual methods
.method public newMessageLogger(Z)Landroid/util/Printer;
    .locals 1
    .parameter

    .prologue
    .line 41
    new-instance v0, Landroid/os/MessageLogger;

    invoke-direct {v0, p1}, Landroid/os/MessageLogger;-><init>(Z)V

    sput-object v0, Landroid/app/ANRAppManager;->b:Landroid/os/MessageLogger;

    .line 42
    sget-object v0, Landroid/app/ANRAppManager;->b:Landroid/os/MessageLogger;

    return-object v0
.end method

.method public newMessageLogger(ZLjava/lang/String;)Landroid/util/Printer;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 47
    sget-object v0, Landroid/app/ANRAppManager;->sMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Landroid/app/ANRAppManager;->sMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_0
    new-instance v0, Landroid/os/MessageLogger;

    invoke-direct {v0, p1, p2}, Landroid/os/MessageLogger;-><init>(ZLjava/lang/String;)V

    .line 50
    sget-object v1, Landroid/app/ANRAppManager;->sMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-object v0
.end method
