.class Lcom/baidu/security/bm/SilentAppsController;
.super Ljava/lang/Object;
.source "SilentAppsController.java"


# static fields
.field private static final SHOW_LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "SilentAppsController"

.field private static volatile mSilentAppsList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/security/bm/SilentAppsController;->mSilentAppsList:Ljava/util/HashSet;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCleanedApps(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, packageNameArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 42
    .local v3, newList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v0, Lcom/baidu/security/bm/SilentAppsController;->mSilentAppsList:Ljava/util/HashSet;

    .line 43
    .local v0, appsList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 44
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 45
    .local v2, item:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 48
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 49
    .local v4, pkgName:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 52
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 53
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 60
    .end local v4           #pkgName:Ljava/lang/String;
    :cond_4
    sput-object v3, Lcom/baidu/security/bm/SilentAppsController;->mSilentAppsList:Ljava/util/HashSet;

    goto :goto_0
.end method

.method public static getSilentAppsForReading()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    sget-object v0, Lcom/baidu/security/bm/SilentAppsController;->mSilentAppsList:Ljava/util/HashSet;

    return-object v0
.end method

.method public static removeCleanedApp(Ljava/lang/String;)V
    .locals 5
    .parameter "pkgName"

    .prologue
    .line 68
    if-nez p0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 73
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 74
    .local v3, newList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v0, Lcom/baidu/security/bm/SilentAppsController;->mSilentAppsList:Ljava/util/HashSet;

    .line 75
    .local v0, appsList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 77
    .local v2, item:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 80
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 81
    invoke-virtual {v3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 87
    :cond_2
    sput-object v3, Lcom/baidu/security/bm/SilentAppsController;->mSilentAppsList:Ljava/util/HashSet;

    goto :goto_0
.end method
