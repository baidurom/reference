.class public Lcom/baidu/themeanimation/model/UpdateSmsObserver;
.super Landroid/database/ContentObserver;
.source "UpdateSmsObserver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateSmsObserver"


# instance fields
.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mUpdateTask:Lcom/baidu/themeanimation/model/UpdateSmsTask;


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

    iput-object v0, p0, Lcom/baidu/themeanimation/model/UpdateSmsObserver;->mUpdateTask:Lcom/baidu/themeanimation/model/UpdateSmsTask;

    .line 17
    iput-object p1, p0, Lcom/baidu/themeanimation/model/UpdateSmsObserver;->mContext:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/baidu/themeanimation/model/UpdateSmsObserver;->mHandler:Landroid/os/Handler;

    .line 19
    invoke-direct {p0}, Lcom/baidu/themeanimation/model/UpdateSmsObserver;->updateSms()V

    .line 20
    return-void
.end method

.method private updateSms()V
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/themeanimation/model/UpdateSmsObserver;->mUpdateTask:Lcom/baidu/themeanimation/model/UpdateSmsTask;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/baidu/themeanimation/model/UpdateSmsObserver;->mUpdateTask:Lcom/baidu/themeanimation/model/UpdateSmsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/themeanimation/model/UpdateSmsTask;->cancel(Z)Z

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/themeanimation/model/UpdateSmsObserver;->mUpdateTask:Lcom/baidu/themeanimation/model/UpdateSmsTask;

    .line 34
    :cond_0
    new-instance v0, Lcom/baidu/themeanimation/model/UpdateSmsTask;

    iget-object v1, p0, Lcom/baidu/themeanimation/model/UpdateSmsObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/themeanimation/model/UpdateSmsObserver;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/baidu/themeanimation/model/UpdateSmsTask;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/themeanimation/model/UpdateSmsObserver;->mUpdateTask:Lcom/baidu/themeanimation/model/UpdateSmsTask;

    .line 35
    iget-object v0, p0, Lcom/baidu/themeanimation/model/UpdateSmsObserver;->mUpdateTask:Lcom/baidu/themeanimation/model/UpdateSmsTask;

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/baidu/themeanimation/model/UpdateSmsObserver;->mUpdateTask:Lcom/baidu/themeanimation/model/UpdateSmsTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/baidu/themeanimation/model/UpdateSmsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 38
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
    invoke-direct {p0}, Lcom/baidu/themeanimation/model/UpdateSmsObserver;->updateSms()V

    .line 26
    return-void
.end method
