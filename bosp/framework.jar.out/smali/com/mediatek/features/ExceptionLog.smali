.class public Lcom/mediatek/features/ExceptionLog;
.super Lcom/mediatek/features/FeatureInterface;
.source "ExceptionLog.java"


# static fields
.field public static final EXCEPTIONLOG_SERVICE:Ljava/lang/String; = "ExceptionLogService"

.field public static FEATURE_PACKAGE:Ljava/lang/String;

.field private static sInstance:Lcom/mediatek/features/ExceptionLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "com.mediatek.exceptionlog.ExceptionLog"

    sput-object v0, Lcom/mediatek/features/ExceptionLog;->FEATURE_PACKAGE:Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/mediatek/features/ExceptionLog;

    invoke-direct {v0}, Lcom/mediatek/features/ExceptionLog;-><init>()V

    sput-object v0, Lcom/mediatek/features/ExceptionLog;->sInstance:Lcom/mediatek/features/ExceptionLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/mediatek/features/ExceptionLog;->FEATURE_PACKAGE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/features/FeatureInterface;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static available()Z
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/mediatek/features/ExceptionLog;->sInstance:Lcom/mediatek/features/ExceptionLog;

    invoke-virtual {v0}, Lcom/mediatek/features/ExceptionLog;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public static getDefault()Lcom/mediatek/features/ExceptionLog;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/mediatek/features/ExceptionLog;->sInstance:Lcom/mediatek/features/ExceptionLog;

    return-object v0
.end method

.method public static getService(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 5
    .parameter "context"

    .prologue
    .line 75
    :try_start_0
    const-string v2, "com.mediatek.server.ExceptionLogService"

    invoke-static {v2}, Lcom/mediatek/features/FeatureInterface;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 76
    .local v0, c:Ljava/lang/Class;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0           #c:Ljava/lang/Class;
    :goto_0
    return-object v2

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static handle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "type"
    .parameter "info"
    .parameter "pid"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 63
    sget-object v0, Lcom/mediatek/features/ExceptionLog;->sInstance:Lcom/mediatek/features/ExceptionLog;

    sget-object v1, Lcom/mediatek/features/ExceptionLog;->sInstance:Lcom/mediatek/features/ExceptionLog;

    const-string v2, "handle"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/features/ExceptionLog;->method(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p0, v3, v5

    aput-object p1, v3, v6

    aput-object p2, v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/features/ExceptionLog;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public static report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "process"
    .parameter "module"
    .parameter "traceback"
    .parameter "detail"
    .parameter "pid"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 56
    sget-object v0, Lcom/mediatek/features/ExceptionLog;->sInstance:Lcom/mediatek/features/ExceptionLog;

    sget-object v1, Lcom/mediatek/features/ExceptionLog;->sInstance:Lcom/mediatek/features/ExceptionLog;

    const-string/jumbo v2, "report"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v8

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v9

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/features/ExceptionLog;->method(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v5

    aput-object p1, v3, v6

    aput-object p2, v3, v7

    aput-object p3, v3, v8

    aput-object p4, v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/features/ExceptionLog;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method
