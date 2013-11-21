.class public Lcom/baidu/internal/telephony/BaiduSipPhoneFactory;
.super Lcom/android/internal/telephony/PhoneFactory;
.source "BaiduSipPhoneFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneFactory;-><init>()V

    return-void
.end method

.method public static makeBaiduSipPhone(Ljava/lang/String;)Lcom/baidu/internal/telephony/sip/SipPhone;
    .locals 2
    .parameter "sipUri"

    .prologue
    .line 28
    sget-object v0, Lcom/baidu/internal/telephony/BaiduSipPhoneFactory;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/baidu/internal/telephony/BaiduSipPhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {p0, v0, v1}, Lcom/baidu/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/baidu/internal/telephony/sip/SipPhone;

    move-result-object v0

    return-object v0
.end method
