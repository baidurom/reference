.class public Lcom/android/internal/telephony/gsm/SIMRecords;
.super Lcom/android/internal/telephony/IccRecords;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SIMRecords$1;,
        Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;,
        Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;,
        Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;,
        Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;
    }
.end annotation


# static fields
.field private static final ACTION_SIM_FILES_CHANGED:Ljava/lang/String; = "android.intent.action.sim.SIM_FILES_CHANGED"

.field private static final ACTION_SIM_FILES_CHANGED_2:Ljava/lang/String; = "android.intent.action.sim.SIM_FILES_CHANGED_2"

.field static final CFF_LINE1_MASK:I = 0xf

.field static final CFF_LINE1_RESET:I = 0xf0

.field static final CFF_UNCONDITIONAL_ACTIVE:I = 0xa

.field static final CFF_UNCONDITIONAL_DEACTIVE:I = 0x5

.field private static final CPHS_SST_MBN_ENABLED:I = 0x30

.field private static final CPHS_SST_MBN_MASK:I = 0x30

.field private static final CRASH_RIL:Z = false

.field protected static final DBG:Z = true

.field protected static final EVENT_GET_AD_DONE:I = 0x9

.field private static final EVENT_GET_ALL_OPL_DONE:I = 0x68

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CFF_DONE:I = 0x18

.field private static final EVENT_GET_CFIS_DONE:I = 0x20

.field private static final EVENT_GET_CPHSONS_DONE:I = 0x69

.field private static final EVENT_GET_CPHS_MAILBOX_DONE:I = 0xb

.field private static final EVENT_GET_CSP_CPHS_DONE:I = 0x21

.field protected static final EVENT_GET_ICCID_DONE:I = 0x4

.field protected static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_INFO_CPHS_DONE:I = 0x1a

.field private static final EVENT_GET_MBDN_DONE:I = 0x6

.field private static final EVENT_GET_MBI_DONE:I = 0x5

.field protected static final EVENT_GET_MSISDN_DONE:I = 0xa

.field private static final EVENT_GET_MWIS_DONE:I = 0x7

.field private static final EVENT_GET_PNN_DONE:I = 0xf

.field private static final EVENT_GET_SHORT_CPHSONS_DONE:I = 0x6a

.field private static final EVENT_GET_SIM_ECC_DONE:I = 0x66

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SPDI_DONE:I = 0xd

.field private static final EVENT_GET_SPN_DONE:I = 0xc

.field protected static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_GET_USIM_ECC_DONE:I = 0x67

.field private static final EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE:I = 0x8

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_PHB_READY:I = 0xca

.field private static final EVENT_QUERY_ICCID_DONE:I = 0x6b

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_RADIO_STATE_CHANGED:I = 0xc9

.field private static final EVENT_SET_CPHS_MAILBOX_DONE:I = 0x19

.field private static final EVENT_SET_MBDN_DONE:I = 0x14

.field private static final EVENT_SET_MSISDN_DONE:I = 0x1e

.field private static final EVENT_SIM_READY:I = 0x1

.field private static final EVENT_SIM_REFRESH:I = 0x1f

.field private static final EVENT_SMS_ON_SIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field public static final INTENT_KEY_SIM_COUNT:Ljava/lang/String; = "simCount"

.field protected static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String; = null

.field static final SPN_RULE_SHOW_PLMN:I = 0x2

.field static final SPN_RULE_SHOW_SPN:I = 0x1

.field static final TAG_FULL_NETWORK_NAME:I = 0x43

.field static final TAG_SHORT_NETWORK_NAME:I = 0x45

.field static final TAG_SPDI:I = 0xa3

.field static final TAG_SPDI_PLMN_LIST:I = 0x80

.field private static final simServiceNumber:[I

.field private static final usimServiceNumber:[I


# instance fields
.field bEccRequired:Z

.field private callForwardingEnabled:Z

.field cphsOnsl:Ljava/lang/String;

.field cphsOnss:Ljava/lang/String;

.field efCPHS_MWI:[B

.field efMWIS:[B

.field private hasQueryIccId:Z

.field private iccIdQueryState:I

.field private imsi:Ljava/lang/String;

.field private mCphsInfo:[B

.field mCspPlmnEnabled:Z

.field mEfCff:[B

.field mEfCfis:[B

.field mEfEcc:Ljava/lang/String;

.field mEfSST:[B

.field private mOperatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPnnNetworkNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;",
            ">;"
        }
    .end annotation
.end field

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

.field mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

.field mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

.field spdiNetworks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field spnDisplayCondition:I

.field private spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    .line 215
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->simServiceNumber:[I

    .line 219
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->usimServiceNumber:[I

    .line 225
    const/16 v0, 0x6c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "405025"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "405026"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "405027"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "405028"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "405029"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "405030"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "405031"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "405032"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "405033"

    aput-object v2, v0, v1

    const-string v1, "405034"

    aput-object v1, v0, v3

    const/16 v1, 0xa

    const-string v2, "405035"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "405036"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "405037"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "405038"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "405039"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "405040"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "405041"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "405042"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "405043"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "405044"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "405045"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "405046"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "405047"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "405750"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "405751"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "405752"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "405753"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "405754"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "405755"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "405756"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "405799"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "405800"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "405801"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "405802"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "405803"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "405804"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "405805"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "405806"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "405807"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "405808"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "405809"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "405810"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "405811"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "405812"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "405813"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "405814"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "405815"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "405816"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "405817"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "405818"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "405819"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "405820"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "405821"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "405822"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "405823"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "405824"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "405825"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "405826"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "405827"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "405828"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "405829"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "405830"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "405831"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "405832"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "405833"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "405834"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "405835"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "405836"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "405837"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "405838"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "405839"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "405840"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "405841"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "405842"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "405843"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "405844"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "405845"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "405846"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "405847"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "405848"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "405849"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "405850"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "405851"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "405852"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "405853"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "405875"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "405876"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "405877"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "405878"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "405879"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "405880"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "405881"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "405882"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "405883"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "405884"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "405885"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "405886"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "405908"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "405909"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "405910"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "405911"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "405925"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "405926"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "405927"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "405928"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "405929"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "405932"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "405913"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    return-void

    .line 215
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 219
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x47t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 6
    .parameter "p"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 248
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 95
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccIdQueryState:I

    .line 107
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    .line 108
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 110
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 111
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 112
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    .line 113
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    .line 114
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    .line 120
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 139
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    .line 141
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOperatorList:Ljava/util/ArrayList;

    .line 143
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfEcc:Ljava/lang/String;

    .line 144
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->bEccRequired:Z

    .line 250
    new-instance v1, Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 252
    new-instance v1, Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    .line 255
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    .line 258
    iput v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 260
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cphsOnsl:Ljava/lang/String;

    .line 261
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cphsOnss:Ljava/lang/String;

    .line 262
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->hasQueryIccId:Z

    .line 265
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 266
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 268
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x15

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 269
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x1f

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 270
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xca

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForPhbReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 271
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xc9

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 273
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRadioOffOrNotAvailable()V

    .line 275
    new-instance v1, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;

    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;-><init>(Lcom/android/internal/telephony/gsm/SIMRecords;Lcom/android/internal/telephony/gsm/SIMRecords$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimReceiver:Landroid/content/BroadcastReceiver;

    .line 276
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 277
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.dm.LAWMO_WIPE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    const-string v1, "action_pin_dismiss"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    const-string v1, "action_melock_dismiss"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 284
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/SIMRecords;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->wipeAllSIMContacts()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/AdnRecordCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    return-object v0
.end method

.method private broadCastDefaultSIMRemoved(I)V
    .locals 3
    .parameter "nSIMCount"

    .prologue
    .line 1561
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEFAULT_SIM_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1562
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "simCount"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCast intent ACTION_DEFAULT_SIM_REMOVED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1564
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1565
    return-void
.end method

.method private broadCastNewSIMDetected(I)V
    .locals 3
    .parameter "nSIMCount"

    .prologue
    .line 1554
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NEW_SIM_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1555
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "simCount"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCast intent ACTION_NEW_SIM_DETECTED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1557
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1558
    return-void
.end method

.method private fetchCPHSOns()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1963
    const-string v0, "fetchCPHSOns()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1964
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cphsOnsl:Ljava/lang/String;

    .line 1965
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cphsOnss:Ljava/lang/String;

    .line 1966
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f14

    const/16 v2, 0x69

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1968
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1969
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f18

    const/16 v2, 0x6a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1971
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1972
    return-void
.end method

.method private fetchEccList()V
    .locals 4

    .prologue
    const/16 v3, 0x6fb7

    .line 1906
    const-string v2, "fetchEccList()"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1907
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfEcc:Ljava/lang/String;

    .line 1908
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->bEccRequired:Z

    .line 1909
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 1910
    .local v0, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccCardType()Ljava/lang/String;

    move-result-object v1

    .line 1912
    .local v1, sIccType:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1913
    const-string v2, "USIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1914
    const/16 v2, 0x67

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1919
    :cond_0
    :goto_0
    return-void

    .line 1916
    :cond_1
    const/16 v2, 0x66

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private fetchPhbRecords()V
    .locals 5

    .prologue
    .line 1901
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v1, 0x6f40

    const/16 v2, 0x6f4a

    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    .line 1903
    return-void
.end method

.method private fetchPnnAndOpl()V
    .locals 5

    .prologue
    .line 1922
    const-string v3, "fetchPnnAndOpl()"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1923
    const/4 v0, 0x0

    .line 1925
    .local v0, bPnnOplActive:Z
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    if-eqz v3, :cond_0

    .line 1926
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccCardType()Ljava/lang/String;

    move-result-object v2

    .line 1928
    .local v2, iccType:Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v3, "USIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1929
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    array-length v3, v3

    const/4 v4, 0x6

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    const/4 v4, 0x5

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x30

    const/16 v4, 0x30

    if-ne v3, v4, :cond_0

    .line 1930
    const/4 v0, 0x1

    .line 1936
    .end local v2           #iccType:Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bPnnOplActive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1938
    if-eqz v0, :cond_1

    .line 1939
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    .line 1940
    .local v1, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    const/16 v3, 0x6fc5

    const/16 v4, 0xf

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1941
    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1942
    const/16 v3, 0x6fc6

    const/16 v4, 0x68

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1943
    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1945
    .end local v1           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    :cond_1
    return-void

    .line 1932
    .restart local v2       #iccType:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    array-length v3, v3

    const/16 v4, 0xd

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    const/16 v4, 0xc

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_0

    .line 1933
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private fetchSpn()V
    .locals 5

    .prologue
    .line 1948
    const-string v2, "fetchSpn()"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1949
    const/4 v0, 0x0

    .line 1951
    .local v0, bSpnActive:Z
    sget-object v2, Lcom/android/internal/telephony/Phone$IccService;->SPN:Lcom/android/internal/telephony/Phone$IccService;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMServiceStatus(Lcom/android/internal/telephony/Phone$IccService;)Lcom/android/internal/telephony/Phone$IccServiceStatus;

    move-result-object v1

    .line 1952
    .local v1, iccSerStatus:Lcom/android/internal/telephony/Phone$IccServiceStatus;
    sget-object v2, Lcom/android/internal/telephony/Phone$IccServiceStatus;->ACTIVATED:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    if-ne v1, v2, :cond_0

    .line 1953
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 1954
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    const/16 v3, 0x6f46

    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1956
    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1960
    :goto_0
    return-void

    .line 1958
    :cond_0
    const-string v2, "GSM"

    const-string v3, "[SIMRecords] SPN service is not activated  "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getIccCardType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2419
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 2420
    .local v0, card:Lcom/android/internal/telephony/IccCard;
    const/4 v1, 0x0

    .line 2421
    .local v1, iccType:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2422
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v1

    .line 2424
    :cond_0
    return-object v1
.end method

.method private getIccIdsDone(Z)V
    .locals 27
    .parameter "hasSIM"

    .prologue
    .line 1428
    const/4 v11, 0x0

    .line 1429
    .local v11, oldIccIdInSlot:Ljava/lang/String;
    const-string v23, "GSM"

    const-string v24, "getIccIdsDone  "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v24

    invoke-static/range {v23 .. v24}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v12

    .line 1431
    .local v12, oldSimInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v12, :cond_a

    .line 1432
    iget-object v11, v12, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    .line 1433
    const-string v23, "GSM"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "getIccIdsDone old IccId In Slot0 is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    new-instance v22, Landroid/content/ContentValues;

    const/16 v23, 0x1

    invoke-direct/range {v22 .. v23}, Landroid/content/ContentValues;-><init>(I)V

    .line 1435
    .local v22, value:Landroid/content/ContentValues;
    const-string/jumbo v23, "slot"

    const/16 v24, -0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    sget-object v24, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v12, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    move-wide/from16 v25, v0

    invoke-static/range {v24 .. v26}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1443
    .end local v22           #value:Landroid/content/ContentValues;
    :goto_0
    const/4 v8, 0x0

    .line 1444
    .local v8, nNewCardCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v25

    invoke-static/range {v23 .. v25}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    .line 1446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 1448
    add-int/lit8 v8, v8, 0x1

    .line 1452
    :cond_0
    const-wide/16 v19, -0x5

    .line 1453
    .local v19, simIdForSlot:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 1454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoByICCId(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v21

    .line 1455
    .local v21, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v21, :cond_1

    .line 1456
    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    move-wide/from16 v19, v0

    .line 1461
    .end local v21           #simInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "video_call_sim_setting"

    const-wide/16 v25, -0x5

    invoke-static/range {v23 .. v26}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v15

    .line 1462
    .local v15, oldVTDefaultSIM:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "voice_call_sim_setting"

    const-wide/16 v25, -0x5

    invoke-static/range {v23 .. v26}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v17

    .line 1464
    .local v17, oldVoiceCallDefaultSIM:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "sms_sim_setting"

    const-wide/16 v25, -0x5

    invoke-static/range {v23 .. v26}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v13

    .line 1465
    .local v13, oldSmsDefaultSIM:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "gprs_connection_sim_setting"

    const-wide/16 v25, -0x5

    invoke-static/range {v23 .. v26}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v9

    .line 1467
    .local v9, oldGprsDefaultSIM:J
    const/4 v6, 0x0

    .line 1470
    .local v6, hasDefaultSIMRemoved:Z
    if-eqz p1, :cond_2

    .line 1479
    :cond_2
    if-eqz p1, :cond_5

    .line 1481
    const-wide/16 v23, -0x5

    cmp-long v23, v17, v23

    if-nez v23, :cond_3

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "voice_call_sim_setting"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-wide/from16 v2, v19

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1485
    :cond_3
    const-wide/16 v23, -0x5

    cmp-long v23, v13, v23

    if-nez v23, :cond_4

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "sms_sim_setting"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-wide/from16 v2, v19

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1489
    :cond_4
    const-wide/16 v23, -0x5

    cmp-long v23, v9, v23

    if-nez v23, :cond_5

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "gprs_connection_sim_setting"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-wide/from16 v2, v19

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1494
    :cond_5
    if-lez v8, :cond_6

    .line 1495
    const-string v23, "getIccIdsDone New SIM detected. "

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1496
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->setColorForNewSIM()V

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "airplane_mode_on"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1500
    .local v5, airplaneMode:I
    if-lez v5, :cond_6

    .line 1501
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setDefaultNameForNewSIM(Ljava/lang/String;)V

    .line 1506
    .end local v5           #airplaneMode:I
    :cond_6
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move-wide/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->isSIMRemoved(JJ)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "voice_call_sim_setting"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-wide/from16 v2, v19

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1508
    const/4 v6, 0x1

    .line 1511
    :cond_7
    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v13, v14, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->isSIMRemoved(JJ)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "sms_sim_setting"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-wide/from16 v2, v19

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1513
    const/4 v6, 0x1

    .line 1516
    :cond_8
    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v9, v10, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->isSIMRemoved(JJ)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 1520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "gprs_connection_sim_setting"

    const-wide/16 v25, 0x0

    invoke-static/range {v23 .. v26}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1522
    const/4 v6, 0x1

    .line 1525
    :cond_9
    const-string v23, "GSM"

    const-string v24, "getIccIdsDone set PROPERTY_SIM_INFO_READY to true. "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    const-string v23, "gsm.siminfo.ready"

    const-string/jumbo v24, "true"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    const-string v23, "GSM"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "getIccIdsDone  PROPERTY_SIM_INFO_READY after set is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "gsm.siminfo.ready"

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    new-instance v7, Landroid/content/Intent;

    const-string v23, "android.intent.action.SIM_INFO_UPDATE"

    move-object/from16 v0, v23

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1530
    .local v7, intent:Landroid/content/Intent;
    const-string v23, "GSM"

    const-string v24, "broadCast intent ACTION_SIM_INFO_UPDATE "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    const-string v23, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v23

    invoke-static {v7, v0}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1541
    return-void

    .line 1439
    .end local v6           #hasDefaultSIMRemoved:Z
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #nNewCardCount:I
    .end local v9           #oldGprsDefaultSIM:J
    .end local v13           #oldSmsDefaultSIM:J
    .end local v15           #oldVTDefaultSIM:J
    .end local v17           #oldVoiceCallDefaultSIM:J
    .end local v19           #simIdForSlot:J
    :cond_a
    const-string v23, "GSM"

    const-string v24, "getIccIdsDone No sim in slot0 for last time "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getSpnFsm(ZLandroid/os/AsyncResult;)V
    .locals 6
    .parameter "start"
    .parameter "ar"

    .prologue
    const/4 v5, -0x1

    const/16 v4, 0xc

    const/4 v3, 0x0

    .line 2158
    if-eqz p1, :cond_0

    .line 2159
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->INIT:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 2162
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$1;->$SwitchMap$com$android$internal$telephony$gsm$SIMRecords$Get_Spn_Fsm_State:[I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2246
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 2248
    :goto_0
    return-void

    .line 2164
    :pswitch_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 2166
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x6f46

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2168
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2170
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_3GPP:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto :goto_0

    .line 2173
    :pswitch_1
    if-eqz p2, :cond_3

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 2174
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 2175
    .local v0, data:[B
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 2178
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    const/16 v2, 0xff

    if-ne v1, v2, :cond_1

    .line 2179
    iput v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 2182
    :cond_1
    const/4 v1, 0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 2184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spnDisplayCondition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2186
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v1

    if-nez v1, :cond_2

    .line 2187
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gsm.sim.operator.alpha"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    :goto_1
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto :goto_0

    .line 2189
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gsm.sim.operator.alpha.2"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2194
    .end local v0           #data:[B
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x6f14

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2196
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2198
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 2202
    iput v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    goto/16 :goto_0

    .line 2206
    :pswitch_2
    if-eqz p2, :cond_5

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_5

    .line 2207
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 2208
    .restart local v0       #data:[B
    array-length v1, v0

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 2211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN_CPHS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2212
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v1

    if-nez v1, :cond_4

    .line 2213
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gsm.sim.operator.alpha"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2218
    :goto_2
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 2215
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gsm.sim.operator.alpha.2"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2220
    .end local v0           #data:[B
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x6f18

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2222
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2224
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 2228
    :pswitch_3
    if-eqz p2, :cond_7

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_7

    .line 2229
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 2230
    .restart local v0       #data:[B
    array-length v1, v0

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 2233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2234
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v1

    if-nez v1, :cond_6

    .line 2235
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gsm.sim.operator.alpha"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2243
    .end local v0           #data:[B
    :goto_3
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 2237
    .restart local v0       #data:[B
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gsm.sim.operator.alpha.2"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2240
    .end local v0           #data:[B
    :cond_7
    const-string v1, "No SPN loaded in either CHPS or 3GPP"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 2162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleEfCspData([B)V
    .locals 7
    .parameter "data"

    .prologue
    const/4 v6, 0x1

    .line 2555
    array-length v3, p1

    div-int/lit8 v1, v3, 0x2

    .line 2557
    .local v1, usedCspGroups:I
    const/16 v2, -0x40

    .line 2559
    .local v2, valueAddedServicesGroup:B
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 2560
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 2561
    mul-int/lit8 v3, v0, 0x2

    aget-byte v3, p1, v3

    if-ne v3, v2, :cond_1

    .line 2562
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CSP] found ValueAddedServicesGroup, value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_0

    .line 2568
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 2581
    :goto_1
    return-void

    .line 2570
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 2573
    const-string v3, "GSM"

    const-string v4, "[CSP] Set Automatic Network Selection"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/PhoneBase;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto :goto_1

    .line 2560
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2580
    :cond_2
    const-string v3, "GSM"

    const-string v4, "[CSP] Value Added Service Group (0xC0), not found!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleFileUpdate(I)V
    .locals 5
    .parameter "efid"

    .prologue
    .line 1620
    sparse-switch p1, :sswitch_data_0

    .line 1642
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 1645
    :goto_0
    return-void

    .line 1622
    :sswitch_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1623
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v1, 0x6fc7

    const/16 v2, 0x6fc8

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 1627
    :sswitch_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1628
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v1, 0x6f17

    const/16 v2, 0x6f4a

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 1632
    :sswitch_2
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1633
    const-string v0, "GSM"

    const-string v1, "[CSP] SIM Refresh for EF_CSP_CPHS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f15

    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0

    .line 1620
    :sswitch_data_0
    .sparse-switch
        0x6f15 -> :sswitch_2
        0x6f17 -> :sswitch_1
        0x6fc7 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleSimRefresh([I)V
    .locals 7
    .parameter "result"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1648
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_2

    .line 1649
    :cond_0
    const-string v3, "handleSimRefresh without input"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1729
    :cond_1
    :goto_0
    return-void

    .line 1653
    :cond_2
    aget v3, p1, v5

    packed-switch v3, :pswitch_data_0

    .line 1699
    const-string v3, "handleSimRefresh with unknown operation"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1704
    :cond_3
    :goto_1
    aget v3, p1, v5

    if-eqz v3, :cond_4

    aget v3, p1, v5

    if-ne v3, v6, :cond_5

    .line 1706
    :cond_4
    const-string v3, "GSM"

    const-string/jumbo v4, "notify apps that SIM files changed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v3

    if-ne v3, v6, :cond_9

    .line 1709
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.sim.SIM_FILES_CHANGED_2"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1713
    .local v2, intent:Landroid/content/Intent;
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1717
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    aget v3, p1, v5

    if-eq v3, v6, :cond_6

    aget v3, p1, v5

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1720
    :cond_6
    const-string v3, "GSM"

    const-string/jumbo v4, "notify stk app to remove the idle text"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v3

    if-nez v3, :cond_a

    .line 1723
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.aciton.stk.REMOVE_IDLE_TEXT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1727
    .restart local v2       #intent:Landroid/content/Intent;
    :goto_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1655
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_0
    const-string v3, "handleSimRefresh with SIM_REFRESH_FILE_UPDATED"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1657
    aget v0, p1, v6

    .line 1658
    .local v0, efid:I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleFileUpdate(I)V

    .line 1660
    const/4 v1, 0x1

    .local v1, i:I
    :goto_4
    array-length v3, p1

    if-ge v1, v3, :cond_3

    .line 1661
    aget v3, p1, v1

    const/16 v4, 0x6f3a

    if-eq v3, v4, :cond_7

    aget v3, p1, v1

    const/16 v4, 0x6f3b

    if-eq v3, v4, :cond_7

    aget v3, p1, v1

    const/16 v4, 0x6f40

    if-eq v3, v4, :cond_7

    aget v3, p1, v1

    const/16 v4, 0x6f49

    if-ne v3, v4, :cond_8

    .line 1665
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 1666
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchPhbRecords()V

    goto :goto_1

    .line 1660
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1673
    .end local v0           #efid:I
    .end local v1           #i:I
    :pswitch_1
    const-string v3, "handleSimRefresh with SIM_REFRESH_INIT"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1675
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 1676
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    goto/16 :goto_1

    .line 1679
    :pswitch_2
    const-string v3, "handleSimRefresh with SIM_REFRESH_RESET"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1682
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->resetRadio(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1711
    :cond_9
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.sim.SIM_FILES_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2       #intent:Landroid/content/Intent;
    goto/16 :goto_2

    .line 1725
    .end local v2           #intent:Landroid/content/Intent;
    :cond_a
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.aciton.stk.REMOVE_IDLE_TEXT_2"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_3

    .line 1653
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleSms([B)V
    .locals 9
    .parameter "ba"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 1741
    aget-byte v4, p1, v7

    if-eqz v4, :cond_0

    .line 1742
    const-string v4, "ENF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, p1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    :cond_0
    aget-byte v4, p1, v7

    if-ne v4, v8, :cond_1

    .line 1747
    array-length v1, p1

    .line 1751
    .local v1, n:I
    add-int/lit8 v4, v1, -0x1

    new-array v2, v4, [B

    .line 1752
    .local v2, pdu:[B
    const/4 v4, 0x1

    add-int/lit8 v5, v1, -0x1

    invoke-static {p1, v4, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1753
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 1755
    .local v0, message:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->dispatchGsmMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v3

    .line 1756
    .local v3, result:I
    if-ne v3, v8, :cond_1

    .line 1757
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->notifyLastIncomingSms(I)V

    .line 1761
    .end local v0           #message:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v1           #n:I
    .end local v2           #pdu:[B
    .end local v3           #result:I
    :cond_1
    return-void
.end method

.method private handleSmses(Ljava/util/ArrayList;)V
    .locals 11
    .parameter "messages"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1765
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1767
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1768
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    .line 1770
    .local v0, ba:[B
    aget-byte v6, v0, v9

    if-eqz v6, :cond_0

    .line 1771
    const-string v6, "ENF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "status "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    :cond_0
    aget-byte v6, v0, v9

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 1777
    array-length v4, v0

    .line 1781
    .local v4, n:I
    add-int/lit8 v6, v4, -0x1

    new-array v5, v6, [B

    .line 1782
    .local v5, pdu:[B
    add-int/lit8 v6, v4, -0x1

    invoke-static {v0, v10, v5, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1783
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v3

    .line 1785
    .local v3, message:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->dispatchGsmMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 1790
    aput-byte v10, v0, v9

    .line 1767
    .end local v3           #message:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v4           #n:I
    .end local v5           #pdu:[B
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1798
    .end local v0           #ba:[B
    :cond_2
    return-void
.end method

.method private isCphsMailboxEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2295
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    if-nez v2, :cond_0

    .line 2296
    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private isOnMatchingPlmn(Ljava/lang/String;)Z
    .locals 5
    .parameter "plmn"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2116
    if-nez p1, :cond_1

    .line 2129
    :cond_0
    :goto_0
    return v2

    .line 2118
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 2119
    goto :goto_0

    .line 2122
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 2123
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2124
    .local v1, spdiNet:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 2125
    goto :goto_0
.end method

.method private isSIMRemoved(JJ)Z
    .locals 3
    .parameter "defSIMId"
    .parameter "curSIM"

    .prologue
    const/4 v0, 0x0

    .line 1544
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_1

    .line 1549
    :cond_0
    :goto_0
    return v0

    .line 1546
    :cond_1
    cmp-long v1, p1, p3

    if-eqz v1, :cond_0

    .line 1547
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseEFopl(Ljava/util/ArrayList;)V
    .locals 13
    .parameter "messages"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/16 v9, 0x10

    const/4 v8, 0x0

    .line 2333
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2334
    .local v0, count:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parseEFopl(): opl has "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " records"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2336
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOperatorList:Ljava/util/ArrayList;

    .line 2337
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2338
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v1, v6

    check-cast v1, [B

    .line 2339
    .local v1, data:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parseEFopl(): opl record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " content is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2341
    new-instance v5, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;-><init>()V

    .line 2343
    .local v5, oplRec:Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;
    invoke-static {v1, v8, v12}, Lcom/android/internal/telephony/IccUtils;->parsePlmnToString([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->sPlmn:Ljava/lang/String;

    .line 2344
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parseEFopl(): opl sPlmn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->sPlmn:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2346
    new-array v4, v11, [B

    .line 2347
    .local v4, minLac:[B
    aget-byte v6, v1, v12

    aput-byte v6, v4, v8

    .line 2348
    const/4 v6, 0x4

    aget-byte v6, v1, v6

    aput-byte v6, v4, v10

    .line 2349
    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->nMinLAC:I

    .line 2350
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parseEFopl(): opl nMinLAC = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->nMinLAC:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2352
    new-array v3, v11, [B

    .line 2353
    .local v3, maxLAC:[B
    const/4 v6, 0x5

    aget-byte v6, v1, v6

    aput-byte v6, v3, v8

    .line 2354
    const/4 v6, 0x6

    aget-byte v6, v1, v6

    aput-byte v6, v3, v10

    .line 2355
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->nMaxLAC:I

    .line 2356
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parseEFopl(): opl nMaxLAC = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->nMaxLAC:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2358
    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->nPnnIndex:I

    .line 2359
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parseEFopl(): opl nPnnIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->nPnnIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2361
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2337
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2363
    .end local v1           #data:[B
    .end local v3           #maxLAC:[B
    .end local v4           #minLac:[B
    .end local v5           #oplRec:Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;
    :cond_0
    return-void
.end method

.method private parseEFpnn(Ljava/util/ArrayList;)V
    .locals 8
    .parameter "messages"

    .prologue
    const/4 v7, 0x0

    .line 2303
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2304
    .local v0, count:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseEFpnn(): pnn has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " records"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2306
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    .line 2307
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 2308
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v1, v5

    check-cast v1, [B

    .line 2309
    .local v1, data:[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseEFpnn(): pnn record "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " content is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2311
    new-instance v4, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v5, v1

    invoke-direct {v4, v1, v7, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 2312
    .local v4, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    new-instance v3, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;-><init>()V

    .line 2313
    .local v3, opName:Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;
    :goto_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2314
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    const/16 v6, 0x43

    if-ne v5, v6, :cond_1

    .line 2315
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v5, v7, v6}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    .line 2317
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseEFpnn(): pnn sFullName is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2313
    :cond_0
    :goto_2
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_1

    .line 2318
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    const/16 v6, 0x45

    if-ne v5, v6, :cond_0

    .line 2319
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v5, v7, v6}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    .line 2321
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseEFpnn(): pnn sShortName is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 2325
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2307
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2327
    .end local v1           #data:[B
    .end local v3           #opName:Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;
    .end local v4           #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_3
    return-void
.end method

.method private parseEfSpdi([B)V
    .locals 8
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    .line 2257
    new-instance v3, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v5, p1

    invoke-direct {v3, p1, v7, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 2259
    .local v3, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    const/4 v2, 0x0

    .line 2261
    .local v2, plmnEntries:[B
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2263
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    const/16 v6, 0xa3

    if-ne v5, v6, :cond_0

    .line 2264
    new-instance v4, Lcom/android/internal/telephony/gsm/SimTlv;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-direct {v4, v5, v7, v6}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .end local v3           #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    .local v4, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    move-object v3, v4

    .line 2267
    .end local v4           #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    .restart local v3       #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    const/16 v6, 0x80

    if-ne v5, v6, :cond_3

    .line 2268
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v2

    .line 2273
    :cond_1
    if-nez v2, :cond_4

    .line 2289
    :cond_2
    return-void

    .line 2261
    :cond_3
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_0

    .line 2277
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v2

    div-int/lit8 v6, v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 2279
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    add-int/lit8 v5, v0, 0x2

    array-length v6, v2

    if-ge v5, v6, :cond_2

    .line 2281
    const/4 v5, 0x3

    invoke-static {v2, v0, v5}, Lcom/android/internal/telephony/IccUtils;->parsePlmnToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 2284
    .local v1, plmnCode:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_5

    .line 2285
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_SPDI network: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2286
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2279
    :cond_5
    add-int/lit8 v0, v0, 0x3

    goto :goto_1
.end method

.method private setColorForNewSIM()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1569
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v4

    invoke-static {v3, v4}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 1570
    .local v1, simInfo:Landroid/provider/Telephony$SIMInfo;
    const/4 v0, -0x1

    .line 1571
    .local v0, simColor:I
    if-eqz v1, :cond_2

    .line 1572
    iget v0, v1, Landroid/provider/Telephony$SIMInfo;->mColor:I

    .line 1573
    if-ltz v0, :cond_0

    const/4 v3, 0x3

    if-le v0, v3, :cond_1

    .line 1574
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1575
    .local v2, valueColor1:Landroid/content/ContentValues;
    const/4 v0, 0x1

    .line 1576
    const-string v3, "color"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1577
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1580
    .end local v2           #valueColor1:Landroid/content/ContentValues;
    :cond_1
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setColorForNewSIM SimInfo simColor is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    :cond_2
    return-void
.end method

.method private setNumberForNewSIM()V
    .locals 7

    .prologue
    .line 1606
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v4

    invoke-static {v3, v4}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 1607
    .local v1, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v1, :cond_0

    .line 1608
    iget-object v2, v1, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    .line 1609
    .local v2, simNumber:Ljava/lang/String;
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setNumberForNewSIM SimInfo simNumber is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    if-nez v2, :cond_0

    .line 1611
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    iget-wide v5, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Telephony$SIMInfo;->setNumber(Landroid/content/Context;Ljava/lang/String;J)I

    .line 1612
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1613
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1614
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setNumberForNewSIM SimInfo simId is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " number is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #simNumber:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setSpnFromConfig(Ljava/lang/String;)V
    .locals 1
    .parameter "carrier"

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1875
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 1877
    :cond_0
    return-void
.end method

.method private setVoiceMailByCountry(Ljava/lang/String;)V
    .locals 1
    .parameter "spn"

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1882
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isVoiceMailFixed:Z

    .line 1883
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1884
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 1886
    :cond_0
    return-void
.end method

.method private wipeAllSIMContacts()V
    .locals 1

    .prologue
    .line 2490
    const-string/jumbo v0, "wipeAllSIMContacts"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2491
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 2492
    const-string/jumbo v0, "wipeAllSIMContacts after reset"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2493
    return-void
.end method


# virtual methods
.method public broadCastSetDefaultNameDone()V
    .locals 4

    .prologue
    .line 1599
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_NAME_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1600
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "simId"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1601
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1602
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadCast intent ACTION_SIM_NAME_UPDATE for sim "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    return-void
.end method

.method protected dispatchGsmMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 1
    .parameter "message"

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMReady(Landroid/os/Handler;)V

    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForPhbReady(Landroid/os/Handler;)V

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 294
    return-void
.end method

.method protected fetchSimRecords()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1975
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    .line 1976
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 1978
    .local v0, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIMRecords:fetchSimRecords "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    .line 1981
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1993
    const/16 v1, 0x6fc9

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1994
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1996
    const/16 v1, 0x6fad

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1997
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2000
    const/16 v1, 0x6fca

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2001
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2008
    const/16 v1, 0x6f11

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2011
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2015
    const/16 v1, 0x6fcb

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2016
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2017
    const/16 v1, 0x6f13

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2018
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2023
    const/16 v1, 0x6fcd

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2024
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2029
    const/16 v1, 0x6f38

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2030
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2032
    const/16 v1, 0x6f16

    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2033
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2035
    const/16 v1, 0x6f15

    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2036
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2037
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchCPHSOns()V

    .line 2063
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchPhbRecords()V

    .line 2065
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 297
    const-string v0, "GSM"

    const-string v1, "SIMRecords finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 7
    .parameter "plmn"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 2077
    const/4 v0, 0x0

    .line 2079
    .local v0, bSpnActive:Z
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    if-eqz v3, :cond_0

    .line 2080
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccCardType()Ljava/lang/String;

    move-result-object v1

    .line 2082
    .local v1, iccType:Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v3, "USIM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2083
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    array-length v3, v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    aget-byte v3, v3, v5

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_0

    .line 2084
    const/4 v0, 0x1

    .line 2085
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisplayRule USIM mEfSST is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set bSpnActive to true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2093
    .end local v1           #iccType:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 2095
    :cond_1
    const/4 v2, 0x2

    .line 2109
    .local v2, rule:I
    :cond_2
    :goto_1
    return v2

    .line 2087
    .end local v2           #rule:I
    .restart local v1       #iccType:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    array-length v3, v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    aget-byte v3, v3, v6

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_0

    .line 2088
    const/4 v0, 0x1

    .line 2089
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisplayRule SIM mEfSST is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set bSpnActive to true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2096
    .end local v1           #iccType:Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->isOnMatchingPlmn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2097
    const/4 v2, 0x1

    .line 2098
    .restart local v2       #rule:I
    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 2100
    or-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 2103
    .end local v2           #rule:I
    :cond_5
    const/4 v2, 0x2

    .line 2104
    .restart local v2       #rule:I
    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    .line 2106
    or-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getEonsIfExist(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 7
    .parameter "plmn"
    .parameter "nLac"
    .parameter "bLongNameRequired"

    .prologue
    const/4 v4, 0x0

    .line 2368
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EONS getEonsIfExist plmn is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " nLac is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bLongNameRequired: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2369
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOperatorList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 2415
    :cond_0
    :goto_0
    return-object v4

    .line 2373
    :cond_1
    const/4 v1, -0x1

    .line 2375
    .local v1, nPnnIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2376
    const/4 v1, 0x1

    .line 2377
    const-string v5, "EONS getEonsIfExist Plmn is hplmn"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2395
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EONS getEonsIfExist Index of pnn is  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2397
    const/4 v4, 0x0

    .line 2398
    .local v4, sEons:Ljava/lang/String;
    const/4 v5, 0x1

    if-lt v1, v5, :cond_3

    .line 2399
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;

    .line 2400
    .local v2, opName:Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;
    if-eqz p3, :cond_b

    .line 2401
    iget-object v5, v2, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 2402
    new-instance v4, Ljava/lang/String;

    .end local v4           #sEons:Ljava/lang/String;
    iget-object v5, v2, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2414
    .end local v2           #opName:Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;
    .restart local v4       #sEons:Ljava/lang/String;
    :cond_3
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EONS getEonsIfExist sEons is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2380
    .end local v4           #sEons:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_8

    .line 2381
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;

    .line 2383
    .local v3, oplRec:Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;
    iget-object v5, v3, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->sPlmn:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v3, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->sPlmn:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, v3, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->sPlmn:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_5
    iget v5, v3, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->nMinLAC:I

    if-nez v5, :cond_6

    iget v5, v3, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->nMaxLAC:I

    const v6, 0xfffe

    if-eq v5, v6, :cond_7

    :cond_6
    iget v5, v3, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->nMinLAC:I

    if-gt v5, p2, :cond_9

    iget v5, v3, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->nMaxLAC:I

    if-lt v5, p2, :cond_9

    .line 2385
    :cond_7
    iget v1, v3, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->nPnnIndex:I

    .line 2391
    .end local v3           #oplRec:Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;
    :cond_8
    if-nez v1, :cond_2

    goto/16 :goto_0

    .line 2388
    .restart local v3       #oplRec:Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EONS getEonsIfExist record number is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sPlmn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->sPlmn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " nMinLAC: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->nMinLAC:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " nMaxLAC: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->nMaxLAC:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " PnnIndex "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->nPnnIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2380
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 2403
    .end local v0           #i:I
    .end local v3           #oplRec:Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;
    .restart local v2       #opName:Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;
    .restart local v4       #sEons:Ljava/lang/String;
    :cond_a
    iget-object v5, v2, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 2404
    new-instance v4, Ljava/lang/String;

    .end local v4           #sEons:Ljava/lang/String;
    iget-object v5, v2, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v4       #sEons:Ljava/lang/String;
    goto/16 :goto_1

    .line 2406
    :cond_b
    if-nez p3, :cond_3

    .line 2407
    iget-object v5, v2, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    if-eqz v5, :cond_c

    .line 2408
    new-instance v4, Ljava/lang/String;

    .end local v4           #sEons:Ljava/lang/String;
    iget-object v5, v2, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v4       #sEons:Ljava/lang/String;
    goto/16 :goto_1

    .line 2409
    :cond_c
    iget-object v5, v2, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 2410
    new-instance v4, Ljava/lang/String;

    .end local v4           #sEons:Ljava/lang/String;
    iget-object v5, v2, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v4       #sEons:Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 601
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 602
    const-string v1, "GSM"

    const-string v2, "getOperatorNumeric: IMSI == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :goto_0
    return-object v0

    .line 605
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-nez v1, :cond_2

    .line 606
    :cond_1
    const-string v1, "GSM"

    const-string v2, "getOperatorNumeric: bad mncLength"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 612
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getSIMCPHSOns()Ljava/lang/String;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cphsOnsl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cphsOnsl:Ljava/lang/String;

    .line 628
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cphsOnss:Ljava/lang/String;

    goto :goto_0
.end method

.method getSIMOperatorNumeric()Ljava/lang/String;
    .locals 3

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-nez v0, :cond_1

    .line 616
    :cond_0
    const/4 v0, 0x0

    .line 621
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSIMServiceStatus(Lcom/android/internal/telephony/Phone$IccService;)Lcom/android/internal/telephony/Phone$IccServiceStatus;
    .locals 11
    .parameter "enService"

    .prologue
    .line 2428
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone$IccService;->getIndex()I

    move-result v2

    .line 2429
    .local v2, nServiceNum:I
    sget-object v6, Lcom/android/internal/telephony/Phone$IccServiceStatus;->UNKNOWN:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    .line 2430
    .local v6, simServiceStatus:Lcom/android/internal/telephony/Phone$IccServiceStatus;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSIMServiceStatus enService is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Service Index is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2432
    if-ltz v2, :cond_0

    sget-object v8, Lcom/android/internal/telephony/Phone$IccService;->UNSUPPORTED_SERVICE:Lcom/android/internal/telephony/Phone$IccService;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone$IccService;->getIndex()I

    move-result v8

    if-ge v2, v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    if-eqz v8, :cond_0

    .line 2433
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIccCardType()Ljava/lang/String;

    move-result-object v7

    .line 2434
    .local v7, simType:Ljava/lang/String;
    if-eqz v7, :cond_4

    const-string v8, "USIM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2435
    sget-object v8, Lcom/android/internal/telephony/gsm/SIMRecords;->usimServiceNumber:[I

    aget v3, v8, v2

    .line 2436
    .local v3, nUSTIndex:I
    if-gtz v3, :cond_1

    .line 2437
    sget-object v6, Lcom/android/internal/telephony/Phone$IccServiceStatus;->NOT_EXIST_IN_USIM:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    .line 2480
    .end local v3           #nUSTIndex:I
    .end local v7           #simType:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSIMServiceStatus simServiceStatus: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    return-object v6

    .line 2439
    .restart local v3       #nUSTIndex:I
    .restart local v7       #simType:Ljava/lang/String;
    :cond_1
    div-int/lit8 v5, v3, 0x8

    .line 2440
    .local v5, nbyte:I
    rem-int/lit8 v4, v3, 0x8

    .line 2441
    .local v4, nbit:I
    if-nez v4, :cond_2

    .line 2442
    const/4 v4, 0x7

    .line 2443
    add-int/lit8 v5, v5, -0x1

    .line 2447
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSIMServiceStatus USIM nbyte: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " nbit: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2449
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    array-length v8, v8

    if-le v8, v5, :cond_3

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    aget-byte v8, v8, v5

    const/4 v9, 0x1

    shl-int/2addr v9, v4

    and-int/2addr v8, v9

    if-lez v8, :cond_3

    .line 2450
    sget-object v6, Lcom/android/internal/telephony/Phone$IccServiceStatus;->ACTIVATED:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    goto :goto_0

    .line 2445
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2452
    :cond_3
    sget-object v6, Lcom/android/internal/telephony/Phone$IccServiceStatus;->INACTIVATED:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    goto :goto_0

    .line 2456
    .end local v3           #nUSTIndex:I
    .end local v4           #nbit:I
    .end local v5           #nbyte:I
    :cond_4
    sget-object v8, Lcom/android/internal/telephony/gsm/SIMRecords;->simServiceNumber:[I

    aget v1, v8, v2

    .line 2457
    .local v1, nSSTIndex:I
    if-gtz v1, :cond_5

    .line 2458
    sget-object v6, Lcom/android/internal/telephony/Phone$IccServiceStatus;->NOT_EXIST_IN_SIM:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    goto :goto_0

    .line 2460
    :cond_5
    div-int/lit8 v5, v1, 0x4

    .line 2461
    .restart local v5       #nbyte:I
    rem-int/lit8 v4, v1, 0x4

    .line 2462
    .restart local v4       #nbit:I
    if-nez v4, :cond_6

    .line 2463
    const/4 v4, 0x3

    .line 2464
    add-int/lit8 v5, v5, -0x1

    .line 2469
    :goto_2
    const/4 v8, 0x3

    mul-int/lit8 v9, v4, 0x2

    shl-int v0, v8, v9

    .line 2470
    .local v0, nMask:I
    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSIMServiceStatus SIM nbyte: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " nbit: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " nMask: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    array-length v8, v8

    if-le v8, v5, :cond_7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    aget-byte v8, v8, v5

    and-int/2addr v8, v0

    if-ne v8, v0, :cond_7

    .line 2472
    sget-object v6, Lcom/android/internal/telephony/Phone$IccServiceStatus;->ACTIVATED:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    goto/16 :goto_0

    .line 2466
    .end local v0           #nMask:I
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 2474
    .restart local v0       #nMask:I
    :cond_7
    sget-object v6, Lcom/android/internal/telephony/Phone$IccServiceStatus;->INACTIVATED:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    goto/16 :goto_0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    return-object v0
.end method

.method public getVoiceCallForwardingFlag()Z
    .locals 1

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 31
    .parameter "msg"

    .prologue
    .line 639
    const/16 v22, 0x0

    .line 641
    .local v22, isRecordLoadResponse:Z
    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1414
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/IccRecords;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1421
    :cond_0
    :goto_0
    if-eqz v22, :cond_1

    .line 1422
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRecordLoaded()V

    .line 1425
    :cond_1
    return-void

    .line 643
    :sswitch_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onSimReady()V

    .line 644
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->bEccRequired:Z

    if-nez v2, :cond_0

    .line 645
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchEccList()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1416
    :catch_0
    move-exception v16

    .line 1418
    .local v16, exc:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v2, "GSM"

    const-string v4, "Exception parsing SIM record"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1421
    if-eqz v22, :cond_1

    goto :goto_1

    .line 650
    .end local v16           #exc:Ljava/lang/RuntimeException;
    :sswitch_1
    :try_start_3
    const-string v2, "handleMessage (EVENT_RADIO_OFF_OR_NOT_AVAILABLE)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 651
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRadioOffOrNotAvailable()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1421
    :catchall_0
    move-exception v2

    if-eqz v22, :cond_2

    .line 1422
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRecordLoaded()V

    .line 1421
    :cond_2
    throw v2

    .line 655
    :sswitch_2
    :try_start_4
    const-string v2, "handleMessage (EVENT_RADIO_STATE_CHANGED)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 656
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->bEccRequired:Z

    if-nez v2, :cond_3

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v2, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v2, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v2, v4, :cond_3

    .line 660
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchEccList()V

    .line 664
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->hasQueryIccId:Z

    if-nez v2, :cond_0

    .line 665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x6b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryIccId(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 671
    :sswitch_3
    const-string v2, "handleMessage (EVENT_QUERY_ICCID_DONE)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 673
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 675
    .local v9, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->hasQueryIccId:Z

    if-eqz v2, :cond_4

    .line 676
    const-string v2, "handleMessage (EVENT_QUERY_ICCID_DONE), Next EVENT_RADIO_STATE_CHANGED is fast than waiting EVENT_QUERY_ICCID_DONE."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 680
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccIdQueryState:I

    move/from16 v28, v0

    .line 681
    .local v28, oldIccIdQueryState:I
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_5

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccIdQueryState:I

    .line 683
    const/16 v17, 0x0

    .line 684
    .local v17, hasSIM:Z
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_6

    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_6

    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 685
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->hasQueryIccId:Z

    .line 686
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    .line 687
    const/16 v17, 0x1

    .line 688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IccId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 681
    .end local v17           #hasSIM:Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 690
    .restart local v17       #hasSIM:Z
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccIdQueryState:I

    .line 691
    const/16 v17, 0x0

    .line 692
    const-string v2, "GSM"

    const-string v4, "[SIMRecords] iccid error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 710
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v17           #hasSIM:Z
    .end local v28           #oldIccIdQueryState:I
    :sswitch_4
    const/16 v22, 0x1

    .line 712
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 714
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_7

    .line 715
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception querying IMSI, Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 719
    :cond_7
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xf

    if-le v2, v4, :cond_9

    .line 724
    :cond_8
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid IMSI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    .line 728
    :cond_9
    const-string v2, "GSM"

    const-string v4, "IMSI: xxxxxxx"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_b

    .line 732
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 733
    .local v27, mccmncCode:Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .local v10, arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v24, v0

    .local v24, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_b

    aget-object v26, v10, v19

    .line 734
    .local v26, mccmnc:Ljava/lang/String;
    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 735
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 741
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v24           #len$:I
    .end local v26           #mccmnc:Ljava/lang/String;
    .end local v27           #mccmncCode:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v2, :cond_c

    .line 745
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 746
    .local v25, mcc:I
    invoke-static/range {v25 .. v25}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 753
    .end local v25           #mcc:I
    :cond_c
    :goto_4
    :try_start_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_d

    .line 755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 757
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    const-string v4, "IMSI"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 733
    .restart local v10       #arr$:[Ljava/lang/String;
    .restart local v19       #i$:I
    .restart local v24       #len$:I
    .restart local v26       #mccmnc:Ljava/lang/String;
    .restart local v27       #mccmncCode:Ljava/lang/String;
    :cond_e
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 747
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v24           #len$:I
    .end local v26           #mccmnc:Ljava/lang/String;
    .end local v27           #mccmncCode:Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 748
    .local v13, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 749
    const-string v2, "GSM"

    const-string v4, "SIMRecords: Corrupt IMSI!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 763
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v13           #e:Ljava/lang/NumberFormatException;
    :sswitch_5
    const/16 v22, 0x1

    .line 765
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 766
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 768
    .local v12, data:[B
    const/16 v23, 0x0

    .line 769
    .local v23, isValidMbdn:Z
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_f

    .line 771
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_MBI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v12}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const/4 v2, 0x0

    aget-byte v2, v12, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    .line 778
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    const/16 v4, 0xff

    if-eq v2, v4, :cond_f

    .line 779
    const-string v2, "GSM"

    const-string v4, "Got valid mailbox number for MBDN"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const/16 v23, 0x1

    .line 785
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 787
    if-eqz v23, :cond_10

    .line 789
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v4, 0x6fc7

    const/16 v5, 0x6fc8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    const/4 v7, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 791
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 794
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 798
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto/16 :goto_0

    .line 809
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    .end local v23           #isValidMbdn:Z
    :sswitch_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 810
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 811
    const/16 v22, 0x1

    .line 813
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 815
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_13

    .line 817
    const-string v4, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid or missing EF"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v6, 0xb

    if-ne v2, v6, :cond_12

    const-string v2, "[MAILBOX]"

    :goto_5
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_0

    .line 827
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 828
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 817
    :cond_12
    const-string v2, "[MBDN]"

    goto :goto_5

    .line 835
    :cond_13
    iget-object v3, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/AdnRecord;

    .line 837
    .local v3, adn:Lcom/android/internal/telephony/AdnRecord;
    const-string v4, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VM: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v6, 0xb

    if-ne v2, v6, :cond_14

    const-string v2, " EF[MAILBOX]"

    :goto_6
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_15

    .line 844
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 845
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 837
    :cond_14
    const-string v2, " EF[MBDN]"

    goto :goto_6

    .line 852
    :cond_15
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 853
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    goto/16 :goto_0

    .line 857
    .end local v3           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_7
    const/16 v22, 0x0

    .line 859
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 861
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_16

    .line 862
    const-string v2, "GSM"

    const-string v4, "Invalid or missing EF[MSISDN]"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 866
    :cond_16
    iget-object v3, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/AdnRecord;

    .line 868
    .restart local v3       #adn:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    .line 869
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    .line 871
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSISDN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->setNumberForNewSIM()V

    goto/16 :goto_0

    .line 876
    .end local v3           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_8
    const/16 v22, 0x0

    .line 877
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 879
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 880
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 882
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 887
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_9
    const/16 v22, 0x1

    .line 889
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 890
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 892
    .restart local v12       #data:[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 896
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_MWIS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v12}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 901
    const/4 v2, 0x0

    aget-byte v2, v12, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0xff

    if-ne v2, v4, :cond_17

    .line 902
    const-string v2, "GSM"

    const-string v4, "SIMRecords: Uninitialized record MWIS"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 907
    :cond_17
    const/4 v2, 0x0

    aget-byte v2, v12, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_19

    const/16 v30, 0x1

    .line 908
    .local v30, voiceMailWaiting:Z
    :goto_7
    const/4 v2, 0x1

    aget-byte v2, v12, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 910
    if-eqz v30, :cond_18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    if-nez v2, :cond_18

    .line 912
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 915
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->notifyMessageWaitingIndicator()V

    goto/16 :goto_0

    .line 907
    .end local v30           #voiceMailWaiting:Z
    :cond_19
    const/16 v30, 0x0

    goto :goto_7

    .line 919
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    :sswitch_a
    const/16 v22, 0x1

    .line 921
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 922
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 924
    .restart local v12       #data:[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 928
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 933
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    if-nez v2, :cond_0

    .line 934
    const/4 v2, 0x0

    aget-byte v2, v12, v2

    and-int/lit8 v21, v2, 0xf

    .line 937
    .local v21, indicator:I
    const/16 v2, 0xa

    move/from16 v0, v21

    if-ne v0, v2, :cond_1b

    .line 939
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 944
    :cond_1a
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->notifyMessageWaitingIndicator()V

    goto/16 :goto_0

    .line 940
    :cond_1b
    const/4 v2, 0x5

    move/from16 v0, v21

    if-ne v0, v2, :cond_1a

    .line 941
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    goto :goto_8

    .line 949
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    .end local v21           #indicator:I
    :sswitch_b
    const/16 v22, 0x1

    .line 951
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 952
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 954
    .restart local v12       #data:[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 958
    const/4 v2, 0x0

    array-length v4, v12

    invoke-static {v12, v2, v4}, Lcom/android/internal/telephony/IccUtils;->parseIccIdToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    .line 960
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iccid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 967
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    :sswitch_c
    const/16 v22, 0x1

    .line 969
    :try_start_7
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 970
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 972
    .restart local v12       #data:[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_20

    .line 995
    :try_start_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1d

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_1d

    .line 997
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 998
    .restart local v27       #mccmncCode:Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v10       #arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v24, v0

    .restart local v24       #len$:I
    const/16 v19, 0x0

    .restart local v19       #i$:I
    :goto_9
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_1d

    aget-object v26, v10, v19

    .line 999
    .restart local v26       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 1000
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1006
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v24           #len$:I
    .end local v26           #mccmnc:Ljava/lang/String;
    .end local v27           #mccmncCode:Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1f

    .line 1007
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    if-eqz v2, :cond_4e

    .line 1009
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 1011
    .restart local v25       #mcc:I
    invoke-static/range {v25 .. v25}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 1023
    .end local v25           #mcc:I
    :cond_1f
    :goto_a
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_0

    .line 1026
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    .line 976
    :cond_20
    :try_start_b
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_AD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v12}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    array-length v2, v12

    const/4 v4, 0x3

    if-ge v2, v4, :cond_25

    .line 980
    const-string v2, "GSM"

    const-string v4, "SIMRecords: Corrupt AD data on SIM"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 995
    :try_start_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_22

    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_22

    .line 997
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 998
    .restart local v27       #mccmncCode:Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v10       #arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v24, v0

    .restart local v24       #len$:I
    const/16 v19, 0x0

    .restart local v19       #i$:I
    :goto_b
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_22

    aget-object v26, v10, v19

    .line 999
    .restart local v26       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 1000
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1006
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v24           #len$:I
    .end local v26           #mccmnc:Ljava/lang/String;
    .end local v27           #mccmncCode:Ljava/lang/String;
    :cond_22
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_24

    .line 1007
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    if-eqz v2, :cond_50

    .line 1009
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 1011
    .restart local v25       #mcc:I
    invoke-static/range {v25 .. v25}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0

    .line 1023
    .end local v25           #mcc:I
    :cond_24
    :goto_c
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_0

    .line 1026
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_0

    .line 984
    :cond_25
    :try_start_f
    array-length v2, v12

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2a

    .line 985
    const-string v2, "GSM"

    const-string v4, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 995
    :try_start_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_26

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_27

    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_27

    .line 997
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 998
    .restart local v27       #mccmncCode:Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v10       #arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v24, v0

    .restart local v24       #len$:I
    const/16 v19, 0x0

    .restart local v19       #i$:I
    :goto_d
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_27

    aget-object v26, v10, v19

    .line 999
    .restart local v26       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 1000
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1006
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v24           #len$:I
    .end local v26           #mccmnc:Ljava/lang/String;
    .end local v27           #mccmncCode:Ljava/lang/String;
    :cond_27
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_29

    .line 1007
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0

    if-eqz v2, :cond_52

    .line 1009
    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 1011
    .restart local v25       #mcc:I
    invoke-static/range {v25 .. v25}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0

    .line 1023
    .end local v25           #mcc:I
    :cond_29
    :goto_e
    :try_start_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_0

    .line 1026
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0

    goto/16 :goto_0

    .line 989
    :cond_2a
    const/4 v2, 0x3

    :try_start_13
    aget-byte v2, v12, v2

    and-int/lit8 v2, v2, 0xf

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 991
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/16 v4, 0xf

    if-ne v2, v4, :cond_2b

    .line 992
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 995
    :cond_2b
    :try_start_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2d

    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_2d

    .line 997
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 998
    .restart local v27       #mccmncCode:Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v10       #arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v24, v0

    .restart local v24       #len$:I
    const/16 v19, 0x0

    .restart local v19       #i$:I
    :goto_f
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_2d

    aget-object v26, v10, v19

    .line 999
    .restart local v26       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 1000
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1006
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v24           #len$:I
    .end local v26           #mccmnc:Ljava/lang/String;
    .end local v27           #mccmncCode:Ljava/lang/String;
    :cond_2d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_2e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2f

    .line 1007
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0

    if-eqz v2, :cond_54

    .line 1009
    :try_start_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 1011
    .restart local v25       #mcc:I
    invoke-static/range {v25 .. v25}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_0

    .line 1023
    .end local v25           #mcc:I
    :cond_2f
    :goto_10
    :try_start_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_0

    .line 1026
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 995
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    :catchall_1
    move-exception v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_30

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v4, :cond_30

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_31

    :cond_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v4, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_31

    .line 997
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 998
    .restart local v27       #mccmncCode:Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v10       #arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v24, v0

    .restart local v24       #len$:I
    const/16 v19, 0x0

    .restart local v19       #i$:I
    :goto_11
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_31

    aget-object v26, v10, v19

    .line 999
    .restart local v26       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 1000
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1006
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v24           #len$:I
    .end local v26           #mccmnc:Ljava/lang/String;
    .end local v27           #mccmncCode:Ljava/lang/String;
    :cond_31
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v4, :cond_32

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_33

    .line 1007
    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_0

    if-eqz v4, :cond_4c

    .line 1009
    :try_start_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 1011
    .restart local v25       #mcc:I
    invoke-static/range {v25 .. v25}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_0

    .line 1023
    .end local v25           #mcc:I
    :cond_33
    :goto_12
    :try_start_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v4, :cond_34

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v4, :cond_34

    .line 1026
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 995
    :cond_34
    throw v2

    .line 1031
    :sswitch_d
    const/16 v22, 0x1

    .line 1032
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1034
    .restart local v9       #ar:Landroid/os/AsyncResult;
    if-eqz v9, :cond_37

    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_37

    .line 1035
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1036
    .restart local v12       #data:[B
    const/4 v2, 0x0

    aget-byte v2, v12, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 1039
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    const/16 v4, 0xff

    if-ne v2, v4, :cond_35

    .line 1040
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 1043
    :cond_35
    const/4 v2, 0x1

    array-length v4, v12

    add-int/lit8 v4, v4, -0x1

    invoke-static {v12, v2, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 1045
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load EF_SPN: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " spnDisplayCondition: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v2

    if-nez v2, :cond_36

    .line 1049
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "gsm.sim.operator.alpha"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1051
    :cond_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "gsm.sim.operator.alpha.2"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1054
    .end local v12           #data:[B
    :cond_37
    const-string v2, "GSM"

    const-string v4, "SIMRecords: read spn fail!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    goto/16 :goto_0

    .line 1063
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_e
    const/16 v22, 0x1

    .line 1065
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1066
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1068
    .restart local v12       #data:[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1072
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_CFF_CPHS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v12}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    .line 1076
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-nez v2, :cond_0

    .line 1077
    const/4 v2, 0x0

    aget-byte v2, v12, v2

    and-int/lit8 v2, v2, 0xf

    const/16 v4, 0xa

    if-ne v2, v4, :cond_38

    const/4 v2, 0x1

    :goto_13
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    .line 1080
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->notifyCallForwardingIndicator()V

    goto/16 :goto_0

    .line 1077
    :cond_38
    const/4 v2, 0x0

    goto :goto_13

    .line 1085
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    :sswitch_f
    const/16 v22, 0x1

    .line 1087
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1088
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1090
    .restart local v12       #data:[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1094
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/SIMRecords;->parseEfSpdi([B)V

    goto/16 :goto_0

    .line 1098
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1099
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1100
    const-string v2, "GSM"

    const-string v4, "SIMRecords update failed"

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1105
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_11
    const/16 v22, 0x1

    .line 1107
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1110
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1114
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->parseEFpnn(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1130
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_12
    const/16 v22, 0x1

    .line 1132
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1133
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1136
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSmses(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1140
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_13
    const-string v2, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "marked read: sms "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1145
    :sswitch_14
    const/16 v22, 0x0

    .line 1147
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1149
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v20, v0

    .line 1151
    .local v20, index:[I
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_39

    move-object/from16 v0, v20

    array-length v2, v0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3a

    .line 1152
    :cond_39
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SIMRecords] Error on SMS_ON_SIM with exp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1155
    :cond_3a
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "READ EF_SMS RECORD index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v20, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    const/16 v4, 0x6f3c

    const/4 v5, 0x0

    aget v5, v20, v5

    const/16 v6, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1162
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v20           #index:[I
    :sswitch_15
    const/16 v22, 0x0

    .line 1163
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1164
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3b

    .line 1165
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSms([B)V

    goto/16 :goto_0

    .line 1167
    :cond_3b
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SIMRecords] Error on GET_SMS with exp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1172
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_16
    const/16 v22, 0x1

    .line 1174
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1175
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1177
    .restart local v12       #data:[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1181
    new-instance v2, Lcom/android/internal/telephony/gsm/UsimServiceTable;

    invoke-direct {v2, v12}, Lcom/android/internal/telephony/gsm/UsimServiceTable;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    .line 1182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SST: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1183
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    .line 1184
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchPnnAndOpl()V

    .line 1185
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSpn()V

    goto/16 :goto_0

    .line 1189
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    :sswitch_17
    const/16 v22, 0x1

    .line 1191
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1193
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1197
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    .line 1199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iCPHS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1203
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_18
    const/16 v22, 0x0

    .line 1204
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1206
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3c

    .line 1207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 1211
    :cond_3c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1212
    new-instance v3, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    .restart local v3       #adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v0, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/Message;

    .line 1222
    .local v29, onCphsCompleted:Landroid/os/Message;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3d

    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_3d

    .line 1223
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    const/4 v4, 0x0

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1225
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1227
    const-string v2, "Callback with MBDN successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1229
    const/16 v29, 0x0

    .line 1232
    :cond_3d
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x19

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1237
    .end local v3           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v29           #onCphsCompleted:Landroid/os/Message;
    :cond_3e
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 1238
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1240
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1245
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_19
    const/16 v22, 0x0

    .line 1246
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1247
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3f

    .line 1248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 1254
    :goto_14
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 1255
    const-string v2, "Callback with CPHS MB successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1256
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1258
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1251
    :cond_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set CPHS MailBox with exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_14

    .line 1262
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_1a
    const/16 v22, 0x0

    .line 1263
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1264
    .restart local v9       #ar:Landroid/os/AsyncResult;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sim REFRESH with exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1265
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1266
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSimRefresh([I)V

    goto/16 :goto_0

    .line 1270
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_1b
    const/16 v22, 0x1

    .line 1272
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1273
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1275
    .restart local v12       #data:[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1279
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_CFIS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v12}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    .line 1285
    const/4 v2, 0x1

    aget-byte v2, v12, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_40

    const/4 v2, 0x1

    :goto_15
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    .line 1287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->notifyCallForwardingIndicator()V

    goto/16 :goto_0

    .line 1285
    :cond_40
    const/4 v2, 0x0

    goto :goto_15

    .line 1291
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    :sswitch_1c
    const-string v2, "handleMessage (EVENT_GET_SIM_ECC_DONE)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1293
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1294
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_41

    .line 1295
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get SIM ecc with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1299
    :cond_41
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1300
    .restart local v12       #data:[B
    const/16 v18, 0x0

    .local v18, i:I
    :goto_16
    add-int/lit8 v2, v18, 0x2

    array-length v4, v12

    if-ge v2, v4, :cond_43

    .line 1302
    const/4 v2, 0x3

    move/from16 v0, v18

    invoke-static {v12, v0, v2}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v14

    .line 1305
    .local v14, eccNum:Ljava/lang/String;
    if-eqz v14, :cond_42

    const-string v2, ""

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    if-eqz v18, :cond_42

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfEcc:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 1306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfEcc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfEcc:Ljava/lang/String;

    .line 1309
    :cond_42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfEcc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfEcc:Ljava/lang/String;

    .line 1300
    add-int/lit8 v18, v18, 0x3

    goto :goto_16

    .line 1312
    .end local v14           #eccNum:Ljava/lang/String;
    :cond_43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM mEfEcc is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfEcc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1313
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v4

    if-ne v2, v4, :cond_44

    .line 1314
    const-string/jumbo v2, "ril.ecclist2"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfEcc:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1316
    :cond_44
    const-string/jumbo v2, "ril.ecclist"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfEcc:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1321
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    .end local v18           #i:I
    :sswitch_1d
    const-string v2, "handleMessage (EVENT_GET_USIM_ECC_DONE)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1323
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1324
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_45

    .line 1325
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get USIM ecc with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1329
    :cond_45
    iget-object v15, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v15, Ljava/util/ArrayList;

    .line 1330
    .local v15, eccRecords:Ljava/util/ArrayList;
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1332
    .local v11, count:I
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_17
    move/from16 v0, v18

    if-ge v0, v11, :cond_48

    .line 1333
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1334
    .restart local v12       #data:[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USIM EF_ECC record "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v12}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1336
    const/4 v2, 0x0

    const/4 v4, 0x3

    invoke-static {v12, v2, v4}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v14

    .line 1337
    .restart local v14       #eccNum:Ljava/lang/String;
    if-eqz v14, :cond_47

    const-string v2, ""

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 1338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfEcc:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 1339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfEcc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfEcc:Ljava/lang/String;

    .line 1341
    :cond_46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfEcc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfEcc:Ljava/lang/String;

    .line 1332
    :cond_47
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_17

    .line 1345
    .end local v12           #data:[B
    .end local v14           #eccNum:Ljava/lang/String;
    :cond_48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USIM mEfEcc is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfEcc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1346
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v4

    if-ne v2, v4, :cond_49

    .line 1347
    const-string/jumbo v2, "ril.ecclist2"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfEcc:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1349
    :cond_49
    const-string/jumbo v2, "ril.ecclist"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfEcc:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1354
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v11           #count:I
    .end local v15           #eccRecords:Ljava/util/ArrayList;
    .end local v18           #i:I
    :sswitch_1e
    const/16 v22, 0x1

    .line 1356
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1358
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4a

    .line 1359
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in fetching EF_CSP data "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1363
    :cond_4a
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1365
    .restart local v12       #data:[B
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_CSP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v12}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleEfCspData([B)V

    goto/16 :goto_0

    .line 1370
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    :sswitch_1f
    const/16 v22, 0x1

    .line 1372
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1373
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1376
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->parseEFopl(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1380
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_20
    const-string v2, "handleMessage (EVENT_GET_CPHSONS_DONE)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1381
    const/16 v22, 0x1

    .line 1383
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1384
    .restart local v9       #ar:Landroid/os/AsyncResult;
    if-eqz v9, :cond_0

    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1385
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1386
    .restart local v12       #data:[B
    const/4 v2, 0x0

    array-length v4, v12

    invoke-static {v12, v2, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->cphsOnsl:Ljava/lang/String;

    .line 1389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load EF_SPN_CPHS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->cphsOnsl:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1394
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    :sswitch_21
    const-string v2, "handleMessage (EVENT_GET_SHORT_CPHSONS_DONE)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1395
    const/16 v22, 0x1

    .line 1397
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1398
    .restart local v9       #ar:Landroid/os/AsyncResult;
    if-eqz v9, :cond_0

    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1399
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1400
    .restart local v12       #data:[B
    const/4 v2, 0x0

    array-length v4, v12

    invoke-static {v12, v2, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->cphsOnss:Ljava/lang/String;

    .line 1403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->cphsOnss:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1408
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    :sswitch_22
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchPhbRecords()V

    goto/16 :goto_0

    .line 998
    .restart local v10       #arr$:[Ljava/lang/String;
    .restart local v19       #i$:I
    .restart local v24       #len$:I
    .restart local v26       #mccmnc:Ljava/lang/String;
    .restart local v27       #mccmncCode:Ljava/lang/String;
    :cond_4b
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_11

    .line 1018
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v24           #len$:I
    .end local v26           #mccmnc:Ljava/lang/String;
    .end local v27           #mccmncCode:Ljava/lang/String;
    :cond_4c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1020
    const-string v4, "GSM"

    const-string v5, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 1012
    :catch_2
    move-exception v13

    .line 1013
    .restart local v13       #e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1014
    const-string v4, "GSM"

    const-string v5, "SIMRecords: Corrupt IMSI!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 998
    .end local v13           #e:Ljava/lang/NumberFormatException;
    .restart local v9       #ar:Landroid/os/AsyncResult;
    .restart local v10       #arr$:[Ljava/lang/String;
    .restart local v12       #data:[B
    .restart local v19       #i$:I
    .restart local v24       #len$:I
    .restart local v26       #mccmnc:Ljava/lang/String;
    .restart local v27       #mccmncCode:Ljava/lang/String;
    :cond_4d
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_9

    .line 1018
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v24           #len$:I
    .end local v26           #mccmnc:Ljava/lang/String;
    .end local v27           #mccmncCode:Ljava/lang/String;
    :cond_4e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1020
    const-string v2, "GSM"

    const-string v4, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1012
    :catch_3
    move-exception v13

    .line 1013
    .restart local v13       #e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1014
    const-string v2, "GSM"

    const-string v4, "SIMRecords: Corrupt IMSI!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 998
    .end local v13           #e:Ljava/lang/NumberFormatException;
    .restart local v10       #arr$:[Ljava/lang/String;
    .restart local v19       #i$:I
    .restart local v24       #len$:I
    .restart local v26       #mccmnc:Ljava/lang/String;
    .restart local v27       #mccmncCode:Ljava/lang/String;
    :cond_4f
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_b

    .line 1018
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v24           #len$:I
    .end local v26           #mccmnc:Ljava/lang/String;
    .end local v27           #mccmncCode:Ljava/lang/String;
    :cond_50
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1020
    const-string v2, "GSM"

    const-string v4, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1012
    :catch_4
    move-exception v13

    .line 1013
    .restart local v13       #e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1014
    const-string v2, "GSM"

    const-string v4, "SIMRecords: Corrupt IMSI!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 998
    .end local v13           #e:Ljava/lang/NumberFormatException;
    .restart local v10       #arr$:[Ljava/lang/String;
    .restart local v19       #i$:I
    .restart local v24       #len$:I
    .restart local v26       #mccmnc:Ljava/lang/String;
    .restart local v27       #mccmncCode:Ljava/lang/String;
    :cond_51
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_d

    .line 1018
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v24           #len$:I
    .end local v26           #mccmnc:Ljava/lang/String;
    .end local v27           #mccmncCode:Ljava/lang/String;
    :cond_52
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1020
    const-string v2, "GSM"

    const-string v4, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1012
    :catch_5
    move-exception v13

    .line 1013
    .restart local v13       #e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1014
    const-string v2, "GSM"

    const-string v4, "SIMRecords: Corrupt IMSI!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 998
    .end local v13           #e:Ljava/lang/NumberFormatException;
    .restart local v10       #arr$:[Ljava/lang/String;
    .restart local v19       #i$:I
    .restart local v24       #len$:I
    .restart local v26       #mccmnc:Ljava/lang/String;
    .restart local v27       #mccmncCode:Ljava/lang/String;
    :cond_53
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_f

    .line 1018
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v24           #len$:I
    .end local v26           #mccmnc:Ljava/lang/String;
    .end local v27           #mccmncCode:Ljava/lang/String;
    :cond_54
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1020
    const-string v2, "GSM"

    const-string v4, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1012
    :catch_6
    move-exception v13

    .line 1013
    .restart local v13       #e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1014
    const-string v2, "GSM"

    const-string v4, "SIMRecords: Corrupt IMSI!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_0

    goto/16 :goto_10

    .line 641
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_4
        0x4 -> :sswitch_b
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_9
        0x8 -> :sswitch_a
        0x9 -> :sswitch_c
        0xa -> :sswitch_7
        0xb -> :sswitch_6
        0xc -> :sswitch_d
        0xd -> :sswitch_f
        0xe -> :sswitch_10
        0xf -> :sswitch_11
        0x11 -> :sswitch_16
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_18
        0x15 -> :sswitch_14
        0x16 -> :sswitch_15
        0x18 -> :sswitch_e
        0x19 -> :sswitch_19
        0x1a -> :sswitch_17
        0x1e -> :sswitch_8
        0x1f -> :sswitch_1a
        0x20 -> :sswitch_1b
        0x21 -> :sswitch_1e
        0x66 -> :sswitch_1c
        0x67 -> :sswitch_1d
        0x68 -> :sswitch_1f
        0x69 -> :sswitch_20
        0x6a -> :sswitch_21
        0x6b -> :sswitch_3
        0xc9 -> :sswitch_2
        0xca -> :sswitch_22
    .end sparse-switch
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 2538
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2527
    const-string v1, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords][SIM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    return-void

    .line 2527
    :cond_0
    const-string v0, "2"

    goto :goto_0
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2530
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1814
    const-string v4, "GSM"

    const-string v5, "SIMRecords: record load complete"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 1820
    .local v3, operator:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v4

    if-nez v4, :cond_2

    .line 1821
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v5, "gsm.sim.operator.numeric"

    invoke-virtual {v4, v5, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 1829
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1835
    .local v0, countryCode:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v4

    if-nez v4, :cond_3

    .line 1836
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v5, "gsm.sim.operator.iso-country"

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    .end local v0           #countryCode:Ljava/lang/String;
    :goto_2
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    .line 1848
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v7, v7, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1850
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    const-string v5, "LOADED"

    invoke-virtual {v4, v5, v7}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    if-eqz v3, :cond_6

    .line 1854
    const/4 v2, 0x0

    .line 1855
    .local v2, newName:Ljava/lang/String;
    const-string v4, "46002"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "46007"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1856
    :cond_0
    const-string v3, "46000"

    .line 1858
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x1

    invoke-interface {v4, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->lookupOperatorName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1860
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v4

    if-nez v4, :cond_5

    .line 1861
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v5, "gsm.sim.operator.default-name"

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->setDefaultNameForNewSIM(Ljava/lang/String;)V

    .line 1869
    .end local v2           #newName:Ljava/lang/String;
    :goto_4
    return-void

    .line 1823
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v5, "gsm.sim.operator.numeric.2"

    invoke-virtual {v4, v5, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1831
    :catch_0
    move-exception v1

    .line 1832
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 1833
    .restart local v0       #countryCode:Ljava/lang/String;
    const-string v4, "GSM"

    const-string v5, "SIMRecords: Corrupt IMSI!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1838
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v5, "gsm.sim.operator.iso-country.2"

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1842
    .end local v0           #countryCode:Ljava/lang/String;
    :cond_4
    const-string v4, "SIM"

    const-string v5, "[SIMRecords] onAllRecordsLoaded: imsi is NULL!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1863
    .restart local v2       #newName:Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v5, "gsm.sim.operator.default-name.2"

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1867
    .end local v2           #newName:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->setDefaultNameForNewSIM(Ljava/lang/String;)V

    goto :goto_4
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 302
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    .line 303
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 304
    iput v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 305
    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 308
    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 309
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 310
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 311
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 312
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v0

    if-nez v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.operator.numeric"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.operator.alpha"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.operator.iso-country"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    .line 335
    return-void

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.operator.numeric.2"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.operator.alpha.2"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.operator.iso-country.2"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onRecordLoaded()V
    .locals 2

    .prologue
    .line 1803
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1805
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1806
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onAllRecordsLoaded()V

    .line 1811
    :cond_0
    :goto_0
    return-void

    .line 1807
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    if-gez v0, :cond_0

    .line 1808
    const-string v0, "GSM"

    const-string v1, "SIMRecords: recordsToLoad <0, programmer error suspected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .parameter "fileChanged"
    .parameter "fileList"

    .prologue
    .line 588
    if-eqz p1, :cond_0

    .line 592
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 594
    :cond_0
    return-void
.end method

.method public onSimReady()V
    .locals 3

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 1896
    return-void
.end method

.method public setDefaultNameForNewSIM(Ljava/lang/String;)V
    .locals 6
    .parameter "strName"

    .prologue
    .line 1586
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 1587
    .local v1, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v1, :cond_0

    .line 1588
    iget-object v0, v1, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 1589
    .local v0, simDisplayName:Ljava/lang/String;
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultNameForNewSIM SimInfo simDisplayName is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    if-nez v0, :cond_0

    .line 1591
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v2, v3, v4, p1}, Landroid/provider/Telephony$SIMInfo;->setDefaultName(Landroid/content/Context;JLjava/lang/String;)I

    .line 1592
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultNameForNewSIM SimInfo simId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newName is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->broadCastSetDefaultNameDone()V

    .line 1596
    .end local v0           #simDisplayName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 375
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    .line 376
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set MSISDN: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 381
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6f40

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 385
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZ)V
    .locals 1
    .parameter "line"
    .parameter "enable"

    .prologue
    .line 535
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 580
    :goto_0
    return-void

    .line 537
    :cond_0
    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    .line 539
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->notifyCallForwardingIndicator()V

    goto :goto_0
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "voiceNumber"
    .parameter "onComplete"

    .prologue
    const/4 v5, 0x0

    .line 421
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isVoiceMailFixed:Z

    if-eqz v0, :cond_0

    .line 422
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmFixedException;

    const-string v3, "Voicemail number is fixed by operator"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmFixedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 424
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 450
    :goto_0
    return-void

    .line 428
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailNum:Ljava/lang/String;

    .line 429
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailTag:Ljava/lang/String;

    .line 431
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailNum:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    const/16 v2, 0xff

    if-eq v0, v2, :cond_1

    .line 435
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6fc7

    const/16 v3, 0x6fc8

    iget v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    const/16 v6, 0x14

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 439
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 441
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6f17

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/16 v6, 0x19

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 446
    :cond_2
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmNotSupportedException;

    const-string v3, "Update SIM voice mailbox error"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 448
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 8
    .parameter "line"
    .parameter "countWaiting"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 466
    if-eq p1, v1, :cond_1

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    if-gez p2, :cond_4

    .line 473
    const/4 p2, -0x1

    .line 480
    :cond_2
    :goto_1
    iput p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 482
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->notifyMessageWaitingIndicator()V

    .line 485
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    if-eqz v2, :cond_3

    .line 489
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xfe

    iget v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    if-nez v5, :cond_5

    :goto_2
    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 493
    if-gez p2, :cond_6

    .line 496
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    .line 501
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fca

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v7, 0x6fca

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 506
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    if-eqz v0, :cond_0

    .line 508
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/4 v3, 0x0

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xf0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    if-nez v0, :cond_7

    const/4 v0, 0x5

    :goto_4
    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 511
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f11

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 515
    :catch_0
    move-exception v6

    .line 516
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "GSM"

    const-string v1, "Error saving voice mail state to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 474
    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    const/16 v2, 0xff

    if-le p2, v2, :cond_2

    .line 477
    const/16 p2, 0xff

    goto :goto_1

    :cond_5
    move v0, v1

    .line 489
    goto :goto_2

    .line 498
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 508
    :cond_7
    const/16 v0, 0xa

    goto :goto_4
.end method
