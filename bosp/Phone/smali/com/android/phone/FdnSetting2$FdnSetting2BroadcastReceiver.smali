.class Lcom/android/phone/FdnSetting2$FdnSetting2BroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FdnSetting2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/FdnSetting2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FdnSetting2BroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/FdnSetting2;


# direct methods
.method private constructor <init>(Lcom/android/phone/FdnSetting2;)V
    .locals 0
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/android/phone/FdnSetting2$FdnSetting2BroadcastReceiver;->this$0:Lcom/android/phone/FdnSetting2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/FdnSetting2;Lcom/android/phone/FdnSetting2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 537
    invoke-direct {p0, p1}, Lcom/android/phone/FdnSetting2$FdnSetting2BroadcastReceiver;-><init>(Lcom/android/phone/FdnSetting2;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 540
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 543
    const-string v4, "state"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 545
    .local v1, bDisable:Z
    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dual_sim_mode_setting"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move v1, v3

    .line 548
    :goto_0
    iget-object v4, p0, Lcom/android/phone/FdnSetting2$FdnSetting2BroadcastReceiver;->this$0:Lcom/android/phone/FdnSetting2;

    if-nez v1, :cond_3

    :goto_1
    #calls: Lcom/android/phone/FdnSetting2;->updateMenuEnableState(Z)V
    invoke-static {v4, v3}, Lcom/android/phone/FdnSetting2;->access$900(Lcom/android/phone/FdnSetting2;Z)V

    .line 558
    .end local v1           #bDisable:Z
    :cond_1
    :goto_2
    return-void

    .restart local v1       #bDisable:Z
    :cond_2
    move v1, v2

    .line 545
    goto :goto_0

    :cond_3
    move v3, v2

    .line 548
    goto :goto_1

    .line 550
    .end local v1           #bDisable:Z
    :cond_4
    const-string v4, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 553
    iget-object v4, p0, Lcom/android/phone/FdnSetting2$FdnSetting2BroadcastReceiver;->this$0:Lcom/android/phone/FdnSetting2;

    invoke-virtual {v4}, Lcom/android/phone/FdnSetting2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v3, :cond_5

    const-string v4, "mode"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    move v1, v3

    .line 556
    .restart local v1       #bDisable:Z
    :goto_3
    iget-object v4, p0, Lcom/android/phone/FdnSetting2$FdnSetting2BroadcastReceiver;->this$0:Lcom/android/phone/FdnSetting2;

    if-nez v1, :cond_7

    :goto_4
    #calls: Lcom/android/phone/FdnSetting2;->updateMenuEnableState(Z)V
    invoke-static {v4, v3}, Lcom/android/phone/FdnSetting2;->access$900(Lcom/android/phone/FdnSetting2;Z)V

    goto :goto_2

    .end local v1           #bDisable:Z
    :cond_6
    move v1, v2

    .line 553
    goto :goto_3

    .restart local v1       #bDisable:Z
    :cond_7
    move v3, v2

    .line 556
    goto :goto_4
.end method
