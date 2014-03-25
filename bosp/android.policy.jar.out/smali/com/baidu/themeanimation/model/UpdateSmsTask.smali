.class public Lcom/baidu/themeanimation/model/UpdateSmsTask;
.super Landroid/os/AsyncTask;
.source "UpdateSmsTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateSmsTask"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/baidu/themeanimation/model/UpdateSmsTask;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/baidu/themeanimation/model/UpdateSmsTask;->mHandler:Landroid/os/Handler;

    .line 24
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/model/UpdateSmsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .parameter "params"

    .prologue
    const/4 v11, 0x0

    .line 28
    const/4 v9, 0x0

    .line 29
    .local v9, query1:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 30
    .local v10, query2:Landroid/database/Cursor;
    const/4 v7, 0x0

    .local v7, countSms:I
    const/4 v6, 0x0

    .line 32
    .local v6, countMms:I
    :try_start_0
    iget-object v0, p0, Lcom/baidu/themeanimation/model/UpdateSmsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "read = 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 34
    if-eqz v9, :cond_0

    .line 35
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/model/UpdateSmsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms/inbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "read = 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 40
    if-eqz v10, :cond_1

    .line 41
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 43
    :cond_1
    const-string v0, "UpdateSmsTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mms = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sms= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    add-int v0, v7, v6

    iput v0, p0, Lcom/baidu/themeanimation/model/UpdateSmsTask;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    if-eqz v9, :cond_2

    .line 50
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 52
    :cond_2
    if-eqz v10, :cond_3

    .line 53
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 56
    :cond_3
    :goto_0
    return-object v11

    .line 46
    :catch_0
    move-exception v8

    .line 47
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    if-eqz v9, :cond_4

    .line 50
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 52
    :cond_4
    if-eqz v10, :cond_3

    .line 53
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 49
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_5

    .line 50
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 52
    :cond_5
    if-eqz v10, :cond_6

    .line 53
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/model/UpdateSmsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 61
    const-string v0, "UpdateSmsTask"

    const-string v1, "onPostExecute"

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/baidu/themeanimation/model/UpdateSmsTask;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/themeanimation/model/UpdateSmsTask;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x212

    iget v3, p0, Lcom/baidu/themeanimation/model/UpdateSmsTask;->mCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 64
    return-void
.end method
