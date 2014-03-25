.class public Lcom/android/internal/telephony/gsm/SIMRecords;
.super Lcom/android/internal/telephony/IccRecords;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SIMRecords$2;,
        Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;,
        Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;,
        Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;,
        Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;
    }
.end annotation


# static fields
.field private static final ACTION_RESET_MODEM:Ljava/lang/String; = "android.intent.action.sim.ACTION_RESET_MODEM"

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

.field private static final EVENT_APP_READY:I = 0x1

.field private static final EVENT_EF_CSP_PLMN_MODE_BIT_CHANGED:I = 0xcb

.field protected static final EVENT_GET_AD_DONE:I = 0x9

.field private static final EVENT_GET_ALL_OPL_DONE:I = 0x68

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CFF_DONE:I = 0x18

.field private static final EVENT_GET_CFIS_DONE:I = 0x20

.field private static final EVENT_GET_CPHSONS_DONE:I = 0x69

.field private static final EVENT_GET_CPHS_MAILBOX_DONE:I = 0xb

.field private static final EVENT_GET_CSP_CPHS_DONE:I = 0x21

.field private static final EVENT_GET_ELP_DONE:I = 0x2b

.field private static final EVENT_GET_ICCID_DONE:I = 0x4

.field private static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_INFO_CPHS_DONE:I = 0x1a

.field private static final EVENT_GET_LI_DONE:I = 0x2a

.field private static final EVENT_GET_MBDN_DONE:I = 0x6

.field private static final EVENT_GET_MBI_DONE:I = 0x5

.field protected static final EVENT_GET_MSISDN_DONE:I = 0xa

.field private static final EVENT_GET_MWIS_DONE:I = 0x7

.field private static final EVENT_GET_NEW_MSISDN_DONE:I = 0xce

.field private static final EVENT_GET_PNN_DONE:I = 0xf

.field private static final EVENT_GET_RAT_DONE:I = 0xcc

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

.field private static final EVENT_QUERY_ICCID_DONE_FOR_HOT_SWAP:I = 0xcd

.field private static final EVENT_QUERY_MENU_TITLE_DONE:I = 0x35

.field private static final EVENT_RADIO_AVAILABLE:I = 0x29

.field private static final EVENT_RADIO_STATE_CHANGED:I = 0xc9

.field private static final EVENT_SET_CPHS_MAILBOX_DONE:I = 0x19

.field private static final EVENT_SET_MBDN_DONE:I = 0x14

.field private static final EVENT_SET_MSISDN_DONE:I = 0x1e

.field private static final EVENT_SIM_REFRESH:I = 0x1f

.field private static final EVENT_SMS_ON_SIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field public static final INTENT_KEY_SIM_COUNT:Ljava/lang/String; = "simCount"

.field private static final KEY_SIM_ID:Ljava/lang/String; = "SIM_ID"

.field private static final LANGUAGE_CODE_FOR_LP:[Ljava/lang/String; = null

.field protected static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String; = null

.field static final PROPERTY_3G_SWITCH:Ljava/lang/String; = "gsm.3gswitch"

.field static final SIMRECORD_PROPERTY_RIL_PHB_READY:[Ljava/lang/String; = null

.field static final SIMRECORD_PROPERTY_RIL_PUK1:[Ljava/lang/String; = null

.field static final SPN_RULE_SHOW_PLMN:I = 0x2

.field static final SPN_RULE_SHOW_SPN:I = 0x1

.field static final TAG_FULL_NETWORK_NAME:I = 0x43

.field static final TAG_SHORT_NETWORK_NAME:I = 0x45

.field static final TAG_SPDI:I = 0xa3

.field static final TAG_SPDI_PLMN_LIST:I = 0x80

.field private static final simServiceNumber:[I

.field private static final usimServiceNumber:[I


# instance fields
.field private SIM_RECORDS_PROPERTY_ECC_LIST:[Ljava/lang/String;

.field private SIM_RECORDS_PROPERTY_ICC_OPERATOR_ALPHA:[Ljava/lang/String;

.field private SIM_RECORDS_PROPERTY_ICC_OPERATOR_DEFAULT_NAME:[Ljava/lang/String;

.field private SIM_RECORDS_PROPERTY_ICC_OPERATOR_ISO_COUNTRY:[Ljava/lang/String;

.field private SIM_RECORDS_PROPERTY_ICC_OPERATOR_NUMERIC:[Ljava/lang/String;

.field bEccRequired:Z

.field private callForwardingEnabled:Z

.field cphsOnsl:Ljava/lang/String;

.field cphsOnss:Ljava/lang/String;

.field efCPHS_MWI:[B

.field private efLanguageToLoad:I

.field efMWIS:[B

.field private hasQueryIccId:Z

.field private iccIdQueryState:I

.field private isValidMBI:Z

.field private mCphsInfo:[B

.field mCspPlmnEnabled:Z

.field mEfCff:[B

.field mEfCfis:[B

.field mEfELP:[B

.field mEfEcc:Ljava/lang/String;

.field mEfLI:[B

.field private mEfRat:[B

.field private mEfRatLoaded:Z

.field mEfSST:[B

.field private final mHandlePhbReadyReceiver:Landroid/content/BroadcastReceiver;

.field private mMenuTitleFromEf:Ljava/lang/String;

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

.field private mPhbReady:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

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

.field private mSIMInfoReady:Z

.field private mSimId:I

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

.field private mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

.field mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

.field mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

.field private m_simRecordsMtk:Lcom/android/internal/telephony/gsm/SIMRecordsEx;

.field pnnHomeName:Ljava/lang/String;

.field private spNameInEfSpn:Ljava/lang/String;

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
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 189
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "gsm.sim.ril.phbready"

    aput-object v1, v0, v3

    const-string v1, "gsm.sim.ril.phbready.2"

    aput-object v1, v0, v4

    const-string v1, "gsm.sim.ril.phbready.3"

    aput-object v1, v0, v5

    const-string v1, "gsm.sim.ril.phbready.4"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->SIMRECORD_PROPERTY_RIL_PHB_READY:[Ljava/lang/String;

    .line 196
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "gsm.sim.retry.puk1"

    aput-object v1, v0, v3

    const-string v1, "gsm.sim.retry.puk1.2"

    aput-object v1, v0, v4

    const-string v1, "gsm.sim.retry.puk1.3"

    aput-object v1, v0, v5

    const-string v1, "gsm.sim.retry.puk1.4"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->SIMRECORD_PROPERTY_RIL_PUK1:[Ljava/lang/String;

    .line 318
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->simServiceNumber:[I

    .line 322
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->usimServiceNumber:[I

    .line 328
    const/16 v0, 0x7a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "405025"

    aput-object v1, v0, v3

    const-string v1, "405026"

    aput-object v1, v0, v4

    const-string v1, "405027"

    aput-object v1, v0, v5

    const-string v1, "405028"

    aput-object v1, v0, v6

    const-string v1, "405029"

    aput-object v1, v0, v7

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

    const/16 v1, 0x9

    const-string v2, "405034"

    aput-object v2, v0, v1

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

    const-string v2, "405912"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "405913"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "405914"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "405915"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "405916"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "405917"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "405918"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "405919"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "405920"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "405921"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "405922"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "405923"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "405924"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "405925"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "405926"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "405927"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "405928"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "405929"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "405930"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "405931"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "405932"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .line 357
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "de"

    aput-object v1, v0, v3

    const-string v1, "en"

    aput-object v1, v0, v4

    const-string v1, "it"

    aput-object v1, v0, v5

    const-string v1, "fr"

    aput-object v1, v0, v6

    const-string v1, "es"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "nl"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "da"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "fi"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "no"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "el"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "tr"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "hu"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "cs"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "he"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ar"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "ru"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "is"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, ""

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->LANGUAGE_CODE_FOR_LP:[Ljava/lang/String;

    return-void

    .line 318
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

    .line 322
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

.method public constructor <init>(Lcom/android/internal/telephony/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 11
    .parameter "app"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 409
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 158
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccIdQueryState:I

    .line 170
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    .line 171
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 172
    iput v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efLanguageToLoad:I

    .line 174
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 175
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 176
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    .line 177
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    .line 178
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    .line 179
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfLI:[B

    .line 180
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfELP:[B

    .line 184
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 186
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 204
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPhbReady:Z

    .line 205
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSIMInfoReady:Z

    .line 227
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    .line 229
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOperatorList:Ljava/util/ArrayList;

    .line 231
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfEcc:Ljava/lang/String;

    .line 232
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->bEccRequired:Z

    .line 234
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spNameInEfSpn:Ljava/lang/String;

    .line 301
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mMenuTitleFromEf:Ljava/lang/String;

    .line 354
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfRatLoaded:Z

    .line 355
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfRat:[B

    .line 364
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isValidMBI:Z

    .line 371
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "gsm.sim.operator.default-name"

    aput-object v5, v4, v7

    const-string v5, "gsm.sim.operator.default-name.2"

    aput-object v5, v4, v8

    const-string v5, "gsm.sim.operator.default-name.3"

    aput-object v5, v4, v9

    const-string v5, "gsm.sim.operator.default-name.4"

    aput-object v5, v4, v10

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->SIM_RECORDS_PROPERTY_ICC_OPERATOR_DEFAULT_NAME:[Ljava/lang/String;

    .line 378
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "ril.ecclist"

    aput-object v5, v4, v7

    const-string v5, "ril.ecclist2"

    aput-object v5, v4, v8

    const-string v5, "ril.ecclist3"

    aput-object v5, v4, v9

    const-string v5, "ril.ecclist4"

    aput-object v5, v4, v10

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->SIM_RECORDS_PROPERTY_ECC_LIST:[Ljava/lang/String;

    .line 385
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "gsm.sim.operator.numeric"

    aput-object v5, v4, v7

    const-string v5, "gsm.sim.operator.numeric.2"

    aput-object v5, v4, v8

    const-string v5, "gsm.sim.operator.numeric.3"

    aput-object v5, v4, v9

    const-string v5, "gsm.sim.operator.numeric.4"

    aput-object v5, v4, v10

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->SIM_RECORDS_PROPERTY_ICC_OPERATOR_NUMERIC:[Ljava/lang/String;

    .line 392
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "gsm.sim.operator.alpha"

    aput-object v5, v4, v7

    const-string v5, "gsm.sim.operator.alpha.2"

    aput-object v5, v4, v8

    const-string v5, "gsm.sim.operator.alpha.3"

    aput-object v5, v4, v9

    const-string v5, "gsm.sim.operator.alpha.4"

    aput-object v5, v4, v10

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->SIM_RECORDS_PROPERTY_ICC_OPERATOR_ALPHA:[Ljava/lang/String;

    .line 399
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "gsm.sim.operator.iso-country"

    aput-object v5, v4, v7

    const-string v5, "gsm.sim.operator.iso-country.2"

    aput-object v5, v4, v8

    const-string v5, "gsm.sim.operator.iso-country.3"

    aput-object v5, v4, v9

    const-string v5, "gsm.sim.operator.iso-country.4"

    aput-object v5, v4, v10

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->SIM_RECORDS_PROPERTY_ICC_OPERATOR_ISO_COUNTRY:[Ljava/lang/String;

    .line 2894
    new-instance v4, Lcom/android/internal/telephony/gsm/SIMRecords$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/gsm/SIMRecords$1;-><init>(Lcom/android/internal/telephony/gsm/SIMRecords;)V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mHandlePhbReadyReceiver:Landroid/content/BroadcastReceiver;

    .line 411
    invoke-virtual {p1}, Lcom/android/internal/telephony/UiccCardApplication;->getMySimId()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    .line 412
    const-string v4, "SIMRecords construct"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 415
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 420
    new-instance v4, Lcom/android/internal/telephony/gsm/SIMRecordsEx;

    invoke-direct {v4, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SIMRecordsEx;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->m_simRecordsMtk:Lcom/android/internal/telephony/gsm/SIMRecordsEx;

    .line 422
    new-instance v4, Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/AdnRecordCache;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 424
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 425
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.ACTION_PHONE_RESTART"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    const-string v4, "SimId"

    iget v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 427
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 429
    new-instance v4, Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-direct {v4}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    .line 432
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    .line 435
    iput v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 437
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cphsOnsl:Ljava/lang/String;

    .line 438
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cphsOnss:Ljava/lang/String;

    .line 439
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->hasQueryIccId:Z

    .line 442
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x15

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 443
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x1f

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 444
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xca

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForPhbReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 445
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xc9

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 446
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x29

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 447
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xcb

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForEfCspPlmnModeBitChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 449
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->resetRecords()V

    .line 450
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v4, p0, v8, v6}, Lcom/android/internal/telephony/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 452
    new-instance v4, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;

    invoke-direct {v4, p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;-><init>(Lcom/android/internal/telephony/gsm/SIMRecords;Lcom/android/internal/telephony/gsm/SIMRecords$1;)V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimReceiver:Landroid/content/BroadcastReceiver;

    .line 453
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 454
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "com.mediatek.dm.LAWMO_WIPE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 455
    const-string v4, "action_pin_dismiss"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 456
    const-string v4, "action_melock_dismiss"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    const-string v4, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 458
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 460
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 462
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 463
    .local v3, phbFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 464
    const-string v4, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 465
    const-string v4, "android.intent.action.IVSR_NOTIFY"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 466
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mHandlePhbReadyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 469
    const-string v4, "SIMRecords updateIccRecords"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 470
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/IccRecords;)V

    .line 473
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isPhbReady()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 474
    const-string v4, "Phonebook is ready."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 475
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPhbReady:Z

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->broadcastPhbStateChangedIntent(Z)V

    .line 479
    :cond_0
    :try_start_0
    const-class v4, Lcom/mediatek/common/telephony/ITelephonyExt;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/common/telephony/ITelephonyExt;

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :goto_0
    return-void

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/SIMRecords;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mHandlePhbReadyReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/gsm/SIMRecords;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->processShutdownIPO()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/mediatek/common/telephony/ITelephonyExt;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/internal/telephony/gsm/SIMRecords;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfRatLoaded:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/internal/telephony/gsm/SIMRecords;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfRat:[B

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/AdnRecordCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/gsm/SIMRecords;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->setDefaultNameByLocale()V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/internal/telephony/gsm/SIMRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/gsm/SIMRecords;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->setNumberToSimInfo()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/SIMRecords;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/gsm/SIMRecords;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSIMInfoReady:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/SIMRecords;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/gsm/SIMRecords;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPhbReady:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/UiccCardApplication;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/UiccCardApplication;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/gsm/SIMRecords;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->wipeAllSIMContacts()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/gsm/SIMRecords;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    return v0
.end method

.method private boradcastEfRatContentNotify(I)V
    .locals 3
    .parameter "item"

    .prologue
    .line 3238
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->get3GCapabilitySIM()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    if-eq v1, v2, :cond_0

    .line 3239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not broadCast intent ACTION_EF_RAT_CONTENT_NOTIFY, simId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", 3GslotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->get3GCapabilitySIM()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3247
    :goto_0
    return-void

    .line 3242
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_EF_RAT_CONTENT_NOTIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3243
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ef_rat_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3244
    const-string v1, "simId"

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCast intent ACTION_EF_RAT_CONTENT_NOTIFY: item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", simId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3246
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static convertImsi2Op(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "numeric"

    .prologue
    .line 3443
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 3444
    :cond_0
    const-string v0, ""

    .line 3451
    :goto_0
    return-object v0

    .line 3446
    :cond_1
    const-string v0, "46001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3447
    const-string v0, "OP02"

    goto :goto_0

    .line 3448
    :cond_2
    const-string v0, "46000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "46002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "46007"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3449
    :cond_3
    const-string v0, "OP01"

    goto :goto_0

    .line 3451
    :cond_4
    const-string v0, "others"

    goto :goto_0
.end method

.method private fetchCPHSOns()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2245
    const-string v0, "fetchCPHSOns()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2246
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cphsOnsl:Ljava/lang/String;

    .line 2247
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cphsOnss:Ljava/lang/String;

    .line 2248
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f14

    const/16 v2, 0x69

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2250
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2251
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f18

    const/16 v2, 0x6a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2253
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2254
    return-void
.end method

.method private fetchEccList()V
    .locals 3

    .prologue
    const/16 v2, 0x6fb7

    .line 2184
    const-string v0, "fetchEccList()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2185
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfEcc:Ljava/lang/String;

    .line 2186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->bEccRequired:Z

    .line 2188
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getType()Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_0

    .line 2189
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x67

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 2193
    :goto_0
    return-void

    .line 2191
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private fetchLanguageIndicator()V
    .locals 6

    .prologue
    .line 3061
    const-string v3, "fetchLanguageIndicator "

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3062
    const-string v3, "persist.sys.language"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3063
    .local v1, l:Ljava/lang/String;
    const-string v3, "persist.sys.country"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3064
    .local v0, c:Ljava/lang/String;
    const-string v3, "persist.sys.simlanguage"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3065
    .local v2, oldSimLang:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 3067
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v4, 0x6f05

    const/16 v5, 0x2a

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3069
    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efLanguageToLoad:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efLanguageToLoad:I

    .line 3070
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v4, 0x2f05

    const/16 v5, 0x2b

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3072
    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efLanguageToLoad:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efLanguageToLoad:I

    .line 3074
    :cond_3
    return-void
.end method

.method private fetchPhbRecords()V
    .locals 5

    .prologue
    .line 2179
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v1, 0x6f40

    const/16 v2, 0x6f4a

    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    .line 2181
    return-void
.end method

.method private fetchPnnAndOpl()V
    .locals 8

    .prologue
    const/16 v7, 0xc

    const/4 v6, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2197
    const-string v4, "fetchPnnAndOpl()"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2199
    const/4 v1, 0x0

    .line 2200
    .local v1, bPnnActive:Z
    const/4 v0, 0x0

    .line 2202
    .local v0, bOplActive:Z
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    if-eqz v4, :cond_0

    .line 2203
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardApplication;->getType()Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne v4, v5, :cond_4

    .line 2204
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    array-length v4, v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_0

    .line 2205
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    aget-byte v4, v4, v6

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 2206
    :goto_0
    if-eqz v1, :cond_0

    .line 2207
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    aget-byte v4, v4, v6

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_3

    move v0, v2

    .line 2217
    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bPnnActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bOplActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2219
    if-eqz v1, :cond_1

    .line 2220
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v3, 0x6fc5

    const/16 v4, 0xf

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 2221
    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2222
    if-eqz v0, :cond_1

    .line 2223
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v3, 0x6fc6

    const/16 v4, 0x68

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 2224
    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2227
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 2205
    goto :goto_0

    :cond_3
    move v0, v3

    .line 2207
    goto :goto_1

    .line 2210
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    array-length v4, v4

    const/16 v5, 0xd

    if-lt v4, v5, :cond_0

    .line 2211
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    aget-byte v4, v4, v7

    and-int/lit8 v4, v4, 0x30

    const/16 v5, 0x30

    if-ne v4, v5, :cond_5

    move v1, v2

    .line 2212
    :goto_2
    if-eqz v1, :cond_0

    .line 2213
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    aget-byte v4, v4, v7

    and-int/lit16 v4, v4, 0xc0

    const/16 v5, 0xc0

    if-ne v4, v5, :cond_6

    move v0, v2

    :goto_3
    goto :goto_1

    :cond_5
    move v1, v3

    .line 2211
    goto :goto_2

    :cond_6
    move v0, v3

    .line 2213
    goto :goto_3
.end method

.method private fetchRatBalancing()V
    .locals 3

    .prologue
    .line 3214
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/ITelephonyExt;->isSetLanguageBySIM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3233
    :goto_0
    return-void

    .line 3216
    :cond_0
    const-string v0, "support MTK_RAT_BALANCING"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3218
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getType()Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_1

    .line 3219
    const-string v0, "start loading EF_RAT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3220
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x4f36

    const/16 v2, 0xcc

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3221
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto :goto_0

    .line 3223
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getType()Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_2

    .line 3225
    const-string v0, "loading EF_RAT fail, because of SIM"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfRatLoaded:Z

    .line 3227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfRat:[B

    .line 3228
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->boradcastEfRatContentNotify(I)V

    goto :goto_0

    .line 3231
    :cond_2
    const-string v0, "loading EF_RAT fail, because of +EUSIM"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fetchSpn()V
    .locals 5

    .prologue
    .line 2230
    const-string v2, "fetchSpn()"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2231
    const/4 v0, 0x0

    .line 2233
    .local v0, bSpnActive:Z
    sget-object v2, Lcom/android/internal/telephony/Phone$IccService;->SPN:Lcom/android/internal/telephony/Phone$IccService;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMServiceStatus(Lcom/android/internal/telephony/Phone$IccService;)Lcom/android/internal/telephony/Phone$IccServiceStatus;

    move-result-object v1

    .line 2234
    .local v1, iccSerStatus:Lcom/android/internal/telephony/Phone$IccServiceStatus;
    sget-object v2, Lcom/android/internal/telephony/Phone$IccServiceStatus;->ACTIVATED:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    if-ne v1, v2, :cond_0

    .line 2235
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 2236
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v3, 0x6f46

    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2238
    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2242
    :goto_0
    return-void

    .line 2240
    :cond_0
    const-string v2, "GSM"

    const-string v3, "[SIMRecords] SPN service is not activated  "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getMatchedLocaleByLI([B)Z
    .locals 7
    .parameter "data"

    .prologue
    .line 3105
    const/4 v3, 0x0

    .line 3106
    .local v3, ret:Z
    if-nez p1, :cond_0

    move v4, v3

    .line 3125
    .end local v3           #ret:Z
    .local v4, ret:I
    :goto_0
    return v4

    .line 3109
    .end local v4           #ret:I
    .restart local v3       #ret:Z
    :cond_0
    array-length v2, p1

    .line 3110
    .local v2, lenOfLI:I
    const/4 v1, 0x0

    .line 3111
    .local v1, lang:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    add-int/lit8 v5, v0, 0x2

    if-gt v5, v2, :cond_2

    .line 3112
    const/4 v5, 0x2

    invoke-static {p1, v0, v5}, Lcom/android/internal/telephony/IccUtils;->parseLanguageIndicator([BII)Ljava/lang/String;

    move-result-object v1

    .line 3113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USIM language in language indicator: i is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " language is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3114
    if-eqz v1, :cond_1

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3115
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USIM language in language indicator: i is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " language is empty"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    :cond_2
    move v4, v3

    .line 3125
    .restart local v4       #ret:I
    goto :goto_0

    .line 3118
    .end local v4           #ret:I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 3119
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->matchLangToLocale(Ljava/lang/String;)Z

    move-result v3

    .line 3121
    if-nez v3, :cond_2

    .line 3111
    add-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method

.method private getMatchedLocaleByLP([B)Z
    .locals 8
    .parameter "data"

    .prologue
    .line 3129
    const/4 v4, 0x0

    .line 3130
    .local v4, ret:Z
    if-nez p1, :cond_0

    move v5, v4

    .line 3155
    .end local v4           #ret:Z
    .local v5, ret:I
    :goto_0
    return v5

    .line 3133
    .end local v5           #ret:I
    .restart local v4       #ret:Z
    :cond_0
    array-length v3, p1

    .line 3134
    .local v3, lenOfLP:I
    const/4 v2, 0x0

    .line 3135
    .local v2, lang:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 3136
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfLI:[B

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    and-int/lit16 v1, v6, 0xff

    .line 3137
    .local v1, index:I
    if-ltz v1, :cond_4

    const/16 v6, 0xf

    if-gt v1, v6, :cond_4

    .line 3138
    sget-object v6, Lcom/android/internal/telephony/gsm/SIMRecords;->LANGUAGE_CODE_FOR_LP:[Ljava/lang/String;

    aget-object v2, v6, v1

    .line 3143
    :cond_1
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM language in language preference: i is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " language is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3144
    if-eqz v2, :cond_2

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3145
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM language in language preference: i is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " language is empty"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .end local v1           #index:I
    :cond_3
    move v5, v4

    .line 3155
    .restart local v5       #ret:I
    goto :goto_0

    .line 3139
    .end local v5           #ret:I
    .restart local v1       #index:I
    :cond_4
    const/16 v6, 0x20

    if-gt v6, v1, :cond_1

    const/16 v6, 0x2f

    if-gt v1, v6, :cond_1

    .line 3140
    sget-object v6, Lcom/android/internal/telephony/gsm/SIMRecords;->LANGUAGE_CODE_FOR_LP:[Ljava/lang/String;

    add-int/lit8 v7, v1, -0x10

    aget-object v2, v6, v7

    goto :goto_2

    .line 3149
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->matchLangToLocale(Ljava/lang/String;)Z

    move-result v4

    .line 3151
    if-nez v4, :cond_3

    .line 3135
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getSpnFsm(ZLandroid/os/AsyncResult;)V
    .locals 6
    .parameter "start"
    .parameter "ar"

    .prologue
    const/4 v5, -0x1

    const/16 v4, 0xc

    const/4 v3, 0x0

    .line 2461
    if-eqz p1, :cond_2

    .line 2464
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_3GPP:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->INIT:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    if-ne v1, v2, :cond_1

    .line 2470
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->INIT:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 2549
    :goto_0
    return-void

    .line 2473
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->INIT:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 2477
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$2;->$SwitchMap$com$android$internal$telephony$gsm$SIMRecords$Get_Spn_Fsm_State:[I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2547
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto :goto_0

    .line 2479
    :pswitch_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 2481
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6f46

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2483
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2485
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_3GPP:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto :goto_0

    .line 2488
    :pswitch_1
    if-eqz p2, :cond_4

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_4

    .line 2489
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 2490
    .local v0, data:[B
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 2493
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    const/16 v2, 0xff

    if-ne v1, v2, :cond_3

    .line 2494
    iput v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 2497
    :cond_3
    const/4 v1, 0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 2499
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

    .line 2501
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->SIM_RECORDS_PROPERTY_ICC_OPERATOR_ALPHA:[Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2503
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 2505
    .end local v0           #data:[B
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6f14

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2507
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2509
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 2513
    iput v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    goto/16 :goto_0

    .line 2517
    :pswitch_2
    if-eqz p2, :cond_5

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_5

    .line 2518
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 2519
    .restart local v0       #data:[B
    array-length v1, v0

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 2521
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

    .line 2522
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->SIM_RECORDS_PROPERTY_ICC_OPERATOR_ALPHA:[Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2524
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 2526
    .end local v0           #data:[B
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x6f18

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2528
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2530
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 2534
    :pswitch_3
    if-eqz p2, :cond_6

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_6

    .line 2535
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 2536
    .restart local v0       #data:[B
    array-length v1, v0

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 2538
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

    .line 2539
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->SIM_RECORDS_PROPERTY_ICC_OPERATOR_ALPHA:[Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2544
    .end local v0           #data:[B
    :goto_1
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 2541
    :cond_6
    const-string v1, "No SPN loaded in either CHPS or 3GPP"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2477
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleEfCspData([B)V
    .locals 6
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    .line 3031
    array-length v3, p1

    div-int/lit8 v1, v3, 0x2

    .line 3033
    .local v1, usedCspGroups:I
    const/16 v2, -0x40

    .line 3035
    .local v2, valueAddedServicesGroup:B
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 3036
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 3037
    mul-int/lit8 v3, v0, 0x2

    aget-byte v3, p1, v3

    if-ne v3, v2, :cond_1

    .line 3038
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CSP] found ValueAddedServicesGroup, value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3040
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_0

    .line 3044
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 3057
    :goto_1
    return-void

    .line 3046
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    goto :goto_1

    .line 3036
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3056
    :cond_2
    const-string v3, "[CSP] Value Added Service Group (0xC0), not found!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleFileUpdate(I)V
    .locals 5
    .parameter "efid"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1838
    sparse-switch p1, :sswitch_data_0

    .line 1870
    const-string v0, "handleFileUpdate default"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1872
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->isUsimPhbEfAndNeedReset(I)Z

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1873
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 1874
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setPhbReady(Z)V

    .line 1877
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 1880
    :goto_0
    return-void

    .line 1840
    :sswitch_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1841
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v1, 0x6fc7

    const/16 v2, 0x6fc8

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 1845
    :sswitch_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1846
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v1, 0x6f17

    const/16 v2, 0x6f4a

    const/16 v3, 0xb

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 1850
    :sswitch_2
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1851
    const-string v0, "[CSP] SIM Refresh for EF_CSP_CPHS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1852
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f15

    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0

    .line 1861
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 1862
    const-string v0, "handleFileUpdate ADN like"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1863
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setPhbReady(Z)V

    goto :goto_0

    .line 1838
    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_3
        0x6f15 -> :sswitch_2
        0x6f17 -> :sswitch_1
        0x6f3a -> :sswitch_3
        0x6f3b -> :sswitch_3
        0x6f40 -> :sswitch_3
        0x6f49 -> :sswitch_3
        0x6fc7 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleSimRefresh(Lcom/android/internal/telephony/IccRefreshResponse;)V
    .locals 9
    .parameter "refreshResponse"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1883
    if-nez p1, :cond_1

    .line 1884
    const-string v2, "handleSimRefresh received without input"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2013
    :cond_0
    :goto_0
    return-void

    .line 1888
    :cond_1
    iget-object v2, p1, Lcom/android/internal/telephony/IccRefreshResponse;->aid:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/internal/telephony/IccRefreshResponse;->aid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/android/internal/telephony/IccRefreshResponse;->aid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1891
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSimRefresh, refreshResponse.aid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/IccRefreshResponse;->aid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mParentApp.getAid() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1895
    :cond_2
    iget v2, p1, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:I

    packed-switch v2, :pswitch_data_0

    .line 1985
    :pswitch_0
    const-string v2, "handleSimRefresh with unknown operation"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1990
    :goto_1
    iget v2, p1, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:I

    if-eqz v2, :cond_3

    iget v2, p1, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:I

    if-eq v2, v5, :cond_3

    iget v2, p1, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:I

    if-eq v2, v6, :cond_3

    iget v2, p1, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:I

    if-ne v2, v7, :cond_4

    .line 1994
    :cond_3
    const-string v2, "GSM"

    const-string v3, "notify apps that SIM files changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.sim.SIM_FILES_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1997
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "SIM_ID"

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1998
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2002
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    iget v2, p1, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:I

    if-eq v2, v5, :cond_5

    iget v2, p1, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    iget v2, p1, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:I

    if-eq v2, v6, :cond_5

    iget v2, p1, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:I

    if-ne v2, v7, :cond_0

    .line 2007
    :cond_5
    const-string v2, "GSM"

    const-string v3, "notify stk app to remove the idle text"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.aciton.stk.REMOVE_IDLE_TEXT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2010
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "SIM_ID"

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2011
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1897
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    const-string v2, "handleSimRefresh with SIM_REFRESH_FILE_UPDATED"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1900
    iget v2, p1, Lcom/android/internal/telephony/IccRefreshResponse;->efId:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleFileUpdate(I)V

    goto :goto_1

    .line 1915
    :pswitch_2
    const-string v2, "handleSimRefresh with SIM_REFRESH_INIT"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1917
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 1918
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->setPhbReady(Z)V

    .line 1919
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    goto :goto_1

    .line 1922
    :pswitch_3
    const-string v2, "handleSimRefresh with SIM_REFRESH_RESET"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1934
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1935
    const-string v2, "gsm.3gswitch"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 1940
    .local v0, SimIdFor3G:I
    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    if-ne v0, v2, :cond_6

    .line 1941
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v8}, Lcom/android/internal/telephony/CommandsInterface;->resetRadio(Landroid/os/Message;)V

    .line 1953
    .end local v0           #SimIdFor3G:I
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 1954
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->setPhbReady(Z)V

    goto/16 :goto_1

    .line 1944
    .restart local v0       #SimIdFor3G:I
    :cond_6
    const-string v2, "GSM"

    const-string v3, "notify phone 1 to reset modem"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.sim.ACTION_RESET_MODEM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1946
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 1950
    .end local v0           #SimIdFor3G:I
    .end local v1           #intent:Landroid/content/Intent;
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v8}, Lcom/android/internal/telephony/CommandsInterface;->resetRadio(Landroid/os/Message;)V

    goto :goto_2

    .line 1972
    :pswitch_4
    const-string v2, "handleSimRefresh with REFRESH_INIT_FULL_FILE_UPDATED"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1973
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->setPhbReady(Z)V

    .line 1974
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 1975
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    goto/16 :goto_1

    .line 1978
    :pswitch_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSimRefresh with REFRESH_INIT_FILE_UPDATED, EFID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/IccRefreshResponse;->efId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1979
    iget v2, p1, Lcom/android/internal/telephony/IccRefreshResponse;->efId:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleFileUpdate(I)V

    .line 1980
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 1981
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    goto/16 :goto_1

    .line 1895
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private handleSms([B)V
    .locals 7
    .parameter "ba"

    .prologue
    const/4 v6, 0x0

    .line 2026
    aget-byte v3, p1, v6

    if-eqz v3, :cond_0

    .line 2027
    const-string v3, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    :cond_0
    aget-byte v3, p1, v6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 2032
    array-length v1, p1

    .line 2036
    .local v1, n:I
    add-int/lit8 v3, v1, -0x1

    new-array v2, v3, [B

    .line 2037
    .local v2, pdu:[B
    const/4 v3, 0x1

    add-int/lit8 v4, v1, -0x1

    invoke-static {p1, v3, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2038
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 2040
    .local v0, message:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->dispatchGsmMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 2048
    .end local v0           #message:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v1           #n:I
    .end local v2           #pdu:[B
    :cond_1
    return-void
.end method

.method private handleSmses(Ljava/util/ArrayList;)V
    .locals 11
    .parameter "messages"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2052
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2054
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2055
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    .line 2057
    .local v0, ba:[B
    aget-byte v6, v0, v9

    if-eqz v6, :cond_0

    .line 2058
    const-string v6, "ENF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "status "

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

    .line 2063
    :cond_0
    aget-byte v6, v0, v9

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 2064
    array-length v4, v0

    .line 2068
    .local v4, n:I
    add-int/lit8 v6, v4, -0x1

    new-array v5, v6, [B

    .line 2069
    .local v5, pdu:[B
    add-int/lit8 v6, v4, -0x1

    invoke-static {v0, v10, v5, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2070
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v3

    .line 2072
    .local v3, message:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->dispatchGsmMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 2077
    aput-byte v10, v0, v9

    .line 2054
    .end local v3           #message:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v4           #n:I
    .end local v5           #pdu:[B
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2085
    .end local v0           #ba:[B
    :cond_2
    return-void
.end method

.method private isCphsMailboxEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2596
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    if-nez v2, :cond_0

    .line 2597
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

.method private isMatchingPlmnForEfOpl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "simPlmn"
    .parameter "bcchPlmn"

    .prologue
    const/4 v4, 0x1

    const/16 v9, 0x64

    const/4 v8, 0x6

    const/4 v3, 0x0

    const/4 v7, 0x5

    .line 2670
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p2, :cond_0

    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2704
    :cond_0
    :goto_0
    return v3

    .line 2673
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMatchingPlmnForEfOpl(): simPlmn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bcchPlmn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2679
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2680
    .local v2, simPlmnLen:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2681
    .local v0, bcchPlmnLen:I
    if-lt v2, v7, :cond_0

    if-lt v0, v7, :cond_0

    .line 2684
    const/4 v1, 0x0

    .line 2685
    .local v1, i:I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v7, :cond_4

    .line 2686
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_3

    .line 2685
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2688
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_2

    goto :goto_0

    .line 2692
    :cond_4
    if-ne v2, v8, :cond_6

    if-ne v0, v8, :cond_6

    .line 2693
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v9, :cond_5

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_0

    :cond_5
    move v3, v4

    .line 2694
    goto :goto_0

    .line 2698
    :cond_6
    if-ne v0, v8, :cond_7

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-eq v5, v6, :cond_7

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_0

    .line 2700
    :cond_7
    if-ne v2, v8, :cond_8

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-eq v5, v6, :cond_8

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_0

    :cond_8
    move v3, v4

    .line 2704
    goto :goto_0
.end method

.method private isOnMatchingPlmn(Ljava/lang/String;)Z
    .locals 5
    .parameter "plmn"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2414
    if-nez p1, :cond_1

    .line 2427
    :cond_0
    :goto_0
    return v2

    .line 2416
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->isHPlmn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 2417
    goto :goto_0

    .line 2420
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 2421
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

    .line 2422
    .local v1, spdiNet:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 2423
    goto :goto_0
.end method

.method private matchLangToLocale(Ljava/lang/String;)Z
    .locals 11
    .parameter "lang"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x5

    .line 3159
    const/4 v5, 0x0

    .line 3160
    .local v5, ret:Z
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v3

    .line 3161
    .local v3, locals:[Ljava/lang/String;
    array-length v4, v3

    .line 3162
    .local v4, localsSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 3163
    aget-object v6, v3, v0

    .line 3164
    .local v6, s:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    .line 3165
    .local v2, len:I
    if-ne v2, v9, :cond_1

    .line 3166
    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3167
    .local v1, language:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Supported languages: the i"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " th is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3168
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3169
    const/4 v5, 0x1

    .line 3173
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, p1, v8}, Lcom/android/internal/telephony/MccTable;->setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3174
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Matched! lang: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", country is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3179
    .end local v1           #language:Ljava/lang/String;
    .end local v2           #len:I
    .end local v6           #s:Ljava/lang/String;
    :cond_0
    return v5

    .line 3162
    .restart local v2       #len:I
    .restart local v6       #s:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private onLanguageFileLoaded()V
    .locals 2

    .prologue
    .line 3077
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efLanguageToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efLanguageToLoad:I

    .line 3078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLanguageFileLoaded efLanguageToLoad is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efLanguageToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3079
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efLanguageToLoad:I

    if-nez v0, :cond_1

    .line 3080
    const-string v0, "onLanguageFileLoaded all language file loaded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3081
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfLI:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfELP:[B

    if-eqz v0, :cond_2

    .line 3082
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->setLanguageFromSIM()V

    .line 3087
    :cond_1
    :goto_0
    return-void

    .line 3084
    :cond_2
    const-string v0, "onLanguageFileLoaded all language file are not exist!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

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

    .line 2634
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2635
    .local v0, count:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseEFopl(): opl has "

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

    .line 2637
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOperatorList:Ljava/util/ArrayList;

    .line 2638
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2639
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v1, v6

    check-cast v1, [B

    .line 2640
    .local v1, data:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseEFopl(): opl record "

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

    .line 2642
    new-instance v5, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;-><init>()V

    .line 2644
    .local v5, oplRec:Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;
    invoke-static {v1, v8, v12}, Lcom/android/internal/telephony/IccUtils;->parsePlmnToStringForEfOpl([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->sPlmn:Ljava/lang/String;

    .line 2645
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseEFopl(): opl sPlmn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->sPlmn:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2647
    new-array v4, v11, [B

    .line 2648
    .local v4, minLac:[B
    aget-byte v6, v1, v12

    aput-byte v6, v4, v8

    .line 2649
    const/4 v6, 0x4

    aget-byte v6, v1, v6

    aput-byte v6, v4, v10

    .line 2650
    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->nMinLAC:I

    .line 2651
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseEFopl(): opl nMinLAC = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->nMinLAC:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2653
    new-array v3, v11, [B

    .line 2654
    .local v3, maxLAC:[B
    const/4 v6, 0x5

    aget-byte v6, v1, v6

    aput-byte v6, v3, v8

    .line 2655
    const/4 v6, 0x6

    aget-byte v6, v1, v6

    aput-byte v6, v3, v10

    .line 2656
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->nMaxLAC:I

    .line 2657
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseEFopl(): opl nMaxLAC = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->nMaxLAC:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2659
    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->nPnnIndex:I

    .line 2660
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseEFopl(): opl nPnnIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->nPnnIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2662
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2638
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2664
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

    .line 2604
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2605
    .local v0, count:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseEFpnn(): pnn has "

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

    .line 2607
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    .line 2608
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 2609
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v1, v5

    check-cast v1, [B

    .line 2610
    .local v1, data:[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseEFpnn(): pnn record "

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

    .line 2612
    new-instance v4, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v5, v1

    invoke-direct {v4, v1, v7, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 2613
    .local v4, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    new-instance v3, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;-><init>()V

    .line 2614
    .local v3, opName:Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;
    :goto_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2615
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    const/16 v6, 0x43

    if-ne v5, v6, :cond_1

    .line 2616
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v5, v7, v6}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    .line 2618
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseEFpnn(): pnn sFullName is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2614
    :cond_0
    :goto_2
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_1

    .line 2619
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    const/16 v6, 0x45

    if-ne v5, v6, :cond_0

    .line 2620
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v5, v7, v6}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    .line 2622
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseEFpnn(): pnn sShortName is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 2626
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2608
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2628
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

    .line 2558
    new-instance v3, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v5, p1

    invoke-direct {v3, p1, v7, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 2560
    .local v3, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    const/4 v2, 0x0

    .line 2562
    .local v2, plmnEntries:[B
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2564
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    const/16 v6, 0xa3

    if-ne v5, v6, :cond_0

    .line 2565
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

    .line 2568
    .end local v4           #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    .restart local v3       #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    const/16 v6, 0x80

    if-ne v5, v6, :cond_3

    .line 2569
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v2

    .line 2574
    :cond_1
    if-nez v2, :cond_4

    .line 2590
    :cond_2
    return-void

    .line 2562
    :cond_3
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_0

    .line 2578
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v2

    div-int/lit8 v6, v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 2580
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    add-int/lit8 v5, v0, 0x2

    array-length v6, v2

    if-ge v5, v6, :cond_2

    .line 2582
    const/4 v5, 0x3

    invoke-static {v2, v0, v5}, Lcom/android/internal/telephony/IccUtils;->parsePlmnToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 2585
    .local v1, plmnCode:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_5

    .line 2586
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

    .line 2587
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2580
    :cond_5
    add-int/lit8 v0, v0, 0x3

    goto :goto_1
.end method

.method private processEfCspPlmnModeBitUrc(I)V
    .locals 4
    .parameter "bit"

    .prologue
    .line 1799
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processEfCspPlmnModeBitUrc: bit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    if-nez p1, :cond_0

    .line 1801
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 1806
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_EF_CSP_CONTENT_NOTIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1807
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "plmn_mode_bit"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1808
    const-string v1, "simId"

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1809
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCast intent ACTION_EF_CSP_CONTENT_NOTIFY, INTENT_KEY_PLMN_MODE_BIT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1810
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1811
    return-void

    .line 1803
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    goto :goto_0
.end method

.method private processShutdownIPO()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->hasQueryIccId:Z

    .line 3294
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccIdQueryState:I

    .line 3295
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    .line 3296
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    .line 3297
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spNameInEfSpn:Ljava/lang/String;

    .line 3309
    return-void
.end method

.method private setDefaultNameByLocale()V
    .locals 6

    .prologue
    .line 3270
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 3271
    .local v2, simInfos:Landroid/provider/Telephony$SIMInfo;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 3272
    .local v1, operator:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDefaultNameByLocale() operator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3273
    if-eqz v1, :cond_2

    .line 3274
    const/4 v0, 0x0

    .line 3275
    .local v0, newName:Ljava/lang/String;
    const-string v3, "46002"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "46007"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3276
    :cond_0
    const-string v1, "46000"

    .line 3278
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v3, Lcom/android/internal/telephony/RIL;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/RIL;->lookupOperatorName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 3279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDefaultNameByLocale() newName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3280
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->SIM_RECORDS_PROPERTY_ICC_OPERATOR_DEFAULT_NAME:[Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    aget-object v3, v3, v4

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3282
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->setDefaultNameForNewSIM(Ljava/lang/String;)V

    .line 3287
    .end local v0           #newName:Ljava/lang/String;
    :goto_0
    return-void

    .line 3284
    :cond_2
    const-string v3, "setDefaultNameByLocale() no operator name, but this intent should be received when operator is not null"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3285
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->setDefaultNameForNewSIM(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setLanguageFromSIM()V
    .locals 3

    .prologue
    .line 3090
    const-string v1, "setLanguageFromSIM "

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3091
    const/4 v0, 0x0

    .line 3093
    .local v0, bMatched:Z
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getType()Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne v1, v2, :cond_1

    .line 3094
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfLI:[B

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getMatchedLocaleByLI([B)Z

    move-result v0

    .line 3098
    :goto_0
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfELP:[B

    if-eqz v1, :cond_0

    .line 3099
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfELP:[B

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getMatchedLocaleByLI([B)Z

    move-result v0

    .line 3101
    :cond_0
    const-string v1, "setLanguageFromSIM End"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3102
    return-void

    .line 3096
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfLI:[B

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getMatchedLocaleByLP([B)Z

    move-result v0

    goto :goto_0
.end method

.method private setNumberToSimInfo()V
    .locals 7

    .prologue
    .line 1824
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    invoke-static {v3, v4}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 1825
    .local v2, simInfo:Landroid/provider/Telephony$SIMInfo;
    const-string v1, ""

    .line 1826
    .local v1, number:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1827
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    .line 1829
    :cond_0
    if-eqz v2, :cond_1

    .line 1830
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    iget-wide v4, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v3, v1, v4, v5}, Landroid/provider/Telephony$SIMInfo;->setNumber(Landroid/content/Context;Ljava/lang/String;J)I

    .line 1831
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1832
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.permission.READ_PHONE_STATE"

    const/4 v4, -0x1

    invoke-static {v0, v3, v4}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1833
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setNumberToSimInfo SimInfo simId is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " number is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private setOperatorForNewSIM(Ljava/lang/String;)V
    .locals 5
    .parameter "numeric"

    .prologue
    .line 3430
    if-eqz p1, :cond_1

    .line 3431
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    invoke-static {v2, v3}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 3432
    .local v1, simInfo:Landroid/provider/Telephony$SIMInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOperatorForNewSIM, numeric = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3433
    if-eqz v1, :cond_0

    .line 3434
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->convertImsi2Op(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3435
    .local v0, opStr:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    iget-wide v3, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v2, v0, v3, v4}, Landroid/provider/Telephony$SIMInfo;->setOperatorById(Landroid/content/Context;Ljava/lang/String;J)I

    .line 3440
    .end local v0           #opStr:Ljava/lang/String;
    .end local v1           #simInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    :goto_0
    return-void

    .line 3438
    :cond_1
    const-string v2, "numeric = null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSpnFromConfig(Ljava/lang/String;)V
    .locals 1
    .parameter "carrier"

    .prologue
    .line 2157
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2158
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 2160
    :cond_0
    return-void
.end method

.method private setVoiceMailByCountry(Ljava/lang/String;)V
    .locals 1
    .parameter "spn"

    .prologue
    .line 2164
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isVoiceMailFixed:Z

    .line 2166
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 2167
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 2169
    :cond_0
    return-void
.end method

.method private updateConfiguration(Ljava/lang/String;)V
    .locals 2
    .parameter "numeric"

    .prologue
    .line 3251
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mccMnc:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3252
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mccMnc:Ljava/lang/String;

    .line 3253
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mccMnc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 3257
    :goto_0
    return-void

    .line 3255
    :cond_0
    const-string v0, "Do not update configuration if mcc mnc no change."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private validEfCfis([B)Z
    .locals 4
    .parameter "data"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 735
    if-eqz p1, :cond_0

    aget-byte v2, p1, v1

    if-lt v2, v0, :cond_0

    aget-byte v2, p1, v1

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private wipeAllSIMContacts()V
    .locals 1

    .prologue
    .line 2889
    const-string v0, "wipeAllSIMContacts"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2890
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 2891
    const-string v0, "wipeAllSIMContacts after reset"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2892
    return-void
.end method


# virtual methods
.method public broadcastPhbStateChangedIntent(Z)V
    .locals 3
    .parameter "isReady"

    .prologue
    .line 3396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastPhbStateChangedIntent, mPhbReady "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPhbReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSIMInfoReady "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSIMInfoReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3397
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PHB_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3398
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ready"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3399
    const-string v1, "simId"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getMySimId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent ACTION_PHB_STATE_CHANGED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sim id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getMySimId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3402
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3403
    return-void
.end method

.method protected dispatchGsmMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 1
    .parameter "message"

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2022
    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 488
    const-string v0, "dispose"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 490
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForPhbReady(Landroid/os/Handler;)V

    .line 491
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 492
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForEfCspPlmnModeBitChanged(Landroid/os/Handler;)V

    .line 493
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 495
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mHandlePhbReadyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 496
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->resetRecords()V

    .line 497
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 498
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->setPhbReady(Z)V

    .line 499
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    .line 500
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    .line 501
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->m_simRecordsMtk:Lcom/android/internal/telephony/gsm/SIMRecordsEx;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecordsEx;->dispose()V

    .line 502
    invoke-super {p0}, Lcom/android/internal/telephony/IccRecords;->dispose()V

    .line 503
    return-void
.end method

.method protected fetchSimRecords()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2257
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    .line 2259
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIMRecords:fetchSimRecords "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    .line 2262
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2274
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fc9

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2275
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2277
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fad

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2278
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2281
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fca

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2282
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2289
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f11

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2292
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2296
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fcb

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2297
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2298
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f13

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2299
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2304
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fcd

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2305
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2310
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f38

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2311
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2313
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f16

    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2314
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2316
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f15

    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2317
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2323
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    if-eqz v0, :cond_1

    .line 2324
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/ITelephonyExt;->isSetLanguageBySIM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2325
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f54

    const/16 v2, 0x35

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2326
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2332
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchCPHSOns()V

    .line 2358
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchPhbRecords()V

    .line 2360
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchRatBalancing()V

    .line 2361
    return-void

    .line 2329
    :cond_1
    const-string v0, "fetchSimRecords(): mTelephonyExt is null!!!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 506
    const-string v0, "finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 507
    return-void
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 6
    .parameter "plmn"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    .line 2374
    const/4 v0, 0x0

    .line 2376
    .local v0, bSpnActive:Z
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v2, :cond_0

    .line 2377
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getType()Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne v2, v3, :cond_3

    .line 2378
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    array-length v2, v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    aget-byte v2, v2, v4

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_0

    .line 2379
    const/4 v0, 0x1

    .line 2380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisplayRule USIM mEfSST is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set bSpnActive to true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2388
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 2390
    :cond_1
    const/4 v1, 0x2

    .line 2407
    .local v1, rule:I
    :cond_2
    :goto_1
    return v1

    .line 2382
    .end local v1           #rule:I
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    array-length v2, v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    aget-byte v2, v2, v5

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_0

    .line 2383
    const/4 v0, 0x1

    .line 2384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisplayRule SIM mEfSST is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set bSpnActive to true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2393
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->isOnMatchingPlmn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2395
    :cond_5
    const/4 v1, 0x1

    .line 2396
    .restart local v1       #rule:I
    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2398
    or-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 2401
    .end local v1           #rule:I
    :cond_6
    const/4 v1, 0x2

    .line 2402
    .restart local v1       #rule:I
    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    .line 2404
    or-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getEfRatBalancing()I
    .locals 2

    .prologue
    .line 3260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEfRatBalancing: iccCardType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getType()Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEfRatLoaded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfRatLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEfRat is null = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfRat:[B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3262
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getType()Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfRatLoaded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfRat:[B

    if-nez v0, :cond_1

    .line 3263
    const/16 v0, 0x100

    .line 3265
    :goto_1
    return v0

    .line 3260
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3265
    :cond_1
    const/16 v0, 0x200

    goto :goto_1
.end method

.method public getEonsIfExist(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 9
    .parameter "plmn"
    .parameter "nLac"
    .parameter "bLongNameRequired"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 2709
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EONS getEonsIfExist: plmn is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nLac is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bLongNameRequired: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2710
    if-eqz p1, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 2781
    :cond_0
    :goto_0
    return-object v5

    .line 2714
    :cond_1
    const/4 v2, -0x1

    .line 2715
    .local v2, nPnnIndex:I
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->isHPlmn(Ljava/lang/String;)Z

    move-result v1

    .line 2717
    .local v1, isHPLMN:Z
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOperatorList:Ljava/util/ArrayList;

    if-nez v6, :cond_6

    .line 2719
    if-eqz v1, :cond_5

    .line 2720
    const-string v6, "EONS getEonsIfExist: Plmn is HPLMN, but no mOperatorList, return PNN\'s first record"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2721
    const/4 v2, 0x1

    .line 2749
    :cond_2
    :goto_1
    const/4 v6, -0x1

    if-ne v2, v6, :cond_b

    if-eqz v1, :cond_b

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v8, :cond_b

    .line 2750
    const-string v6, "EONS getEonsIfExist: not find it in EF_OPL, but Plmn is HPLMN, return PNN\'s first record"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2751
    const/4 v2, 0x1

    .line 2762
    :cond_3
    :goto_2
    const/4 v5, 0x0

    .line 2763
    .local v5, sEons:Ljava/lang/String;
    if-lt v2, v8, :cond_4

    .line 2764
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;

    .line 2765
    .local v3, opName:Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;
    if-eqz p3, :cond_e

    .line 2766
    iget-object v6, v3, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    if-eqz v6, :cond_d

    .line 2767
    new-instance v5, Ljava/lang/String;

    .end local v5           #sEons:Ljava/lang/String;
    iget-object v6, v3, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2779
    .end local v3           #opName:Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;
    .restart local v5       #sEons:Ljava/lang/String;
    :cond_4
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EONS getEonsIfExist: sEons is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2723
    .end local v5           #sEons:Ljava/lang/String;
    :cond_5
    const-string v6, "EONS getEonsIfExist: Plmn is not HPLMN, and no mOperatorList, return null"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2728
    :cond_6
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 2729
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;

    .line 2730
    .local v4, oplRec:Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EONS getEonsIfExist: record number is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sPlmn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->sPlmn:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nMinLAC: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->nMinLAC:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nMaxLAC: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->nMaxLAC:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " PnnIndex "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->nPnnIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2735
    iget-object v6, v4, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->sPlmn:Ljava/lang/String;

    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->isMatchingPlmnForEfOpl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget v6, v4, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->nMinLAC:I

    if-nez v6, :cond_7

    iget v6, v4, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->nMaxLAC:I

    const v7, 0xfffe

    if-eq v6, v7, :cond_8

    :cond_7
    iget v6, v4, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->nMinLAC:I

    if-gt v6, p2, :cond_a

    iget v6, v4, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->nMaxLAC:I

    if-lt v6, p2, :cond_a

    .line 2737
    :cond_8
    const-string v6, "EONS getEonsIfExist: find it in EF_OPL"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2738
    iget v6, v4, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->nPnnIndex:I

    if-nez v6, :cond_9

    .line 2739
    const-string v6, "EONS getEonsIfExist: oplRec.nPnnIndex is 0 indicates that the name is to be taken from other sources"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2742
    :cond_9
    iget v2, v4, Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;->nPnnIndex:I

    .line 2743
    goto/16 :goto_1

    .line 2728
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 2753
    .end local v0           #i:I
    .end local v4           #oplRec:Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;
    :cond_b
    if-le v2, v8, :cond_c

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v2, v6, :cond_c

    if-eqz v1, :cond_c

    .line 2754
    const-string v6, "EONS getEonsIfExist: find it in EF_OPL, but index in EF_OPL > EF_PNN list length & Plmn is HPLMN, return PNN\'s first record"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2755
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 2757
    :cond_c
    if-le v2, v8, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v2, v6, :cond_3

    if-nez v1, :cond_3

    .line 2758
    const-string v6, "EONS getEonsIfExist: find it in EF_OPL, but index in EF_OPL > EF_PNN list length & Plmn is not HPLMN, return PNN\'s first record"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2759
    const/4 v2, -0x1

    goto/16 :goto_2

    .line 2768
    .restart local v3       #opName:Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;
    .restart local v5       #sEons:Ljava/lang/String;
    :cond_d
    iget-object v6, v3, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 2769
    new-instance v5, Ljava/lang/String;

    .end local v5           #sEons:Ljava/lang/String;
    iget-object v6, v3, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v5       #sEons:Ljava/lang/String;
    goto/16 :goto_3

    .line 2771
    :cond_e
    if-nez p3, :cond_4

    .line 2772
    iget-object v6, v3, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    if-eqz v6, :cond_f

    .line 2773
    new-instance v5, Ljava/lang/String;

    .end local v5           #sEons:Ljava/lang/String;
    iget-object v6, v3, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;->sShortName:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v5       #sEons:Ljava/lang/String;
    goto/16 :goto_3

    .line 2774
    :cond_f
    iget-object v6, v3, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 2775
    new-instance v5, Ljava/lang/String;

    .end local v5           #sEons:Ljava/lang/String;
    iget-object v6, v3, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v5       #sEons:Ljava/lang/String;
    goto/16 :goto_3
.end method

.method public getFirstFullNameInEfPnn()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3354
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 3355
    :cond_0
    const-string v2, "getFirstFullNameInEfPnn(): empty"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3363
    :cond_1
    :goto_0
    return-object v1

    .line 3359
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPnnNetworkNames:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;

    .line 3360
    .local v0, opName:Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFirstFullNameInEfPnn(): first fullname: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3361
    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 3362
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords$OperatorName;->sFullName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIMSI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuTitleFromEf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3187
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mMenuTitleFromEf:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 823
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 824
    const-string v1, "getOperatorNumeric: IMSI == null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 834
    :goto_0
    return-object v0

    .line 827
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-nez v1, :cond_2

    .line 828
    :cond_1
    const-string v1, "getSIMOperatorNumeric: bad mncLength"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 834
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

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
    .line 847
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cphsOnsl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cphsOnsl:Ljava/lang/String;

    .line 850
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cphsOnss:Ljava/lang/String;

    goto :goto_0
.end method

.method getSIMOperatorNumeric()Ljava/lang/String;
    .locals 3

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-nez v0, :cond_1

    .line 838
    :cond_0
    const/4 v0, 0x0

    .line 843
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSIMServiceStatus(Lcom/android/internal/telephony/Phone$IccService;)Lcom/android/internal/telephony/Phone$IccServiceStatus;
    .locals 10
    .parameter "enService"

    .prologue
    .line 2829
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone$IccService;->getIndex()I

    move-result v2

    .line 2830
    .local v2, nServiceNum:I
    sget-object v6, Lcom/android/internal/telephony/Phone$IccServiceStatus;->UNKNOWN:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    .line 2831
    .local v6, simServiceStatus:Lcom/android/internal/telephony/Phone$IccServiceStatus;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSIMServiceStatus enService is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Service Index is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2833
    if-ltz v2, :cond_0

    sget-object v7, Lcom/android/internal/telephony/Phone$IccService;->UNSUPPORTED_SERVICE:Lcom/android/internal/telephony/Phone$IccService;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone$IccService;->getIndex()I

    move-result v7

    if-ge v2, v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    if-eqz v7, :cond_0

    .line 2834
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v7}, Lcom/android/internal/telephony/UiccCardApplication;->getType()Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne v7, v8, :cond_4

    .line 2835
    sget-object v7, Lcom/android/internal/telephony/gsm/SIMRecords;->usimServiceNumber:[I

    aget v3, v7, v2

    .line 2836
    .local v3, nUSTIndex:I
    if-gtz v3, :cond_1

    .line 2837
    sget-object v6, Lcom/android/internal/telephony/Phone$IccServiceStatus;->NOT_EXIST_IN_USIM:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    .line 2880
    .end local v3           #nUSTIndex:I
    :cond_0
    :goto_0
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSIMServiceStatus simServiceStatus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    return-object v6

    .line 2839
    .restart local v3       #nUSTIndex:I
    :cond_1
    div-int/lit8 v5, v3, 0x8

    .line 2840
    .local v5, nbyte:I
    rem-int/lit8 v4, v3, 0x8

    .line 2841
    .local v4, nbit:I
    if-nez v4, :cond_2

    .line 2842
    const/4 v4, 0x7

    .line 2843
    add-int/lit8 v5, v5, -0x1

    .line 2847
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSIMServiceStatus USIM nbyte: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " nbit: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2849
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    array-length v7, v7

    if-le v7, v5, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    aget-byte v7, v7, v5

    const/4 v8, 0x1

    shl-int/2addr v8, v4

    and-int/2addr v7, v8

    if-lez v7, :cond_3

    .line 2850
    sget-object v6, Lcom/android/internal/telephony/Phone$IccServiceStatus;->ACTIVATED:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    goto :goto_0

    .line 2845
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2852
    :cond_3
    sget-object v6, Lcom/android/internal/telephony/Phone$IccServiceStatus;->INACTIVATED:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    goto :goto_0

    .line 2856
    .end local v3           #nUSTIndex:I
    .end local v4           #nbit:I
    .end local v5           #nbyte:I
    :cond_4
    sget-object v7, Lcom/android/internal/telephony/gsm/SIMRecords;->simServiceNumber:[I

    aget v1, v7, v2

    .line 2857
    .local v1, nSSTIndex:I
    if-gtz v1, :cond_5

    .line 2858
    sget-object v6, Lcom/android/internal/telephony/Phone$IccServiceStatus;->NOT_EXIST_IN_SIM:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    goto :goto_0

    .line 2860
    :cond_5
    div-int/lit8 v5, v1, 0x4

    .line 2861
    .restart local v5       #nbyte:I
    rem-int/lit8 v4, v1, 0x4

    .line 2862
    .restart local v4       #nbit:I
    if-nez v4, :cond_6

    .line 2863
    const/4 v4, 0x3

    .line 2864
    add-int/lit8 v5, v5, -0x1

    .line 2869
    :goto_2
    const/4 v7, 0x3

    mul-int/lit8 v8, v4, 0x2

    shl-int v0, v7, v8

    .line 2870
    .local v0, nMask:I
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSIMServiceStatus SIM nbyte: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " nbit: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " nMask: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    array-length v7, v7

    if-le v7, v5, :cond_7

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    aget-byte v7, v7, v5

    and-int/2addr v7, v0

    if-ne v7, v0, :cond_7

    .line 2872
    sget-object v6, Lcom/android/internal/telephony/Phone$IccServiceStatus;->ACTIVATED:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    goto/16 :goto_0

    .line 2866
    .end local v0           #nMask:I
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 2874
    .restart local v0       #nMask:I
    :cond_7
    sget-object v6, Lcom/android/internal/telephony/Phone$IccServiceStatus;->INACTIVATED:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    goto/16 :goto_0
.end method

.method public getSpNameInEfSpn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSpNameInEfSpn(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spNameInEfSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3337
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spNameInEfSpn:Ljava/lang/String;

    return-object v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    return-object v0
.end method

.method public getVoiceCallForwardingFlag()Z
    .locals 1

    .prologue
    .line 743
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 34
    .parameter "msg"

    .prologue
    .line 861
    const/16 v23, 0x0

    .line 863
    .local v23, isRecordLoadResponse:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 864
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received message "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " while being destroyed. Ignoring."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->loge(Ljava/lang/String;)V

    .line 1794
    :cond_0
    :goto_0
    return-void

    .line 869
    :cond_1
    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1783
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/IccRecords;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1790
    :cond_2
    :goto_1
    if-eqz v23, :cond_0

    .line 1791
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRecordLoaded()V

    goto :goto_0

    .line 871
    :sswitch_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onReady()V

    .line 872
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->bEccRequired:Z

    if-nez v2, :cond_2

    .line 873
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchEccList()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1785
    :catch_0
    move-exception v16

    .line 1787
    .local v16, exc:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v2, "Exception parsing SIM record"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1790
    if-eqz v23, :cond_0

    goto :goto_2

    .line 878
    .end local v16           #exc:Ljava/lang/RuntimeException;
    :sswitch_1
    :try_start_3
    const-string v2, "handleMessage (EVENT_RADIO_STATE_CHANGED)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 879
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->bEccRequired:Z

    if-nez v2, :cond_2

    .line 880
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    if-eq v2, v4, :cond_2

    .line 881
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchEccList()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1790
    :catchall_0
    move-exception v2

    if-eqz v23, :cond_3

    .line 1791
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRecordLoaded()V

    .line 1790
    :cond_3
    throw v2

    .line 887
    :sswitch_2
    :try_start_4
    const-string v2, "handleMessage (EVENT_QUERY_ICCID_DONE)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 889
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 891
    .local v9, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->hasQueryIccId:Z

    if-eqz v2, :cond_4

    .line 892
    const-string v2, "handleMessage (EVENT_QUERY_ICCID_DONE), Next EVENT_RADIO_STATE_CHANGED is fast than waiting EVENT_QUERY_ICCID_DONE."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 896
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccIdQueryState:I

    move/from16 v30, v0

    .line 897
    .local v30, oldIccIdQueryState:I
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_6

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccIdQueryState:I

    .line 899
    const/16 v17, 0x0

    .line 900
    .local v17, hasSIM:Z
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_7

    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_7

    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 901
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->hasQueryIccId:Z

    .line 902
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    .line 903
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v4, 0xcd

    if-ne v2, v4, :cond_5

    .line 907
    :cond_5
    const/16 v17, 0x1

    .line 908
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

    goto/16 :goto_1

    .line 897
    .end local v17           #hasSIM:Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    .line 910
    .restart local v17       #hasSIM:Z
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccIdQueryState:I

    .line 911
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    .line 912
    const/16 v17, 0x0

    .line 913
    const-string v2, "GSM"

    const-string v4, "[SIMRecords] iccid error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 936
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v17           #hasSIM:Z
    .end local v30           #oldIccIdQueryState:I
    :sswitch_3
    const/16 v23, 0x1

    .line 938
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 940
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_8

    .line 941
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception querying IMSI, Exception:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 945
    :cond_8
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    .line 949
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xf

    if-le v2, v4, :cond_a

    .line 950
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid IMSI "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->loge(Ljava/lang/String;)V

    .line 951
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    .line 954
    :cond_a
    const-string v2, "IMSI: xxxxxxx"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 956
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_c

    .line 958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 959
    .local v29, mccmncCode:Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .local v10, arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v26, v0

    .local v26, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_c

    aget-object v28, v10, v19

    .line 960
    .local v28, mccmnc:Ljava/lang/String;
    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 961
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 967
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v26           #len$:I
    .end local v28           #mccmnc:Ljava/lang/String;
    .end local v29           #mccmncCode:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v2, :cond_d

    .line 971
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 972
    .local v27, mcc:I
    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 979
    .end local v27           #mcc:I
    :cond_d
    :goto_5
    :try_start_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_e

    .line 982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->updateConfiguration(Ljava/lang/String;)V

    .line 984
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_1

    .line 959
    .restart local v10       #arr$:[Ljava/lang/String;
    .restart local v19       #i$:I
    .restart local v26       #len$:I
    .restart local v28       #mccmnc:Ljava/lang/String;
    .restart local v29       #mccmncCode:Ljava/lang/String;
    :cond_f
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 973
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v26           #len$:I
    .end local v28           #mccmnc:Ljava/lang/String;
    .end local v29           #mccmncCode:Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 974
    .local v13, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 975
    const-string v2, "Corrupt IMSI!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->loge(Ljava/lang/String;)V

    goto :goto_5

    .line 989
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v13           #e:Ljava/lang/NumberFormatException;
    :sswitch_4
    const/16 v23, 0x1

    .line 991
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 992
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 994
    .local v12, data:[B
    const/16 v24, 0x0

    .line 995
    .local v24, isValidMbdn:Z
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_10

    .line 997
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_MBI: "

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

    .line 1000
    const/4 v2, 0x0

    aget-byte v2, v12, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    .line 1003
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    const/16 v4, 0xff

    if-eq v2, v4, :cond_10

    .line 1004
    const-string v2, "Got valid mailbox number for MBDN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1005
    const/16 v24, 0x1

    .line 1006
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isValidMBI:Z

    .line 1011
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1013
    if-eqz v24, :cond_11

    .line 1015
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v4, 0x6fc7

    const/16 v5, 0x6fc8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    const/4 v7, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1017
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1020
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1024
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto/16 :goto_1

    .line 1035
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    .end local v24           #isValidMbdn:Z
    :sswitch_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1036
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 1037
    const/16 v23, 0x1

    .line 1039
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1041
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_14

    .line 1043
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid or missing EF"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v5, 0xb

    if-ne v2, v5, :cond_13

    const-string v2, "[MAILBOX]"

    :goto_6
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1049
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_2

    .line 1053
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1054
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1043
    :cond_13
    const-string v2, "[MBDN]"

    goto :goto_6

    .line 1061
    :cond_14
    iget-object v3, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/AdnRecord;

    .line 1063
    .local v3, adn:Lcom/android/internal/telephony/AdnRecord;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VM: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v5, 0xb

    if-ne v2, v5, :cond_15

    const-string v2, " EF[MAILBOX]"

    :goto_7
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_16

    .line 1070
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1071
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1063
    :cond_15
    const-string v2, " EF[MBDN]"

    goto :goto_7

    .line 1078
    :cond_16
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1079
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    goto/16 :goto_1

    .line 1084
    .end local v3           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_6
    const/16 v23, 0x0

    .line 1086
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1088
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_17

    .line 1089
    const-string v2, "Invalid or missing EF[MSISDN]"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1090
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v4, 0xce

    if-ne v2, v4, :cond_2

    .line 1091
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1096
    :cond_17
    iget-object v3, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/AdnRecord;

    .line 1098
    .restart local v3       #adn:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    .line 1099
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    .line 1101
    const-string v2, "MSISDN: xxxxxxx"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1102
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->setNumberToSimInfo()V

    .line 1104
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v4, 0xce

    if-ne v2, v4, :cond_2

    .line 1105
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1111
    .end local v3           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_7
    const/16 v23, 0x0

    .line 1112
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1114
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 1115
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1117
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_18

    .line 1119
    new-instance v4, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v5, 0x6f40

    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    const/16 v8, 0xce

    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v4, v5, v6, v7, v2}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1122
    :cond_18
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1128
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_8
    const/16 v23, 0x1

    .line 1130
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1131
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1133
    .restart local v12       #data:[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_MWIS: "

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

    .line 1139
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 1141
    const/4 v2, 0x0

    aget-byte v2, v12, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0xff

    if-ne v2, v4, :cond_19

    .line 1142
    const-string v2, "Uninitialized record MWIS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1147
    :cond_19
    const/4 v2, 0x0

    aget-byte v2, v12, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1b

    const/16 v33, 0x1

    .line 1148
    .local v33, voiceMailWaiting:Z
    :goto_8
    const/4 v2, 0x1

    aget-byte v2, v12, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 1150
    if-eqz v33, :cond_1a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    if-nez v2, :cond_1a

    .line 1152
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 1155
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1147
    .end local v33           #voiceMailWaiting:Z
    :cond_1b
    const/16 v33, 0x0

    goto :goto_8

    .line 1159
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    :sswitch_9
    const/16 v23, 0x1

    .line 1161
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1162
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1164
    .restart local v12       #data:[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1168
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 1173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v4, 0x0

    aget-byte v2, v2, v4

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2

    .line 1174
    :cond_1c
    const/4 v2, 0x0

    aget-byte v2, v12, v2

    and-int/lit8 v21, v2, 0xf

    .line 1177
    .local v21, indicator:I
    const/16 v2, 0xa

    move/from16 v0, v21

    if-ne v0, v2, :cond_1e

    .line 1179
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 1184
    :cond_1d
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1180
    :cond_1e
    const/4 v2, 0x5

    move/from16 v0, v21

    if-ne v0, v2, :cond_1d

    .line 1181
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    goto :goto_9

    .line 1189
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    .end local v21           #indicator:I
    :sswitch_a
    const/16 v23, 0x1

    .line 1191
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1192
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1194
    .restart local v12       #data:[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1198
    const/4 v2, 0x0

    array-length v4, v12

    invoke-static {v12, v2, v4}, Lcom/android/internal/telephony/IccUtils;->parseIccIdToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    .line 1200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iccid: "

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
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    .line 1207
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    :sswitch_b
    const/16 v23, 0x1

    .line 1209
    :try_start_7
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1210
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1212
    .restart local v12       #data:[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_23

    .line 1234
    :try_start_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_20

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_20

    .line 1236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 1237
    .restart local v29       #mccmncCode:Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v10       #arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v26, v0

    .restart local v26       #len$:I
    const/16 v19, 0x0

    .restart local v19       #i$:I
    :goto_a
    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_20

    aget-object v28, v10, v19

    .line 1238
    .restart local v28       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 1239
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1245
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v26           #len$:I
    .end local v28           #mccmnc:Ljava/lang/String;
    .end local v29           #mccmncCode:Ljava/lang/String;
    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_22

    .line 1246
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    if-eqz v2, :cond_5a

    .line 1248
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 1250
    .restart local v27       #mcc:I
    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 1262
    .end local v27           #mcc:I
    :cond_22
    :goto_b
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_2

    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->updateConfiguration(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_1

    .line 1216
    :cond_23
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_AD: "

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

    .line 1218
    array-length v2, v12

    const/4 v4, 0x3

    if-ge v2, v4, :cond_28

    .line 1219
    const-string v2, "Corrupt AD data on SIM"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1234
    :try_start_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_24

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_25

    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_25

    .line 1236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 1237
    .restart local v29       #mccmncCode:Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v10       #arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v26, v0

    .restart local v26       #len$:I
    const/16 v19, 0x0

    .restart local v19       #i$:I
    :goto_c
    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_25

    aget-object v28, v10, v19

    .line 1238
    .restart local v28       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 1239
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1245
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v26           #len$:I
    .end local v28           #mccmnc:Ljava/lang/String;
    .end local v29           #mccmncCode:Ljava/lang/String;
    :cond_25
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_27

    .line 1246
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    if-eqz v2, :cond_5c

    .line 1248
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 1250
    .restart local v27       #mcc:I
    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0

    .line 1262
    .end local v27           #mcc:I
    :cond_27
    :goto_d
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_2

    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->updateConfiguration(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_1

    .line 1223
    :cond_28
    :try_start_f
    array-length v2, v12

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2d

    .line 1224
    const-string v2, "MNC length not present in EF_AD"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1234
    :try_start_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_29

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2a

    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_2a

    .line 1236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 1237
    .restart local v29       #mccmncCode:Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v10       #arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v26, v0

    .restart local v26       #len$:I
    const/16 v19, 0x0

    .restart local v19       #i$:I
    :goto_e
    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_2a

    aget-object v28, v10, v19

    .line 1238
    .restart local v28       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 1239
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1245
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v26           #len$:I
    .end local v28           #mccmnc:Ljava/lang/String;
    .end local v29           #mccmncCode:Ljava/lang/String;
    :cond_2a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2c

    .line 1246
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0

    if-eqz v2, :cond_5e

    .line 1248
    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 1250
    .restart local v27       #mcc:I
    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0

    .line 1262
    .end local v27           #mcc:I
    :cond_2c
    :goto_f
    :try_start_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_2

    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->updateConfiguration(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0

    goto/16 :goto_1

    .line 1228
    :cond_2d
    const/4 v2, 0x3

    :try_start_13
    aget-byte v2, v12, v2

    and-int/lit8 v2, v2, 0xf

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1230
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/16 v4, 0xf

    if-ne v2, v4, :cond_2e

    .line 1231
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 1234
    :cond_2e
    :try_start_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_2f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_30

    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_30

    .line 1236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 1237
    .restart local v29       #mccmncCode:Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v10       #arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v26, v0

    .restart local v26       #len$:I
    const/16 v19, 0x0

    .restart local v19       #i$:I
    :goto_10
    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_30

    aget-object v28, v10, v19

    .line 1238
    .restart local v28       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 1239
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1245
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v26           #len$:I
    .end local v28           #mccmnc:Ljava/lang/String;
    .end local v29           #mccmncCode:Ljava/lang/String;
    :cond_30
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_31

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_32

    .line 1246
    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0

    if-eqz v2, :cond_60

    .line 1248
    :try_start_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 1250
    .restart local v27       #mcc:I
    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_0

    .line 1262
    .end local v27           #mcc:I
    :cond_32
    :goto_11
    :try_start_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_2

    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->updateConfiguration(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1234
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    :catchall_1
    move-exception v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_33

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v4, :cond_33

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_34

    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_34

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_34

    .line 1236
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 1237
    .restart local v29       #mccmncCode:Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v10       #arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v26, v0

    .restart local v26       #len$:I
    const/16 v19, 0x0

    .restart local v19       #i$:I
    :goto_12
    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_34

    aget-object v28, v10, v19

    .line 1238
    .restart local v28       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 1239
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1245
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v26           #len$:I
    .end local v28           #mccmnc:Ljava/lang/String;
    .end local v29           #mccmncCode:Ljava/lang/String;
    :cond_34
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v4, :cond_35

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_36

    .line 1246
    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_0

    if-eqz v4, :cond_58

    .line 1248
    :try_start_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 1250
    .restart local v27       #mcc:I
    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_0

    .line 1262
    .end local v27           #mcc:I
    :cond_36
    :goto_13
    :try_start_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_37

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v4, :cond_37

    .line 1268
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->updateConfiguration(Ljava/lang/String;)V

    .line 1234
    :cond_37
    throw v2

    .line 1274
    :sswitch_c
    const-string v2, "EF_SPN loaded and try to extract: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1275
    const/16 v23, 0x1

    .line 1276
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1278
    .restart local v9       #ar:Landroid/os/AsyncResult;
    if-eqz v9, :cond_3a

    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3a

    .line 1279
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1280
    .restart local v12       #data:[B
    const/4 v2, 0x0

    aget-byte v2, v12, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 1283
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    const/16 v4, 0xff

    if-ne v2, v4, :cond_38

    .line 1284
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 1287
    :cond_38
    const/4 v2, 0x1

    array-length v4, v12

    add-int/lit8 v4, v4, -0x1

    invoke-static {v12, v2, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 1288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spNameInEfSpn:Ljava/lang/String;

    .line 1289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spNameInEfSpn:Ljava/lang/String;

    if-eqz v2, :cond_39

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spNameInEfSpn:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1290
    const-string v2, "set spNameInEfSpn to null because parsing result is empty"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1291
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spNameInEfSpn:Ljava/lang/String;

    .line 1294
    :cond_39
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

    .line 1297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->SIM_RECORDS_PROPERTY_ICC_OPERATOR_ALPHA:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    aget-object v2, v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1299
    .end local v12           #data:[B
    :cond_3a
    const-string v2, "GSM"

    const-string v4, "SIMRecords: read spn fail!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    goto/16 :goto_1

    .line 1308
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_d
    const/16 v23, 0x1

    .line 1310
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1311
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1313
    .restart local v12       #data:[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_CFF_CPHS: "

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

    .line 1318
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    .line 1320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->validEfCfis([B)Z

    move-result v2

    if-nez v2, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    if-nez v2, :cond_3d

    .line 1321
    :cond_3b
    const/4 v2, 0x0

    aget-byte v2, v12, v2

    and-int/lit8 v2, v2, 0xf

    const/16 v4, 0xa

    if-ne v2, v4, :cond_3c

    const/4 v2, 0x1

    :goto_14
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    .line 1324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1321
    :cond_3c
    const/4 v2, 0x0

    goto :goto_14

    .line 1326
    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_GET_CFF_DONE: invalid mEfCfis="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1332
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    :sswitch_e
    const/16 v23, 0x1

    .line 1334
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1335
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1337
    .restart local v12       #data:[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1341
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/SIMRecords;->parseEfSpdi([B)V

    goto/16 :goto_1

    .line 1345
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1346
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 1347
    const-string v2, "update failed. "

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1352
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_10
    const/16 v23, 0x1

    .line 1354
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1357
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1361
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->parseEFpnn(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 1377
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_11
    const/16 v23, 0x1

    .line 1379
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1380
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1383
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSmses(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 1387
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_12
    const-string v2, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "marked read: sms "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1392
    :sswitch_13
    const/16 v23, 0x0

    .line 1394
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1396
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v20, v0

    .line 1398
    .local v20, index:[I
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3e

    move-object/from16 v0, v20

    array-length v2, v0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3f

    .line 1399
    :cond_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error on SMS_ON_SIM with exp "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " length "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    array-length v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1402
    :cond_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "READ EF_SMS RECORD index="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    aget v4, v20, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v4, 0x6f3c

    const/4 v5, 0x0

    aget v5, v20, v5

    const/16 v6, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1409
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v20           #index:[I
    :sswitch_14
    const/16 v23, 0x0

    .line 1410
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1411
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_40

    .line 1412
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSms([B)V

    goto/16 :goto_1

    .line 1414
    :cond_40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error on GET_SMS with exp "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1418
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_15
    const/16 v23, 0x1

    .line 1420
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1421
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1423
    .restart local v12       #data:[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1427
    new-instance v2, Lcom/android/internal/telephony/gsm/UsimServiceTable;

    invoke-direct {v2, v12}, Lcom/android/internal/telephony/gsm/UsimServiceTable;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    .line 1428
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

    .line 1429
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfSST:[B

    .line 1430
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchPnnAndOpl()V

    .line 1431
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSpn()V

    goto/16 :goto_1

    .line 1435
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    :sswitch_16
    const/16 v23, 0x1

    .line 1437
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1439
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1443
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    .line 1445
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

    .line 1448
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isValidMBI:Z

    if-nez v2, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1449
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1450
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1457
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_17
    const/16 v23, 0x0

    .line 1458
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1460
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_41

    .line 1461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 1465
    :cond_41
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1466
    new-instance v3, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    .restart local v3       #adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v0, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/os/Message;

    .line 1476
    .local v31, onCphsCompleted:Landroid/os/Message;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_42

    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_42

    .line 1477
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    const/4 v4, 0x0

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1479
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1481
    const-string v2, "Callback with MBDN successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1483
    const/16 v31, 0x0

    .line 1486
    :cond_42
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x19

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1491
    .end local v3           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v31           #onCphsCompleted:Landroid/os/Message;
    :cond_43
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 1492
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1494
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1499
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_18
    const/16 v23, 0x0

    .line 1500
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1501
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_44

    .line 1502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 1508
    :goto_15
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 1509
    const-string v2, "Callback with CPHS MB successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1510
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1512
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1505
    :cond_44
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

    goto :goto_15

    .line 1516
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_19
    const/16 v23, 0x0

    .line 1517
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1518
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

    .line 1519
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1520
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/IccRefreshResponse;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSimRefresh(Lcom/android/internal/telephony/IccRefreshResponse;)V

    goto/16 :goto_1

    .line 1524
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_1a
    const/16 v23, 0x1

    .line 1526
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1527
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1529
    .restart local v12       #data:[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_CFIS: "

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

    .line 1535
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/SIMRecords;->validEfCfis([B)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1536
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    .line 1539
    const/4 v2, 0x1

    aget-byte v2, v12, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_45

    const/4 v2, 0x1

    :goto_16
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    .line 1540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_CFIS: callFordwardingEnabled="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1539
    :cond_45
    const/4 v2, 0x0

    goto :goto_16

    .line 1544
    :cond_46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_CFIS: invalid data="

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

    goto/16 :goto_1

    .line 1549
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    :sswitch_1b
    const-string v2, "handleMessage (EVENT_GET_SIM_ECC_DONE)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1551
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1552
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_47

    .line 1553
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

    goto/16 :goto_1

    .line 1558
    :cond_47
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->SIM_RECORDS_PROPERTY_ECC_LIST:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    aget-object v2, v2, v4

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfEcc:Ljava/lang/String;

    .line 1559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM mEfEcc from property is "

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

    .line 1561
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1562
    .restart local v12       #data:[B
    const/16 v18, 0x0

    .local v18, i:I
    :goto_17
    add-int/lit8 v2, v18, 0x2

    array-length v4, v12

    if-ge v2, v4, :cond_49

    .line 1564
    const/4 v2, 0x3

    move/from16 v0, v18

    invoke-static {v12, v0, v2}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v14

    .line 1567
    .local v14, eccNum:Ljava/lang/String;
    if-eqz v14, :cond_48

    const-string v2, ""

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfEcc:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 1568
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

    .line 1571
    :cond_48
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

    .line 1562
    add-int/lit8 v18, v18, 0x3

    goto :goto_17

    .line 1574
    .end local v14           #eccNum:Ljava/lang/String;
    :cond_49
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

    .line 1575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->SIM_RECORDS_PROPERTY_ECC_LIST:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    aget-object v2, v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfEcc:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1579
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    .end local v18           #i:I
    :sswitch_1c
    const-string v2, "handleMessage (EVENT_GET_USIM_ECC_DONE)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1581
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1582
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4a

    .line 1583
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

    goto/16 :goto_1

    .line 1587
    :cond_4a
    iget-object v15, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v15, Ljava/util/ArrayList;

    .line 1588
    .local v15, eccRecords:Ljava/util/ArrayList;
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1591
    .local v11, count:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->SIM_RECORDS_PROPERTY_ECC_LIST:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    aget-object v2, v2, v4

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfEcc:Ljava/lang/String;

    .line 1592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM mEfEcc from property is "

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

    .line 1594
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_18
    move/from16 v0, v18

    if-ge v0, v11, :cond_4d

    .line 1595
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1596
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

    .line 1598
    const/4 v2, 0x0

    const/4 v4, 0x3

    invoke-static {v12, v2, v4}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v14

    .line 1599
    .restart local v14       #eccNum:Ljava/lang/String;
    if-eqz v14, :cond_4c

    const-string v2, ""

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 1600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfEcc:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    .line 1601
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

    .line 1603
    :cond_4b
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

    .line 1594
    :cond_4c
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_18

    .line 1607
    .end local v12           #data:[B
    .end local v14           #eccNum:Ljava/lang/String;
    :cond_4d
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

    .line 1608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->SIM_RECORDS_PROPERTY_ECC_LIST:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    aget-object v2, v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfEcc:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1612
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v11           #count:I
    .end local v15           #eccRecords:Ljava/util/ArrayList;
    .end local v18           #i:I
    :sswitch_1d
    const/16 v23, 0x1

    .line 1614
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1616
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4e

    .line 1617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in fetching EF_CSP data "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1621
    :cond_4e
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1623
    .restart local v12       #data:[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_CSP: "

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

    .line 1624
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleEfCspData([B)V

    goto/16 :goto_1

    .line 1628
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    :sswitch_1e
    const/16 v23, 0x1

    .line 1630
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1631
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1634
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->parseEFopl(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 1638
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_1f
    const-string v2, "handleMessage (EVENT_GET_CPHSONS_DONE)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1639
    const/16 v23, 0x1

    .line 1641
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1642
    .restart local v9       #ar:Landroid/os/AsyncResult;
    if-eqz v9, :cond_2

    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1643
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1644
    .restart local v12       #data:[B
    const/4 v2, 0x0

    array-length v4, v12

    invoke-static {v12, v2, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->cphsOnsl:Ljava/lang/String;

    .line 1647
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

    goto/16 :goto_1

    .line 1652
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    :sswitch_20
    const-string v2, "handleMessage (EVENT_GET_SHORT_CPHSONS_DONE)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1653
    const/16 v23, 0x1

    .line 1655
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1656
    .restart local v9       #ar:Landroid/os/AsyncResult;
    if-eqz v9, :cond_2

    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1657
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1658
    .restart local v12       #data:[B
    const/4 v2, 0x0

    array-length v4, v12

    invoke-static {v12, v2, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->cphsOnss:Ljava/lang/String;

    .line 1661
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

    goto/16 :goto_1

    .line 1666
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    :sswitch_21
    const-string v2, "handleMessage (EVENT_PHB_READY)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1668
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1670
    .restart local v9       #ar:Landroid/os/AsyncResult;
    if-eqz v9, :cond_2

    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 1672
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v22, v0

    .line 1674
    .local v22, isPhbReady:[I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPhbReady="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    aget v4, v22, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1676
    const/4 v2, 0x0

    aget v2, v22, v2

    if-lez v2, :cond_4f

    .line 1677
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchPhbRecords()V

    .line 1678
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPhbReady:Z

    if-nez v2, :cond_2

    .line 1679
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPhbReady:Z

    .line 1681
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPhbReady:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->broadcastPhbStateChangedIntent(Z)V

    goto/16 :goto_1

    .line 1684
    :cond_4f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPhbReady:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 1685
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPhbReady:Z

    .line 1687
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPhbReady:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->broadcastPhbStateChangedIntent(Z)V

    goto/16 :goto_1

    .line 1696
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v22           #isPhbReady:[I
    :sswitch_22
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1697
    .restart local v9       #ar:Landroid/os/AsyncResult;
    if-eqz v9, :cond_2

    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1698
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v4, 0x0

    aget v2, v2, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->processEfCspPlmnModeBitUrc(I)V

    goto/16 :goto_1

    .line 1704
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_23
    const-string v2, "handleMessage (EVENT_GET_RAT_DONE)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1705
    const/16 v23, 0x1

    .line 1707
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1708
    .restart local v9       #ar:Landroid/os/AsyncResult;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfRatLoaded:Z

    .line 1709
    if-eqz v9, :cond_50

    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_50

    .line 1710
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfRat:[B

    .line 1711
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load EF_RAT complete: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfRat:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1712
    const/16 v2, 0x200

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->boradcastEfRatContentNotify(I)V

    goto/16 :goto_1

    .line 1714
    :cond_50
    const-string v2, "load EF_RAT fail"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1715
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfRat:[B

    .line 1716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getType()Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne v2, v4, :cond_51

    .line 1717
    const/16 v2, 0x100

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->boradcastEfRatContentNotify(I)V

    goto/16 :goto_1

    .line 1719
    :cond_51
    const/16 v2, 0x200

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->boradcastEfRatContentNotify(I)V

    goto/16 :goto_1

    .line 1730
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_24
    const-string v2, "GSM"

    const-string v4, "[sume receive response message"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    const/16 v23, 0x1

    .line 1733
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1734
    .restart local v9       #ar:Landroid/os/AsyncResult;
    if-eqz v9, :cond_52

    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_52

    .line 1735
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1736
    .restart local v12       #data:[B
    if-eqz v12, :cond_2

    array-length v2, v12

    const/4 v4, 0x2

    if-lt v2, v4, :cond_2

    .line 1737
    const/4 v2, 0x0

    aget-byte v2, v12, v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v32, v0

    .line 1738
    .local v32, tag:I
    const/4 v2, 0x1

    aget-byte v2, v12, v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v25, v0

    .line 1739
    .local v25, len:I
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sume tag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", len = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    const/4 v2, 0x2

    move/from16 v0, v25

    invoke-static {v12, v2, v0}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mMenuTitleFromEf:Ljava/lang/String;

    .line 1741
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sume menu title is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mMenuTitleFromEf:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1744
    .end local v12           #data:[B
    .end local v25           #len:I
    .end local v32           #tag:I
    :cond_52
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_53

    .line 1745
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sume exception in AsyncResult: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    :goto_19
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mMenuTitleFromEf:Ljava/lang/String;

    goto/16 :goto_1

    .line 1747
    :cond_53
    const-string v2, "GSM"

    const-string v4, "[sume null AsyncResult"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 1754
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;

    invoke-interface {v2}, Lcom/mediatek/common/telephony/ITelephonyExt;->isSetLanguageBySIM()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 1755
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchLanguageIndicator()V

    .line 1757
    :cond_54
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    .line 1758
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->setNumberToSimInfo()V

    goto/16 :goto_1

    .line 1761
    :sswitch_26
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1762
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1764
    .restart local v12       #data:[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_55

    .line 1765
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_LI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v12}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfLI:[B

    .line 1769
    :cond_55
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onLanguageFileLoaded()V

    goto/16 :goto_1

    .line 1772
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    :sswitch_27
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1773
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1775
    .restart local v12       #data:[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_56

    .line 1776
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_ELP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v12}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfELP:[B

    .line 1780
    :cond_56
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onLanguageFileLoaded()V

    goto/16 :goto_1

    .line 1237
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    .restart local v10       #arr$:[Ljava/lang/String;
    .restart local v19       #i$:I
    .restart local v26       #len$:I
    .restart local v28       #mccmnc:Ljava/lang/String;
    .restart local v29       #mccmncCode:Ljava/lang/String;
    :cond_57
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_12

    .line 1257
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v26           #len$:I
    .end local v28           #mccmnc:Ljava/lang/String;
    .end local v29           #mccmncCode:Ljava/lang/String;
    :cond_58
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1259
    const-string v4, "MNC length not present in EF_AD"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1251
    :catch_2
    move-exception v13

    .line 1252
    .restart local v13       #e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1253
    const-string v4, "Corrupt IMSI!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1237
    .end local v13           #e:Ljava/lang/NumberFormatException;
    .restart local v9       #ar:Landroid/os/AsyncResult;
    .restart local v10       #arr$:[Ljava/lang/String;
    .restart local v12       #data:[B
    .restart local v19       #i$:I
    .restart local v26       #len$:I
    .restart local v28       #mccmnc:Ljava/lang/String;
    .restart local v29       #mccmncCode:Ljava/lang/String;
    :cond_59
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_a

    .line 1257
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v26           #len$:I
    .end local v28           #mccmnc:Ljava/lang/String;
    .end local v29           #mccmncCode:Ljava/lang/String;
    :cond_5a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1259
    const-string v2, "MNC length not present in EF_AD"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1251
    :catch_3
    move-exception v13

    .line 1252
    .restart local v13       #e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1253
    const-string v2, "Corrupt IMSI!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1237
    .end local v13           #e:Ljava/lang/NumberFormatException;
    .restart local v10       #arr$:[Ljava/lang/String;
    .restart local v19       #i$:I
    .restart local v26       #len$:I
    .restart local v28       #mccmnc:Ljava/lang/String;
    .restart local v29       #mccmncCode:Ljava/lang/String;
    :cond_5b
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_c

    .line 1257
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v26           #len$:I
    .end local v28           #mccmnc:Ljava/lang/String;
    .end local v29           #mccmncCode:Ljava/lang/String;
    :cond_5c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1259
    const-string v2, "MNC length not present in EF_AD"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1251
    :catch_4
    move-exception v13

    .line 1252
    .restart local v13       #e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1253
    const-string v2, "Corrupt IMSI!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1237
    .end local v13           #e:Ljava/lang/NumberFormatException;
    .restart local v10       #arr$:[Ljava/lang/String;
    .restart local v19       #i$:I
    .restart local v26       #len$:I
    .restart local v28       #mccmnc:Ljava/lang/String;
    .restart local v29       #mccmncCode:Ljava/lang/String;
    :cond_5d
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_e

    .line 1257
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v26           #len$:I
    .end local v28           #mccmnc:Ljava/lang/String;
    .end local v29           #mccmncCode:Ljava/lang/String;
    :cond_5e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1259
    const-string v2, "MNC length not present in EF_AD"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1251
    :catch_5
    move-exception v13

    .line 1252
    .restart local v13       #e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1253
    const-string v2, "Corrupt IMSI!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1237
    .end local v13           #e:Ljava/lang/NumberFormatException;
    .restart local v10       #arr$:[Ljava/lang/String;
    .restart local v19       #i$:I
    .restart local v26       #len$:I
    .restart local v28       #mccmnc:Ljava/lang/String;
    .restart local v29       #mccmncCode:Ljava/lang/String;
    :cond_5f
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_10

    .line 1257
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v26           #len$:I
    .end local v28           #mccmnc:Ljava/lang/String;
    .end local v29           #mccmncCode:Ljava/lang/String;
    :cond_60
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1259
    const-string v2, "MNC length not present in EF_AD"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1251
    :catch_6
    move-exception v13

    .line 1252
    .restart local v13       #e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1253
    const-string v2, "Corrupt IMSI!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->loge(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_0

    goto/16 :goto_11

    .line 869
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_3
        0x4 -> :sswitch_a
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_b
        0xa -> :sswitch_6
        0xb -> :sswitch_5
        0xc -> :sswitch_c
        0xd -> :sswitch_e
        0xe -> :sswitch_f
        0xf -> :sswitch_10
        0x11 -> :sswitch_15
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x14 -> :sswitch_17
        0x15 -> :sswitch_13
        0x16 -> :sswitch_14
        0x18 -> :sswitch_d
        0x19 -> :sswitch_18
        0x1a -> :sswitch_16
        0x1e -> :sswitch_7
        0x1f -> :sswitch_19
        0x20 -> :sswitch_1a
        0x21 -> :sswitch_1d
        0x29 -> :sswitch_25
        0x2a -> :sswitch_26
        0x2b -> :sswitch_27
        0x35 -> :sswitch_24
        0x66 -> :sswitch_1b
        0x67 -> :sswitch_1c
        0x68 -> :sswitch_1e
        0x69 -> :sswitch_1f
        0x6a -> :sswitch_20
        0xc9 -> :sswitch_1
        0xca -> :sswitch_21
        0xcb -> :sswitch_22
        0xcc -> :sswitch_23
        0xcd -> :sswitch_2
        0xce -> :sswitch_6
    .end sparse-switch
.end method

.method public isCspPlmnEnabled()Z
    .locals 2

    .prologue
    .line 3013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCspPlmnEnabled(), mCspPlmnEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3014
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    return v0
.end method

.method public isHPlmn(Ljava/lang/String;)Z
    .locals 6
    .parameter "plmn"

    .prologue
    const/4 v5, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3193
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 3194
    .local v0, mccmnc:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 3209
    :cond_0
    :goto_0
    return v1

    .line 3196
    :cond_1
    if-eqz v0, :cond_2

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3197
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHPlmn getOperatorNumeric error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3201
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 3202
    goto :goto_0

    .line 3204
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 3206
    goto :goto_0
.end method

.method public isIccCardProviderAsMvno()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 3376
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 3377
    .local v0, IMSI:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSpNameInEfSpn()Ljava/lang/String;

    move-result-object v3

    .line 3378
    .local v3, SPN:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getFirstFullNameInEfPnn()Ljava/lang/String;

    move-result-object v2

    .line 3379
    .local v2, PNN:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 3380
    .local v1, MCCMNC:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isIccCardProviderAsMvno(): imsi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mccmnc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", spn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3382
    invoke-static {}, Lcom/android/internal/telephony/gsm/SpnOverride;->getInstance()Lcom/android/internal/telephony/gsm/SpnOverride;

    move-result-object v5

    invoke-virtual {v5, v1, v3}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpnByEfSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 3391
    :cond_0
    :goto_0
    return v4

    .line 3385
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/gsm/SpnOverride;->getInstance()Lcom/android/internal/telephony/gsm/SpnOverride;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpnByImsi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 3388
    invoke-static {}, Lcom/android/internal/telephony/gsm/SpnOverride;->getInstance()Lcom/android/internal/telephony/gsm/SpnOverride;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpnByEfPnn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 3391
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isOperatorMvnoForEfPnn()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3367
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 3368
    .local v0, MCCMNC:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getFirstFullNameInEfPnn()Ljava/lang/String;

    move-result-object v1

    .line 3369
    .local v1, PNN:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOperatorMvnoForEfPnn(): mccmnc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pnn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3370
    invoke-static {}, Lcom/android/internal/telephony/gsm/SpnOverride;->getInstance()Lcom/android/internal/telephony/gsm/SpnOverride;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpnByEfPnn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3372
    .end local v1           #PNN:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1       #PNN:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOperatorMvnoForImsi()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3346
    invoke-static {}, Lcom/android/internal/telephony/gsm/SpnOverride;->getInstance()Lcom/android/internal/telephony/gsm/SpnOverride;

    move-result-object v1

    .line 3347
    .local v1, spnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/gsm/SpnOverride;->isOperatorMvnoForImsi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3348
    .local v0, imsiPattern:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOperatorMvnoForImsi(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3349
    return-object v0
.end method

.method public isPhbReady()Z
    .locals 3

    .prologue
    .line 3406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPhbReady(): cached mPhbReady = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPhbReady:Z

    if-eqz v1, :cond_0

    const-string v1, "true"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3407
    const/4 v0, 0x0

    .line 3408
    .local v0, strPhbReady:Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords;->SIMRECORD_PROPERTY_RIL_PHB_READY:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getMySimId()I

    move-result v2

    aget-object v1, v1, v2

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3410
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3411
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPhbReady:Z

    .line 3415
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPhbReady(): mPhbReady = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPhbReady:Z

    if-eqz v1, :cond_2

    const-string v1, "true"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3416
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPhbReady:Z

    return v1

    .line 3406
    .end local v0           #strPhbReady:Ljava/lang/String;
    :cond_0
    const-string v1, "false"

    goto :goto_0

    .line 3413
    .restart local v0       #strPhbReady:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPhbReady:Z

    goto :goto_1

    .line 3415
    :cond_2
    const-string v1, "false"

    goto :goto_2
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2993
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] [SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2997
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] [SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 3005
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] [SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3006
    return-void
.end method

.method protected logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "s"
    .parameter "tr"

    .prologue
    .line 3001
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] [SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3002
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 2102
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 2105
    .local v3, operator:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->SIM_RECORDS_PROPERTY_ICC_OPERATOR_NUMERIC:[Ljava/lang/String;

    iget v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    aget-object v5, v5, v6

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2107
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 2110
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2116
    .local v0, countryCode:Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->SIM_RECORDS_PROPERTY_ICC_OPERATOR_ISO_COUNTRY:[Ljava/lang/String;

    iget v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    aget-object v5, v5, v6

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    .end local v0           #countryCode:Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    .line 2125
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v6, Landroid/os/AsyncResult;

    invoke-direct {v6, v8, v8, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v5, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2128
    const-string v5, "SIM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SIMRecords] sim id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " imsi = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " operator = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    if-eqz v3, :cond_4

    .line 2131
    const/4 v2, 0x0

    .line 2132
    .local v2, newName:Ljava/lang/String;
    const-string v5, "46002"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "46007"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2133
    :cond_0
    const-string v3, "46000"

    .line 2135
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x1

    invoke-interface {v5, v3, v6}, Lcom/android/internal/telephony/CommandsInterface;->lookupOperatorName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 2136
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->setOperatorForNewSIM(Ljava/lang/String;)V

    .line 2138
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->SIM_RECORDS_PROPERTY_ICC_OPERATOR_DEFAULT_NAME:[Ljava/lang/String;

    iget v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    aget-object v5, v5, v6

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    const-string v5, "gsm.sim.locale.waiting"

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 2143
    .local v4, simLocaleProcessing:Z
    if-eqz v4, :cond_3

    .line 2145
    const-string v5, "wait for setting locale done from the other card"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2152
    .end local v2           #newName:Ljava/lang/String;
    .end local v4           #simLocaleProcessing:Z
    :goto_2
    return-void

    .line 2112
    :catch_0
    move-exception v1

    .line 2113
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 2114
    .restart local v0       #countryCode:Ljava/lang/String;
    const-string v5, "GSM"

    const-string v6, "SIMRecords: Corrupt IMSI!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2119
    .end local v0           #countryCode:Ljava/lang/String;
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const-string v5, "onAllRecordsLoaded: imsi is NULL!"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2147
    .restart local v2       #newName:Ljava/lang/String;
    .restart local v4       #simLocaleProcessing:Z
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->setDefaultNameForNewSIM(Ljava/lang/String;)V

    goto :goto_2

    .line 2150
    .end local v2           #newName:Ljava/lang/String;
    .end local v4           #simLocaleProcessing:Z
    :cond_4
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->setDefaultNameForNewSIM(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onReady()V
    .locals 0

    .prologue
    .line 2173
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 2174
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 2

    .prologue
    .line 2090
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordLoaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2093
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2094
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onAllRecordsLoaded()V

    .line 2099
    :cond_0
    :goto_0
    return-void

    .line 2095
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    if-gez v0, :cond_0

    .line 2096
    const-string v0, "recordsToLoad <0, programmer error suspected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->loge(Ljava/lang/String;)V

    .line 2097
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .parameter "fileChanged"
    .parameter "fileList"

    .prologue
    .line 810
    if-eqz p1, :cond_0

    .line 814
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 816
    :cond_0
    return-void
.end method

.method public onSimHotSwap(Z)V
    .locals 5
    .parameter "isPlugIn"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3313
    const-string v1, "onSimHotSwap"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3317
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->hasQueryIccId:Z

    .line 3318
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xcd

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryIccId(Landroid/os/Message;)V

    .line 3320
    if-nez p1, :cond_0

    .line 3321
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->resetRecords()V

    .line 3322
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mImsi:Ljava/lang/String;

    .line 3323
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 3324
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->setPhbReady(Z)V

    .line 3325
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    .line 3326
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->SIM_RECORDS_PROPERTY_ICC_OPERATOR_DEFAULT_NAME:[Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    aget-object v1, v1, v2

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3329
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 3330
    .local v0, defaultPhone:Lcom/android/internal/telephony/Phone;
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local v0           #defaultPhone:Lcom/android/internal/telephony/Phone;
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->onSimHotSwap(IZ)V

    .line 3332
    return-void
.end method

.method protected resetRecords()V
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 511
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    .line 512
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 513
    iput v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 514
    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 517
    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 518
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 519
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 520
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 521
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 522
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isValidMBI:Z

    .line 524
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->SIM_RECORDS_PROPERTY_ICC_OPERATOR_NUMERIC:[Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    aget-object v0, v0, v1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->SIM_RECORDS_PROPERTY_ICC_OPERATOR_ALPHA:[Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    aget-object v0, v0, v1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->SIM_RECORDS_PROPERTY_ICC_OPERATOR_ISO_COUNTRY:[Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    aget-object v0, v0, v1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->SIM_RECORDS_PROPERTY_ICC_OPERATOR_DEFAULT_NAME:[Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    aget-object v0, v0, v1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->setNumberToSimInfo()V

    .line 542
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    .line 543
    return-void
.end method

.method public setDefaultNameForNewSIM(Ljava/lang/String;)V
    .locals 7
    .parameter "strName"

    .prologue
    .line 1814
    const/4 v2, 0x0

    .line 1816
    .local v2, simInfoUpdate:Lcom/mediatek/common/telephony/ISimInfoUpdate;
    :try_start_0
    const-class v3, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1820
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I

    invoke-interface {v2, v3, p1, v4}, Lcom/mediatek/common/telephony/ISimInfoUpdate;->setDefaultNameForNewSimAdp(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1821
    return-void

    .line 1817
    :catch_0
    move-exception v1

    .line 1818
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set MSISDN: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "xxxxxxx"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 593
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6f40

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 597
    return-void
.end method

.method public setPhbReady(Z)V
    .locals 3
    .parameter "isReady"

    .prologue
    .line 3420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPhbReady(): isReady = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string v1, "true"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3421
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPhbReady:Z

    if-eq v1, p1, :cond_0

    .line 3422
    if-eqz p1, :cond_2

    const-string v0, "true"

    .line 3423
    .local v0, strPhbReady:Ljava/lang/String;
    :goto_1
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPhbReady:Z

    .line 3424
    sget-object v1, Lcom/android/internal/telephony/gsm/SIMRecords;->SIMRECORD_PROPERTY_RIL_PHB_READY:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mParentApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getMySimId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3425
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mPhbReady:Z

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->broadcastPhbStateChangedIntent(Z)V

    .line 3427
    .end local v0           #strPhbReady:Ljava/lang/String;
    :cond_0
    return-void

    .line 3420
    :cond_1
    const-string v1, "false"

    goto :goto_0

    .line 3422
    :cond_2
    const-string v0, "false"

    goto :goto_1
.end method

.method public setVoiceCallForwardingFlag(IZ)V
    .locals 2
    .parameter "line"
    .parameter "enable"

    .prologue
    const/4 v1, 0x1

    .line 752
    if-eq p1, v1, :cond_0

    .line 802
    :goto_0
    return-void

    .line 754
    :cond_0
    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    .line 756
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "voiceNumber"
    .parameter "onComplete"

    .prologue
    const/4 v5, 0x0

    .line 633
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isVoiceMailFixed:Z

    if-eqz v0, :cond_0

    .line 634
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmFixedException;

    const-string v3, "Voicemail number is fixed by operator"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmFixedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 636
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 662
    :goto_0
    return-void

    .line 640
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailNum:Ljava/lang/String;

    .line 641
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailTag:Ljava/lang/String;

    .line 643
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailNum:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    const/16 v2, 0xff

    if-eq v0, v2, :cond_1

    .line 647
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6fc7

    const/16 v3, 0x6fc8

    iget v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    const/16 v6, 0x14

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 651
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 653
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6f17

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/16 v6, 0x19

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 658
    :cond_2
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmNotSupportedException;

    const-string v3, "Update SIM voice mailbox error"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 660
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

    .line 678
    if-eq p1, v1, :cond_1

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    if-gez p2, :cond_4

    .line 685
    const/4 p2, -0x1

    .line 692
    :cond_2
    :goto_1
    iput p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 694
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 697
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    if-eqz v2, :cond_3

    .line 701
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

    .line 705
    if-gez p2, :cond_6

    .line 708
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    .line 713
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

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

    .line 718
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    if-eqz v0, :cond_0

    .line 720
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

    .line 723
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

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

    .line 727
    :catch_0
    move-exception v6

    .line 728
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "Error saving voice mail state to SIM. Probably malformed SIM record"

    invoke-virtual {p0, v0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 686
    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    const/16 v2, 0xff

    if-le p2, v2, :cond_2

    .line 689
    const/16 p2, 0xff

    goto :goto_1

    :cond_5
    move v0, v1

    .line 701
    goto :goto_2

    .line 710
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 720
    :cond_7
    const/16 v0, 0xa

    goto :goto_4
.end method
