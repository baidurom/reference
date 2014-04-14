.class public Lcom/baidu/themeanimation/model/UpdateCallLogTask;
.super Landroid/os/AsyncTask;
.source "UpdateCallLogTask.java"


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
.field private static final TAG:Ljava/lang/String; = "UpdateCallLogTask"


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
    .line 24
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/baidu/themeanimation/model/UpdateCallLogTask;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/baidu/themeanimation/model/UpdateCallLogTask;->mHandler:Landroid/os/Handler;

    .line 27
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/model/UpdateCallLogTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 31
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 35
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "type=? and new=1"

    .line 36
    .local v3, select:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 39
    .local v4, selectArgs:[Ljava/lang/String;
    iput v1, p0, Lcom/baidu/themeanimation/model/UpdateCallLogTask;->mCount:I

    .line 40
    const/4 v7, 0x0

    .line 42
    .local v7, query:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/baidu/themeanimation/model/UpdateCallLogTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 44
    if-eqz v7, :cond_1

    .line 45
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/baidu/themeanimation/model/UpdateCallLogTask;->mCount:I

    .line 46
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    if-eqz v7, :cond_0

    .line 54
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 56
    :cond_0
    :goto_1
    return-object v8

    .line 48
    :cond_1
    :try_start_1
    const-string v0, "UpdateCallLogTask"

    const-string v1, "getContentResolver for CallLog return null"

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v6

    .line 51
    .local v6, e:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    if-eqz v7, :cond_0

    .line 54
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 53
    .end local v6           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 54
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/model/UpdateCallLogTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/baidu/themeanimation/model/UpdateCallLogTask;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/themeanimation/model/UpdateCallLogTask;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x211

    iget v3, p0, Lcom/baidu/themeanimation/model/UpdateCallLogTask;->mCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    return-void
.end method
