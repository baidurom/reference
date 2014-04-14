.class public Lcom/baidu/themeanimation/model/UpdateCallLogObserver;
.super Landroid/database/ContentObserver;
.source "UpdateCallLogObserver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateCallLogObserver"


# instance fields
.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mUpdateTask:Lcom/baidu/themeanimation/model/UpdateCallLogTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 16
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/themeanimation/model/UpdateCallLogObserver;->mUpdateTask:Lcom/baidu/themeanimation/model/UpdateCallLogTask;

    .line 17
    iput-object p1, p0, Lcom/baidu/themeanimation/model/UpdateCallLogObserver;->mContext:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/baidu/themeanimation/model/UpdateCallLogObserver;->mHandler:Landroid/os/Handler;

    .line 19
    invoke-direct {p0}, Lcom/baidu/themeanimation/model/UpdateCallLogObserver;->updateCallLog()V

    .line 20
    return-void
.end method

.method private updateCallLog()V
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/themeanimation/model/UpdateCallLogObserver;->mUpdateTask:Lcom/baidu/themeanimation/model/UpdateCallLogTask;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/baidu/themeanimation/model/UpdateCallLogObserver;->mUpdateTask:Lcom/baidu/themeanimation/model/UpdateCallLogTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/themeanimation/model/UpdateCallLogTask;->cancel(Z)Z

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/themeanimation/model/UpdateCallLogObserver;->mUpdateTask:Lcom/baidu/themeanimation/model/UpdateCallLogTask;

    .line 33
    :cond_0
    new-instance v0, Lcom/baidu/themeanimation/model/UpdateCallLogTask;

    iget-object v1, p0, Lcom/baidu/themeanimation/model/UpdateCallLogObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/themeanimation/model/UpdateCallLogObserver;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/baidu/themeanimation/model/UpdateCallLogTask;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/themeanimation/model/UpdateCallLogObserver;->mUpdateTask:Lcom/baidu/themeanimation/model/UpdateCallLogTask;

    .line 34
    iget-object v0, p0, Lcom/baidu/themeanimation/model/UpdateCallLogObserver;->mUpdateTask:Lcom/baidu/themeanimation/model/UpdateCallLogTask;

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/baidu/themeanimation/model/UpdateCallLogObserver;->mUpdateTask:Lcom/baidu/themeanimation/model/UpdateCallLogTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/baidu/themeanimation/model/UpdateCallLogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 37
    :cond_1
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 25
    invoke-direct {p0}, Lcom/baidu/themeanimation/model/UpdateCallLogObserver;->updateCallLog()V

    .line 26
    return-void
.end method
