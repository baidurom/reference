.class public Lyi/util/PushHelper;
.super Ljava/lang/Object;
.source "PushHelper.java"


# instance fields
.field private final URI_APP_CONFIG:Ljava/lang/String;

.field private final URI_REG_APPLY:Ljava/lang/String;

.field private final URI_REG_CONFIG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lyi/util/PushHelper;->mContext:Landroid/content/Context;

    .line 12
    const-string v0, "content://com.baidu.push/config/apponoff/"

    iput-object v0, p0, Lyi/util/PushHelper;->URI_APP_CONFIG:Ljava/lang/String;

    .line 13
    const-string v0, "content://com.baidu.push/config/appreg/"

    iput-object v0, p0, Lyi/util/PushHelper;->URI_REG_CONFIG:Ljava/lang/String;

    .line 14
    const-string v0, "content://com.baidu.push/config/regapply/"

    iput-object v0, p0, Lyi/util/PushHelper;->URI_REG_APPLY:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lyi/util/PushHelper;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public getRegisterId()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 66
    iget-object v0, p0, Lyi/util/PushHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 68
    .local v6, appname:Ljava/lang/String;
    const/4 v7, 0x0

    .line 70
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.baidu.push/config/appreg/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 71
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lyi/util/PushHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 72
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    if-eqz v7, :cond_0

    .line 78
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 80
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v0

    .line 77
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_1
    if-eqz v7, :cond_2

    .line 78
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v1           #uri:Landroid/net/Uri;
    :cond_2
    :goto_1
    move-object v0, v8

    .line 80
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 77
    if-eqz v7, :cond_2

    .line 78
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 77
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 78
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public isEnabled()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 24
    iget-object v0, p0, Lyi/util/PushHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 25
    .local v6, appname:Ljava/lang/String;
    const/4 v7, 0x0

    .line 27
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.baidu.push/config/apponoff/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 28
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lyi/util/PushHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 29
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 34
    :goto_0
    if-eqz v7, :cond_0

    .line 35
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 37
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    :goto_1
    return v0

    .restart local v1       #uri:Landroid/net/Uri;
    :cond_1
    move v0, v8

    .line 30
    goto :goto_0

    .line 34
    :cond_2
    if-eqz v7, :cond_3

    .line 35
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v1           #uri:Landroid/net/Uri;
    :cond_3
    :goto_2
    move v0, v8

    .line 37
    goto :goto_1

    .line 32
    :catch_0
    move-exception v0

    .line 34
    if-eqz v7, :cond_3

    .line 35
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 34
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 35
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public register()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 56
    iget-object v0, p0, Lyi/util/PushHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 57
    .local v6, appname:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.baidu.push/config/regapply/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 58
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lyi/util/PushHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 59
    return-void
.end method

.method public setEnabled(Z)V
    .locals 6
    .parameter "isEnabled"

    .prologue
    const/4 v5, 0x0

    .line 45
    iget-object v3, p0, Lyi/util/PushHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 46
    .local v0, appname:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.baidu.push/config/apponoff/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 47
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 48
    .local v1, cv:Landroid/content/ContentValues;
    const-string v3, "enable"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 49
    iget-object v3, p0, Lyi/util/PushHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 50
    return-void
.end method
