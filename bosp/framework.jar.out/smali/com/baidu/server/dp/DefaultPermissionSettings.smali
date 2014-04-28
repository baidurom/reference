.class public Lcom/baidu/server/dp/DefaultPermissionSettings;
.super Ljava/lang/Object;
.source "DefaultPermissionSettings.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final DEFAULT_PERMISSION:Ljava/lang/String; = "default_permission"

.field static final PERMISSIONS:Ljava/lang/String; = "permissions"

.field static final PKGNAME:Ljava/lang/String; = "pkgname"

.field static final SIGNATURE:Ljava/lang/String; = "signature"

.field private static final TAG:Ljava/lang/String; = "DynamicPermissionService"

.field private static mDatabasePath:Ljava/lang/String; = null

.field private static final sProjection:[Ljava/lang/String; = null

.field private static final sSelection:Ljava/lang/String; = "pkgname=?"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "signature"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "permissions"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/server/dp/DefaultPermissionSettings;->sProjection:[Ljava/lang/String;

    .line 48
    const-string v0, "/system/etc/dp.db"

    sput-object v0, Lcom/baidu/server/dp/DefaultPermissionSettings;->mDatabasePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultPermission(Ljava/lang/String;)[Landroid/os/Bundle;
    .locals 16
    .parameter "pkgName"

    .prologue
    .line 59
    :try_start_0
    sget-object v1, Lcom/baidu/server/dp/DefaultPermissionSettings;->mDatabasePath:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 61
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v1, "default_permission"

    sget-object v2, Lcom/baidu/server/dp/DefaultPermissionSettings;->sProjection:[Ljava/lang/String;

    const-string/jumbo v3, "pkgname=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 63
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    const-string/jumbo v1, "signature"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 65
    .local v15, sigIndex:I
    const-string/jumbo v1, "permissions"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 66
    .local v14, permIndex:I
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v9, v1, [Landroid/os/Bundle;

    .line 67
    .local v9, bundles:[Landroid/os/Bundle;
    const/4 v12, 0x0

    .line 68
    .local v12, i:I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    move v13, v12

    .line 70
    .end local v12           #i:I
    .local v13, i:I
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v8, bundle:Landroid/os/Bundle;
    const-string/jumbo v1, "signature"

    invoke-interface {v10, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 72
    const-string/jumbo v1, "permissions"

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    add-int/lit8 v12, v13, 0x1

    .end local v13           #i:I
    .restart local v12       #i:I
    aput-object v8, v9, v13

    .line 74
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 78
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 85
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #bundle:Landroid/os/Bundle;
    .end local v9           #bundles:[Landroid/os/Bundle;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v12           #i:I
    .end local v14           #permIndex:I
    .end local v15           #sigIndex:I
    :goto_0
    return-object v9

    .line 78
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10       #cursor:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 85
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #cursor:Landroid/database/Cursor;
    :goto_1
    const/4 v9, 0x0

    goto :goto_0

    .line 78
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 80
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v11

    .line 81
    .local v11, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "DynamicPermissionService"

    const-string v2, "Illegal column name"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 82
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v11

    .line 83
    .local v11, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "DynamicPermissionService"

    const-string v2, "Can\'t open defaultpermission database"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
