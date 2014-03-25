.class public Lcom/android/internal/telephony/gsm/FDTimer;
.super Ljava/lang/Object;
.source "FDTimer.java"


# static fields
.field protected static final PROPERTY_3G_SWITCH:Ljava/lang/String; = "gsm.3gswitch"

.field protected static final PROPERTY_RIL_FD_MODE:Ljava/lang/String; = "ril.fd.mode"

.field private static final STR_PROPERTY_FD_SCREEN_OFF_R8_TIMER:Ljava/lang/String; = "persist.radio.fd.off.r8.counter"

.field private static final STR_PROPERTY_FD_SCREEN_OFF_TIMER:Ljava/lang/String; = "persist.radio.fd.off.counter"

.field private static final STR_PROPERTY_FD_SCREEN_ON_R8_TIMER:Ljava/lang/String; = "persist.radio.fd.r8.counter"

.field private static final STR_PROPERTY_FD_SCREEN_ON_TIMER:Ljava/lang/String; = "persist.radio.fd.counter"

.field private static numberOfSupportedTypes:I

.field private static timerValue:[Ljava/lang/String;


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "50"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "150"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "50"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "150"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/FDTimer;->timerValue:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 11
    .parameter "p"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-wide/high16 v5, 0x4024

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v1, "FDTimer"

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/FDTimer;->LOG_TAG:Ljava/lang/String;

    .line 75
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/String;

    .line 76
    .local v0, timerStr:[Ljava/lang/String;
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/FDTimer;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 78
    const-string v1, "persist.radio.fd.off.counter"

    const-string v2, "5"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 79
    sget-object v1, Lcom/android/internal/telephony/gsm/FDTimer;->timerValue:[Ljava/lang/String;

    sget-object v2, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOffLegacyFD:Lcom/android/internal/telephony/gsm/FDTimerType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/FDTimerType;->ordinal()I

    move-result v2

    aget-object v3, v0, v7

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 80
    const-string v1, "persist.radio.fd.counter"

    const-string v2, "15"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 81
    sget-object v1, Lcom/android/internal/telephony/gsm/FDTimer;->timerValue:[Ljava/lang/String;

    sget-object v2, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOnLegacyFD:Lcom/android/internal/telephony/gsm/FDTimerType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/FDTimerType;->ordinal()I

    move-result v2

    aget-object v3, v0, v8

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 82
    const-string v1, "persist.radio.fd.off.r8.counter"

    const-string v2, "5"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 83
    sget-object v1, Lcom/android/internal/telephony/gsm/FDTimer;->timerValue:[Ljava/lang/String;

    sget-object v2, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOffR8FD:Lcom/android/internal/telephony/gsm/FDTimerType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/FDTimerType;->ordinal()I

    move-result v2

    aget-object v3, v0, v9

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 84
    const-string v1, "persist.radio.fd.r8.counter"

    const-string v2, "15"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 85
    sget-object v1, Lcom/android/internal/telephony/gsm/FDTimer;->timerValue:[Ljava/lang/String;

    sget-object v2, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOnR8FD:Lcom/android/internal/telephony/gsm/FDTimerType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/FDTimerType;->ordinal()I

    move-result v2

    aget-object v3, v0, v10

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 86
    const-string v1, "FDTimer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default FD timers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gsm/FDTimer;->timerValue:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gsm/FDTimer;->timerValue:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gsm/FDTimer;->timerValue:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gsm/FDTimer;->timerValue:[Ljava/lang/String;

    aget-object v3, v3, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method


# virtual methods
.method public getDefaultTimerValue()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFDTimerValue()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/android/internal/telephony/gsm/FDTimer;->timerValue:[Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfSupportedTypes()I
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/internal/telephony/gsm/FDTimerType;->SupportedTimerTypes:Lcom/android/internal/telephony/gsm/FDTimerType;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/FDTimerType;->ordinal()I

    move-result v0

    return v0
.end method

.method public setFDTimerValue([Ljava/lang/String;Landroid/os/Message;)I
    .locals 9
    .parameter "newTimerValue"
    .parameter "onComplete"

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 92
    const-string v3, "ril.fd.mode"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 93
    .local v1, FD_MD_Enable_Mode:I
    const-string v3, "gsm.3gswitch"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 94
    .local v0, FDSimID:I
    if-ne v1, v5, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/FDTimer;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 95
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 96
    sget-object v3, Lcom/android/internal/telephony/gsm/FDTimer;->timerValue:[Ljava/lang/String;

    aget-object v4, p1, v2

    aput-object v4, v3, v2

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/FDTimer;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gsm/FDModeType;->SET_FD_INACTIVITY_TIMER:Lcom/android/internal/telephony/gsm/FDModeType;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/FDModeType;->ordinal()I

    move-result v4

    sget-object v5, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOffLegacyFD:Lcom/android/internal/telephony/gsm/FDTimerType;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/FDTimerType;->ordinal()I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/gsm/FDTimer;->timerValue:[Ljava/lang/String;

    sget-object v7, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOffLegacyFD:Lcom/android/internal/telephony/gsm/FDTimerType;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/FDTimerType;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v4, v5, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->setFDMode(IIILandroid/os/Message;)V

    .line 100
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/FDTimer;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gsm/FDModeType;->SET_FD_INACTIVITY_TIMER:Lcom/android/internal/telephony/gsm/FDModeType;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/FDModeType;->ordinal()I

    move-result v4

    sget-object v5, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOnLegacyFD:Lcom/android/internal/telephony/gsm/FDTimerType;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/FDTimerType;->ordinal()I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/gsm/FDTimer;->timerValue:[Ljava/lang/String;

    sget-object v7, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOnLegacyFD:Lcom/android/internal/telephony/gsm/FDTimerType;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/FDTimerType;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v4, v5, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->setFDMode(IIILandroid/os/Message;)V

    .line 101
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/FDTimer;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gsm/FDModeType;->SET_FD_INACTIVITY_TIMER:Lcom/android/internal/telephony/gsm/FDModeType;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/FDModeType;->ordinal()I

    move-result v4

    sget-object v5, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOffR8FD:Lcom/android/internal/telephony/gsm/FDTimerType;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/FDTimerType;->ordinal()I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/gsm/FDTimer;->timerValue:[Ljava/lang/String;

    sget-object v7, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOffR8FD:Lcom/android/internal/telephony/gsm/FDTimerType;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/FDTimerType;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v4, v5, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->setFDMode(IIILandroid/os/Message;)V

    .line 102
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/FDTimer;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gsm/FDModeType;->SET_FD_INACTIVITY_TIMER:Lcom/android/internal/telephony/gsm/FDModeType;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/FDModeType;->ordinal()I

    move-result v4

    sget-object v5, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOnR8FD:Lcom/android/internal/telephony/gsm/FDTimerType;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/FDTimerType;->ordinal()I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/gsm/FDTimer;->timerValue:[Ljava/lang/String;

    sget-object v7, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOnR8FD:Lcom/android/internal/telephony/gsm/FDTimerType;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/FDTimerType;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v4, v5, v6, p2}, Lcom/android/internal/telephony/CommandsInterface;->setFDMode(IIILandroid/os/Message;)V

    .line 104
    .end local v2           #i:I
    :cond_1
    const/4 v3, 0x0

    return v3
.end method
