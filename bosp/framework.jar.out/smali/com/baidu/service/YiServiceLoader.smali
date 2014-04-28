.class public Lcom/baidu/service/YiServiceLoader;
.super Ljava/lang/Object;
.source "YiServiceLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/service/YiServiceLoader$1;,
        Lcom/baidu/service/YiServiceLoader$BootCompletedReceiver;
    }
.end annotation


# static fields
.field public static START_SERVICE_FAIL:I

.field public static START_SERVICE_FALSE:I

.field public static START_SERVICE_OK:I

.field public static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "YiServiceLoader"

    sput-object v0, Lcom/baidu/service/YiServiceLoader;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, -0x1

    sput v0, Lcom/baidu/service/YiServiceLoader;->START_SERVICE_FAIL:I

    .line 21
    const/4 v0, 0x0

    sput v0, Lcom/baidu/service/YiServiceLoader;->START_SERVICE_FALSE:I

    .line 22
    const/4 v0, 0x1

    sput v0, Lcom/baidu/service/YiServiceLoader;->START_SERVICE_OK:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/baidu/service/YiServiceLoader;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, bootFiler:Landroid/content/IntentFilter;
    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 48
    new-instance v1, Lcom/baidu/service/YiServiceLoader$BootCompletedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/baidu/service/YiServiceLoader$BootCompletedReceiver;-><init>(Lcom/baidu/service/YiServiceLoader;Lcom/baidu/service/YiServiceLoader$1;)V

    .line 49
    .local v1, bootMonitor:Lcom/baidu/service/YiServiceLoader$BootCompletedReceiver;
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    sget v2, Lcom/baidu/service/YiServiceManager;->START_TYPE_BOOTING:I

    invoke-direct {p0, v2}, Lcom/baidu/service/YiServiceLoader;->startupServices(I)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/service/YiServiceLoader;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/baidu/service/YiServiceLoader;->startupServices(I)V

    return-void
.end method

.method public static main(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    new-instance v0, Lcom/baidu/service/YiServiceLoader;

    invoke-direct {v0, p0}, Lcom/baidu/service/YiServiceLoader;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method private startAService(Ljava/lang/Class;)I
    .locals 6
    .parameter "classObj"

    .prologue
    .line 55
    if-nez p1, :cond_1

    .line 56
    sget v1, Lcom/baidu/service/YiServiceLoader;->START_SERVICE_FAIL:I

    .line 71
    :cond_0
    :goto_0
    return v1

    .line 59
    :cond_1
    sget v1, Lcom/baidu/service/YiServiceLoader;->START_SERVICE_FALSE:I

    .line 61
    .local v1, retVal:I
    :try_start_0
    const-string/jumbo v2, "main"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 62
    .local v0, m:Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 63
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/baidu/service/YiServiceLoader;->mContext:Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget v1, Lcom/baidu/service/YiServiceLoader;->START_SERVICE_OK:I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    .end local v0           #m:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 67
    :catch_1
    move-exception v2

    goto :goto_0

    .line 66
    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method private startupServices(I)V
    .locals 6
    .parameter "type"

    .prologue
    .line 75
    invoke-static {}, Lcom/baidu/service/YiServiceManager$ServiceEnum;->values()[Lcom/baidu/service/YiServiceManager$ServiceEnum;

    move-result-object v0

    .local v0, arr$:[Lcom/baidu/service/YiServiceManager$ServiceEnum;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 76
    .local v3, se:Lcom/baidu/service/YiServiceManager$ServiceEnum;
    invoke-virtual {v3}, Lcom/baidu/service/YiServiceManager$ServiceEnum;->getTargetClass()Ljava/lang/Class;

    move-result-object v4

    .line 77
    .local v4, serviceClass:Ljava/lang/Class;
    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/baidu/service/YiServiceManager$ServiceEnum;->getType()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 78
    invoke-direct {p0, v4}, Lcom/baidu/service/YiServiceLoader;->startAService(Ljava/lang/Class;)I

    .line 75
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v3           #se:Lcom/baidu/service/YiServiceManager$ServiceEnum;
    .end local v4           #serviceClass:Ljava/lang/Class;
    :cond_1
    return-void
.end method
