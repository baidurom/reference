.class Lcom/baidu/security/bm/AutoLaunchController;
.super Ljava/lang/Object;
.source "AutoLaunchController.java"


# static fields
.field static APP_STATE_BITS:I = 0x0

.field private static final BLACKLIST_BACKUP_FILE_PATH:Ljava/lang/String; = "/data/system/bcblist_backup"

.field private static final BLACKLIST_FILE_PATH:Ljava/lang/String; = "/data/system/bcblist"

.field static LAUNCH_STATE_BITS:I = 0x0

.field private static final RECORD_SPLIT:Ljava/lang/String; = "\r\n"

.field private static final SHOW_LOG:Z = false

.field private static SPLIT_CHAR:Ljava/lang/String; = null

.field static SYS_BLACK_KEY:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "AutoLaunchController"

.field static THIRD_WHITE_KEY:Ljava/lang/String;

.field private static volatile mBlackList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mSystemAppBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mThirdAppWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
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
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/security/bm/AutoLaunchController;->mBlackList:Ljava/util/HashMap;

    .line 44
    const/4 v0, 0x1

    sput v0, Lcom/baidu/security/bm/AutoLaunchController;->APP_STATE_BITS:I

    .line 45
    const/4 v0, 0x2

    sput v0, Lcom/baidu/security/bm/AutoLaunchController;->LAUNCH_STATE_BITS:I

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/security/bm/AutoLaunchController;->mSystemAppBlackList:Ljava/util/ArrayList;

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/security/bm/AutoLaunchController;->mThirdAppWhiteList:Ljava/util/ArrayList;

    .line 344
    const-string v0, ";"

    sput-object v0, Lcom/baidu/security/bm/AutoLaunchController;->SPLIT_CHAR:Ljava/lang/String;

    .line 347
    const-string/jumbo v0, "sys_black_app_list_key"

    sput-object v0, Lcom/baidu/security/bm/AutoLaunchController;->SYS_BLACK_KEY:Ljava/lang/String;

    .line 348
    const-string/jumbo v0, "third_white_app_list_key"

    sput-object v0, Lcom/baidu/security/bm/AutoLaunchController;->THIRD_WHITE_KEY:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBlackListForReading()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lcom/baidu/security/bm/AutoLaunchController;->mBlackList:Ljava/util/HashMap;

    return-object v0
.end method

.method private static getBlackListForWriting()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    sget-object v1, Lcom/baidu/security/bm/AutoLaunchController;->mBlackList:Ljava/util/HashMap;

    .line 64
    .local v1, currentList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 65
    .local v0, copyedList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 66
    .local v2, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 68
    .local v3, pkgName:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 70
    .end local v3           #pkgName:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getDefaultEnableState(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "pkg"

    .prologue
    .line 330
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 333
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 334
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {p1, v3}, Lcom/baidu/security/bm/AutoLaunchController;->getDefaultEnableState(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 339
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v3

    .line 335
    :catch_0
    move-exception v1

    .line 337
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 339
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static getDefaultEnableState(Ljava/lang/String;I)Z
    .locals 5
    .parameter "pkg"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 303
    and-int/lit8 v4, p1, 0x1

    if-nez v4, :cond_0

    and-int/lit16 v4, p1, 0x80

    if-eqz v4, :cond_3

    .line 306
    :cond_0
    sget-object v4, Lcom/baidu/security/bm/AutoLaunchController;->mSystemAppBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 307
    .local v1, str:Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 325
    .end local v1           #str:Ljava/lang/String;
    :cond_2
    :goto_0
    return v2

    .line 317
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_3
    sget-object v4, Lcom/baidu/security/bm/AutoLaunchController;->mThirdAppWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 318
    .restart local v1       #str:Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .end local v1           #str:Ljava/lang/String;
    :cond_5
    move v2, v3

    .line 325
    goto :goto_0
.end method

.method static isEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 120
    sget-object v0, Lcom/baidu/security/bm/AutoLaunchController;->mBlackList:Ljava/util/HashMap;

    .line 121
    .local v0, blackList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v2, Lcom/baidu/security/bm/AutoLaunchController;->mBlackList:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 122
    .local v1, state:I
    sget v2, Lcom/baidu/security/bm/AutoLaunchController;->LAUNCH_STATE_BITS:I

    and-int/2addr v2, v1

    sget v3, Lcom/baidu/security/bm/AutoLaunchController;->LAUNCH_STATE_BITS:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static loadBlackList()Z
    .locals 15

    .prologue
    .line 129
    sget-object v12, Lcom/baidu/security/bm/AutoLaunchController;->mBlackList:Ljava/util/HashMap;

    if-nez v12, :cond_0

    .line 130
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    sput-object v12, Lcom/baidu/security/bm/AutoLaunchController;->mBlackList:Ljava/util/HashMap;

    .line 133
    :cond_0
    const/4 v10, 0x0

    .line 134
    .local v10, recordfile:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v12, "/data/system/bcblist"

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .local v4, broadcastBlackListFile:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v12, "/data/system/bcblist_backup"

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v3, blackListBackupFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 137
    move-object v10, v3

    .line 141
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 145
    const-string v12, "AutoLaunchController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cleaning up broadcast blacklist normal file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 150
    :cond_1
    if-nez v10, :cond_2

    .line 151
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 152
    move-object v10, v4

    .line 157
    :cond_2
    :goto_0
    if-eqz v10, :cond_6

    .line 158
    const/4 v0, 0x0

    .line 160
    .local v0, allData:Ljava/lang/String;
    const/4 v12, 0x0

    const/4 v13, 0x0

    :try_start_0
    invoke-static {v10, v12, v13}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 165
    :goto_1
    if-eqz v0, :cond_6

    .line 166
    const-string v12, "\r\n"

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, allRecords:[Ljava/lang/String;
    move-object v2, v1

    .local v2, arr$:[Ljava/lang/String;
    array-length v7, v2

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_2
    if-ge v6, v7, :cond_6

    aget-object v9, v2, v6

    .line 171
    .local v9, pkgName:Ljava/lang/String;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_4

    .line 172
    const/4 v11, 0x0

    .line 173
    .local v11, towPartsOk:Z
    const-string/jumbo v12, "|"

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-lez v12, :cond_3

    .line 174
    const-string v12, "\\|"

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 175
    .local v8, parts:[Ljava/lang/String;
    array-length v12, v8

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    .line 177
    :try_start_1
    sget-object v12, Lcom/baidu/security/bm/AutoLaunchController;->mBlackList:Ljava/util/HashMap;

    const/4 v13, 0x0

    aget-object v13, v8, v13

    const/4 v14, 0x1

    aget-object v14, v8, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 178
    const/4 v11, 0x1

    .line 183
    .end local v8           #parts:[Ljava/lang/String;
    :cond_3
    :goto_3
    if-nez v11, :cond_4

    .line 184
    sget-object v12, Lcom/baidu/security/bm/AutoLaunchController;->mBlackList:Ljava/util/HashMap;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .end local v11           #towPartsOk:Z
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 154
    .end local v0           #allData:Ljava/lang/String;
    .end local v1           #allRecords:[Ljava/lang/String;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v9           #pkgName:Ljava/lang/String;
    :cond_5
    const-string v12, "AutoLaunchController"

    const-string v13, "No command broadcast blacklist file found.\n"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    .restart local v0       #allData:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 162
    .local v5, e:Ljava/io/IOException;
    const/4 v0, 0x0

    .line 163
    const-string v12, "AutoLaunchController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "read file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", catch exception: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 191
    .end local v0           #allData:Ljava/lang/String;
    .end local v5           #e:Ljava/io/IOException;
    :cond_6
    const/4 v12, 0x1

    return v12

    .line 179
    .restart local v0       #allData:Ljava/lang/String;
    .restart local v1       #allRecords:[Ljava/lang/String;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    .restart local v8       #parts:[Ljava/lang/String;
    .restart local v9       #pkgName:Ljava/lang/String;
    .restart local v11       #towPartsOk:Z
    :catch_1
    move-exception v12

    goto :goto_3
.end method

.method static packageInBlackList(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, retVal:Z
    sget-object v0, Lcom/baidu/security/bm/AutoLaunchController;->mBlackList:Ljava/util/HashMap;

    .line 110
    .local v0, blackList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    const/4 v1, 0x1

    .line 116
    :cond_0
    return v1
.end method

.method private static setBlackListSafely(Ljava/util/HashMap;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, blackList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 84
    :cond_0
    sget-object v3, Lcom/baidu/security/bm/AutoLaunchController;->mBlackList:Ljava/util/HashMap;

    if-eq p0, v3, :cond_1

    .line 85
    sput-object p0, Lcom/baidu/security/bm/AutoLaunchController;->mBlackList:Ljava/util/HashMap;

    goto :goto_0

    .line 89
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v1, newList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 91
    .local v0, it:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 93
    .local v2, pkgName:Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 95
    .end local v2           #pkgName:Ljava/lang/String;
    :cond_2
    sput-object v1, Lcom/baidu/security/bm/AutoLaunchController;->mBlackList:Ljava/util/HashMap;

    goto :goto_0
.end method

.method static updateAppBlackAndWhiteList(Landroid/content/Context;Z)V
    .locals 12
    .parameter "context"
    .parameter "isSystem"

    .prologue
    .line 353
    if-eqz p1, :cond_1

    .line 354
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/baidu/security/bm/AutoLaunchController;->SYS_BLACK_KEY:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, black:Ljava/lang/String;
    const/4 v5, 0x0

    .line 360
    .local v5, result:[Ljava/lang/String;
    :try_start_0
    sget-object v9, Lcom/baidu/security/bm/AutoLaunchController;->SPLIT_CHAR:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 366
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v7, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .line 368
    .local v6, s:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 361
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #s:Ljava/lang/String;
    .end local v7           #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 362
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "AutoLaunchController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateAppBlackAndWhiteList get error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    .end local v1           #black:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 370
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #black:Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v7       #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    sput-object v7, Lcom/baidu/security/bm/AutoLaunchController;->mSystemAppBlackList:Ljava/util/ArrayList;

    goto :goto_1

    .line 375
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #black:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #result:[Ljava/lang/String;
    .end local v7           #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/baidu/security/bm/AutoLaunchController;->THIRD_WHITE_KEY:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 376
    .local v8, white:Ljava/lang/String;
    const/4 v5, 0x0

    .line 381
    .restart local v5       #result:[Ljava/lang/String;
    :try_start_1
    sget-object v9, Lcom/baidu/security/bm/AutoLaunchController;->SPLIT_CHAR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 386
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .restart local v7       #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v5

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .line 388
    .restart local v6       #s:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 382
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #s:Ljava/lang/String;
    .end local v7           #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v2

    .line 383
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v9, "AutoLaunchController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateAppBlackAndWhiteList get error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 390
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v7       #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    sput-object v7, Lcom/baidu/security/bm/AutoLaunchController;->mThirdAppWhiteList:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method static updateBlackList(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/bm/AutoLaunchAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, newPart:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/bm/AutoLaunchAppInfo;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    invoke-static {}, Lcom/baidu/security/bm/AutoLaunchController;->getBlackListForWriting()Ljava/util/HashMap;

    move-result-object v2

    .line 213
    .local v2, newList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_4

    .line 214
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;

    .line 215
    .local v0, appInfo:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    if-eqz v0, :cond_2

    .line 218
    iget-object v4, v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->packageName:Ljava/lang/String;

    iget v5, v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->appState:I

    iget-boolean v3, v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    if-eqz v3, :cond_3

    sget v3, Lcom/baidu/security/bm/AutoLaunchController;->LAUNCH_STATE_BITS:I

    :goto_2
    or-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 222
    .end local v0           #appInfo:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-static {v2}, Lcom/baidu/security/bm/AutoLaunchController;->writeBlackListFileSynced(Ljava/util/HashMap;)Z

    .line 223
    invoke-static {v2}, Lcom/baidu/security/bm/AutoLaunchController;->setBlackListSafely(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private static writeBlackListFileSynced(Ljava/util/HashMap;)Z
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, newBlackList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 231
    if-nez p0, :cond_0

    move v6, v8

    .line 288
    :goto_0
    return v6

    .line 235
    :cond_0
    const/4 v6, 0x0

    .line 236
    .local v6, retVal:Z
    const/4 v3, 0x0

    .line 237
    .local v3, fileContent:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 238
    .local v5, item:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 242
    if-nez v3, :cond_2

    .line 243
    new-instance v3, Ljava/lang/String;

    .end local v3           #fileContent:Ljava/lang/String;
    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 249
    .restart local v3       #fileContent:Ljava/lang/String;
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "|"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 250
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 246
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\r\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 247
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 252
    .end local v5           #item:Ljava/lang/String;
    :cond_3
    if-nez v3, :cond_4

    .line 253
    new-instance v3, Ljava/lang/String;

    .end local v3           #fileContent:Ljava/lang/String;
    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 256
    .restart local v3       #fileContent:Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/io/File;

    const-string v7, "/data/system/bcblist"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v1, broadcastBlackListFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v7, "/data/system/bcblist_backup"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, blackListBackupFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 263
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_5

    .line 264
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 265
    const-string v7, "AutoLaunchController"

    const-string v9, "Unable to backup broadcast blacklist, current changes will be lost"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 266
    goto/16 :goto_0

    .line 269
    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 270
    const-string v7, "AutoLaunchController"

    const-string v8, "Preserving older data backup"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_6
    :try_start_0
    const-string v7, "/data/system/bcblist"

    invoke-static {v7, v3}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 277
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 279
    :cond_7
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 280
    :catch_0
    move-exception v2

    .line 281
    .local v2, e:Ljava/io/IOException;
    const/4 v6, 0x0

    .line 282
    const-string v7, "AutoLaunchController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "write file: /data/system/bcblist, catch exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 283
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 284
    .local v2, e:Ljava/lang/RuntimeException;
    const/4 v6, 0x0

    .line 285
    const-string v7, "AutoLaunchController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "write file: /data/system/bcblist, catch exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
