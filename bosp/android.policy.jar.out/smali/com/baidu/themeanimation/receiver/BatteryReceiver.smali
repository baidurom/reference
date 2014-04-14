.class public Lcom/baidu/themeanimation/receiver/BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BatteryReceiver"


# instance fields
.field private mLockScreenHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/util/LockScreenHandler;)V
    .locals 0
    .parameter "lockScreenHandler"

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/baidu/themeanimation/receiver/BatteryReceiver;->mLockScreenHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    .line 21
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 30
    const-string v5, "level"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 31
    .local v2, level:I
    const-string v5, "status"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 33
    .local v4, status:I
    const-string v5, "plugged"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 34
    .local v3, pluged:I
    const-string v5, "health"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 41
    .local v1, health:I
    iget-object v5, p0, Lcom/baidu/themeanimation/receiver/BatteryReceiver;->mLockScreenHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    iget-object v6, p0, Lcom/baidu/themeanimation/receiver/BatteryReceiver;->mLockScreenHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    const/16 v7, 0x200

    new-instance v8, Lcom/baidu/themeanimation/model/BatteryStatus;

    invoke-direct {v8, v4, v2, v3, v1}, Lcom/baidu/themeanimation/model/BatteryStatus;-><init>(IIII)V

    invoke-virtual {v6, v7, v8}, Lcom/baidu/themeanimation/util/LockScreenHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/baidu/themeanimation/util/LockScreenHandler;->sendMessage(Landroid/os/Message;)Z

    .line 45
    .end local v1           #health:I
    .end local v2           #level:I
    .end local v3           #pluged:I
    .end local v4           #status:I
    :cond_0
    return-void
.end method
