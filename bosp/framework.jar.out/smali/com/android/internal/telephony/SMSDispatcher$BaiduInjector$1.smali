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


# instance fields
.field final synthetic val$dispatcher:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1789
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$BaiduInjector$1;->val$dispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1791
    sget-object v0, Lcom/android/internal/telephony/SMSPlugin;->trafficMonitorOperatorNumber:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NUMBER"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1792
    sget-object v0, Lcom/android/internal/telephony/SMSPlugin;->receiveTrafficMonitorBroadcastTime:[J

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 1793
    sget-object v0, Lcom/android/internal/telephony/SMSPlugin;->notReceiveTrafficMonitorMessageTime:[J

    const/4 v1, 0x0

    const-string v2, "TIME"

    const-wide/16 v3, 0x0

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 1794
    sget-object v0, Lcom/android/internal/telephony/SMSPlugin;->discard:[Z

    const/4 v1, 0x0

    const-string v2, "DISCARD"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 1795
    return-void
.end method
