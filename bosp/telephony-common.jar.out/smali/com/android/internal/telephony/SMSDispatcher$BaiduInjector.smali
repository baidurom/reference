.class Lcom/android/internal/telephony/SMSDispatcher$BaiduInjector;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaiduInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerReceiver(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 3
    .parameter "dispatcher"

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.baidu.trafficmonitor.star.receive.message"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, filter:Landroid/content/IntentFilter;
    new-instance v1, Lcom/android/internal/telephony/SMSDispatcher$BaiduInjector$1;

    invoke-direct {v1}, Lcom/android/internal/telephony/SMSDispatcher$BaiduInjector$1;-><init>()V

    .local v1, receiver:Landroid/content/BroadcastReceiver;
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static setMsgAddress(Lcom/android/internal/telephony/SmsMessageBase;)V
    .locals 3
    .parameter "sms"

    .prologue
    sget-object v0, Lcom/android/internal/telephony/SMSPlugin;->msgAddress:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-void
.end method

.method public static setMsgAddress(Ljava/lang/String;)V
    .locals 2
    .parameter "address"

    .prologue
    sget-object v0, Lcom/android/internal/telephony/SMSPlugin;->msgAddress:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-void
.end method
