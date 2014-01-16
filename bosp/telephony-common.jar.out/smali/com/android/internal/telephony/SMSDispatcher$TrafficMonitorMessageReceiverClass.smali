.class Lcom/android/internal/telephony/SMSDispatcher$TrafficMonitorMessageReceiverClass;
.super Landroid/content/BroadcastReceiver;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrafficMonitorMessageReceiverClass"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1512
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$TrafficMonitorMessageReceiverClass;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1512
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher$TrafficMonitorMessageReceiverClass;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1514
    const-string v0, "NUMBER"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/telephony/SMSPlugin;->trafficMonitorOperatorNumber:Ljava/lang/String;

    .line 1515
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/baidu/internal/telephony/SMSPlugin;->receiveTrafficMonitorBroadcastTime:J

    .line 1516
    const-string v0, "TIME"

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/baidu/internal/telephony/SMSPlugin;->notReceiveTrafficMonitorMessageTime:J

    .line 1517
    const-string v0, "DISCARD"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/baidu/internal/telephony/SMSPlugin;->discard:Z

    .line 1518
    return-void
.end method
