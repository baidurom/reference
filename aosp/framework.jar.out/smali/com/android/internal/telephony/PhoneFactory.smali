.class public Lcom/android/internal/telephony/PhoneFactory;
.super Ljava/lang/Object;
.source "PhoneFactory.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field static final SOCKET_OPEN_MAX_RETRY:I = 0x3

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field static final preferredCdmaSubscription:I = 0x1

.field private static sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private static sContext:Landroid/content/Context;

.field private static sLooper:Landroid/os/Looper;

.field private static sMadeDefaults:Z

.field private static sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private static sProxyPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 49
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCdmaPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public static getGsmPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneType(I)I
    .locals 1
    .parameter "networkMode"

    .prologue
    .line 79
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getPhoneType(I)I

    move-result v0

    return v0
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 63
    const-string/jumbo v0, "persist.radio.default_sim_mode"

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public static makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 1
    .parameter "sipUri"

    .prologue
    .line 100
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    return-object v0
.end method
