.class final Lcom/android/internal/telephony/SMSDispatcher$BaiduInjector$1;
.super Landroid/content/BroadcastReceiver;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SMSDispatcher$BaiduInjector;->registerReceiver(Lcom/android/internal/telephony/SMSDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    sget-object v0, Lcom/android/internal/telephony/SMSPlugin;->trafficMonitorOperatorNumber:[Ljava/lang/String;

    const-string v1, "NUMBER"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v0, Lcom/android/internal/telephony/SMSPlugin;->receiveTrafficMonitorBroadcastTime:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    aput-wide v1, v0, v4

    sget-object v0, Lcom/android/internal/telephony/SMSPlugin;->notReceiveTrafficMonitorMessageTime:[J

    const-string v1, "TIME"

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    aput-wide v1, v0, v4

    sget-object v0, Lcom/android/internal/telephony/SMSPlugin;->discard:[Z

    const-string v1, "DISCARD"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    aput-boolean v1, v0, v4

    return-void
.end method
