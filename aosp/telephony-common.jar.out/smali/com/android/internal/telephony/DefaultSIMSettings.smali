.class public Lcom/android/internal/telephony/DefaultSIMSettings;
.super Ljava/lang/Object;
.source "DefaultSIMSettings.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 75
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DefaultSIMSettings] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public static declared-synchronized onAllIccidQueryComplete(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .parameter "context"
    .parameter "phone"
    .parameter "iccid1"
    .parameter "iccid2"
    .parameter "iccid3"
    .parameter "iccid4"
    .parameter "is3GSwitched"

    .prologue
    .line 60
    const-class v4, Lcom/android/internal/telephony/DefaultSIMSettings;

    monitor-enter v4

    :try_start_0
    const-string v3, "onAllIccidQueryComplete start"

    invoke-static {v3}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :try_start_1
    const-string v3, "com.mediatek.telephony.SimInfoUpdate"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 63
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "updateSimInfoByIccId"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x5

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 65
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 66
    const/4 v3, 0x0

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x3

    aput-object p4, v5, v6

    const/4 v6, 0x4

    aput-object p5, v5, v6

    const/4 v6, 0x5

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "createInstance:got exception for SimInfoUpdate"

    invoke-static {v3}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 60
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
