.class public Lcom/android/phone/SecondaryStorageReflect;
.super Ljava/lang/Object;
.source "SecondaryStorageReflect.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "ResManager[Utility]"

.field private static mGetSecondaryExternalStorageDirectory:Ljava/lang/reflect/Method;

.field private static mGetSecondaryExternalStorageState:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 18
    invoke-static {}, Lcom/android/phone/SecondaryStorageReflect;->initCompatibility()V

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSecondaryExternalStorageDirectory()Ljava/io/File;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v3, 0x0

    .line 58
    .local v3, resultObj:Ljava/lang/Object;
    :try_start_0
    sget-object v4, Lcom/android/phone/SecondaryStorageReflect;->mGetSecondaryExternalStorageDirectory:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 74
    .end local v3           #resultObj:Ljava/lang/Object;
    :goto_0
    check-cast v3, Ljava/io/File;

    return-object v3

    .line 59
    .restart local v3       #resultObj:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 60
    .local v2, ite:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 61
    .local v0, cause:Ljava/lang/Throwable;
    instance-of v4, v0, Ljava/io/IOException;

    if-eqz v4, :cond_0

    .line 62
    check-cast v0, Ljava/io/IOException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 63
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_0
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_1

    .line 64
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 65
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_1
    instance-of v4, v0, Ljava/lang/Error;

    if-eqz v4, :cond_2

    .line 66
    check-cast v0, Ljava/lang/Error;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 68
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 70
    .end local v0           #cause:Ljava/lang/Throwable;
    .end local v2           #ite:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 71
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v4, "ResManager[Utility]"

    const-string v5, "unexpected"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSecondaryExternalStorageState()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v3, 0x0

    .line 36
    .local v3, resultObj:Ljava/lang/Object;
    :try_start_0
    sget-object v4, Lcom/android/phone/SecondaryStorageReflect;->mGetSecondaryExternalStorageState:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 52
    .end local v3           #resultObj:Ljava/lang/Object;
    :goto_0
    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 37
    .restart local v3       #resultObj:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 38
    .local v2, ite:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 39
    .local v0, cause:Ljava/lang/Throwable;
    instance-of v4, v0, Ljava/io/IOException;

    if-eqz v4, :cond_0

    .line 40
    check-cast v0, Ljava/io/IOException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 41
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_0
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_1

    .line 42
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 43
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_1
    instance-of v4, v0, Ljava/lang/Error;

    if-eqz v4, :cond_2

    .line 44
    check-cast v0, Ljava/lang/Error;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 46
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 48
    .end local v0           #cause:Ljava/lang/Throwable;
    .end local v2           #ite:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 49
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v4, "ResManager[Utility]"

    const-string v5, "unexpected"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static initCompatibility()V
    .locals 4

    .prologue
    .line 23
    :try_start_0
    const-class v1, Landroid/os/Environment;

    const-string v2, "getSecondaryExternalStorageDirectory"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/phone/SecondaryStorageReflect;->mGetSecondaryExternalStorageDirectory:Ljava/lang/reflect/Method;

    .line 26
    const-class v1, Landroid/os/Environment;

    const-string v2, "getSecondaryExternalStorageState"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/phone/SecondaryStorageReflect;->mGetSecondaryExternalStorageState:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .local v0, e:Ljava/lang/NoSuchMethodException;
    :goto_0
    return-void

    .line 28
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v0

    .line 29
    .restart local v0       #e:Ljava/lang/NoSuchMethodException;
    const-string v1, "ResManager[Utility]"

    const-string v2, "NoSuchMethodException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
