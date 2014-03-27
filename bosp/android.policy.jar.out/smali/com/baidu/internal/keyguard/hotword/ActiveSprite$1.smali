.class final Lcom/baidu/internal/keyguard/hotword/ActiveSprite$1;
.super Ljava/lang/Thread;
.source "ActiveSprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/internal/keyguard/hotword/ActiveSprite;->active(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/baidu/internal/keyguard/hotword/ActiveSprite$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 48
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 49
    const-string v6, ""

    .line 50
    .local v6, activeTime:Ljava/lang/String;
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/ActiveSprite$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->getInstance(Landroid/content/Context;)Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;

    move-result-object v0

    .line 51
    .local v0, mDbhelp:Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "active_time"

    aput-object v3, v2, v1

    .line 54
    .local v2, projection:[Ljava/lang/String;
    const-string v1, "config"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 56
    .local v7, configCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 57
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 58
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 60
    :cond_0
    if-eqz v7, :cond_1

    .line 62
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    :cond_1
    :goto_0
    :try_start_2
    const-string v1, "ActiveSprite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activeTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v1, "0"

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/ActiveSprite$1;->val$context:Landroid/content/Context;

    #calls: Lcom/baidu/internal/keyguard/hotword/ActiveSprite;->doPostActive(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/baidu/internal/keyguard/hotword/ActiveSprite;->access$000(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 71
    .local v9, lastActiveTime:Landroid/content/ContentValues;
    const-string v1, "active_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 73
    const-string v1, "config"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v9, v3, v4}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    .end local v0           #mDbhelp:Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #activeTime:Ljava/lang/String;
    .end local v7           #configCursor:Landroid/database/Cursor;
    .end local v9           #lastActiveTime:Landroid/content/ContentValues;
    :cond_2
    :goto_1
    return-void

    .line 77
    :catch_0
    move-exception v8

    .line 78
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "ActiveSprite"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 63
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v0       #mDbhelp:Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v6       #activeTime:Ljava/lang/String;
    .restart local v7       #configCursor:Landroid/database/Cursor;
    :catch_1
    move-exception v1

    goto :goto_0
.end method
