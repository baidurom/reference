.class public final Lcom/mediatek/featureoption/IMEFeatureOption;
.super Ljava/lang/Object;
.source "IMEFeatureOption.java"


# static fields
.field public static final DEFAULT_INPUT_METHOD:Ljava/lang/String; = "com.cootek.smartinputv5/.TouchPalIME"

.field public static final DEFAULT_LATIN_IME_LANGUAGES:[Ljava/lang/String; = null

.field public static final MTK_IME_ARABIC_SUPPORT:Z = false

.field public static final MTK_IME_ENGLISH_SUPPORT:Z = true

.field public static final MTK_IME_FRENCH_SUPPORT:Z = false

.field public static final MTK_IME_GERMAN_SUPPORT:Z = false

.field public static final MTK_IME_HANDWRITING_SUPPORT:Z = true

.field public static final MTK_IME_HINDI_SUPPORT:Z = false

.field public static final MTK_IME_INDONESIAN_SUPPORT:Z = false

.field public static final MTK_IME_ITALIAN_SUPPORT:Z = false

.field public static final MTK_IME_MALAY_SUPPORT:Z = false

.field public static final MTK_IME_PINYIN_SUPPORT:Z = true

.field public static final MTK_IME_PORTUGUESE_SUPPORT:Z = false

.field public static final MTK_IME_RUSSIAN_SUPPORT:Z = false

.field public static final MTK_IME_SPANISH_SUPPORT:Z = false

.field public static final MTK_IME_STROKE_SUPPORT:Z = true

.field public static final MTK_IME_SUPPORT:Z = false

.field public static final MTK_IME_THAI_SUPPORT:Z = false

.field public static final MTK_IME_TURKISH_SUPPORT:Z = false

.field public static final MTK_IME_VIETNAM_SUPPORT:Z = false

.field public static final MTK_IME_ZHUYIN_SUPPORT:Z = true

.field public static final PRODUCT_LOCALES:[Ljava/lang/String; = null

.field public static final SYS_LOCALE_CS:Z = false

.field public static final SYS_LOCALE_CS_CZ:Z = false

.field public static final SYS_LOCALE_DE:Z = false

.field public static final SYS_LOCALE_DE_AT:Z = false

.field public static final SYS_LOCALE_DE_CH:Z = false

.field public static final SYS_LOCALE_DE_DE:Z = false

.field public static final SYS_LOCALE_DE_LI:Z = false

.field public static final SYS_LOCALE_EN:Z = true

.field public static final SYS_LOCALE_EN_AU:Z = false

.field public static final SYS_LOCALE_EN_GB:Z = false

.field public static final SYS_LOCALE_EN_NZ:Z = false

.field public static final SYS_LOCALE_EN_SG:Z = false

.field public static final SYS_LOCALE_EN_US:Z = true

.field public static final SYS_LOCALE_ES:Z = false

.field public static final SYS_LOCALE_ES_ES:Z = false

.field public static final SYS_LOCALE_FR:Z = false

.field public static final SYS_LOCALE_FR_BE:Z = false

.field public static final SYS_LOCALE_FR_CA:Z = false

.field public static final SYS_LOCALE_FR_CH:Z = false

.field public static final SYS_LOCALE_FR_FR:Z = false

.field public static final SYS_LOCALE_IT:Z = false

.field public static final SYS_LOCALE_IT_CH:Z = false

.field public static final SYS_LOCALE_IT_IT:Z = false

.field public static final SYS_LOCALE_JA:Z = false

.field public static final SYS_LOCALE_JA_JP:Z = false

.field public static final SYS_LOCALE_KO:Z = false

.field public static final SYS_LOCALE_KO_KR:Z = false

.field public static final SYS_LOCALE_NL:Z = false

.field public static final SYS_LOCALE_NL_BE:Z = false

.field public static final SYS_LOCALE_NL_NL:Z = false

.field public static final SYS_LOCALE_PL:Z = false

.field public static final SYS_LOCALE_PL_PL:Z = false

.field public static final SYS_LOCALE_RU:Z = false

.field public static final SYS_LOCALE_RU_RU:Z = false

.field public static final SYS_LOCALE_ZH:Z = true

.field public static final SYS_LOCALE_ZH_CN:Z = true

.field public static final SYS_LOCALE_ZH_TW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "zh_CN"

    aput-object v1, v0, v2

    const-string v1, "en_US"

    aput-object v1, v0, v3

    sput-object v0, Lcom/mediatek/featureoption/IMEFeatureOption;->PRODUCT_LOCALES:[Ljava/lang/String;

    .line 15
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "en_US"

    aput-object v1, v0, v2

    sput-object v0, Lcom/mediatek/featureoption/IMEFeatureOption;->DEFAULT_LATIN_IME_LANGUAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
