.class public Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MODEM_SWITCH_MODE_FDD:I = 0x3

.field public static final MODEM_SWITCH_MODE_TDD:I = 0x4

.field private static a:I

.field private static b:Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->a:I

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->b:Lcom/android/internal/telephony/CommandsInterface;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "Constructor invoked"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->a(Ljava/lang/String;)V

    .line 57
    sput-object p1, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->b:Lcom/android/internal/telephony/CommandsInterface;

    .line 58
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 99
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ModemSwitchHandler]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method public static getModem()I
    .locals 1

    .prologue
    .line 91
    sget v0, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->a:I

    return v0
.end method

.method public static setModem(I)V
    .locals 0
    .parameter

    .prologue
    .line 95
    sput p0, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->a:I

    .line 96
    return-void
.end method

.method public static switchModem(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 61
    sget-object v0, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->b:Lcom/android/internal/telephony/CommandsInterface;

    if-nez v0, :cond_1

    .line 62
    const-string/jumbo v0, "sCi is null"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->a(Ljava/lang/String;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->b:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_3

    .line 66
    if-ne p0, v3, :cond_2

    .line 67
    const-string v0, "[WPO] Radio off, can not switch to FDD modem"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_2
    if-ne p0, v4, :cond_0

    .line 69
    const-string v0, "[WPO] Radio off, can not switch to TDD modem"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WPO] Store Modem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->a(Ljava/lang/String;)V

    .line 74
    const-string/jumbo v0, "ro.operator.optr"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_4

    const-string v1, "OP01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    :goto_1
    invoke-static {p0}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->setModem(I)V

    .line 81
    if-ne p0, v3, :cond_5

    .line 82
    const-string v0, "Reload and reset to FDD modem image"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->a(Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->b:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setTRM(ILandroid/os/Message;)V

    goto :goto_0

    .line 78
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->b:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v2}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    goto :goto_1

    .line 84
    :cond_5
    if-ne p0, v4, :cond_0

    .line 85
    const-string v0, "Reload and reset to TDD modem image"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->a(Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->b:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x9

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setTRM(ILandroid/os/Message;)V

    goto :goto_0
.end method
