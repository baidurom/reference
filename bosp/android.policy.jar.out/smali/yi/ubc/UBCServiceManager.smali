.class public Lyi/ubc/UBCServiceManager;
.super Ljava/lang/Object;
.source "UBCServiceManager.java"


# static fields
.field private static final BIGGEST_DATA_SIZE:I = 0x10000

.field private static final BIGGEST_FILE_SIZE:I = 0x100000

.field public static final UBC_PERMISSION:Ljava/lang/String; = "yi.permission.USE_UBC"

.field private static final UBC_SERVICE_NAME:Ljava/lang/String; = "UBCService"

.field private static mCommonInstance:Lyi/ubc/UBCServiceManager;

.field private static sServiceManager:Landroid/os/IServiceManager;


# instance fields
.field private mIUBCService:Lyi/ubc/IUBCService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-object v0, Lyi/ubc/UBCServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    .line 26
    sput-object v0, Lyi/ubc/UBCServiceManager;->mCommonInstance:Lyi/ubc/UBCServiceManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v3, p0, Lyi/ubc/UBCServiceManager;->mIUBCService:Lyi/ubc/IUBCService;

    .line 50
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->getContextObject()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ServiceManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/os/IServiceManager;

    move-result-object v1

    sput-object v1, Lyi/ubc/UBCServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    .line 51
    sget-object v1, Lyi/ubc/UBCServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    if-eqz v1, :cond_0

    .line 53
    :try_start_0
    sget-object v1, Lyi/ubc/UBCServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    const-string v2, "UBCService"

    invoke-interface {v1, v2}, Landroid/os/IServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lyi/ubc/IUBCService$Stub;->asInterface(Landroid/os/IBinder;)Lyi/ubc/IUBCService;

    move-result-object v1

    iput-object v1, p0, Lyi/ubc/UBCServiceManager;->mIUBCService:Lyi/ubc/IUBCService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "UBCServiceManager"

    const-string v2, "cannot get UBC service entrance"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iput-object v3, p0, Lyi/ubc/UBCServiceManager;->mIUBCService:Lyi/ubc/IUBCService;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lyi/ubc/UBCServiceManager;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 29
    if-nez p0, :cond_0

    .line 30
    const-string v1, "UBCServiceManager"

    const-string v2, "no context"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :goto_0
    return-object v0

    .line 34
    :cond_0
    new-instance v1, Lyi/ubc/UBCServiceManager;

    invoke-direct {v1, p0}, Lyi/ubc/UBCServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lyi/ubc/UBCServiceManager;->mCommonInstance:Lyi/ubc/UBCServiceManager;

    .line 35
    sget-object v1, Lyi/ubc/UBCServiceManager;->mCommonInstance:Lyi/ubc/UBCServiceManager;

    iget-object v1, v1, Lyi/ubc/UBCServiceManager;->mIUBCService:Lyi/ubc/IUBCService;

    if-nez v1, :cond_1

    .line 36
    const-string v1, "UBCServiceManager"

    const-string v2, "cannot create UBCServiceManager instance"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    sput-object v0, Lyi/ubc/UBCServiceManager;->mCommonInstance:Lyi/ubc/UBCServiceManager;

    .line 42
    :goto_1
    sget-object v0, Lyi/ubc/UBCServiceManager;->mCommonInstance:Lyi/ubc/UBCServiceManager;

    goto :goto_0

    .line 39
    :cond_1
    const-string v0, "UBCServiceManager"

    const-string v1, "UBCServiceManager is ready for use"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public getConfig(J)Lyi/ubc/UBCConfiguration;
    .locals 7
    .parameter "metricId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lyi/ubc/UBCServiceManager;->mIUBCService:Lyi/ubc/IUBCService;

    invoke-interface {v0, p1, p2}, Lyi/ubc/IUBCService;->getConfig(J)Ljava/util/Map;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 88
    .local v6, map:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    if-nez v6, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lyi/ubc/UBCConfiguration;

    const-string v1, "metricId"

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "eventType"

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "statisticsCycle"

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "samplingProportion"

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lyi/ubc/UBCConfiguration;-><init>(JIII)V

    goto :goto_0
.end method

.method public shouldSubmit(J)Z
    .locals 1
    .parameter "metricId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lyi/ubc/UBCServiceManager;->mIUBCService:Lyi/ubc/IUBCService;

    invoke-interface {v0, p1, p2}, Lyi/ubc/IUBCService;->shouldSubmit(J)Z

    move-result v0

    return v0
.end method

.method public submit(JLandroid/os/ParcelFileDescriptor;)V
    .locals 3
    .parameter "metricId"
    .parameter "pfd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 75
    .local v0, fis:Ljava/io/FileInputStream;
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    const/high16 v2, 0x10

    if-le v1, v2, :cond_0

    .line 76
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 77
    new-instance v1, Ljava/io/IOException;

    const-string v2, "your file size should be less than 1048576 bytes"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_0
    iget-object v1, p0, Lyi/ubc/UBCServiceManager;->mIUBCService:Lyi/ubc/IUBCService;

    invoke-interface {v1, p1, p2, p3}, Lyi/ubc/IUBCService;->submitFile(JLandroid/os/ParcelFileDescriptor;)V

    .line 80
    return-void
.end method

.method public submit(J[B)V
    .locals 2
    .parameter "metricId"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    if-nez p3, :cond_0

    .line 65
    new-instance v0, Ljava/io/IOException;

    const-string v1, "empty data submitted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    array-length v0, p3

    const/high16 v1, 0x1

    if-le v0, v1, :cond_1

    .line 68
    new-instance v0, Ljava/io/IOException;

    const-string v1, "your data should be less than 65536 bytes"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    iget-object v0, p0, Lyi/ubc/UBCServiceManager;->mIUBCService:Lyi/ubc/IUBCService;

    invoke-interface {v0, p1, p2, p3}, Lyi/ubc/IUBCService;->submit(J[B)V

    .line 71
    return-void
.end method
