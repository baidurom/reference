.class public Lyi/util/Telephony;
.super Ljava/lang/Object;
.source "Telephony.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final setLine1Number(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8
    .parameter "tele"
    .parameter "lineNumber"

    .prologue
    .line 29
    if-eqz p0, :cond_0

    instance-of v4, p0, Lcom/android/internal/telephony/ITelephony;

    if-nez v4, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-static {}, Lyi/util/DeviceManager;->isBmsDevice()Z

    move-result v4

    if-nez v4, :cond_0

    .line 36
    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    move-object v3, v0

    .line 37
    .local v3, phone:Lcom/android/internal/telephony/ITelephony;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 38
    .local v1, clazz:Ljava/lang/Class;
    const-string v4, "setLine1Number"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 39
    .local v2, m1:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 40
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    .end local v1           #clazz:Ljava/lang/Class;
    .end local v2           #m1:Ljava/lang/reflect/Method;
    .end local v3           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
