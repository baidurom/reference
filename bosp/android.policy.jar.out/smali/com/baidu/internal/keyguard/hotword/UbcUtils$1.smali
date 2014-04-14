.class Lcom/baidu/internal/keyguard/hotword/UbcUtils$1;
.super Ljava/lang/Thread;
.source "UbcUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/internal/keyguard/hotword/UbcUtils;->presistUbc(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/hotword/UbcUtils;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$ub:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/hotword/UbcUtils;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/baidu/internal/keyguard/hotword/UbcUtils$1;->this$0:Lcom/baidu/internal/keyguard/hotword/UbcUtils;

    iput-object p2, p0, Lcom/baidu/internal/keyguard/hotword/UbcUtils$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/internal/keyguard/hotword/UbcUtils$1;->val$ub:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 10

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    const/4 v8, 0x0

    .line 136
    .local v8, shouldUpload:Z
    :try_start_1
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ubc key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/internal/keyguard/hotword/UbcUtils$1;->val$key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/internal/keyguard/hotword/UbcUtils$1;->val$ub:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->getInstance(Landroid/content/Context;)Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;

    move-result-object v0

    .line 138
    .local v0, mDbhelp:Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 139
    .local v9, values:Landroid/content/ContentValues;
    const-string v1, "key"

    iget-object v3, p0, Lcom/baidu/internal/keyguard/hotword/UbcUtils$1;->val$key:Ljava/lang/String;

    invoke-virtual {v9, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v1, "value"

    iget-object v3, p0, Lcom/baidu/internal/keyguard/hotword/UbcUtils$1;->val$ub:Ljava/lang/String;

    invoke-virtual {v9, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v1, "ubc"

    invoke-virtual {v0, v1, v9}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 143
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "key"

    aput-object v3, v2, v1

    .line 146
    .local v2, projection:[Ljava/lang/String;
    const-string v1, "ubc"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 148
    .local v6, configCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 149
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    const/16 v3, 0x64

    if-le v1, v3, :cond_0

    .line 150
    const/4 v8, 0x1

    .line 153
    :cond_0
    if-eqz v6, :cond_1

    .line 155
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 160
    :cond_1
    :goto_0
    if-eqz v8, :cond_2

    .line 161
    :try_start_3
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/internal/keyguard/hotword/UbcSprite;->upload(Landroid/content/Context;)V

    .line 162
    const-string v1, "ubc"

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->del(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 167
    .end local v0           #mDbhelp:Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #configCursor:Landroid/database/Cursor;
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 164
    :catch_0
    move-exception v7

    .line 165
    .local v7, e:Ljava/lang/Exception;
    :try_start_4
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/UbcUtils;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ubc exception"

    invoke-static {v1, v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 133
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #shouldUpload:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 156
    .restart local v0       #mDbhelp:Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v6       #configCursor:Landroid/database/Cursor;
    .restart local v8       #shouldUpload:Z
    .restart local v9       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v1

    goto :goto_0
.end method
