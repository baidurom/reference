.class public Lcom/baidu/service/power/NormalMode;
.super Lcom/baidu/service/power/PowerMode;
.source "NormalMode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/baidu/service/power/PowerMode;-><init>()V

    return-void
.end method


# virtual methods
.method public applyMode(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 15
    const-string v1, "SmartPowerService"

    const-string v2, "NormalMode applyMode"

    invoke-static {v1, v2}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "battery_in_recovery"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 18
    iget-object v1, p0, Lcom/baidu/service/power/NormalMode;->mProfile:Lcom/baidu/service/power/Profile;

    invoke-virtual {v1, p1}, Lcom/baidu/service/power/Profile;->applyProfileMerge(Landroid/content/Context;)V

    .line 19
    invoke-super {p0, p1}, Lcom/baidu/service/power/PowerMode;->applyMode(Landroid/content/Context;)V

    .line 20
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.smartpm.ACTION_APPLY_NORMAL_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 22
    return-void
.end method

.method public unapplyMode(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 26
    const-string v0, "SmartPowerService"

    const-string v1, "NormalMode unapplyMode"

    invoke-static {v0, v1}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/baidu/service/power/NormalMode;->mProfile:Lcom/baidu/service/power/Profile;

    invoke-static {p1, v0}, Lcom/baidu/service/power/Profile;->createCurrentProfile(Landroid/content/Context;Lcom/baidu/service/power/Profile;)V

    .line 28
    invoke-super {p0, p1}, Lcom/baidu/service/power/PowerMode;->unapplyMode(Landroid/content/Context;)V

    .line 29
    return-void
.end method
