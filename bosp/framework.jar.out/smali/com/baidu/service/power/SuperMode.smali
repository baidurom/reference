.class public Lcom/baidu/service/power/SuperMode;
.super Lcom/baidu/service/power/PowerMode;
.source "SuperMode.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/baidu/service/power/PowerMode;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/service/power/SuperMode;->mType:I

    .line 12
    return-void
.end method


# virtual methods
.method public applyMode(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 16
    const-string v1, "SmartPowerService"

    const-string v2, "SuperMode applyMode"

    invoke-static {v1, v2}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-super {p0, p1}, Lcom/baidu/service/power/PowerMode;->applyMode(Landroid/content/Context;)V

    .line 18
    iget-object v1, p0, Lcom/baidu/service/power/SuperMode;->mProfile:Lcom/baidu/service/power/Profile;

    invoke-virtual {v1, p1}, Lcom/baidu/service/power/Profile;->applyProfileWithoutSM(Landroid/content/Context;)V

    .line 19
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.smartpm.ACTION_APPLY_SUPER_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 21
    return-void
.end method

.method public unapplyMode(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 25
    const-string v0, "SmartPowerService"

    const-string v1, "SuperMode unapplyMode"

    invoke-static {v0, v1}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-super {p0, p1}, Lcom/baidu/service/power/PowerMode;->unapplyMode(Landroid/content/Context;)V

    .line 27
    return-void
.end method
