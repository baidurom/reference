.class Lcom/baidu/service/power/KeyguardTrigger;
.super Lcom/baidu/service/power/BroadcastTrigger;
.source "KeyguardTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/service/power/KeyguardTrigger$ActionRunnable;
    }
.end annotation


# static fields
.field static final EVENT_DELAY:I = 0x3e8

.field static mScreenOffReport:Z

.field static mScreenOnReport:Z


# instance fields
.field mLastRunnable:Ljava/lang/Runnable;

.field mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/baidu/service/power/BroadcastTrigger;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method notifyChanged(Lcom/baidu/service/power/Trigger;)V
    .locals 0
    .parameter "trigger"

    .prologue
    .line 100
    return-void
.end method

.method prepare(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 65
    const-string v1, "SmartPowerService"

    const-string v2, "KeyguardTrigger.prepare()."

    invoke-static {v1, v2}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v1, Lcom/baidu/service/power/KeyguardTrigger$1;

    invoke-direct {v1, p0}, Lcom/baidu/service/power/KeyguardTrigger$1;-><init>(Lcom/baidu/service/power/KeyguardTrigger;)V

    iput-object v1, p0, Lcom/baidu/service/power/KeyguardTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/baidu/service/power/KeyguardTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    return-void
.end method

.method stop(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/baidu/service/power/KeyguardTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/baidu/service/power/KeyguardTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    goto :goto_0
.end method
