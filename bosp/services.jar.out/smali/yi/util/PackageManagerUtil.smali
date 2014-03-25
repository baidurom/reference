.class public Lyi/util/PackageManagerUtil;
.super Ljava/lang/Object;
.source "PackageManagerUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getSignature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "manager"
    .parameter "path"

    .prologue
    .line 60
    if-eqz p0, :cond_0

    invoke-static {}, Lyi/util/DeviceManager;->isBmsDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    :cond_0
    const-string v2, ""

    .line 72
    :goto_0
    return-object v2

    .line 64
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 65
    .local v0, clazz:Ljava/lang/Class;
    const-string v2, "getPackageSignature"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 66
    .local v1, m1:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_2

    .line 67
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    .end local v0           #clazz:Ljava/lang/Class;
    .end local v1           #m1:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 72
    :cond_2
    const-string v2, ""

    goto :goto_0
.end method

.method public static final intallPackage(Landroid/content/pm/PackageManager;Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .parameter "manager"
    .parameter "uri"
    .parameter "observer"
    .parameter "flags"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/net/Uri;",
            "Landroid/content/pm/IPackageInstallObserver;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p5, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez p0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-static {}, Lyi/util/DeviceManager;->isBmsDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 48
    .local v0, clazz:Ljava/lang/Class;
    const-string v2, "installPackage"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/net/Uri;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/content/pm/IPackageInstallObserver;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-class v5, Ljava/util/Map;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 49
    .local v1, m1:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 50
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    .end local v0           #clazz:Ljava/lang/Class;
    .end local v1           #m1:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
