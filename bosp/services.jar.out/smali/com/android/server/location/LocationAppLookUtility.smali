.class public Lcom/android/server/location/LocationAppLookUtility;
.super Ljava/lang/Object;
.source "LocationAppLookUtility.java"


# static fields
.field private static procList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/location/LocationAppLookUtility;->procList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/LocationAppLookUtility;->mContext:Landroid/content/Context;

    .line 70
    const-string v0, "LocationAppLookUtility"

    iput-object v0, p0, Lcom/android/server/location/LocationAppLookUtility;->TAG:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/android/server/location/LocationAppLookUtility;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method


# virtual methods
.method public getAppName(I)Ljava/lang/String;
    .locals 7
    .parameter "pid"

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, appName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/location/LocationAppLookUtility;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 88
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    sput-object v4, Lcom/android/server/location/LocationAppLookUtility;->procList:Ljava/util/List;

    .line 89
    sget-object v4, Lcom/android/server/location/LocationAppLookUtility;->procList:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 90
    sget-object v4, Lcom/android/server/location/LocationAppLookUtility;->procList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 91
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 93
    .local v3, procInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_0

    .line 94
    iget-object v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 99
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v3           #procInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    if-nez v1, :cond_2

    .line 100
    sget-boolean v4, Lcom/android/server/location/LocationServiceDebug;->DEBUG_LOCATMANAGERSERVICE:Z

    if-eqz v4, :cond_2

    .line 101
    iget-object v4, p0, Lcom/android/server/location/LocationAppLookUtility;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can not get the app name of the pid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_2
    return-object v1
.end method
