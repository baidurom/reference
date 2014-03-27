.class public Lcom/baidu/customization/DBOverlayHelper;
.super Ljava/lang/Object;
.source "DBOverlayHelper.java"


# static fields
.field protected static final BASE_PATH:Ljava/lang/String; = null

.field protected static final OVL_DB_PATH_FMT:Ljava/lang/String; = null

.field protected static final OVL_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final TAG:Ljava/lang/String; = "OverlayHelper"


# instance fields
.field protected final mDBOverlayPath:Ljava/lang/String;

.field protected final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc/baidu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/customization/DBOverlayHelper;->BASE_PATH:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/customization/DBOverlayHelper;->BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%s/databases"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/customization/DBOverlayHelper;->OVL_DB_PATH_FMT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/customization/DBOverlayHelper;->mPackageName:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/baidu/customization/DBOverlayHelper;->OVL_DB_PATH_FMT:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/customization/DBOverlayHelper;->mPackageName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/customization/DBOverlayHelper;->mDBOverlayPath:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/baidu/customization/DBOverlayHelper;->mPackageName:Ljava/lang/String;

    .line 80
    sget-object v0, Lcom/baidu/customization/DBOverlayHelper;->OVL_DB_PATH_FMT:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/customization/DBOverlayHelper;->mPackageName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/customization/DBOverlayHelper;->mDBOverlayPath:Ljava/lang/String;

    .line 81
    return-void
.end method

.method private applyOverlay(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/customization/XmlOverlay;)V
    .locals 8
    .parameter "db"
    .parameter "ovl"

    .prologue
    .line 167
    const-string v5, "OverlayHelper"

    const-string v6, "applyOverlay called!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    if-eqz p2, :cond_2

    .line 169
    invoke-virtual {p2}, Lcom/baidu/customization/XmlOverlay;->read()Ljava/util/List;

    move-result-object v1

    .line 170
    .local v1, list:Ljava/util/List;,"Ljava/util/List<*>;"
    if-eqz v1, :cond_2

    .line 171
    new-instance v4, Lcom/baidu/customization/DatabaseTable;

    invoke-virtual {p2}, Lcom/baidu/customization/XmlOverlay;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/baidu/customization/DatabaseTable;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 172
    .local v4, tr:Lcom/baidu/customization/DatabaseTable;
    invoke-virtual {v4}, Lcom/baidu/customization/DatabaseTable;->valid()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 174
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 175
    .local v3, obj:Ljava/lang/Object;
    instance-of v5, v3, Ljava/util/HashMap;

    if-eqz v5, :cond_0

    .line 176
    const-string v5, "OverlayHelper"

    const-string v6, " - Map -"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 177
    check-cast v2, Ljava/util/HashMap;

    .line 178
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    invoke-virtual {v4, p1, v2}, Lcom/baidu/customization/DatabaseTable;->insertRow(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;)V

    goto :goto_0

    .line 180
    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    :cond_0
    const-string v5, "OverlayHelper"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #obj:Ljava/lang/Object;
    :cond_1
    const-string v5, "OverlayHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempt to flex invalid table "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/baidu/customization/XmlOverlay;->getTableName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<*>;"
    .end local v4           #tr:Lcom/baidu/customization/DatabaseTable;
    :cond_2
    const-string v5, "OverlayHelper"

    const-string v6, "applyOverlay returning"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method


# virtual methods
.method public apply(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 10
    .parameter "db"
    .parameter "tableName"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 100
    const-string v4, "OverlayHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OverlayHelper applying overlays to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v4, "%s/%s%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/baidu/customization/DBOverlayHelper;->mDBOverlayPath:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object p2, v5, v9

    const/4 v6, 0x2

    const-string v7, ".xml"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, filePath:Ljava/lang/String;
    const-string v4, "OverlayHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OverlayHelperoverlay from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v3, ovlFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 108
    :try_start_0
    const-string v4, "DELETE FROM %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    invoke-static {v1, p2}, Lcom/baidu/customization/XmlOverlay;->getOverlay(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/customization/XmlOverlay;

    move-result-object v2

    .line 111
    .local v2, ovl:Lcom/baidu/customization/XmlOverlay;
    if-eqz v2, :cond_0

    .line 112
    invoke-direct {p0, p1, v2}, Lcom/baidu/customization/DBOverlayHelper;->applyOverlay(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/customization/XmlOverlay;)V

    .line 127
    .end local v2           #ovl:Lcom/baidu/customization/XmlOverlay;
    :goto_0
    return-void

    .line 114
    .restart local v2       #ovl:Lcom/baidu/customization/XmlOverlay;
    :cond_0
    const-string v4, "OverlayHelper"

    const-string v5, "No overlays found at %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/baidu/customization/DBOverlayHelper;->getOverlayPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    .end local v2           #ovl:Lcom/baidu/customization/XmlOverlay;
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "OverlayHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Yikes! Runtime error in applyXml "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v4, "OverlayHelper"

    const-string v5, "No overlays found at %s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected applyXml(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11
    .parameter "db"

    .prologue
    .line 138
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/customization/DBOverlayHelper;->getOverlayPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".xml"

    invoke-static {v6, v7}, Lcom/baidu/customization/XmlOverlay;->getOverlays(Ljava/lang/String;Ljava/lang/String;)[Lcom/baidu/customization/XmlOverlay;

    move-result-object v5

    .line 141
    .local v5, ovls:[Lcom/baidu/customization/XmlOverlay;
    if-eqz v5, :cond_0

    .line 142
    const-string v6, "OverlayHelper"

    const-string v7, "Found %d overlay(s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    array-length v10, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    move-object v0, v5

    .local v0, arr$:[Lcom/baidu/customization/XmlOverlay;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 146
    .local v4, ovl:Lcom/baidu/customization/XmlOverlay;
    const-string v6, "OverlayHelper"

    const-string v7, " - overlay:  \'%s\'"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v4}, Lcom/baidu/customization/XmlOverlay;->getPath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-direct {p0, p1, v4}, Lcom/baidu/customization/DBOverlayHelper;->applyOverlay(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/customization/XmlOverlay;)V

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    .end local v0           #arr$:[Lcom/baidu/customization/XmlOverlay;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #ovl:Lcom/baidu/customization/XmlOverlay;
    :cond_0
    const-string v6, "OverlayHelper"

    const-string v7, "No overlays found at %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/baidu/customization/DBOverlayHelper;->getOverlayPath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v5           #ovls:[Lcom/baidu/customization/XmlOverlay;
    :cond_1
    :goto_1
    return-void

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "OverlayHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Yikes! Runtime error in applyXml "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected getOverlayPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/baidu/customization/DBOverlayHelper;->mDBOverlayPath:Ljava/lang/String;

    return-object v0
.end method

.method protected getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/baidu/customization/DBOverlayHelper;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
