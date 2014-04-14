.class public Lcom/baidu/themeanimation/receiver/VariableMonitorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VariableMonitorReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VariableMonitorReceiver"


# instance fields
.field private mLockScreenHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/util/LockScreenHandler;)V
    .locals 0
    .parameter "lockScreenHandler"

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/baidu/themeanimation/receiver/VariableMonitorReceiver;->mLockScreenHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    .line 20
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    iget-object v2, p0, Lcom/baidu/themeanimation/receiver/VariableMonitorReceiver;->mLockScreenHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/util/LockScreenHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 30
    .local v1, message:Landroid/os/Message;
    const/16 v2, 0x201

    iput v2, v1, Landroid/os/Message;->what:I

    .line 31
    iget-object v2, p0, Lcom/baidu/themeanimation/receiver/VariableMonitorReceiver;->mLockScreenHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    invoke-virtual {v2, v1}, Lcom/baidu/themeanimation/util/LockScreenHandler;->sendMessage(Landroid/os/Message;)Z

    .line 38
    .end local v1           #message:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    const-string v2, "theme.lockscreen.action.Unlock"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    iget-object v2, p0, Lcom/baidu/themeanimation/receiver/VariableMonitorReceiver;->mLockScreenHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    iget-object v3, p0, Lcom/baidu/themeanimation/receiver/VariableMonitorReceiver;->mLockScreenHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    const/16 v4, 0x210

    invoke-virtual {v3, v4, p2}, Lcom/baidu/themeanimation/util/LockScreenHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/themeanimation/util/LockScreenHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
