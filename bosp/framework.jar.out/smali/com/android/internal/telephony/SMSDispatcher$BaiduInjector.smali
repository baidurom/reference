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
    .line 1786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerReceiver(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 3
    .parameter "dispatcher"

    .prologue
    .line 1788
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.baidu.trafficmonitor.star.receive.message"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1789
    .local v0, filter:Landroid/content/IntentFilter;
    new-instance v1, Lcom/android/internal/telephony/SMSDispatcher$BaiduInjector$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SMSDispatcher$BaiduInjector$1;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    .line 1797
    .local v1, receiver:Landroid/content/BroadcastReceiver;
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1798
    return-void
.end method

.method public static setMsgAddress(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SmsMessageBase;)V
    .locals 3
    .parameter "dispatcher"
    .parameter "sms"

    .prologue
    .line 1805
    sget-object v0, Lcom/android/internal/telephony/SMSPlugin;->msgAddress:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1806
    return-void
.end method

.method public static setMsgAddress(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;)V
    .locals 2
    .parameter "dispatcher"
    .parameter "address"

    .prologue
    .line 1801
    sget-object v0, Lcom/android/internal/telephony/SMSPlugin;->msgAddress:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1802
    return-void
.end method

.method public static shouldPrehandleMsg(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 6
    .parameter "dispatcher"
    .parameter "sms"

    .prologue
    const/4 v0, 0x1

    .line 1809
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/baidu/internal/telephony/DisturbPreventUtils;->shouldPreventMMS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;

    move-result-object v1

    .line 1810
    .local v1, result:Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/SMSPlugin;->isBaiduAccountSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/android/internal/telephony/SMSPlugin;->isTrafficMonitorSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, v1, Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;->result:I

    if-ne v2, v0, :cond_1

    .line 1813
    .local v0, prehandle:Z
    :cond_0
    :goto_0
    return v0

    .line 1810
    .end local v0           #prehandle:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
