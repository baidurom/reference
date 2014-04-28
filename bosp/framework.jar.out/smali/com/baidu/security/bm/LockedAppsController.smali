.class Lcom/baidu/security/bm/LockedAppsController;
.super Ljava/lang/Object;
.source "LockedAppsController.java"


# static fields
.field private static final LOCKEDLIST_BACKUP_FILE_PATH:Ljava/lang/String; = "/data/system/sysopt_lockedlist_backup"

.field private static final LOCKEDLIST_FILE_PATH:Ljava/lang/String; = "/data/system/sysopt_lockedlist"

.field private static final RECORD_SPLIT:Ljava/lang/String; = "\r\n"

.field private static final SHOW_LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "LockedAppsController"

.field private static volatile mLockedAppList:Ljava/util/HashSet;
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
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/security/bm/LockedAppsController;->mLockedAppList:Ljava/util/HashSet;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLockedApps(Ljava/util/ArrayList;)V
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
    .line 163
    .local p0, packageNameArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 172
    .local v3, newList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v0, Lcom/baidu/security/bm/LockedAppsController;->mLockedAppList:Ljava/util/HashSet;

    .line 173
    .local v0, appsList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 174
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

    .line 175
    .local v2, item:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 178
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

    .line 179
    .local v4, pkgName:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 182
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 183
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 190
    .end local v4           #pkgName:Ljava/lang/String;
    :cond_4
    sput-object v3, Lcom/baidu/security/bm/LockedAppsController;->mLockedAppList:Ljava/util/HashSet;

    .line 191
    invoke-static {v3}, Lcom/baidu/security/bm/LockedAppsController;->writeLockedAppsListFileSynced(Ljava/util/HashSet;)Z

    goto :goto_0
.end method

.method public static getLockedAppsListForReading()Ljava/util/HashSet;
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
    .line 35
    sget-object v0, Lcom/baidu/security/bm/LockedAppsController;->mLockedAppList:Ljava/util/HashSet;

    return-object v0
.end method

.method private static getLockedAppsListForWriting()Ljava/util/HashSet;
    .locals 5
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
    .line 45
    sget-object v1, Lcom/baidu/security/bm/LockedAppsController;->mLockedAppList:Ljava/util/HashSet;

    .line 46
    .local v1, currentList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 47
    .local v0, copyedList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 48
    .local v2, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 50
    .local v3, pkgName:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    .end local v3           #pkgName:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static loadLockedAppsList()Z
    .locals 13

    .prologue
    .line 107
    sget-object v10, Lcom/baidu/security/bm/LockedAppsController;->mLockedAppList:Ljava/util/HashSet;

    if-nez v10, :cond_0

    .line 108
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    sput-object v10, Lcom/baidu/security/bm/LockedAppsController;->mLockedAppList:Ljava/util/HashSet;

    .line 111
    :cond_0
    const/4 v9, 0x0

    .line 112
    .local v9, recordfile:Ljava/io/File;
    new-instance v7, Ljava/io/File;

    const-string v10, "/data/system/sysopt_lockedlist"

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v7, lockedAppListFile:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v10, "/data/system/sysopt_lockedlist_backup"

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v6, lockedAppListBackupFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 115
    move-object v9, v6

    .line 119
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 123
    const-string v10, "LockedAppsController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cleaning up locked applications list normal file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 128
    :cond_1
    if-nez v9, :cond_2

    .line 129
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 130
    move-object v9, v7

    .line 135
    :cond_2
    :goto_0
    if-eqz v9, :cond_5

    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, allData:Ljava/lang/String;
    const/4 v10, 0x0

    const/4 v11, 0x0

    :try_start_0
    invoke-static {v9, v10, v11}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 143
    :goto_1
    if-eqz v0, :cond_5

    .line 144
    const-string v10, "\r\n"

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, allRecords:[Ljava/lang/String;
    move-object v2, v1

    .local v2, arr$:[Ljava/lang/String;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_5

    aget-object v8, v2, v4

    .line 149
    .local v8, pkgName:Ljava/lang/String;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 150
    sget-object v10, Lcom/baidu/security/bm/LockedAppsController;->mLockedAppList:Ljava/util/HashSet;

    invoke-virtual {v10, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 132
    .end local v0           #allData:Ljava/lang/String;
    .end local v1           #allRecords:[Ljava/lang/String;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v8           #pkgName:Ljava/lang/String;
    :cond_4
    const-string v10, "LockedAppsController"

    const-string v11, "No common locked applications list file found.\n"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    .restart local v0       #allData:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 140
    .local v3, e:Ljava/io/IOException;
    const/4 v0, 0x0

    .line 141
    const-string v10, "LockedAppsController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "read file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", catch exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 156
    .end local v0           #allData:Ljava/lang/String;
    .end local v3           #e:Ljava/io/IOException;
    :cond_5
    const/4 v10, 0x1

    return v10
.end method

.method public static packageInLockedAppsList(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, retVal:Z
    sget-object v0, Lcom/baidu/security/bm/LockedAppsController;->mLockedAppList:Ljava/util/HashSet;

    .line 93
    .local v0, list:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    const/4 v1, 0x1

    .line 99
    :cond_0
    return v1
.end method

.method public static removeLockedApps(Ljava/util/ArrayList;)V
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
    .line 199
    .local p0, packageNameArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 204
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 205
    .local v3, newList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v0, Lcom/baidu/security/bm/LockedAppsController;->mLockedAppList:Ljava/util/HashSet;

    .line 206
    .local v0, appsList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 208
    .local v2, item:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 211
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 212
    .local v4, pkgName:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 215
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 216
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 223
    .end local v4           #pkgName:Ljava/lang/String;
    :cond_3
    sput-object v3, Lcom/baidu/security/bm/LockedAppsController;->mLockedAppList:Ljava/util/HashSet;

    .line 224
    invoke-static {v3}, Lcom/baidu/security/bm/LockedAppsController;->writeLockedAppsListFileSynced(Ljava/util/HashSet;)Z

    goto :goto_0
.end method

.method private static setLockedAppsListSafely(Ljava/util/HashSet;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, list:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 66
    :cond_0
    sget-object v3, Lcom/baidu/security/bm/LockedAppsController;->mLockedAppList:Ljava/util/HashSet;

    if-eq p0, v3, :cond_1

    .line 67
    sput-object p0, Lcom/baidu/security/bm/LockedAppsController;->mLockedAppList:Ljava/util/HashSet;

    goto :goto_0

    .line 71
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 72
    .local v1, newList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 73
    .local v0, it:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 75
    .local v2, pkgName:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 77
    .end local v2           #pkgName:Ljava/lang/String;
    :cond_2
    sput-object v1, Lcom/baidu/security/bm/LockedAppsController;->mLockedAppList:Ljava/util/HashSet;

    goto :goto_0
.end method

.method private static writeLockedAppsListFileSynced(Ljava/util/HashSet;)Z
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, newLockedAppsList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 232
    if-nez p0, :cond_0

    move v6, v7

    .line 287
    :goto_0
    return v6

    .line 236
    :cond_0
    const/4 v6, 0x0

    .line 237
    .local v6, retVal:Z
    const/4 v1, 0x0

    .line 238
    .local v1, fileContent:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 239
    .local v3, item:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 243
    if-nez v1, :cond_2

    .line 244
    new-instance v1, Ljava/lang/String;

    .end local v1           #fileContent:Ljava/lang/String;
    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v1       #fileContent:Ljava/lang/String;
    goto :goto_1

    .line 247
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 251
    .end local v3           #item:Ljava/lang/String;
    :cond_3
    if-nez v1, :cond_4

    .line 252
    new-instance v1, Ljava/lang/String;

    .end local v1           #fileContent:Ljava/lang/String;
    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 255
    .restart local v1       #fileContent:Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/io/File;

    const-string v8, "/data/system/sysopt_lockedlist"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .local v5, lockedAppListFile:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v8, "/data/system/sysopt_lockedlist_backup"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v4, lockedAppListBackupFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 262
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5

    .line 263
    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 264
    const-string v8, "LockedAppsController"

    const-string v9, "Unable to backup locked applications list, current changes will be lost"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 265
    goto :goto_0

    .line 268
    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 269
    const-string v7, "LockedAppsController"

    const-string v8, "Preserving older data backup"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_6
    :try_start_0
    const-string v7, "/data/system/sysopt_lockedlist"

    invoke-static {v7, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 276
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 278
    :cond_7
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, e:Ljava/io/IOException;
    const/4 v6, 0x0

    .line 281
    const-string v7, "LockedAppsController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "write file: /data/system/sysopt_lockedlist, catch exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 282
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 283
    .local v0, e:Ljava/lang/RuntimeException;
    const/4 v6, 0x0

    .line 284
    const-string v7, "LockedAppsController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "write file: /data/system/sysopt_lockedlist, catch exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
