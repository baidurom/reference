.class public Lcom/baidu/themeanimation/model/InfoRefreshUtil$AlarmContentObserve;
.super Landroid/database/ContentObserver;
.source "InfoRefreshUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/model/InfoRefreshUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlarmContentObserve"
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 160
    iput-object p1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil$AlarmContentObserve;->mHandler:Landroid/os/Handler;

    .line 161
    invoke-direct {p0}, Lcom/baidu/themeanimation/model/InfoRefreshUtil$AlarmContentObserve;->updateAlarm()V

    .line 162
    return-void
.end method

.method private updateAlarm()V
    .locals 4

    .prologue
    .line 171
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil$AlarmContentObserve;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil$AlarmContentObserve;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/themeanimation/model/InfoRefreshUtil$AlarmContentObserve;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x213

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 175
    :cond_0
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 167
    invoke-direct {p0}, Lcom/baidu/themeanimation/model/InfoRefreshUtil$AlarmContentObserve;->updateAlarm()V

    .line 168
    return-void
.end method
