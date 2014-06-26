.class public Lcom/android/internal/telephony/DeviceSpecPropertyParser;
.super Ljava/lang/Object;
.source "DeviceSpecPropertyParser.java"


# static fields
.field protected static final DEBUG:Z = false

.field protected static final LOG_TAG:Ljava/lang/String; = "DeviceSpecPropertyParser"

.field protected static final MASK_ADAPT_MODEM_NETWORK_TYPE:I = 0x100

.field protected static final MASK_AUTO_SELECT_NETWORK:I = 0x20000

.field protected static final MASK_CALLMUTE:I = 0x4

.field protected static final MASK_ICC_LOCK_CORRECTION:I = 0x2000000

.field protected static final MASK_NEED_POLL_DATA_REGISTRATION:I = 0x80000

.field protected static final MASK_NOCALLDETAILS:I = 0x10

.field protected static final MASK_NOSUBDEACTIVATED:I = 0x20

.field protected static final MASK_NO_GET_LTE_LEVEL:I = 0x1000000

.field protected static final MASK_NO_SEND_SUB_DATA:I = 0x800000

.field protected static final MASK_NULLAPN:I = 0x8

.field protected static final MASK_PINLOCKENABLE:I = 0x80

.field protected static final MASK_PLAYTONE_AFTER_BLUETOOTH_TALKING:I = 0x10000

.field protected static final MASK_RIL2_FORBID_RECORD:I = 0x4000000

.field protected static final MASK_RIL7_CARDAPP:I = 0x40000

.field protected static final MASK_SAMSUNG_ICC_STATUS:I = 0x400000

.field protected static final MASK_SINGLEPDP:I = 0x1

.field protected static final MASK_SWITCH_CDMA_GSM:I = 0x100000

.field protected static final MASK_USIMDATA:I = 0x2

.field protected static final MASK_VIDEO_SYMBOL_IN_CALL_LIST:I = 0x200000

.field protected static device_spec_property:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 107
    const-string/jumbo v0, "ro.baidu.telephony.dev_spec"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceSpecProp()V
    .locals 2

    .prologue
    .line 110
    const-string/jumbo v0, "ro.baidu.telephony.dev_spec"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    .line 112
    return-void
.end method

.method public static isAdaptModemNetworkType()Z
    .locals 2

    .prologue
    .line 213
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 215
    .local v0, result:Z
    :goto_0
    return v0

    .line 213
    .end local v0           #result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAutoSelectNetwork()Z
    .locals 3

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    .line 172
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeedCallMute()Z
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    .line 130
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeedCorrectIccLock()Z
    .locals 3

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    const/high16 v2, 0x200

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 236
    :goto_0
    return v0

    .line 234
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeedNullApn()Z
    .locals 2

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    .line 137
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeedPlayToneAfterBtTalking()Z
    .locals 3

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeedPollDataReg()Z
    .locals 3

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 188
    :goto_0
    return v0

    .line 186
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeedSinglePdp()Z
    .locals 2

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeedUsimData()Z
    .locals 2

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 125
    :goto_0
    return v0

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNoCallDetails()Z
    .locals 2

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 146
    :goto_0
    return v0

    .line 144
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNoGetLteLevel()Z
    .locals 3

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    const/high16 v2, 0x100

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 229
    :goto_0
    return v0

    .line 227
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNoSendSubData()Z
    .locals 3

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    const/high16 v2, 0x80

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    .line 220
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNoSubDeactivated()Z
    .locals 2

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 160
    :goto_0
    return v0

    .line 158
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotSupportPinLockEnable()Z
    .locals 2

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 153
    :goto_0
    return v0

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRil2ForbidIncallRecord()Z
    .locals 3

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    const/high16 v2, 0x400

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 242
    :goto_0
    return v0

    .line 240
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRil7CardApp()Z
    .locals 3

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    const/high16 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 181
    :goto_0
    return v0

    .line 179
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSamsungIccStatus()Z
    .locals 3

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    const/high16 v2, 0x40

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 209
    :goto_0
    return v0

    .line 207
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSwitchCdmaGsm()Z
    .locals 3

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    .line 193
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoSymbolInCallList()Z
    .locals 3

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, result:Z
    sget v1, Lcom/android/internal/telephony/DeviceSpecPropertyParser;->device_spec_property:I

    const/high16 v2, 0x20

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 202
    :goto_0
    return v0

    .line 200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
